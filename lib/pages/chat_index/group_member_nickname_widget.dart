import 'package:flutter/material.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart';

class GroupMemberNicknameWidget extends StatefulWidget {
  const GroupMemberNicknameWidget({
    super.key,
    required this.groupId,
    required this.member,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.forceShowNickname = false,
  });

  final int groupId;
  final Member member;
  final TextStyle? style;
  final int? maxLines;
  final TextOverflow? overflow;
  final bool forceShowNickname;
  final TextAlign? textAlign;

  @override
  State<StatefulWidget> createState() => _GroupMemberNicknameWidgetState();
}

class _GroupMemberNicknameWidgetState extends State<GroupMemberNicknameWidget> {
  String get nickname => widget.member.remark.isEmpty
      ? widget.member.username
      : widget.member.remark;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _getFriendInfo();
    });
    eventBus.on<UpdateGroupMemberInfo>().listen((event) {
      if (event.groupId != widget.groupId) {
        return;
      }
      if (event.member.userId != widget.member.userId) {
        return;
      }
      widget.member.remark = event.member.remark;
      setState(() {});
    });
  }

  Future<void> _getFriendInfo() async {
    final FriendInfo friendInfo = await GetFriendInfo(
      widget.member.userId.toInt(),
    );
    if (friendInfo.friendRelation == enFriendRelation.friend) {
      eventBus.on<UpdateFriendInfo>().listen((event) {
        if (event.groupId != widget.groupId) {
          return;
        }
        if (event.friendInfo.friendId != widget.member.userId.toInt()) {
          return;
        }
        widget.member.remark = event.friendInfo.remark;
        setState(() {});
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.forceShowNickname ? widget.member.username : nickname,
      maxLines: widget.maxLines,
      overflow: widget.overflow,
      textAlign: widget.textAlign ?? TextAlign.center,
      style: widget.style ?? Theme.of(context).textTheme.bodySmall,
    );
  }
}
