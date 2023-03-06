package com.yubico.authenticator.data

import com.yubico.authenticator.device.Info
import com.yubico.authenticator.device.UnknownDevice
import com.yubico.authenticator.logging.Log
import com.yubico.authenticator.oath.OathManager
import com.yubico.authenticator.yubikit.getDeviceInfo
import com.yubico.authenticator.yubikit.withConnection
import com.yubico.yubikit.android.transport.nfc.NfcYubiKeyDevice
import com.yubico.yubikit.android.transport.usb.UsbYubiKeyDevice
import com.yubico.yubikit.core.Transport
import com.yubico.yubikit.core.YubiKeyDevice
import com.yubico.yubikit.core.application.ApplicationNotAvailableException
import com.yubico.yubikit.core.smartcard.SmartCardConnection
import com.yubico.yubikit.support.DeviceUtil
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.flow.flowOn
import java.util.concurrent.ArrayBlockingQueue

interface ConnectionListener {
    fun onSmartCardConnection(connection: SmartCardConnection): Info?
    fun onDisconnect()
}

interface DeviceModel {
    fun getDevice(): Flow<Info?>

    fun isUsbDeviceConnected(): Boolean // TODO temporary way how dependants can get the info

    suspend fun deviceConnected(device: YubiKeyDevice)
    suspend fun deviceDisconnected()

    fun addConnectionListener(listener: ConnectionListener)
    fun removeConnectionListener(listener: ConnectionListener)
    suspend fun <T> useDevice(
        title: String,
        action: suspend (YubiKeyDevice) -> T
    ): T
}

class YubiKitDeviceModel() : DeviceModel {

    private var currentUsbDevice: UsbYubiKeyDevice? = null

    private val queue = ArrayBlockingQueue<Result<Info?>>(1)
    private val connectionListeners: MutableList<ConnectionListener> = ArrayList()

    override fun getDevice(): Flow<Info?> = flow {
        while (true) {
            Log.d(TAG, "Taking from queue")
            val result = queue.take()
            Log.d(TAG, "Got something")
            if (result.isSuccess) {
                Log.d(TAG, "Emitting device ${result.getOrThrow()}")
            }
            emit(result.getOrNull())
        }
    }.flowOn(Dispatchers.IO)

    override fun isUsbDeviceConnected(): Boolean = currentUsbDevice != null

    override suspend fun deviceConnected(device: YubiKeyDevice) {
        Log.d(TAG, "Device connected")

        if (device is UsbYubiKeyDevice) {
            currentUsbDevice = device
        }

        try {

            device.withConnection<SmartCardConnection, Unit> { connection ->
                var result: Result<Info>? = null


                for (listener in connectionListeners) {
                    try {
                        val infoOverride: Info? = listener.onSmartCardConnection(connection)
                        if (infoOverride != null) {
                            result = Result.success(infoOverride)
                        }
                    } catch (t: Throwable) {
                        Log.d(TAG, "Ajaj issues doing stuff in other models")
                    }
                }

                if (result == null) {
                    // there was no override from connection listeners
                    val pid = (device as? UsbYubiKeyDevice)?.pid
                    val deviceInfo = DeviceUtil.readInfo(connection, pid)
                    result = Result.success(
                        Info(
                            name = DeviceUtil.getName(deviceInfo, pid?.type),
                            isNfc = device.transport == Transport.NFC,
                            usbPid = pid?.value,
                            deviceInfo = deviceInfo
                        )
                    )
                }



                Log.d(TAG, "Adding to queue")
                queue.add(result)
            }


        } catch (e: Exception) {

            Log.e(TAG, "Failed to connect to CCID", e.toString())
            if (device.transport == Transport.USB || e is ApplicationNotAvailableException) {
                val deviceInfo = try {
                    getDeviceInfo(device)
                } catch (e: IllegalArgumentException) {
                    Log.d(TAG, "Device was not recognized")
                    UnknownDevice.copy(isNfc = device.transport == Transport.NFC)
                } catch (e: Exception) {
                    Log.d(TAG, "Failure getting device info: ${e.message}")
                    null
                }

                Log.d(TAG, "Setting device info: $deviceInfo")
                //appViewModel.setDeviceInfo(deviceInfo)
                Log.d(TAG, "Adding to queue")
                queue.add(Result.success(deviceInfo))

            } else {
                queue.add(Result.failure(e))
            }

            // Clear any cached OATH state
            //oathViewModel.setSessionState(null)


            //result = Result.failure(t)
        }
    }

    override suspend fun deviceDisconnected() {

        for (listener in connectionListeners) {
            try {
                listener.onDisconnect()
            } catch (t: Throwable) {
                Log.d(TAG, "Ajaj issues doing stuff in other models")
            }
        }

        Log.d(TAG, "Device disconnected")

        currentUsbDevice = null

        queue.add(Result.success(null))
    }


    override fun addConnectionListener(listener: ConnectionListener) {
        connectionListeners.add(listener)
    }

    override fun removeConnectionListener(listener: ConnectionListener) {
        connectionListeners.remove(listener)
    }

    override suspend fun <T> useDevice(title: String, action: suspend (YubiKeyDevice) -> T): T =
        currentUsbDevice?.let {
            useUsbDevice(it, action)
        } ?: useNfcDevice(title, action)

    private suspend fun <T> useUsbDevice(
        usbYubiKeyDevice: UsbYubiKeyDevice,
        action: suspend (UsbYubiKeyDevice) -> T
    ): T =
        action(usbYubiKeyDevice)

    private suspend fun <T> useNfcDevice(
        title: String,
        action: suspend (NfcYubiKeyDevice) -> T
    ): T =
        TODO("Implement")


    companion object {
        private const val TAG = "YubiKitDeviceModel"
    }

}