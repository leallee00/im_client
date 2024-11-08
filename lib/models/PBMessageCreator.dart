import 'package:quliao/pub/log.dart';
import 'package:protobuf/protobuf.dart';

class _msgInfo{
  late GeneratedMessage msg;
  bool needSave = false;
}

// 创建pb消息体，确定是否需要存盘
class PBMessageCreator{
  Map<String, _msgInfo> _mapPbMsg = Map<String,_msgInfo>();

  // 注册 消息
  bool regMsg(GeneratedMessage msg, [bool needSave = false]){
    if (_mapPbMsg[msg.info_.qualifiedMessageName] == null){
      _mapPbMsg[msg.info_.qualifiedMessageName] = _msgInfo()..msg = msg..needSave=needSave;
      // log("消息 ${msg.info_.qualifiedMessageName}注册成功");
      return true;
    }

    log("消息 ${msg.info_.qualifiedMessageName} 已经有一个同名消息注册了");
    return false;
  }

  GeneratedMessage? createPbMsg(String pbName, [List<int> pbData = const <int>[] ]){
    if (_mapPbMsg[pbName] == null){
      log("消息 ${pbName} 未注册， 无法创建");
      return null;
    }

    var msg = _mapPbMsg[pbName]?.msg.deepCopy();//clone();
    if (pbData != null)
      msg?.mergeFromBuffer(pbData);

    return msg;
  }

  bool needSave(String pbName){
    if (_mapPbMsg[pbName] == null){
      return false;
    }

    return _mapPbMsg[pbName]!.needSave;
  }
}