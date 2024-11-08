// import 'dart:html';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter_sound/flutter_sound.dart';
import 'package:flutter_sound/public/flutter_sound_player.dart';
import 'package:flutter_sound/public/util/flutter_sound_helper.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:intl/intl.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'package:quliao/models/sound_effect/sound_effect_if.dart';
import 'package:quliao/models/sound_effect/type_def.dart';
import 'package:quliao/pub/log.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

import 'package:vibration/vibration.dart';
import 'package:logger/logger.dart' show Level, Logger;

// const int _tSampleRate = 44100;
// const int _tNumChannels = 1;

class SoundEffectPhone extends SoundEffectIf {
  FlutterSoundPlayer? _mPlayer;

  // 录音
  late FlutterSoundRecorder recorder = FlutterSoundRecorder();
  var recording = false;
  var currentPath = "";
  
  Codec codec = Platform.isAndroid? Codec.aacMP4 : Codec.pcm16WAV;

  final Map<SoundEffectType, Uint8List?> _effectData = <
      SoundEffectType,
      Uint8List?>{};
  bool _mPlayerIsInited = false;
  bool busy = false;

  // final Map<SoundEffectType, String> _effectFile = <SoundEffectType, String>{
  //   SoundEffectType.msgReceived: "assets/effect_sound/received.wav",
  //   SoundEffectType.msgSend:"assets/effect_sound/send.wav"
  // };
  // String receivedf = "assets/effect_sound/received.wav";
  // String sendf = "assets/effect_sound/send.wav";

  // void playWithData(Uint8List? data) async {
  //   log("playWithData", deep: 10);
  //   if (!busy && _mPlayerIsInited) {
  //     busy = true;
  //     await _mPlayer!.feedFromStream(data!).then((value) => busy = false);
  //   }
  // }

  Future<void> playWithType(SoundEffectType type) async {
    log("playWithType--------------------------", deep: 10);
    if (type == SoundEffectType.none) {
      return;
    }

    if (type == SoundEffectType.msgReceived) {
      Vibration.vibrate();
    }

    if (!busy && _mPlayerIsInited) {
      var data = _effectData[type];
      if (data == null) {
        log("类型为 ${type} 的声音资源不存在----------------------");
        return;
      }
      busy = true;
      await _mPlayer!.startPlayer(

          fromDataBuffer: data,
          // codec: Codec.mp3,
          codec: Codec.pcm16,
          whenFinished: () {
            _mPlayer?.stopPlayer();
            busy = false;
          });
      log("播放声音${type} -----------------");
      // await _mPlayer!.feedFromStream(data).then((value) => busy = false);
      // _mPlayer.
    } else {
      log(
          "忙碌中，播放不了 busy:$busy, isInit:$_mPlayerIsInited ------------------------------");
    }
  }

  Future<Uint8List> getAssetData(String path) async {
    var asset = await rootBundle.load(path);
    return asset.buffer.asUint8List();
  }

  Future<void> init() async {
    // log("初始化音效-----------_mPlayerIsInited:${_mPlayerIsInited}-------------");
    if (_mPlayerIsInited) {
      log("已经初始化过了，不需再次初始化");
      return;
    }

    _mPlayer = FlutterSoundPlayer(logLevel: Level.nothing);

    


    await _mPlayer!.openPlayer();

    // _effectData[SoundEffectType.msgReceived] = FlutterSoundHelper().waveToPCMBuffer(
    //   inputBuffer: await getAssetData("assets/effect_sound/receiveduse.mp3"),
    // );
    _effectData[SoundEffectType.msgReceived] =
        FlutterSoundHelper().waveToPCMBuffer(
          inputBuffer: await getAssetData("assets/effect_sound/notify.wav"),
        );
    _effectData[SoundEffectType.msgSend] = FlutterSoundHelper().waveToPCMBuffer(
      inputBuffer: await getAssetData("assets/effect_sound/notify.wav"),
    );

    // await _mPlayer!.startPlayerFromStream(
    //   codec: Codec.pcm16,
    //   numChannels: _tNumChannels,
    //   // sampleRate: _tSampleRate,
    // );

    _mPlayerIsInited = true;
    log("初始化音效完成-------${_mPlayerIsInited}-----------------");
  }

  Future<void> Uninit() async {
    _mPlayerIsInited = false;
    // _mPlayer!.stopPlayer();
    _mPlayer!.closePlayer();
    _mPlayer = null;

    stopRecorder();
  }

  Future startRecorder () async{
    record();
  }

  Future stopRecorder () async{

  }
}

extension SoundPlayer on SoundEffectPhone {

  Future playSound(String path, Codec codec) async{
    if (path.isEmpty) return;
    logDebug("debug info - $path");
    if (File(path).existsSync()) {
      await _mPlayer!.startPlayer(
        fromURI: path,
        codec: codec,
        whenFinished: () {
          _mPlayer?.stopPlayer();
          busy = false;
      });
    }
  }
}

extension SoundRecorder on SoundEffectPhone {

  Future checkRecorder() async {

    var microphone = Permission.microphone;
    PermissionStatus status = await microphone.status;
    if (status != PermissionStatus.granted || status.isLimited) {
      throw RecordingPermissionException("Please check project permission setting");
    }

    await recorder.openRecorder();
  }

  void stopRecorder () async{
    await recorder.stopRecorder().then((value) {
      recording = false;
    });

  }

  Future record() async {
    if (recorder.isRecording) return;

    var dirPath = await getTemporaryDirectory();
    var suffix = Platform.isIOS? "wav" : "m4a";
    var fileName = "${dirPath.path}/${DateTime.now().millisecondsSinceEpoch}.$suffix";

    currentPath = fileName;

    checkRecorder().then((value) {
      recorder.startRecorder(toFile: fileName, codec: codec).then((value)  {
        recording = true;
      });
    });
  }

  // late  callback  sandbox future then timer file to data

}