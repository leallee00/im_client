import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:oktoast/oktoast.dart';
import 'package:quliao/global/global_repository.dart';
import 'package:quliao/modules/mine/models/report_image.dart';
import 'package:quliao/utils/oss_utils.dart';
import 'package:quliao/utils/toast/toast.dart';
import 'package:quliao/widgets/toast.dart';

import '../../../../pb/pb_msg/commim_uaa/commim_uaa.pb.dart';

class ReportController extends GetxController {
  final editingController = TextEditingController();
  final RxList<ReportImageModel> dataList = RxList();

  @override
  void onInit() {
    super.onInit();
    dataList.clear();
    dataList.add(
      const ReportImageModel(type: 1),
    );
  }

  void addImage(
    String imageUrl,
  ) {
    dataList.insert(
      0,
      ReportImageModel(url: imageUrl),
    );
  }

  void deleteImage(
    String imageUrl,
  ) {
    dataList.removeWhere((element) => element.url == imageUrl);
  }

  /// 从图库选择图片
  Future<void> pickImage() async {
    final value = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (value == null || value.path.length < 3) {
      showToast('请选择图片');
      return;
    }

    final imageUrl = await _uploadImage(
      value.path,
    );
    if (null == imageUrl || imageUrl.isEmpty) {
      showToast('图片上传失败，请重试');
    } else {
      dataList.insert(
        0,
        ReportImageModel(url: imageUrl),
      );
    }
  }

  Future<String?> _uploadImage(String path) async {
    try {
      CustomToast.loading();
      final name = path.substring(path.lastIndexOf('/') + 1, path.length);
      final avatarUrl = await OssUtils.uploadFile(path, name: 'feedback/$name');
      CustomToast.dismiss();
      return avatarUrl;
    } catch (error) {
      CustomToast.dismiss();
      return null;
    }
  }

  Future<void> report(
    BuildContext context,
  ) async {
    final imageList = <String>[];
    for (final item in dataList) {
      if (item.type == 0) {
        imageList.add(item.url!);
      }
    }
    final dataMap = <String, dynamic>{
      'content': editingController.text,
      'images': imageList.join(','),
    };
    final dataMapJson = jsonEncode(dataMap);
    final req = AddSuggestReq(
      type: 0,
      kind: 0,
      suggest: dataMapJson,
    );
    GlobalRepository().report(
      req: req,
      callback: () {
        ToastUtil.show('已投诉');
        Navigator.pop(context);
      },
    );
  }

  @override
  void onClose() {
    super.onClose();
    dataList.clear();
    editingController.dispose();
  }
}
