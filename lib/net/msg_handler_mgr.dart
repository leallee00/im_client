// import 'dart:io';
//
// import 'package:quliao/db/db.dart';
// import 'package:quliao/event/event_bus.dart';
// import 'package:quliao/event/event_modul.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/pages/chat_private/chat.dart';

// import 'package:quliao/models/user/userinfo.dart';
// import 'package:quliao/net/socket.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pub/log.dart';
import 'package:protobuf/protobuf.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:vibration/vibration.dart';
// import 'package:fixnum/fixnum.dart';

import '../event/event_modul.dart';
import '../models/sound_effect/sound_effect.dart';
import '../models/sound_effect/type_def.dart';

typedef bool MsgHandler(
    GeneratedMessage msg, PBMessage pbMessage, EnMsgFrom enMsgFrom);

var pbNameMsgReceipt = MsgReceipt().info_.qualifiedMessageName;

class _Handler {
  late MsgHandler msgHandler;
  late GeneratedMessage msg;
  late SoundEffectType soundEffect;
}

class MsgHandlerMgr {
  final Map<String, _Handler> _msgHandler = Map<String, _Handler>();

  // 注册handler
  bool RegMsgHandler(GeneratedMessage msg, MsgHandler handler,
      {SoundEffectType soundEffect = SoundEffectType.none}) {
    // log("---------------注册一个消息句柄 --${msg.info_.qualifiedMessageName}-------------");
    if (_msgHandler[msg.info_.qualifiedMessageName] == null) {
      _msgHandler[msg.info_.qualifiedMessageName] = _Handler()
        ..msgHandler = handler
        ..msg = msg
        ..soundEffect = soundEffect;
      return true;
    }

    log("消息 ${msg.info_.qualifiedMessageName} 已经有一个handler注册了");
    return false;
  }

  /// 移除handler
  void removeMsgHandler(GeneratedMessage msg) {
    _msgHandler[msg.info_.qualifiedMessageName] = _Handler();
  }

  // 本机消息来调用这个函数派发消息处理
  Future<bool> onMsg(PBMessage pbMsg, EnMsgFrom enMsgFrom) async {
    var result = false;
    var handler = _msgHandler[pbMsg.pbName];

    if (handler != null) {
      // 底层如果注册了句柄就处理一下
      var msg = handler.msg.deepCopy();
      msg.mergeFromBuffer(pbMsg.pbData);
      result = handler.msgHandler(msg, pbMsg, enMsgFrom);
      LoggerManager().debug('收到新消息 name: ${pbMsg.pbName} \n srcId: ${pbMsg.pbCommData.srcId} \n aimId: ${pbMsg.pbCommData.aimId} \n groupId: ${pbMsg.pbCommData.groupId}');
      if (result && pbMsg.pbCommData.srcId.toInt() != AppUserInfo().imId) {
        if (pbMsg.pbCommData.groupId.toInt() > 0) {
          final groupInfo = GroupInfo();
          await groupInfo.fetchGroupData(pbMsg.pbCommData.groupId.toInt());
          if (groupInfo.noDisturb == 0) {
            SoundEffect().playWithType(handler.soundEffect);
          }
        } else {
          final friendInfo = FriendInfo();
          await friendInfo.LoadFriendData(
            pbMsg.pbCommData.srcId.toInt(),
          );
          if (friendInfo.noDisturb == 0) {
            SoundEffect().playWithType(handler.soundEffect);
          }
        }
      }
    }

    return result;
  }

// 网络消息到来调用这个函数派发消息
//   bool onNetMsg(PBMessage pbMsg){
//     var result = false;
//     var handler = _msgHandler[pbMsg.pbName];
//
//     if (handler != null){
//       // 底层如果注册了句柄就处理一下
//       var msg = handler.msg.deepCopy();
//       msg.mergeFromBuffer(pbMsg.pbData);
//       result = handler.msgHandler(msg,pbMsg);
//     }
//
//     // 如果需要回执就回一个，这里多了一个回执发送
//     // if (pbMsg.pbCommData.needReadReceipt
//     //     && pbMsg.pbName != pbNameMsgReceipt
//     //     && pbMsg.pbCommData.srcId != AppUserInfo.instance.imId) {
//     //   log("网络层发送已收回执，收到的消息:sn->${pbMsg.pbCommData.msgSn} name->${pbMsg.pbName} Receipt state->${MSG_STATE.RECEIVED}");
//     //   sendReceiptMsg(pbMsg.pbCommData, beginTime: Int64(0), state:MSG_STATE.RECEIVED);
//     // }
//
//     return result;
//   }
}
