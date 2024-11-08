import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/global/controller/unread_message_controller.dart';
import 'package:quliao/models/Global.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/mywedgits/badger/badger.dart';

class MsgBadgerWidget extends StatefulWidget {
  const MsgBadgerWidget({
    super.key,
    this.conversationId,
    this.type = ENMsgCountType.msgCount,
  });

  final int? conversationId;
  final ENMsgCountType type;

  @override
  State<StatefulWidget> createState() => _MsgBadgerWidgetState();
}

class _MsgBadgerWidgetState extends State<MsgBadgerWidget> {
  int count = 0;
  final UnReadMessageController controller = UnReadMessageController.to;

  @override
  void initState() {
    super.initState();
    if (widget.type == ENMsgCountType.msgCount) {
      count = Global.prefs
              .getInt('${AppUserInfo().imId}_${widget.conversationId}_') ??
          0;
    } else if (widget.type == ENMsgCountType.friendList) {
      count = Global.prefs.getInt(UnReadMessageController.to.keyApply) ?? 0;
    } else if (widget.type == ENMsgCountType.totalMsg) {
      count = Global.prefs.getInt(UnReadMessageController.to.keyTotal) ?? 0;
    }
    controller.unReadMsgCountEventHandler.listen((event) {
      // LoggerManager().debug(
      //   'UnReadMessageController show conversationId: ${event.conversationId} count: ${event.count} type: ${event.type}',
      // );
      if (event.type == ENMsgCountType.msgCount) {
        if (widget.type == event.type && event.conversationId == widget.conversationId) {
          if (mounted) {
            final value = event.count ?? 0;
            // LoggerManager().debug(
            //   'UnReadMessageController conversationId: ${event.conversationId} 的未读数量为 $value',
            // );
            setState(() {
              count = value;
            });
          }
        }
      } else if (event.type == ENMsgCountType.friendList) {
        if (widget.type == event.type) {
          if (mounted) {
            final value = event.count ?? 0;
            // LoggerManager().debug(
            //   'UnReadMessageController friend: ${event.conversationId} 的未读数量为 $value',
            // );
            setState(() {
              count = value;
            });
          }
        }
      } else if (event.type == ENMsgCountType.totalMsg) {
        if (event.type == widget.type) {
          if (mounted) {
            final value = event.count ?? 0;
            setState(() {
              count = value;
            });
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Offstage(
      offstage: count == 0,
      child: Container(
        height: Dimens.gap_dp14,
        constraints: BoxConstraints(
          minWidth: Dimens.gap_dp14,
        ),
        decoration: BoxDecoration(
          color: const Color(0xFFFE456A),
          borderRadius: BorderRadius.circular(7 * Dimens.gap_dp1),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: Dimens.gap_dp14 - Dimens.font_sp10,
        ),
        alignment: Alignment.center,
        child: Text(
          count > 99 ? '99+' : '$count',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onError,
            fontSize: Dimens.font_sp10,
          ),
        ),
      ),
    );
  }
}
