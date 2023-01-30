/*
 * Copyright (C) 2022 Yubico.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *       http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.yubico.authenticator

import android.content.BroadcastReceiver
import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.content.SharedPreferences.OnSharedPreferenceChangeListener
import android.content.pm.PackageManager
import android.hardware.camera2.CameraManager
import android.hardware.usb.UsbDevice
import android.hardware.usb.UsbManager
import android.nfc.NfcAdapter
import android.nfc.Tag
import android.os.Build
import android.os.Bundle
import android.view.WindowManager
import androidx.activity.viewModels
import androidx.core.view.WindowCompat
import androidx.lifecycle.lifecycleScope
import com.yubico.authenticator.logging.FlutterLog
import com.yubico.authenticator.logging.Log
import com.yubico.authenticator.oath.AppLinkMethodChannel
import com.yubico.authenticator.oath.OathManager
import com.yubico.authenticator.oath.OathViewModel
import com.yubico.yubikit.android.transport.nfc.NfcYubiKeyDevice
import com.yubico.yubikit.android.transport.usb.UsbYubiKeyDevice
import com.yubico.yubikit.core.YubiKeyDevice
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.launch
import java.io.Closeable
import java.util.concurrent.Executors

class MainActivity : FlutterFragmentActivity() {
    private val viewModel: MainViewModel by viewModels { MainViewModel.Factory }
    private val oathViewModel: OathViewModel by viewModels()

    private lateinit var yubiKitController: YubikitController

    // receives broadcasts when QR Scanner camera is closed
    private val qrScannerCameraClosedBR = QRScannerCameraClosedBR()

    private lateinit var serviceLocator: ServiceLocator

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        WindowCompat.setDecorFitsSystemWindows(window, false)

        allowScreenshots(false)

        serviceLocator = (application as App).serviceLocator
        yubiKitController = serviceLocator.provideYubiKitController()

        setupYubiKitLogger()
    }

    /**
     * Enables or disables .AliasMainActivity component. This activity alias adds intent-filter
     * for android.hardware.usb.action.USB_DEVICE_ATTACHED. When enabled, the app will be opened
     * when a compliant USB device (defined in `res/xml/device_filter.xml`) is attached.
     *
     * By default the activity alias is disabled through AndroidManifest.xml.
     *
     * @param enable if true, alias activity will be enabled
     */
    private fun enableAliasMainActivityComponent(enable: Boolean) {
        val componentName = ComponentName(packageName, "com.yubico.authenticator.AliasMainActivity")
        applicationContext.packageManager.setComponentEnabledSetting(
            componentName,
            if (enable)
                PackageManager.COMPONENT_ENABLED_STATE_ENABLED
            else
                PackageManager.COMPONENT_ENABLED_STATE_DEFAULT,
            PackageManager.DONT_KILL_APP
        )
    }

    override fun onNewIntent(intent: Intent) {
        super.onNewIntent(intent)
        setIntent(intent)
    }

    private fun onUsbYubiKey(device: UsbYubiKeyDevice) {
        viewModel.setConnectedYubiKey(device) {
            Log.d(TAG, "YubiKey was disconnected, stopping usb discovery")
            yubiKitController.stopUsbDiscovery()
        }
        processYubiKey(device)
    }

    private fun setupYubiKitLogger() {
        yubiKitController.setupLogger(
            onDebug = {
                // redirect yubikit debug logs to traffic
                Log.t("yubikit", it)
            }, onError = { message, throwable ->
                Log.e("yubikit", message, throwable.message ?: throwable.toString())
            }
        )
    }

    override fun onStart() {
        super.onStart()
        registerReceiver(qrScannerCameraClosedBR, QRScannerCameraClosedBR.intentFilter)
    }

    override fun onStop() {
        super.onStop()
        unregisterReceiver(qrScannerCameraClosedBR)
    }

    override fun onPause() {

        appPreferences.unregisterListener(sharedPreferencesListener)

        yubiKitController.stopNfcDiscovery(this)

        if (!appPreferences.openAppOnUsb) {
            enableAliasMainActivityComponent(false)
        }
        super.onPause()
    }

    override fun onResume() {
        super.onResume()

        enableAliasMainActivityComponent(true)

        // Handle opening through otpauth:// link
        val intentData = intent.data
        if (intentData != null && intentData.scheme == "otpauth") {
            intent.data = null
            appLinkMethodChannel.handleUri(intentData)
        }

        // Handle existing tag when launched from NDEF
        val tag = intent.parcelableExtra<Tag>(NfcAdapter.EXTRA_TAG)
        if (tag != null) {
            intent.removeExtra(NfcAdapter.EXTRA_TAG)

            val executor = Executors.newSingleThreadExecutor()
            val device = NfcYubiKeyDevice(tag, yubiKitController.getNfcTimeout(), executor)
            val activity = this
            lifecycleScope.launch {
                try {
                    contextManager?.processYubiKey(device)
                    device.remove {
                        executor.shutdown()
                        yubiKitController.startNfcDiscovery(
                            activity,
                            ::processYubiKey
                        )
                    }
                } catch (e: Throwable) {
                    Log.e(TAG, "Error processing YubiKey in AppContextManager", e.toString())
                }
            }
        } else {
            yubiKitController.startNfcDiscovery(
                this,
                ::processYubiKey
            )
        }

        val usbManager = getSystemService(Context.USB_SERVICE) as UsbManager
        if (UsbManager.ACTION_USB_DEVICE_ATTACHED == intent.action) {
            val device = intent.parcelableExtra<UsbDevice>(UsbManager.EXTRA_DEVICE)
            if (device != null) {
                // start the USB discover only if the user approved the app to use the device
                if (usbManager.hasPermission(device)) {
                    yubiKitController.startUsbDiscovery(::onUsbYubiKey)
                }
            }
        } else if (viewModel.connectedYubiKey.value == null) {
            // if any YubiKeys are connected, use them directly
            val deviceIterator = usbManager.deviceList.values.iterator()
            while (deviceIterator.hasNext()) {
                val device = deviceIterator.next()
                if (device.vendorId == YUBICO_VENDOR_ID) {
                    // the device might not have a USB permission
                    // it will be requested during during the UsbDiscovery
                    yubiKitController.startUsbDiscovery(::onUsbYubiKey)
                    break
                }
            }
        }

        appPreferences.registerListener(sharedPreferencesListener)
    }

    private fun processYubiKey(device: YubiKeyDevice) {
        contextManager?.let {
            lifecycleScope.launch {
                try {
                    it.processYubiKey(device)
                } catch (e: Throwable) {
                    Log.e(TAG, "Error processing YubiKey in AppContextManager", e.toString())
                }
            }
        }
    }

    private var contextManager: AppContextManager? = null
    private lateinit var appContext: AppContext
    private lateinit var dialogManager: DialogManager
    private lateinit var appPreferences: AppPreferences
    private lateinit var flutterLog: FlutterLog
    private lateinit var flutterStreams: List<Closeable>
    private lateinit var appMethodChannel: AppMethodChannel
    private lateinit var appLinkMethodChannel: AppLinkMethodChannel

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        val messenger = flutterEngine.dartExecutor.binaryMessenger

        flutterLog = FlutterLog(messenger)
        appContext = AppContext(messenger, this.lifecycleScope, viewModel)
        dialogManager = DialogManager(messenger, this.lifecycleScope)
        appPreferences = serviceLocator.provideAppPreferences()
        appMethodChannel = AppMethodChannel(messenger)
        appLinkMethodChannel = AppLinkMethodChannel(messenger)

        flutterStreams = listOf(
            viewModel.flowDeviceInfo.flowTo(this, messenger, "android.devices.deviceInfo"),
            oathViewModel.sessionState.streamTo(this, messenger, "android.oath.sessionState"),
            oathViewModel.credentials.streamTo(this, messenger, "android.oath.credentials"),
        )

        viewModel.appContext.observe(this) {
            contextManager?.dispose()
            contextManager = when (it) {
                OperationContext.Oath -> OathManager(
                    this,
                    messenger,
                    viewModel,
                    oathViewModel,
                    dialogManager,
                    appPreferences
                )

                else -> null
            }
            viewModel.connectedYubiKey.value?.let(::processYubiKey)
        }
    }

    override fun cleanUpFlutterEngine(flutterEngine: FlutterEngine) {
        flutterStreams.forEach { it.close() }
        super.cleanUpFlutterEngine(flutterEngine)
    }

    companion object {
        const val TAG = "MainActivity"
        const val YUBICO_VENDOR_ID = 4176
        const val FLAG_SECURE = WindowManager.LayoutParams.FLAG_SECURE
    }

    /** We observed that some devices (Pixel 2, OnePlus 6) automatically end NFC discovery
     * during the use of device camera when scanning QR codes. To handle NFC events correctly,
     * this receiver restarts the YubiKit NFC discovery when the QR Scanner camera is closed.
     */
    class QRScannerCameraClosedBR : BroadcastReceiver() {
        companion object {
            val intentFilter = IntentFilter("com.yubico.authenticator.QRScannerView.CameraClosed")
        }

        override fun onReceive(context: Context?, intent: Intent?) {

            val mainActivity = context as? MainActivity
            mainActivity?.let {
                val yubiKitController =
                    (it.application as App).serviceLocator.provideYubiKitController()
                yubiKitController.startNfcDiscovery(mainActivity, mainActivity::processYubiKey)
            }
        }
    }

    private val sharedPreferencesListener = OnSharedPreferenceChangeListener { _, key ->
        if (AppPreferences.PREF_NFC_SILENCE_SOUNDS == key) {
            yubiKitController.stopNfcDiscovery(this)
            yubiKitController.startNfcDiscovery(this, ::processYubiKey)
        }
    }

    inner class AppMethodChannel(messenger: BinaryMessenger) {

        private val methodChannel = MethodChannel(messenger, "app.methods")

        init {
            methodChannel.setMethodCallHandler { methodCall, result ->
                when (methodCall.method) {
                    "allowScreenshots" -> result.success(
                        allowScreenshots(
                            methodCall.arguments as Boolean,
                        )
                    )

                    "getAndroidSdkVersion" -> result.success(
                        Build.VERSION.SDK_INT
                    )

                    "setPrimaryClip" -> {
                        val toClipboard = methodCall.argument<String>("toClipboard")
                        val isSensitive = methodCall.argument<Boolean>("isSensitive")
                        if (toClipboard != null && isSensitive != null) {
                            ClipboardUtil.setPrimaryClip(
                                this@MainActivity,
                                toClipboard,
                                isSensitive
                            )
                        }
                        result.success(true)
                    }

                    "hasCamera" -> {
                        val cameraService =
                            getSystemService(Context.CAMERA_SERVICE) as CameraManager
                        result.success(
                            cameraService.cameraIdList.isNotEmpty()
                        )
                    }

                    else -> Log.w(TAG, "Unknown app method: ${methodCall.method}")
                }
            }
        }
    }

    private fun allowScreenshots(value: Boolean): Boolean {
        // Note that FLAG_SECURE is the inverse of allowScreenshots
        if (value) {
            Log.d(TAG, "Clearing FLAG_SECURE (allow screenshots)")
            window.clearFlags(FLAG_SECURE)
        } else {
            Log.d(TAG, "Setting FLAG_SECURE (disallow screenshots)")
            window.setFlags(FLAG_SECURE, FLAG_SECURE)
        }

        return FLAG_SECURE != (window.attributes.flags and FLAG_SECURE)
    }

}
