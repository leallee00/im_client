// 私聊消息结构
import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:protobuf/protobuf.dart';
import 'package:quliao/db/obox/model/private_msg_model.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/pb/pb_msg/gate/gate.pb.dart';
import 'package:quliao/utils/log/manager.dart';

import '../pb/pb_pub/comm.pb.dart';
import '../pb/pb_pub/comm.pbenum.dart';

class ChatPrivateData {
  late int id; // 自增id
  // late Int64 userId; // 当前用户的用户id
  late Int64 friendId; // INTEGER,'   // 群聊为群id， 私聊为好友id
  late Int64 msgSn; // INTEGER UNIQUE,' // 消息sn
  late Int64 srcId; // INTEGER , ' // 发送者id
  late Int64 aimId; // INTEGER,' // 接收者id
  late Int64 appId; // INTEGER,'
  late String appUserId; // TEXT,'
  late int clientType; // INTEGER,' // 发送消息的端类型
  // String pbName;// TEXT,' // 消息名称
  // late Uint8List pbData;// TEXT,' // 消息的pb数据
  late PBMessage pbMsg;
  late int msgType; //,' // 消息类型
  late MSG_STATE msgStatus; // 消息状态
  late DateTime msgTime; // 消息本身的时间，不是收到的时间
  late DateTime createTime; // 创建消息的时间
  late GeneratedMessage pbServiceMsg; // 业务实际消息

  // 控制用
  bool selected = false;
  bool isSplitLine = false;
  bool screenshot = false;

  generate(PrivateMsgModel data) {
    id = data.id;
    friendId = Int64(data.userId);
    msgSn = Int64(data.msgSn);
    srcId = Int64(data.srcId);
    pbMsg = PBMessage(
      pbName: data.pbName,
      pbCommData: PBCommData.fromBuffer(data.pbCommData),
      pbData: data.pbData,
    );
    LoggerManager().error('recallUid ========> ${data.recallUid}');
    msgType = (null != data.recallUid && data.recallUid! > 0) ? TextChatType.RECALL.value : TextChatType.TEXT.value;
    msgStatus = MSG_STATE.valueOf(data.msgState) ?? MSG_STATE.INIT;
    msgTime = DateTime.fromMillisecondsSinceEpoch(data.updatedAt);
    createTime = DateTime.fromMillisecondsSinceEpoch(data.createdAt);
    pbServiceMsg = ChatText()..mergeFromBuffer(pbMsg.pbData);
  }

  initWithMap(Map<String, dynamic> data) {
    id = data["id"]; // 自增id
    // userId = Int64(data["userId"]); // 当前用户的用户id
    friendId = Int64(data["friendId"]); // INTEGER,'   // 群聊为群id， 私聊为好友id
    msgSn = Int64(data["msgSn"]); // INTEGER UNIQUE,' // 消息sn
    srcId = Int64(data["srcId"]); // INTEGER , ' // 发送者id
    aimId = Int64(data["aimId"]); // INTEGER,' // 接收者id
    appId = Int64(data["appId"]); // INTEGER,'
    appUserId = data["appUserId"]; // TEXT,'
    clientType = data["clientType"]; // INTEGER,' // 发送消息的端类型
    // pbName    = data["pbName"];// TEXT,' // 消息名称
    // pbData    = data["pbData"];// TEXT,' // 消息的pb数据
    pbMsg = PBMessage()..mergeFromBuffer(data["pbData"]);
    final dataMsgType = data["msgType"];
    if (null == dataMsgType) {
      msgType = 0;
    } else {
      if (dataMsgType is int) {
        msgType = dataMsgType;
      } else if (dataMsgType is String) {
        msgType = MessageType.values
            .firstWhere((element) => element.name == dataMsgType)
            .index;
      }
    }
    final dataMsgStatus = data["msgStatus"];
    if (null == dataMsgStatus) {
      msgStatus = MSG_STATE.INIT;
    } else {
      if (dataMsgStatus is int) {
        msgStatus = MSG_STATE.valueOf(dataMsgStatus)!;
      } else {
        msgStatus = MSG_STATE.values
            .firstWhere((element) => element.name == dataMsgStatus);
      }
    }
    msgTime = DateTime.parse(data["msgTime"]); // 消息本身的时间，不是收到的时间
    createTime = DateTime.parse(data["createTime"]); // 创建消息的时间
    pbServiceMsg = ChatText()..mergeFromBuffer(pbMsg.pbData);
  }

  initWithPbMsg(
    PBMessage pbMsgIn, {
    bool screenshot = false,
  }) {
    // id        = 0; // 自增id
    if (pbMsgIn.pbCommData.srcId == AppUserInfo().imId) {
      friendId = pbMsgIn.pbCommData.aimId;
      msgStatus = MSG_STATE.SEND;
    } else {
      friendId = pbMsgIn.pbCommData.srcId;
      msgStatus = MSG_STATE.RECEIVED;
    }
    // userId = Int64(AppUserInfo().imId);
    // userId    = AppUserInfo().imId as Int64; //Int64(data["userId"]); // 当前用户的用户id
    // friendId  =  Int64(data["friendId"]);// INTEGER,'   // 群聊为群id， 私聊为好友id
    msgSn = pbMsgIn
        .pbCommData.msgSn; // Int64(data["msgSn"]);// INTEGER UNIQUE,' // 消息sn
    srcId =
        pbMsgIn.pbCommData.srcId; //Int64(data["srcId"]);// INTEGER , ' // 发送者id
    aimId =
        pbMsgIn.pbCommData.aimId; ////Int64(data["aimId"]);// INTEGER,' // 接收者id
    appId = pbMsgIn.pbCommData.appId; ////Int64(data["appId"]);// INTEGER,'
    appUserId = pbMsgIn.pbCommData.appUserId; //data["appUserId"];// TEXT,'
    clientType = pbMsgIn.pbCommData.srcClientType
        .value; //data["clientType"];// INTEGER,' // 发送消息的端类型
    // pbName    = data["pbName"];// TEXT,' // 消息名称
    // pbData    = data["pbData"];// TEXT,' // 消息的pb数据
    pbMsg = pbMsgIn; //PBMessage()..mergeFromBuffer(data["pbData"]);
    // msgType   = pbMsg.//data["msgType"]??0;//,' // 消息类型
    // msgStatus = MSG_STATE.SEND;//MSG_STATE.valueOf(data["msgStatus"])!;
    msgTime = DateTime.fromMillisecondsSinceEpoch(pbMsgIn.pbCommData.time
            .toInt() *
        1000); // pbMsg.pbCommData.time as DateTime;//DateTime.parse(data["msgTime"]); // 消息本身的时间，不是收到的时间
    createTime =
        DateTime.now(); //DateTime.parse(data["createTime"]); // 创建消息的时间
    pbServiceMsg = ChatText()..mergeFromBuffer(pbMsg.pbData);
    msgType = TextChatType.TEXT.value;
    this.screenshot = screenshot;
  }

  initWithPBMessage(
    PBMessage pbMsgIn, {
    bool screenshot = false,
  }) {
    if (pbMsgIn.pbCommData.srcId == AppUserInfo().imId) {
      friendId = pbMsgIn.pbCommData.aimId;
      msgStatus = MSG_STATE.SEND;
    } else {
      friendId = pbMsgIn.pbCommData.srcId;
      msgStatus = MSG_STATE.RECEIVED;
    }
    msgSn = pbMsgIn.pbCommData.msgSn;
    srcId = pbMsgIn.pbCommData.srcId;
    aimId = pbMsgIn.pbCommData.aimId;
    appId = pbMsgIn.pbCommData.appId;
    appUserId = pbMsgIn.pbCommData.appUserId;
    clientType = pbMsgIn.pbCommData.srcClientType.value;
    pbMsg = pbMsgIn;
    msgTime = DateTime.fromMillisecondsSinceEpoch(
      pbMsgIn.pbCommData.time.toInt() * 1000,
    );
    createTime = DateTime.now();
    pbServiceMsg = ChatText()..mergeFromBuffer(pbMsg.pbData);
    msgType = (pbServiceMsg as ChatText).chatType.value;
    this.screenshot = screenshot;
  }
}
