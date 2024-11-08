import 'dart:convert';
import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:protobuf/protobuf.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/global/repository/user_repository.dart';
import 'package:quliao/models/msg_struct.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/models/user/userinfo.dart';
import 'package:quliao/modules/conversation/repository/im_conversation_repository.dart';

// ignore: library_prefixes
// import 'package:flutter_chat_types/flutter_chat_types.dart' as ChatTypes;
// import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/pb/pb_msg/gate/gate.pb.dart';
import 'package:quliao/pb/pb_msg/user_center/userCenter.pb.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pb/pb_pub/comm.pbenum.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:quliao/models/user/userinfo.dart' as $locUinfo;
import 'package:quliao/utils/log/manager.dart';

Future<Map<String, dynamic>> changeToMessageMap(
  ChatPrivateData cpData,
  /**FriendInfo userInfo */
) async {
  Map<String, dynamic> map = {};
  if (cpData.msgSn > 0) {
    if (cpData.pbMsg.pbName == 'pb_pub.TakeScreenShotNotify') {
      cpData.screenshot = true;
    }
    ChatText chatText = cpData.pbServiceMsg as ChatText;

    // final userInfo = await GetUserInfo(
    //   (cpData.pbMsg.pbCommData.srcId.toInt()),
    //   userSourceVersion: cpData.pbMsg.pbCommData.userSourceVersion,
    // );

    final userInfo = await UserRepository().getUserInfo(
      cpData.srcId.toInt(),
      sourceVersion: cpData.pbMsg.pbCommData.userSourceVersion,
    );

    String type = "text";
    if (cpData.screenshot) {
      type = 'system';
      final srcId = cpData.srcId.toInt();
      if (srcId == AppUserInfo().imId) {
        chatText.text = '您在聊天中截屏了';
      } else {
        $locUinfo.UserInfo userInfo = await $locUinfo.GetUserInfo(srcId);
        final String srcNickname =
            userInfo.nickName.isEmpty ? '${userInfo.appId}' : userInfo.nickName;
        chatText.text = '$srcNickname在聊天中截屏了';
      }
    } else if (cpData.msgType == TextChatType.RECALL.value) {
      type = 'system';
      final srcId = cpData.pbMsg.pbCommData.srcId.toInt();
      if (srcId == AppUserInfo().imId) {
        chatText.text = '你撤回了一条消息';
      } else {
        chatText.text = '对方撤回了一条消息';
      }
    } else {
      if (chatText.chatType == TextChatType.TEXT) {
        type = "text";
      } else if (chatText.chatType == TextChatType.PIC) {
        type = "image";
      } else if (chatText.chatType == TextChatType.AUDIO) {
        type = "audio";
      } else if (chatText.chatType == TextChatType.FILE) {
        type = 'file';
      } else if (chatText.chatType == TextChatType.VIDEO) {
        type = 'video';
      } else if (chatText.chatType == TextChatType.RECALL) {
        type = 'system';
      } else if (chatText.chatType == TextChatType.CUSTOMIZE) {
        type = 'custom';
      }
    }
    String status = "sent";
// enum Status { delivered, error, seen, sending, sent }
// 已传递，错误，已查看，正在发送，已发送

    switch (cpData.msgStatus) {
      case MSG_STATE.RECEIVED:
        status = "sent";
        break;
      case MSG_STATE.READ:
        status = "seen";
        break;
      case MSG_STATE.END:
        status = "seen";
        break;
      case MSG_STATE.IN_BLACK_LIST:
        status = "error";
        break;
      case MSG_STATE.FAULT:
        status = "error";
        break;
      case MSG_STATE.LIMITED:
        status = "error";
        break;
      case MSG_STATE.INIT:
        status = "sending";
        break;
      case MSG_STATE.SEND:
        status = "sent";
        break;
    }
    // LoggerManager().error('createAt =========> ${cpData.msgTime.millisecondsSinceEpoch}');
    map = {
      "createdAt": cpData.msgTime.millisecondsSinceEpoch,
      "id": cpData.msgSn.toString(),
      "name": "madrid",
      "status": status,
      "type": type,
      "text": chatText.text,
      "uri": chatText.data,
      "size": 0,
    };
    map["author"] = {
      "firstName": userInfo.nickName,
      "id": cpData.pbMsg.pbCommData.srcId.toString(),
      'imageUrl': userInfo.avatar,
      // "imageUrl": userInfo.card,
      // "lastName": "",
    };
    if (chatText.chatType == TextChatType.AUDIO) {
      map['size'] = num.parse(chatText.exp['size']!);
      map['duration'] = int.parse(chatText.exp['duration']!);
    } else if (chatText.chatType == TextChatType.FILE) {
      map['size'] = num.parse(chatText.exp['size']!);
      if (null != chatText.exp['name']) {
        map['name'] = chatText.exp['name'];
      }
    } else if (chatText.chatType == TextChatType.PIC) {
      if (null != chatText.exp['width']) {
        map['width'] = num.parse(chatText.exp['width']!);
      }
      if (null != chatText.exp['height']) {
        map['height'] = num.parse(chatText.exp['height']!);
      }
    } else if (chatText.chatType == TextChatType.VIDEO) {
      if (null != chatText.exp['width']) {
        map['width'] = num.parse(chatText.exp['width']!);
      }
      if (null != chatText.exp['height']) {
        map['height'] = num.parse(chatText.exp['height']!);
      }
      if (null != chatText.exp['thumbnail']) {
        map['metadata'] = <String, dynamic>{
          'thumbnail': chatText.exp['thumbnail'],
        };
      }
    } else if (chatText.chatType == TextChatType.CUSTOMIZE) {
      LoggerManager().debug('private chat messageIds =======> ${chatText.exp}');
      final customType = chatText.exp['customType'];
      if (null != customType && customType == 'mergeForward') {
        map['metadata'] = <String, dynamic>{
          'chatType': chatText.exp['chatType'],
          'customType': 'mergeForward',
          'forwardTitle': chatText.exp['forwardTitle'],
          'forwardContent': chatText.exp['forwardContent'],
          'forwardMessageIds': chatText.exp['forwardMessageIds'],
        };
      } else if (customType == 'businessCard') {
        final name = chatText.exp['name'];
        map['text'] = '[个人名片]$name';
        map['metadata'] = <String, dynamic>{
          'name': name,
          'customType': 'businessCard',
          'avatar': chatText.exp['avatar'],
          'userId': chatText.exp['userId'],
        };
      } else if (customType == 'redPacket') {
        final redPacketData = chatText.data;
        map['text'] = '[红包消息]';
        map['metadata'] = <String, dynamic>{
          'customType': 'redPacket',
          'data': redPacketData,
          'chatType': chatText.exp['chatType'],
        };
      }
    }
  }
  return map;
}

Map<String, dynamic> messageChangeStatu(
  types.Message message,
  MsgReceipt msg,
) {
  Map<String, dynamic> map = {};

  String status = "";
// enum Status { delivered, error, seen, sending, sent }
// 已传递，错误，已查看，正在发送，已发送
  switch (msg.state) {
    case MSG_STATE.RECEIVED:
      status = "sent";
      break;
    case MSG_STATE.READ:
      status = "seen";
      break;
    case MSG_STATE.END:
      status = "seen";
      break;
    case MSG_STATE.IN_BLACK_LIST:
      status = "error";
      break;
    case MSG_STATE.FAULT:
      status = "error";
      break;
    case MSG_STATE.LIMITED:
      status = "error";
      break;
    case MSG_STATE.INIT:
      status = "sending";
      break;
    case MSG_STATE.SEND:
      status = "sent";
      break;
  }
  map = message.toJson();
  if (status.isNotEmpty) {
    map["status"] = status;
  }
  return map;
}

Future<Map<String, dynamic>> messageChangeType(
  types.Message message,
  MsgReceipt msg,
  types.MessageType type,
  Int64 msgOwnerId,
) async {
  Map<String, dynamic> map = {};

  String status = "";
// enum Status { delivered, error, seen, sending, sent }
// 已传递，错误，已查看，正在发送，已发送
  switch (msg.state) {
    case MSG_STATE.RECEIVED:
      status = "sent";
      break;
    case MSG_STATE.READ:
      status = "seen";
      break;
    case MSG_STATE.END:
      status = "seen";
      break;
    case MSG_STATE.IN_BLACK_LIST:
      status = "error";
      break;
    case MSG_STATE.FAULT:
      status = "error";
      break;
    case MSG_STATE.LIMITED:
      status = "error";
      break;
    case MSG_STATE.INIT:
      status = "sending";
      break;
    case MSG_STATE.SEND:
      status = "sent";
      break;
  }
  map = message.toJson();
  if (status.isNotEmpty) {
    map["status"] = status;
  }
  map['type'] = type.name;
  if (msgOwnerId.toInt() == AppUserInfo().imId) {
    map['text'] = '你撤回了一条消息';
  } else {
    map['text'] = '对方撤回了一条消息';
  }
  return map;
}
