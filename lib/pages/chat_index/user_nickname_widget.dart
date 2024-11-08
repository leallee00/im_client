import 'package:flutter/material.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/models/user/friendInfo.dart';

class UserNicknameWidget extends StatefulWidget {
  const UserNicknameWidget({
    super.key,
    required this.friendInfo,
    this.style,
    this.maxLines,
    this.overflow,
    this.forceShowNickname = false,
  });

  final FriendInfo friendInfo;
  final TextStyle? style;
  final int? maxLines;
  final TextOverflow? overflow;
  final bool forceShowNickname;

  @override
  State<StatefulWidget> createState() => _UserNicknameWidgetState();
}

class _UserNicknameWidgetState extends State<UserNicknameWidget> {
  String get nickname => widget.friendInfo.remark.isEmpty
      ? widget.friendInfo.userInfo.nickName
      : widget.friendInfo.remark;

  @override
  void initState() {
    super.initState();
    eventBus.on<UpdateFriendInfo>().listen((event) {
      if (event.friendInfo.friendId == widget.friendInfo.friendId) {
        widget.friendInfo.remark = event.friendInfo.remark;
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.forceShowNickname ? widget.friendInfo.userInfo.nickName : nickname,
      maxLines: widget.maxLines,
      overflow: widget.overflow,
      style: widget.style ?? Theme.of(context).textTheme.bodySmall,
    );
  }
}
