import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:oktoast/oktoast.dart';
import 'package:quliao/db/database.dart';
import 'package:quliao/pages/chat_private/chat.dart';
import 'package:quliao/utils/permission.dart';
import 'dart:ui' as ui;

class GroupQRCodeController extends GetxController {
  final RxString qrCode = RxString('');
  final GlobalKey<ScaffoldState> qrCodeWidgetKey = GlobalKey<ScaffoldState>();

  void initGroupInfo(
    int groupId,
  ) async {
    final list = await AppDatabase().groupDao?.query(groupId: groupId) ?? [];
    if (list.isNotEmpty) {
      final dataMap = list.first;
      final groupInfo = GroupInfo().initWithMap(dataMap);
      debugPrint('groupInfo ======> $groupInfo');
    }
  }

  void createQrCode(
    Map<String, dynamic> dataMap,
  ) {
    qrCode.value = jsonEncode(dataMap);
  }

  /// 截屏
  Future<bool> capturePng() async {
    try {
      /// 检查是否有存储权限
      bool hasPermission = Platform.isAndroid
          ? await PermissionUtil().requestPhotoPermission()
          : true;
      BuildContext? buildContext = qrCodeWidgetKey.currentContext;

      if (null != buildContext) {
        if (hasPermission) {
          // ignore: use_build_context_synchronously
          final boundary = qrCodeWidgetKey.currentContext!.findRenderObject()!
              as RenderRepaintBoundary;
          final image = await boundary.toImage(pixelRatio: 3.0);
          final byteData = await image.toByteData(
            format: ui.ImageByteFormat.png,
          );
          await ImageGallerySaver.saveImage(
            byteData!.buffer.asUint8List(),
          );
          showToast('保存成功，请在相册中查看');
          return true;
        } else {
          showToast('权限申请不通过');
          return false;
        }
      }
      return false;
    } catch (e) {
      return false;
    }
  }
}
