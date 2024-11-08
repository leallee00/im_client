import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:oktoast/oktoast.dart';
import 'package:quliao/db/database.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/modules/mine/mine_page_controller.dart';
import 'package:quliao/utils/permission.dart';
import 'dart:ui' as ui;

class MineQRCodeController extends GetxController {
  final RxString qrCode = RxString('');
  final Rx<AppUserInfo> userInfo = Rx(AppUserInfo.instance);
  final GlobalKey<ScaffoldState> qrCodeWidgetKey = GlobalKey<ScaffoldState>();

  @override
  void onInit() {
    super.onInit();
    userInfo.value = MinePageController.to.userInfo.value;
    final dataMap = <String, dynamic>{
      'type': 0,
      'data': userInfo.value.imId,
    };
    createQrCode(dataMap);
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
