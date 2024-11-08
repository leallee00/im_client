import 'dart:typed_data';

import 'package:flutter_sound/flutter_sound.dart';
import 'package:flutter_sound/public/flutter_sound_player.dart';
import 'package:flutter_sound/public/util/flutter_sound_helper.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:quliao/models/sound_effect/sound_effect_if.dart';
import 'package:quliao/models/sound_effect/sound_effect_pc.dart';
import 'package:quliao/models/sound_effect/sound_effect_phone.dart';
import 'package:quliao/models/sound_effect/type_def.dart';
import 'package:quliao/pages/windows/client/window_client.dart';
import 'package:quliao/pb/google/protobuf/api.pb.dart';
import 'package:quliao/pub/log.dart';
import 'package:dart_vlc/dart_vlc.dart';

////////////////////////////////////////////////////////////////////////////////
// 对外提供的统一播放入口
////////////////////////////////////////////////////////////////////////////////

class SoundEffect {
  /////////////////////////////////////////////
  //单例方法开始
  factory SoundEffect() => _getInstance();
  static SoundEffect get instance => _getInstance();
  static SoundEffect _instance = new SoundEffect._internal();

  SoundEffect._internal() {
    init();
  }

  static SoundEffect _getInstance() {
    // 初始化数据的机会
    return _instance;
  }
  //单例方法结束
  /////////////////////////////////////////////

  // 具体播放声音的实例
  late  SoundEffectIf _soundEffect;

  // 播放入口
  Future<void> playWithType(SoundEffectType type) async {
    _soundEffect.playWithType(type);
  }

  Future<void> init() async {
    if(WindowClient.instance.isPC()) {
      log("init sound player with pc");
      _soundEffect = SoundEffectPc();
    }else{
      log("init sound player with pc");
      _soundEffect = SoundEffectPhone();
    }
    _soundEffect.init();
  }

  Future<void> Uninit() async {
    _soundEffect.Uninit();
  }
}

extension SoundRecorderExt on SoundEffect {

  Future startRecorder() async {
    _soundEffect.startRecorder();
  }
}
