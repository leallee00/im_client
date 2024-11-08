import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:quliao/db/db.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/pages/chat_group/flyer_chat/chat_group_change_to_message.dart';
import 'package:quliao/pages/chat_private/chat.dart';
import 'package:quliao/pb/pb_pub/comm.pbenum.dart';
import 'package:quliao/utils/log/manager.dart';

class ConversationController extends GetxController {
  static ConversationController to(int groupId) => Get.find(
        tag: 'conversation_$groupId',
      );

  var unreadAtMessageList = <types.Message>[].obs;

  Future<void> loadMessage(int groupId) async {
    var messages = await dbMsg?.query(
      tbGroupMsgTable,
      where: "groupId=? and msgStatus<? and srcId!=?",
      whereArgs: [groupId, MSG_STATE.READ.value, AppUserInfo().imId],
      // limit: 20,
      // offset: offSet,
      orderBy: "msgTime desc",
    );

    if (null != messages && messages.isNotEmpty) {
      List<ChatGroupData> lsCPData = <ChatGroupData>[];
      List<types.Message> messageList = [];

      for (var cpd in messages) {
        try {
          var d = ChatGroupData();

          /// 等待加载用户信息
          await d.initWithMap(cpd);
          final messageMap = await changeToGroupMessageMap(d);
          if (!messageMap.keys.contains('type')) {
            continue;
          }
          lsCPData.insert(0, d);
          types.Message message = types.Message.fromJson(messageMap);
          if (null != message.metadata) {
            /// 消息 at
            final metadata = message.metadata;
            if (null != metadata && metadata.containsKey('atNames')) {
              final String? atNameIdMapJson = metadata['atNameIdMap'];
              if (null != atNameIdMapJson) {
                LoggerManager().debug('conversation controller atNameIdMapJson =====> $atNameIdMapJson');
                Map<String, dynamic> atMap =
                    jsonDecode(atNameIdMapJson) as Map<String, dynamic>;

                for (final map in atMap.entries) {
                  if (map.key == '@all') {
                    messageList.add(message);
                  } else if (map.value == AppUserInfo().imId) {
                    messageList.add(message);
                  }
                }

                // final contains = atMap.values.contains(AppUserInfo().imId);
                // if (contains) {
                //   messageList.add(message);
                // }
              }
            }
          }
        } catch (error) {
          continue;
        }
      }

      unreadAtMessageList.value = messageList;
    }
  }

  Future<void> updateAtMessage(
    int groupId,
    types.Message message,
  ) async {
    final dataList = await dbMsg?.query(
      tbGroupMsgTable,
      where: "groupId=? and msgSn=?",
      whereArgs: [groupId, message.id],
      orderBy: "msgTime desc",
    );
    if (null != dataList && dataList.isNotEmpty) {
      LoggerManager().debug(
        'conversation controller updateAtMessage ===============> $dataList',
      );
      final String condition = 'groupId=$groupId and msgSn=${message.id}';
      dbMsg
          ?.update(
        tbGroupMsgTable,
        {
          "msgStatus": MSG_STATE.READ.value,
        },
        where: condition,
      )
          .then((value) {
        LoggerManager().debug(
            'conversation controller updateAtMessage result ===============> $value');
      });
    }
  }
}
