import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/global/widgets/refresh_view.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/pages/chat_index/group_member_nickname_widget.dart';
import 'package:quliao/pages/windows/comm_dialog.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/widgets/avatar.dart' as avatar;
import 'package:quliao/pages/friend/friend_info.dart' as ffi;
import 'package:quliao/modules/conversation/pages/chat/group/info/member/controller.dart';

class GroupMemberPage extends StatefulWidget {
  const GroupMemberPage({
    super.key,
    required this.groupId,
  });

  final int groupId;

  @override
  State<StatefulWidget> createState() => _GroupMemberPageState();
}

class _GroupMemberPageState extends State<GroupMemberPage> {
  late GroupMemberController controller;

  @override
  void initState() {
    super.initState();
    controller = GroupMemberController();
    Get.put(controller, tag: '${widget.groupId}');
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controller.load(widget.groupId);
    });
  }

  bool hasAdminPermission(Member member) {
    return member.role > 0;
  }

  String getAdminValue(Member member) {
    if (member.role == 2) {
      return '群主';
    } else if (member.role == 1) {
      return '管理员';
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black87,
        ),
        titleSpacing: 0,
        elevation: 0,
        title: const Text(
          '群成员',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: GetBuilder(
        init: controller,
        builder: (controller) {
          final memberCount = controller.memberList.length;
          return RefreshView(
            loadState: controller.loadState.value,
            refreshController: controller.refreshController,
            onRefresh: () {
              controller.onRefresh(widget.groupId);
            },
            onLoading: () {
              controller.onLoad(widget.groupId);
            },
            bodyBuilder: (context) {
              return GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  childAspectRatio: 1.0,
                ),
                itemCount: memberCount,
                itemBuilder: (BuildContext context, int index) {
                  final element = controller.memberList[index];
                  return InkWell(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10, 2, 5, 2),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            child: Stack(
                              children: [
                                avatar.UserAvatar(
                                  size: 50,
                                  avatar: element.avatar,
                                  name: (element.username.isNotEmpty
                                      ? element.username
                                      : "${element.userId}"),
                                ),
                                if (hasAdminPermission(element))
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: Dimens.gap_dp4,
                                        vertical: Dimens.gap_dp1,
                                      ),
                                      decoration: BoxDecoration(
                                        color: element.role == 2
                                            ? Theme.of(context)
                                                .colorScheme
                                                .error
                                            : Theme.of(context)
                                                .colorScheme
                                                .primary,
                                        borderRadius: BorderRadius.circular(
                                            Dimens.gap_dp12),
                                      ),
                                      child: Text(
                                        getAdminValue(element),
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: Dimens.font_sp1 * 6,
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Gaps.vGap4,
                          Container(
                            margin: const EdgeInsets.only(top: 1),
                            child: GroupMemberNicknameWidget(
                              groupId: widget.groupId,
                              member: element,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 10,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () async {
                      FriendInfo friendInfo =
                          await GetFriendInfo(element.userId.toInt());
                      if (Dimens.isDesktop()) {
                        MyAlertDialog().show(
                          child: ffi.FriendInfoV(
                            finfo: friendInfo,
                            member: element,
                            groupId: widget.groupId,
                            // hasAdminRights: mineMember.role >= 1,
                          ),
                        );
                        return;
                      }

                      LoggerManager().debug(
                          'friendInfo remark ========> ${friendInfo.remark}');
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return ffi.FriendInfoV(
                              finfo: friendInfo,
                              member: element,
                              groupId: widget.groupId.toInt(),
                              // hasAdminRights: mineMember.role >= 1,
                            );
                          },
                        ),
                      );
                    },
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
