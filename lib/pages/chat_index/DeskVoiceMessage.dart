import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/config/images.dart';
import 'package:quliao/global/controller/im_controller.dart';
import 'package:quliao/utils/sound_player.dart';
import 'package:just_audio/just_audio.dart' as jsAudio;

class DeskVoiceMessage extends StatefulWidget {
  const DeskVoiceMessage({
    super.key,
    required this.msgId,
    required this.url,
    required this.duration,
    this.me,
  });

  final String msgId;
  final String url;
  final Duration duration;
  final bool? me;

  @override
  State<StatefulWidget> createState() => _DeskVoiceMessageState();
}

class _DeskVoiceMessageState extends State<DeskVoiceMessage> with SingleTickerProviderStateMixin {
  bool isPlaying = false;
  Duration? audioDuration;
  int duration = 0;
  String? durationStr;
  StreamSubscription<Object>? subscription;
  Worker? msgIdStream;

  @override
  void initState() {
    super.initState();
    subscription = SoundPlayer.playStateListener(listener: (PlayerState state) {
      if (state == PlayerState.completed) {
        /// 播放完成
        ImController.to.currentPlayedMsgId = '';
      }
    });
    msgIdStream = ever(ImController.to.currentAudioMsgId, (value) {
      Future.delayed(Duration.zero, () {
        if (mounted) {
          setState(() {
            isPlaying = value.isNotEmpty && value == widget.msgId;
          });
        }
      });
    });
  }

  String _formatAudioDuration(int duration) {
    return duration < 60 ? "''$duration" : '${duration ~/ 60}:${duration % 60}';
  }

  Widget _gapWidget(int duration) {
    if (duration <= 10) {
      return Gaps.hGap10;
    } else if (duration <= 20) {
      return Gaps.hGap20;
    } else if (duration <= 40) {
      return Gaps.hGap32;
    } else {
      return Gaps.hGap60;
    }
  }

  _playSound() async {
    if (!SoundPlayer.isInited) {
      SoundPlayer.initSoundPlayer();
    }
    if (isPlaying) {
      SoundPlayer.stop();
      ImController.to.currentPlayedMsgId = '';
    } else {
      SoundPlayer.play(url: widget.url);
      ImController.to.currentPlayedMsgId = widget.msgId;
    }
  }

  @override
  void dispose() {
    if (isPlaying) {
      ImController.to.currentPlayedMsgId = '';
    }
    subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final borderRadius = widget.me ?? true
        ? BorderRadius.only(
            topLeft: Radius.circular(Dimens.gap_dp10),
            topRight: Radius.circular(Dimens.gap_dp2),
            bottomLeft: Radius.circular(Dimens.gap_dp2),
            bottomRight: Radius.circular(Dimens.gap_dp10),
          )
        : BorderRadius.only(
            topLeft: Radius.circular(Dimens.gap_dp2),
            topRight: Radius.circular(Dimens.gap_dp10),
            bottomLeft: Radius.circular(Dimens.gap_dp10),
            bottomRight: Radius.circular(Dimens.gap_dp10),
          );

    return GestureDetector(
      onTap: _playSound,
      child: Container(
        padding: EdgeInsets.all(Dimens.gap_dp10),
        decoration: BoxDecoration(
          color: widget.me ?? true
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.surface,
          borderRadius: borderRadius,
        ),
        constraints: const BoxConstraints(maxWidth: 240),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: widget.me ?? true
              ? [
                  Text(
                    _formatAudioDuration(widget.duration.inSeconds),
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Theme.of(context).colorScheme.surface,
                        ),
                  ),
                  Gaps.hGap6,
                  isPlaying
                      ? Image(
                          image: Images.iconVoiceSendPlaying,
                          width: Dimens.gap_dp16,
                          height: Dimens.gap_dp16,
                          // color: Colors.white,
                        )
                      : Image(
                          image: Images.iconVoiceSend,
                          width: Dimens.gap_dp16,
                          height: Dimens.gap_dp16,
                          color: Colors.white,
                        ),
                  _gapWidget(duration),
                ]
              : [
                  isPlaying
                      ? Image(
                          image: Images.iconVoiceReceivePlaying,
                          width: Dimens.gap_dp16,
                          height: Dimens.gap_dp16,
                          // color: Colors.white,
                        )
                      : Image(
                          image: Images.iconVoiceReceive,
                          width: Dimens.gap_dp16,
                          height: Dimens.gap_dp16,
                        ),
                  Gaps.hGap6,
                  Text(
                    _formatAudioDuration(widget.duration.inSeconds),
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  _gapWidget(duration),
                ],
        ),
      ),
    );
  }
}
