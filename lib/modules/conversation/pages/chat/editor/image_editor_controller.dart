import 'dart:io';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quliao/utils/crop_editor_helper.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/widgets/common_widget.dart';
import 'package:quliao/widgets/loading.dart';
import 'package:uuid/uuid.dart';

class ImageEditorController extends GetxController {
  final GlobalKey<ExtendedImageEditorState> editorKey =
      GlobalKey<ExtendedImageEditorState>();

  bool _cropping = false;

  final List<AspectRatioItem> aspectRatios = <AspectRatioItem>[
    AspectRatioItem(text: 'custom', value: CropAspectRatios.custom),
    AspectRatioItem(text: 'original', value: CropAspectRatios.original),
    AspectRatioItem(text: '1*1', value: CropAspectRatios.ratio1_1),
    AspectRatioItem(text: '4*3', value: CropAspectRatios.ratio4_3),
    AspectRatioItem(text: '3*4', value: CropAspectRatios.ratio3_4),
    AspectRatioItem(text: '16*9', value: CropAspectRatios.ratio16_9),
    AspectRatioItem(text: '9*16', value: CropAspectRatios.ratio9_16)
  ];

  Rx<AspectRatioItem?> aspectRatioItem = Rx(null);

  @override
  void onReady() {
    super.onReady();
    aspectRatioItem.value = aspectRatios.first;
    update();
  }

  Future<void> updateAspectRatio(AspectRatioItem value) async {
    aspectRatioItem.value = value;
    update();
  }

  Future<File?> cropImage(
    BuildContext context,
  ) async {
    if (_cropping) {
      return null;
    }
    String msg = '';
    File? file;
    try {
      _cropping = true;

      //await showBusyingDialog();

      LoadingDialog.show();

      late EditImageInfo imageInfo;

      /// native library
      imageInfo = await cropImageDataWithDartLibrary(
        state: editorKey.currentState!,
      );

      String directory;

      if (Platform.isWindows) {
        final dic = await getTemporaryDirectory();
        directory = dic.path;
      } else {
        final dic = await getApplicationSupportDirectory();
        directory = dic.path;
      }

      const uuid = Uuid();
      final fileName = 'screenshot_edit_${uuid.v4()}.png';
      final filePath = '$directory/$fileName';

      file = File(filePath);

      await file.writeAsBytes(imageInfo.data!);

      msg = 'save image : $imageInfo';
    } catch (e, stack) {
      msg = 'save failed: $e\n $stack';
      LoggerManager().debug(msg);
    }
    _cropping = false;
    LoadingDialog.dismiss();
    return file;
  }
}
