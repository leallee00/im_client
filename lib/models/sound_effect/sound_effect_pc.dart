
import 'package:quliao/models/sound_effect/sound_effect_if.dart';
import 'package:quliao/models/sound_effect/type_def.dart';
import 'package:quliao/pub/log.dart';
import 'package:dart_vlc/dart_vlc.dart';

class SoundEffectPc extends SoundEffectIf {
  final Map<SoundEffectType, String?> windowEffectAsset =
  <SoundEffectType, String?>{};
  bool _mPlayerIsInited = false;
  bool busy = false;

  final windowPlayer = Player(id: 69420);

  Future<void> playWithType(SoundEffectType type) async {
    if (type == SoundEffectType.none) {
      return;
    }

    log(
        "想要播放声音------------------------------------------------------------ $type");

    if (!busy && _mPlayerIsInited) {
      var asset = windowEffectAsset[type] ?? "";
      busy = true;
      log("播放声音${type} -----------------");
      windowPlayer.open(Media.asset(asset));
      windowPlayer.play();
      busy = false;
    } else {
      log(
          "忙碌中，播放不了 busy:$busy, isInit:$_mPlayerIsInited ------------------------------");
    }
  }

  Future<void> init() async {
    log("初始化音效-----------_mPlayerIsInited:${_mPlayerIsInited}-------------");
    if (_mPlayerIsInited) {
      log("已经初始化过了，不需再次初始化");
      return;
    }
    windowEffectAsset[SoundEffectType.msgReceived] = "assets/effect_sound/notify.wav";
    windowEffectAsset[SoundEffectType.msgSend] = "assets/effect_sound/notify.wav";
    _mPlayerIsInited = true;
    log("初始化音效完成-------${_mPlayerIsInited}-----------------");
  }

  Future<void> Uninit() async {
    _mPlayerIsInited = false;
    windowPlayer.stop();
    windowPlayer.dispose();
  }

  Future startRecorder() async{
    
  }
}
