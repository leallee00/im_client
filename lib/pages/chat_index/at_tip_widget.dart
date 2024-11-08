import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/pages/chat_index/conversation_controller.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

class AtTipWidget extends StatefulWidget {
  const AtTipWidget({
    super.key,
    required this.groupId,
  });

  final int groupId;

  @override
  State<StatefulWidget> createState() => _AtTipWidgetState();
}

class _AtTipWidgetState extends State<AtTipWidget> {
  ConversationController? _conversationController;
  List<types.Message> unreadAtMessageList = [];

  @override
  void initState() {
    super.initState();
    _conversationController = ConversationController.to(widget.groupId);
    _conversationController?.loadMessage(widget.groupId);
    if (null != _conversationController) {
      ever(_conversationController!.unreadAtMessageList, (callback) {
        if (mounted) {
          setState(() {});
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _conversationController?.unreadAtMessageList.isEmpty == true ? '' : '[有人@我] ',
      style: TextStyle(
        fontSize: Dimens.font_sp14,
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
