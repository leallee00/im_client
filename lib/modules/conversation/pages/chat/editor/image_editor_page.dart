import 'dart:ffi';
import 'dart:io';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/modules/conversation/pages/chat/editor/image_editor_controller.dart';
import 'package:quliao/utils/crop_editor_helper.dart';
import 'package:quliao/widgets/common_widget.dart';
import 'package:uuid/uuid.dart';

class ImageEditorPage extends StatefulWidget {
  const ImageEditorPage({
    super.key,
    required this.filePath,
    this.callback,
  });

  final String filePath;
  final Function(File?)? callback;

  @override
  State<StatefulWidget> createState() => _ImageEditorPageState();
}

class _ImageEditorPageState extends State<ImageEditorPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ImageEditorController>(
      init: ImageEditorController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          '编辑图片',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: Dimens.font_sp20,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () {
                          widget.callback?.call(null);
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.done),
                        onPressed: () async {
                          final file = await controller.cropImage(context);
                          if (context.mounted) {
                            if (null != widget.callback) {
                              widget.callback!(file);
                            }
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ExtendedImage.file(
                  File(widget.filePath),
                  fit: BoxFit.contain,
                  mode: ExtendedImageMode.editor,
                  extendedImageEditorKey: controller.editorKey,
                  cacheRawData: true,
                  borderRadius: BorderRadius.circular(16),
                  initEditorConfigHandler: (ExtendedImageState? state) {
                    return EditorConfig(
                      maxScale: 4.0,
                      cropRectPadding: const EdgeInsets.all(20.0),
                      hitTestSize: 20.0,
                      initCropRectType: InitCropRectType.imageRect,
                      cropAspectRatio: controller.aspectRatioItem.value?.value,
                      editActionDetailsIsChanged: (EditActionDetails? details) {
                        //print(details?.totalScale);
                      },
                    );
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: Dimens.gap_dp16,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButtonWithIcon(
                      icon: const Icon(Icons.crop),
                      label: const Text(
                        'Crop',
                        style: TextStyle(fontSize: 10.0),
                      ),
                      onPressed: () {
                        showDialog<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return Column(
                              children: <Widget>[
                                const Expanded(
                                  child: SizedBox(),
                                ),
                                SizedBox(
                                  height: 100,
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    padding: const EdgeInsets.all(20.0),
                                    itemBuilder: (_, int index) {
                                      final AspectRatioItem item =
                                          controller.aspectRatios[index];
                                      return GestureDetector(
                                        child: AspectRatioWidget(
                                          aspectRatio: item.value,
                                          aspectRatioS: item.text,
                                          isSelected: item ==
                                              controller.aspectRatioItem.value,
                                        ),
                                        onTap: () {
                                          Navigator.pop(context);
                                          controller.updateAspectRatio(item);
                                        },
                                      );
                                    },
                                    itemCount: controller.aspectRatios.length,
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                    FlatButtonWithIcon(
                      icon: const Icon(Icons.flip),
                      label: const Text(
                        'Flip',
                        style: TextStyle(fontSize: 10.0),
                      ),
                      textColor: Colors.white,
                      onPressed: () {
                        controller.editorKey.currentState?.flip();
                      },
                    ),
                    FlatButtonWithIcon(
                      icon: const Icon(Icons.rotate_left),
                      label: const Text(
                        'Rotate Left',
                        style: TextStyle(fontSize: 8.0),
                      ),
                      onPressed: () {
                        controller.editorKey.currentState?.rotate(right: false);
                      },
                    ),
                    FlatButtonWithIcon(
                      icon: const Icon(Icons.rotate_right),
                      label: const Text(
                        'Rotate Right',
                        style: TextStyle(fontSize: 8.0),
                      ),
                      onPressed: () {
                        controller.editorKey.currentState?.rotate(right: true);
                      },
                    ),
                    FlatButtonWithIcon(
                      icon: const Icon(Icons.restore),
                      label: const Text(
                        'Reset',
                        style: TextStyle(fontSize: 10.0),
                      ),
                      onPressed: () {
                        controller.editorKey.currentState!.reset();
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
