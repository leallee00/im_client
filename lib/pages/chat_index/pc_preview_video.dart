import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

class PcPreviewVideoWidget extends StatefulWidget {
  const PcPreviewVideoWidget({
    super.key,
    required this.url,
  });

  final String url;

  @override
  State<StatefulWidget> createState() => _PcPreviewVideoWidgetState();
}

class _PcPreviewVideoWidgetState extends State<PcPreviewVideoWidget> {
  // Create a [Player] to control playback.
  late final player = Player();

  // Create a [VideoController] to handle video output from [Player].
  late final controller = VideoController(player);

  @override
  void initState() {
    super.initState();
    player.open(Media(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: Container(
          color: Colors.black,
          child: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * 9.0 / 16.0,
              // Use [Video] widget to display video output.
              child: Video(controller: controller),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }
}
