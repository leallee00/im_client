import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:quliao/widgets/rh_extended_image.dart';

class ImageMessageWidget extends StatelessWidget {
  const ImageMessageWidget({
    super.key,
    required this.imageMessage,
    required this.messageWidth,
  });

  final types.ImageMessage imageMessage;
  final int messageWidth;

  @override
  Widget build(BuildContext context) {
    double imageWidth = imageMessage.width ?? 0;
    double imageHeight = imageMessage.height ?? 0;

    final Size size = Size(imageWidth, imageHeight);

    if (imageWidth < imageHeight) {
      final double aspectRatio = imageHeight / imageWidth;
      imageHeight = imageWidth * aspectRatio;
    } else {
      final double aspectRatio = imageHeight / imageWidth;
      imageHeight = messageWidth / aspectRatio;
    }

    // final String imageThumb = '${imageMessage.uri}?x-oss-process=image/resize,w_$messageWidth,h_$messageWidth';

    return Container(
      constraints: BoxConstraints(
        maxHeight: messageWidth.toDouble(),
        minWidth: 120,
      ),
      child: AspectRatio(
        aspectRatio: size.aspectRatio > 0 ? size.aspectRatio : 1,
        child: imageMessage.uri.startsWith('http')
            ? RHExtendedImage.network(
                imageMessage.uri,
                // width: imageWidth,
                // height: imageHeight,
                fit: BoxFit.contain,
                // backgroundColor: const Color(0xFF000000),
                loadingWidget: Container(
                  width: imageWidth,
                  height: imageHeight,
                  alignment: Alignment.center,
                  child: CupertinoActivityIndicator(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                encrypted: true,
              )
            : RHExtendedImage.file(
                File(imageMessage.uri),
                // width: imageWidth,
                // height: imageHeight,
                fit: BoxFit.contain,
                // backgroundColor: const Color(0xFF000000),
                loadingWidget: Container(
                  width: imageWidth,
                  height: imageHeight,
                  alignment: Alignment.center,
                  child: CupertinoActivityIndicator(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
      ),
    );
  }
}
