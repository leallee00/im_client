import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/config/images.dart';
import 'package:quliao/config/size_extension.dart';
import 'package:quliao/db/obox/model/conversation_model.dart';
import 'package:quliao/modules/conversation/widgets/no_disturb_tip.dart';
import 'package:quliao/pages/chat_index/at_tip_widget.dart';
import 'package:quliao/pages/chat_index/msg_badger_widget.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart';
import 'package:quliao/pb/pb_msg/offline_msg/offlineMsg.pb.dart';
import 'package:quliao/utils/time_ago.dart';
import 'package:quliao/widgets/avatar.dart';

class IMConversationItem extends StatefulWidget {
  const IMConversationItem({
    super.key,
    required this.conversationId,
    required this.data,
    // required this.avatar,
    // required this.nickname,
    // required this.lastMsg,
    // required this.time,
    this.selected,
    // this.remark,
    // this.privateChat = true,
    this.isPinned = false,
    // this.noDisturb = false,
    this.groupType = 0,
  });

  final int conversationId;

  // final String avatar;
  // final String nickname;
  // final String lastMsg;
  // final DateTime time;
  final bool? selected;

  // final String? remark;
  // final bool privateChat;
  final bool isPinned;

  // final bool noDisturb;
  final int groupType;
  final ConversationModel data;

  @override
  State<StatefulWidget> createState() => _IMConversationItemState();
}

class _IMConversationItemState extends State<IMConversationItem> {
  bool get privateChat =>
      widget.data.sessionType ==
      CHAT_SESSION_TYPE.CHAT_SESSION_TYPE_PRIVATE_CHAT.value;

  String? latestMsg;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _getLatestMsg();
    });
  }

  @override
  void didUpdateWidget(covariant IMConversationItem oldWidget) {
    super.didUpdateWidget(oldWidget);
    _getLatestMsg();
  }

  Future<void> _getLatestMsg() async {
    final value = await widget.data.latestMsg();
    if (mounted) {
      setState(() {
        latestMsg = value;
      });
    }
  }

  Widget _getGroupTypeWidget(
    BuildContext context,
  ) {
    IconData iconData = Icons.group;
    if (widget.groupType == GroupType.Comm.value) {
      iconData = Icons.group;
    } else if (widget.groupType == GroupType.ChatRoom.value) {
      iconData = Icons.home;
    } else if (widget.groupType == GroupType.Channel.value) {
      iconData = Icons.wifi_tethering;
    } else {
      return Image(
        image: Images.iconCampaign,
        width: 20,
        height: 20,
        color: Theme.of(context).colorScheme.primary,
      );
    }
    return Icon(
      iconData,
      size: 20,
      color: widget.selected ?? false
          ? Theme.of(context).colorScheme.surface
          : Theme.of(context).colorScheme.primary,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimens.gap_dp1 * 72,
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.gap_dp20,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 48.w,
            height: 48.h,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: UserAvatar(
                    avatar: widget.data.avatar,
                    name: widget.data.nickname,
                  ),
                ),
                Positioned(
                  top: 6.h,
                  right: 6.h,
                  child: NoDisturbTip(
                    conversationId: widget.conversationId,
                    noDisturb: widget.data.noDisturb,
                  ),
                ),
              ],
            ),
          ),
          Gaps.hGap10,
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: Dimens.gap_dp10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      if (!privateChat)
                        Padding(
                          padding: EdgeInsets.only(right: Dimens.gap_dp4),
                          child: _getGroupTypeWidget(context),
                        ),
                      Expanded(
                        child: Text(
                          // data.remark.isNotEmpty ? data.remark : data.nickname,
                          widget.data.nickname,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: widget.selected ?? false
                                ? Colors.white
                                : Colors.black87,
                            fontSize: Dimens.font_sp14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Text(
                        TimeAgo().getTimeStringForChat(
                          widget.data.updatedAt * 1000,
                        ),
                        style: TextStyle(
                          color: widget.selected ?? false
                              ? Colors.white
                              : Colors.black38,
                          fontSize: Dimens.font_sp12,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      if (!(privateChat))
                        AtTipWidget(groupId: widget.conversationId),
                      Expanded(
                        child: Text(
                          latestMsg ?? '',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: widget.selected ?? false
                                ? Colors.white
                                : Colors.black38,
                            fontSize: Dimens.font_sp12,
                          ),
                        ),
                      ),
                      if (widget.data.noDisturb)
                        Icon(
                          Icons.do_disturb,
                          size: 16.w,
                          color: Colors.red,
                        )
                      else
                        Offstage(
                          offstage: (widget.data.newMsgCount ?? 0) <= 0,
                          child: Container(
                            height: Dimens.gap_dp14,
                            constraints: BoxConstraints(
                              minWidth: Dimens.gap_dp14,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFFFE456A),
                              borderRadius:
                                  BorderRadius.circular(7 * Dimens.gap_dp1),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: Dimens.gap_dp14 - Dimens.font_sp10,
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              (widget.data.newMsgCount ?? 0) > 99
                                  ? '99+'
                                  : '${(widget.data.newMsgCount ?? 0)}',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.onError,
                                fontSize: Dimens.font_sp10,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
