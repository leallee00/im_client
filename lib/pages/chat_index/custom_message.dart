import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/flutter_chat_ui/src/widgets/message/red_packet_message.dart';
import 'package:quliao/flutter_chat_ui/src/widgets/state/inherited_user.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/modules/contacts/widgets/business_card_widget.dart';
import 'package:quliao/pages/chat_index/merge_forward_message_list.dart';
import 'package:quliao/pages/windows/comm_dialog.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({
    super.key,
    required this.message,
    required this.messageWidth,
    this.onTap,
  });

  /// [types.CustomMessage].
  final types.CustomMessage message;

  /// Maximum message width.
  final int messageWidth;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    if (null == message.metadata) {
      return Gaps.empty;
    }
    final customType = message.metadata!['customType'];
    if (customType == 'mergeForward') {
      return MergeForwardMessage(
        message: message,
        messageWidth: messageWidth,
      );
    } else if (customType == 'businessCard') {
      return BusinessCardWidget(
        message: message,
        messageWidth: messageWidth,
        onTap: onTap,
      );
    } else if (customType == 'redPacket') {
      return RedPacketMessage(
        message: message,
        messageWidth: messageWidth,
        onTap: onTap,
      );
    }
    return Gaps.empty;
  }
}

class MergeForwardMessage extends StatelessWidget {
  const MergeForwardMessage({
    super.key,
    required this.message,
    required this.messageWidth,
  });

  /// [types.CustomMessage].
  final types.CustomMessage message;

  /// Maximum message width.
  final int messageWidth;

  @override
  Widget build(BuildContext context) {
    final currentUserIsAuthor = '${AppUserInfo().imId}' == message.author.id;

    final mergeForwardTitle = message.metadata!['forwardTitle'];
    final String mergeForwardContentListJson =
        message.metadata!['forwardContent'] as String;
    final List contentList = (jsonDecode(mergeForwardContentListJson) as List);
    if (contentList.length > 4) {
      contentList.sublist(0, 4);
    }

    final List messageIds =
        jsonDecode(message.metadata!['forwardMessageIds']) as List;

    final bool privateChat = message.metadata!['chatType'] == 'private';

    return GestureDetector(
      onTap: () {
        if (Platform.isWindows || Platform.isMacOS) {
          MyAlertDialog().show(
            child: MergeForwardMessageList(
              messageIds: messageIds,
              privateChat: privateChat,
            ),
          );
          return;
        }
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return MergeForwardMessageList(
                messageIds: messageIds,
                privateChat: privateChat,
              );
            },
          ),
        );
      },
      child: Container(
        constraints: BoxConstraints(
          maxWidth: messageWidth.toDouble() - Dimens.gap_dp10 * 5,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft:
                currentUserIsAuthor ? const Radius.circular(10) : Radius.zero,
            bottomLeft: const Radius.circular(10),
            topRight: const Radius.circular(10),
            bottomRight:
                currentUserIsAuthor ? Radius.zero : const Radius.circular(10),
          ),
          border: Border.all(
            color: Theme.of(context).dividerColor,
            width: Dimens.gap_dp1 / 2,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      mergeForwardTitle,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      maxLines: 1,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              // const Divider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: contentList
                    .map(
                      (e) => Row(
                        children: [
                          Expanded(
                            child: Text(
                              '$e',
                              textAlign: TextAlign.left,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: const TextStyle(
                                color: Color(0xFF999999),
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(
                height: 4,
              ),
              const Divider(),
              const Text(
                '聊天记录',
                style: TextStyle(
                  color: Color(0xFF999999),
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
