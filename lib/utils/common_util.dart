import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';

class CommonUtil {
  factory CommonUtil() => _sharedInstance();

  CommonUtil._() {
    _init();
  }

  static CommonUtil? _instance;

  static CommonUtil _sharedInstance() {
    _instance ??= CommonUtil._();
    return _instance!;
  }

  late DeviceInfoPlugin _deviceInfo;

  Future<void> _init() async {
    _deviceInfo = DeviceInfoPlugin();
  }

  Future<AndroidDeviceInfo> deviceInfo() async {
    final androidInfo = await _deviceInfo.androidInfo;
    return androidInfo;
  }

  Future<String> model() async {
    if (Platform.isIOS) {
      final IosDeviceInfo iosInfo = await _deviceInfo.iosInfo;
      return iosInfo.utsname.machine;
    } else if (Platform.isAndroid) {
      final androidInfo = await _deviceInfo.androidInfo;
      return '${androidInfo.brand} ${androidInfo.model}';
    }
    return '';
  }

  Future<String> version() async {
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.version;
  }

  Future<String> buildNumber() async {
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.buildNumber;
  }

  Future<String> packageName() async {
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.packageName;
  }
}
