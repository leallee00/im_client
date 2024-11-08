import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:quliao/config/dimens.dart';
import 'package:quliao/widgets/rh_extended_image.dart';

class VideoMessage extends StatelessWidget {
  /// Creates a video message widget based on a [types.VideoMessage].
  const VideoMessage({
    super.key,
    required this.message,
    required this.messageWidth,
  });

  /// [types.VideoMessage].
  final types.VideoMessage message;
  final int messageWidth;

  @override
  Widget build(BuildContext context) {
    double videoWidth = message.width ?? 0;
    double videoHeight = message.height ?? 0;

    final Size size = Size(videoWidth, videoHeight);

    String thumbnailUrl = '';
    if (null != message.metadata) {
      thumbnailUrl = message.metadata!['thumbnail'];
    }

    return Container(
      constraints: BoxConstraints(
        maxHeight: videoWidth,
        minWidth: 170,
      ),
      child: AspectRatio(
        aspectRatio: size.aspectRatio > 0 ? size.aspectRatio : 1,
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: videoWidth,
              height: videoHeight,
              child: RHExtendedImage.network(
                thumbnailUrl,
                width: videoWidth,
                height: videoHeight,
                borderRadius: BorderRadius.circular(Dimens.gap_dp4),
                loadingWidget: Container(
                  width: videoWidth,
                  height: videoHeight,
                  alignment: Alignment.center,
                  child: CupertinoActivityIndicator(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ),
            Icon(
              Icons.play_circle_outline,
              size: Dimens.font_sp1 * 40,
              color: Theme.of(context).colorScheme.surface,
            ),
          ],
        ),
      ),
    );
  }
}