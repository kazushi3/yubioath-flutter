import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../management/models.dart';

part 'models.freezed.dart';
part 'models.g.dart';

enum Transport { usb, nfc }

enum UsbInterface { otp, fido, ccid }

@JsonEnum(alwaysCreate: true)
enum UsbPid {
  @JsonValue(0x0010)
  yksOtp,
  @JsonValue(0x0110)
  neoOtp,
  @JsonValue(0x0111)
  neoOtpCcid,
  @JsonValue(0x0112)
  neoCcid,
  @JsonValue(0x0113)
  neoFido,
  @JsonValue(0x0114)
  neoOtpFido,
  @JsonValue(0x0115)
  neoFidoCcid,
  @JsonValue(0x0116)
  neoOtpFidoCcid,
  @JsonValue(0x0120)
  skyFido,
  @JsonValue(0x0401)
  yk4Otp,
  @JsonValue(0x0402)
  yk4Fido,
  @JsonValue(0x0403)
  yk4OtpFido,
  @JsonValue(0x0404)
  yk4Ccid,
  @JsonValue(0x0405)
  yk4OtpCcid,
  @JsonValue(0x0406)
  yk4FidoCcid,
  @JsonValue(0x0407)
  yk4OtpFidoCcid,
  @JsonValue(0x0410)
  ykpOtpFido,
}

extension UsbPids on UsbPid {
  int get value => _$UsbPidEnumMap[this]!;

  String get displayName {
    switch (this) {
      case UsbPid.yksOtp:
        return 'YubiKey Standard';
      case UsbPid.ykpOtpFido:
        return 'YubiKey Plus';
      case UsbPid.skyFido:
        return 'Security Key by Yubico';
      default:
        final prefix = name.startsWith('neo') ? 'YubiKey NEO' : 'YubiKey';
        final suffix = UsbInterface.values
            .where((e) => e.value & usbInterfaces != 0)
            .map((e) => e.name.toUpperCase())
            .join(' ');
        return '$prefix $suffix';
    }
  }

  int get usbInterfaces => UsbInterface.values
      .where(
          (e) => name.contains(e.name[0].toUpperCase() + e.name.substring(1)))
      .map((e) => e.value)
      .sum;

  static UsbPid fromValue(int value) {
    return UsbPid.values.firstWhere((pid) => pid.value == value);
  }
}

extension UsbInterfaces on UsbInterface {
  int get value {
    switch (this) {
      case UsbInterface.otp:
        return 0x01;
      case UsbInterface.fido:
        return 0x02;
      case UsbInterface.ccid:
        return 0x04;
    }
  }

  static int forCapabilites(int capabilities) {
    var interfaces = 0;
    if (capabilities & Capability.otp.value != 0) {
      interfaces |= UsbInterface.otp.value;
    }
    if (capabilities & (Capability.u2f.value | Capability.fido2.value) != 0) {
      interfaces |= UsbInterface.fido.value;
    }
    if (capabilities &
            (Capability.openpgp.value |
                Capability.piv.value |
                Capability.oath.value |
                Capability.hsmauth.value) !=
        0) {
      interfaces |= UsbInterface.ccid.value;
    }
    return interfaces;
  }
}

@freezed
class Version with _$Version {
  const Version._();
  const factory Version(int major, int minor, int patch) = _Version;

  factory Version.fromJson(List<dynamic> values) {
    return Version(values[0], values[1], values[2]);
  }

  List<dynamic> toJson() => [major, minor, patch];

  @override
  String toString() {
    return '$major.$minor.$patch';
  }
}

@freezed
class Pair<T1, T2> with _$Pair<T1, T2> {
  factory Pair(T1 first, T2 second) = _Pair<T1, T2>;
}
