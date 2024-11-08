import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionUtil {
  static Future<Map<Permission, PermissionStatus>> request(
    Permission permission,
  ) async {
    final List<Permission> permissions = <Permission>[permission];
    return await permissions.request();
  }

  static bool isDenied(Map<Permission, PermissionStatus> result) {
    var isDenied = false;
    result.forEach((key, value) {
      if (value == PermissionStatus.denied) {
        isDenied = true;
        return;
      }
    });
    return isDenied;
  }

  /// 检查权限
  static Future<bool> checkGranted(Permission permission) async {
    PermissionStatus storageStatus = await permission.status;
    if (storageStatus == PermissionStatus.granted) {
      /// 已授权
      return true;
    } else {
      /// 拒绝授权
      return false;
    }
  }

  Future<bool> requestPhotoPermission() async {
    final AndroidDeviceInfo androidInfo = await DeviceInfoPlugin().androidInfo;
    int androidVersion = androidInfo.version.sdkInt;

    if (androidVersion <= 32) {
      await PermissionUtil.request(Permission.storage);
      return await PermissionUtil.checkGranted(Permission.storage);
    } else {
      await PermissionUtil.request(Permission.photos);
      return await PermissionUtil.checkGranted(Permission.photos);
    }
  }

  static Future<bool> requestStoragePermission() async {
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await DeviceInfoPlugin().androidInfo;
      int androidVersion = androidInfo.version.sdkInt;
      if (androidVersion < 32) {
        await Permission.storage.request();
        return await Permission.storage.isGranted;
      } else {
        await Permission.manageExternalStorage.request();
        return await Permission.manageExternalStorage.isGranted;
      }
    }
    return false;
  }
}
