import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/db/dao/group_msg.dart';
import 'package:quliao/db/dao/private_msg.dart';
import 'package:quliao/db/database.dart';
import 'package:quliao/models/msg_struct.dart';
import 'package:quliao/pages/chat_group/flyer_chat/chat_group_change_to_message.dart';
import 'package:quliao/pages/chat_private/chat.dart';
import 'package:quliao/pages/chat_private/flyer_chat/chat_private_change_to_message.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:quliao/pub/func.dart';

import '../../../../../utils/log/manager.dart';

class SearchMessageController extends GetxController {
  static SearchMessageController to(String tag) => Get.find(tag: tag);

  final TextEditingController keywordInput = TextEditingController();

  PrivateMsgDao? get msgDao => AppDatabase().privateMsgDao;
  GroupMessageDao? get groupMsgDao => AppDatabase().groupMessageDao;

  final List<types.Message> messageList = [];
  final RxList<types.Message> searchResult = RxList();

  Future<void> loadHistory(
    int conversationId, {
    bool privateChat = true,
  }) async {
    try {
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
          if (message.type == types.MessageType.text) {
            dataList.add(message);
            LoggerManager().debug('历史聊天记录 ======> $item');
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
          if (message.type == types.MessageType.text) {
            dataList.add(message);
            LoggerManager().debug('历史聊天记录 ======> $item');
          }
        }
      }
      messageList.addAll(dataList);
    } catch (error) {
      LoggerManager().debug('$error');
    }
  }

  Future<void> hideKeyboard(
    BuildContext context,
  ) async {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  Future<void> onChanged(String value) async {
    searchResult.clear();
    if (value.isEmpty) {
      return;
    }
    final result = <types.Message>[];
    for (final item in messageList) {
      if (item is types.TextMessage) {
        if (item.text.contains(value)) {
          result.add(item);
        }
      }
    }
    searchResult.addAll(result);
    if (searchResult.isEmpty) {
      showToast('没有找到此信息');
    }
  }

  @override
  void onClose() {
    keywordInput.dispose();
    super.onClose();
  }
}
