// 统一调用接口
import 'package:quliao/models/sound_effect/type_def.dart';


abstract class SoundEffectIf {
  Future<void> playWithType(SoundEffectType type);
  Future<void> init();
  Future<void> Uninit(); 

  Future startRecorder();
}

// mixin SoundRecordMix on SoundEffectIf {
//   Future startRecorder();
// }

