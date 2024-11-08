import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/db/dao/group_msg.dart';
import 'package:quliao/db/dao/private_msg.dart';
import 'package:quliao/db/database.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:quliao/global/enum/load_state.dart';
import 'package:quliao/models/msg_struct.dart';
import 'package:quliao/pages/chat_group/flyer_chat/chat_group_change_to_message.dart';
import 'package:quliao/pages/chat_private/chat.dart';
import 'package:quliao/pages/chat_private/flyer_chat/chat_private_change_to_message.dart';

import '../../../../../../utils/log/manager.dart';

class SearchMediaController extends GetxController {
  static SearchMediaController to(String tag) => Get.find(tag: tag);

  final Rx<LoadState> loadState = Rx(LoadState.loading);

  PrivateMsgDao? get msgDao => AppDatabase().privateMsgDao;

  GroupMessageDao? get groupMsgDao => AppDatabase().groupMessageDao;

  final RxList<types.Message> messageList = RxList();

  Future<void> loadHistory(
    int conversationId, {
    bool privateChat = true,
    types.MessageType? type,
  }) async {
    try {
      loadState.value = LoadState.loading;
      final dataList = <types.Message>[];
      if (privateChat) {
        final result = await msgDao?.query(conversationId) ?? [];
        for (final item in result) {
          var d = ChatPrivateData()..initWithMap(item);

          final messageMap = await changeToMessageMap(d);
          if (!messageMap.keys.contains('type')) {
            continue;
          }
          types.Message message = types.Message.fromJson(messageMap);
          if (null != type) {
            if (message.type == type) {
              dataList.add(message);
              LoggerManager().debug('历史聊天记录 ======> $item');
            }
          } else {
            if (message.type == types.MessageType.image ||
                message.type == types.MessageType.video) {
              dataList.add(message);
              LoggerManager().debug('历史聊天记录 ======> $item');
            }
          }
        }
      } else {
        final result = await groupMsgDao?.all(conversationId) ?? [];
        for (final item in result) {
          var d = ChatGroupData();
          await d.initWithMap(item);
          final messageMap = await changeToGroupMessageMap(d);
          if (!messageMap.keys.contains('type')) {
            continue;
          }
          types.Message message = types.Message.fromJson(messageMap);
          if (null != type) {
            if (message.type == type) {
              dataList.add(message);
              LoggerManager().debug('历史聊天记录 ======> $item');
            }
          } else {
            if (message.type == types.MessageType.image ||
                message.type == types.MessageType.video) {
              dataList.add(message);
              LoggerManager().debug('历史聊天记录 ======> $item');
            }
          }
        }
      }
      messageList.addAll(dataList);
      if (messageList.isEmpty) {
        loadState.value = LoadState.empty;
      } else {
        loadState.value = LoadState.successful;
      }
    } catch (error) {
      loadState.value = LoadState.empty;
    }
    update();
  }
}
