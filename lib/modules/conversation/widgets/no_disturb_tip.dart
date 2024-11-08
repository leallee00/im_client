import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/config/size_extension.dart';
import 'package:quliao/global/controller/unread_message_controller.dart';
import 'package:quliao/models/Global.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/mywedgits/badger/badger.dart';

import '../../../utils/log/manager.dart';

class NoDisturbTip extends StatefulWidget {
  const NoDisturbTip({
    super.key,
    required this.conversationId,
    this.noDisturb = false,
  });

  final int conversationId;
  final bool noDisturb;

  @override
  State<StatefulWidget> createState() => _NoDisturbTipState();
}

class _NoDisturbTipState extends State<NoDisturbTip> {
  int count = 0;
  final UnReadMessageController controller = UnReadMessageController.to;

  @override
  void initState() {
    super.initState();
    count = Global.prefs
            .getInt('${AppUserInfo().imId}_${widget.conversationId}_') ??
        0;
    controller.unReadMsgCountEventHandler.listen((event) {
      if (event.type == ENMsgCountType.msgCount) {
        if (event.conversationId == widget.conversationId) {
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
    // LoggerManager().debug('noDisturb conversationId: ${widget.conversationId} --- count: $count');
    if (widget.noDisturb && count > 0) {
      return Container(
        width: 6.w,
        height: 6.h,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(4.r),
        ),
      );
    }
    return Gaps.empty;
  }
}
