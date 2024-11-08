import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/db/database.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/flutter_chat_ui/src/util.dart';
import 'package:quliao/flutter_chat_ui/src/widgets/state/inherited_chat_theme.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/models/user/userinfo.dart';

import '../../pb/pb_msg/group/group.pb.dart';

class UserNameWidget extends StatefulWidget {
  /// Creates user name.
  const UserNameWidget({
    super.key,
    required this.author,
    this.groupId,
  });

  final int? groupId;

  /// Author to show name from.
  final types.User author;

  @override
  State<StatefulWidget> createState() => _UserNameWidgetState();
}

class _UserNameWidgetState extends State<UserNameWidget> {
  String userNickname = '';

  int get userId => int.parse(widget.author.id);

  int role = 0;

  @override
  void initState() {
    super.initState();
    userNickname = widget.author.firstName ?? '';
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _asyncUsername();
    });
    eventBus.on<KickOutEvent>().listen((event) {
      if (event.groupId != widget.groupId) {
        return;
      }
      if (event.userId != userId) {
        return;
      }
      if (mounted) {
        _asyncUsername();
      }
    });
    eventBus.on<UpdateGroupMemberInfo>().listen((event) {
      if (event.groupId != widget.groupId) {
        return;
      }
      final targetUserId = event.member.userId.toInt();
      if (targetUserId != userId) {
        return;
      }
      if (mounted) {
        setState(() {
          userNickname = event.member.remark;
        });
      }
    });

    eventBus.on<UpdateGroupUserRole>().listen((event) {
      if (event.groupId != widget.groupId) {
        return;
      }
      if (event.userId != userId) {
        return;
      }
      if (mounted) {
        setState(() {
          role = event.role;
        });
      }
    });

    eventBus.on<UpdateFriendInfo>().listen((event) {
      if (event.groupId != widget.groupId) {
        return;
      }
      if (event.friendInfo.friendId != userId) {
        return;
      }
      if (mounted) {
        setState(() {
          userNickname = event.friendInfo.remark;
        });
      }
    });
  }

  Future<void> _asyncUsername() async {
    final userInfo = await GetUserInfo(userId);
    userNickname = userInfo.nickName;

    final Member? member = await AppDatabase().groupMemberDao?.singleMember(
          groupId: widget.groupId!,
          userId: userId,
        );

    if (null != member) {
      role = member.role;
    } else {
      role = 0;
    }

    final friendInfo = await GetFriendInfo(userId);
    if (friendInfo.remark.isNotEmpty) {
      userNickname = friendInfo.remark;
    } else {
      if (null != widget.groupId) {
        final Member? member = await AppDatabase().groupMemberDao?.singleMember(
              groupId: widget.groupId!,
              userId: userId,
            );
        if (null != member && member.remark.isNotEmpty) {
          userNickname = member.remark;
        }
      }
    }

    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = InheritedChatTheme.of(context).theme;
    final color =
        getUserAvatarNameColor(widget.author, theme.userAvatarNameColors);

    return userNickname.isEmpty
        ? const SizedBox()
        : Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  userNickname,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.userNameTextStyle.copyWith(color: color),
                ),
                Gaps.hGap4,
                role == 0 ? Gaps.empty : AdminWidget(role: role),
              ],
            ),
          );
  }
}

class AdminWidget extends StatelessWidget {
  const AdminWidget({
    super.key,
    this.role = 0,
  });

  final int role;

  String getAdminValue(int role) {
    if (role == 2) {
      return '群主';
    } else if (role == 1) {
      return '管理员';
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.gap_dp4,
        vertical: Dimens.gap_dp1,
      ),
      decoration: BoxDecoration(
        color:
            role == 2 ? Colors.orange : Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(Dimens.gap_dp12),
      ),
      child: Text(
        getAdminValue(role),
        style: TextStyle(
          color: Colors.white,
          fontSize: Dimens.font_sp1 * 6,
        ),
      ),
    );
  }
}
