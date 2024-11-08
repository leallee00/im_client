import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/pages/chat_group/controller/chat_group_controller.dart';
import 'package:quliao/pages/chat_index/select_chat_list.dart';
import 'package:quliao/pages/chat_private/flyer_chat/chat_test_controller.dart';
import 'package:quliao/pages/windows/comm_dialog.dart';

class ForwardMessageBottomBar extends StatelessWidget {
  const ForwardMessageBottomBar({
    super.key,
    required this.conversationId,
    required this.messages,
    this.privateChat = true,
  });

  final List<Message> messages;
  final bool privateChat;
  final int conversationId;

  @override
  Widget build(BuildContext context) {
    bool enableTap = false;
    Color color = const Color(0xFF999999);
    if (privateChat) {
      enableTap = ChatTestController.to('$conversationId')
          .multiSelectedMessageList
          .isNotEmpty;
    } else {
      enableTap = ChatGroupController.to('$conversationId')
          .multiSelectedMessageList
          .isNotEmpty;
    }
    if (enableTap) {
      color = const Color(0xFF333333);
    }
    return Container(
      height: Dimens.gap_dp80,
      color: Theme.of(context).colorScheme.surface,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
              spacing: Dimens.gap_dp80,
              children: [
                Column(
                  children: [
                    IconButton(
                      icon: Image.asset(
                        'images/forward.png',
                        color: color,
                      ),
                      iconSize: 30,
                      onPressed: enableTap
                          ? () {
                              (Platform.isWindows || Platform.isMacOS)
                                  ? MyAlertDialog()
                                      .show<bool>(
                                      child: SelectChatList(
                                        messages: messages,
                                        conversationId: conversationId,
                                        privateChat: privateChat,
                                      ),
                                    )
                                      .then((value) {
                                      // if (value ?? false) {
                                      //   if (privateChat) {
                                      //     ChatTestController.to(
                                      //             '$conversationId')
                                      //         .updateSelectStatus();
                                      //   } else {
                                      //     ChatGroupController.to(
                                      //             '$conversationId')
                                      //         .updateSelectStatus();
                                      //   }
                                      // }
                                    })
                                  : Navigator.of(context).push<bool>(
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return SelectChatList(
                                            messages: messages,
                                            conversationId: conversationId,
                                            privateChat: privateChat,
                                          );
                                        },
                                      ),
                                    ).then((value) {
                                      // if (value ?? false) {
                                      //   if (privateChat) {
                                      //     ChatTestController.to(
                                      //             '$conversationId')
                                      //         .updateSelectStatus();
                                      //   } else {
                                      //     ChatGroupController.to(
                                      //             '$conversationId')
                                      //         .updateSelectStatus();
                                      //   }
                                      // }
                                    });
                            }
                          : null,
                    ),
                    Text(
                      '逐条转发',
                      style: TextStyle(
                        color: color,
                        fontSize: Dimens.font_sp12,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Image.asset(
                        'images/merge_forward.png',
                        color: color,
                      ),
                      iconSize: 30,
                      onPressed: enableTap
                          ? () {
                              (Platform.isWindows || Platform.isMacOS)
                                  ? MyAlertDialog()
                                      .show<bool>(
                                      child: SelectChatList(
                                        messages: messages,
                                        mergeForward: true,
                                        conversationId: conversationId,
                                        privateChat: privateChat,
                                      ),
                                    )
                                      .then((value) {
                                      // if (value ?? false) {
                                      //   if (privateChat) {
                                      //     ChatTestController.to(
                                      //             '$conversationId')
                                      //         .updateSelectStatus();
                                      //   } else {
                                      //     ChatGroupController.to(
                                      //             '$conversationId')
                                      //         .updateSelectStatus();
                                      //   }
                                      // }
                                    })
                                  : Navigator.of(context).push<bool>(
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return SelectChatList(
                                            messages: messages,
                                            mergeForward: true,
                                            conversationId: conversationId,
                                            privateChat: privateChat,
                                          );
                                        },
                                      ),
                                    ).then((value) {
                                      // if (value ?? false) {
                                      //   if (privateChat) {
                                      //     ChatTestController.to(
                                      //             '$conversationId')
                                      //         .updateSelectStatus();
                                      //   } else {
                                      //     ChatGroupController.to(
                                      //             '$conversationId')
                                      //         .updateSelectStatus();
                                      //   }
                                      // }
                                    });
                            }
                          : null,
                    ),
                    Text(
                      '合并转发',
                      style: TextStyle(
                        color: color,
                        fontSize: Dimens.font_sp12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
