import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_plugin_record_plus/const/play_state.dart';
import 'package:flutter_plugin_record_plus/const/response.dart';
import 'package:flutter_plugin_record_plus/index.dart';

typedef PlayStateListener = void Function(PlayState playState);
typedef SoundInterruptListener = void Function();
typedef ResponseListener = void Function(RecordResponse recordResponse);

/// todo 后期语音录制切换至 flutter_plugin_record
class SoundPlayer {
  static final FlutterPluginRecord _recorder = FlutterPluginRecord();
  static SoundInterruptListener? _soundInterruptListener;
  static bool isInited = false;
  static final AudioPlayer _audioPlayer = AudioPlayer();

  static initSoundPlayer() {
    if (!isInited) {
      _recorder.init();
      AudioPlayer.global.setGlobalAudioContext(const AudioContext());
      isInited = true;
    }
  }

  static Future<void> play({required String url}) async {
    _audioPlayer.stop();
    if (_soundInterruptListener != null) {
      _soundInterruptListener!();
    }
    await _audioPlayer.play(UrlSource(url));
  }

  static stop() {
    _audioPlayer.stop();
  }

  static dispose() {
    _audioPlayer.dispose();
    _recorder.dispose();
  }

  static StreamSubscription<PlayerState> playStateListener(
      {required void Function(PlayerState)? listener}) =>
      _audioPlayer.onPlayerStateChanged.listen(listener);


  static setSoundInterruptListener(SoundInterruptListener listener) {
    _soundInterruptListener = listener;
  }

  static removeSoundInterruptListener() {
    _soundInterruptListener = null;
  }

  static StreamSubscription<RecordResponse> responseListener(
      ResponseListener listener) =>
      _recorder.response.listen(listener);

  static StreamSubscription<RecordResponse> responseFromAmplitudeListener(
      ResponseListener listener) =>
      _recorder.responseFromAmplitude.listen(listener);

  /// 开始录制
  static startRecord() {
    _recorder.start();
  }

  /// 暂停录制
  static stopRecord() {
    _recorder.stop();
  }
}
