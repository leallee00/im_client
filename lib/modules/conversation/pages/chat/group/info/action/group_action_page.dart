import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:oktoast/oktoast.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/config/size_extension.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/global/widgets/refresh_view.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/modules/conversation/enum/member.dart';
import 'package:quliao/modules/conversation/pages/chat/group/info/action/search/search_member_page.dart';
import 'package:quliao/net/msg_handler_mgr.dart';
import 'package:quliao/pages/chat_index/group_member_nickname_widget.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart';
import 'package:quliao/pb/pb_pub/error_code.pbenum.dart';
import 'package:quliao/pub/custom_alert.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/widgets/avatar.dart' as avatar;
import 'package:quliao/modules/conversation/pages/chat/group/info/action/controller.dart';
import 'package:quliao/widgets/loading.dart';

class GroupActionPage extends StatefulWidget {
  const GroupActionPage({
    super.key,
    required this.groupId,
    this.type = MemberType.normal,
  });

  final int groupId;
  final MemberType type;

  @override
  State<StatefulWidget> createState() => _GroupActionPageState();
}

class _GroupActionPageState extends State<GroupActionPage> {
  late GroupActionController controller;

  var msgHandlerMgr = MsgHandlerMgr();
  StreamSubscription<EventOnNetMsg>? msgStreamSub;

  List handlerList = [
    KickoutNotify(),
    KickoutRsp(),
    BanMemberNotify(),
    UnbanMemberNotify(),
    AddAdminsNotify(),
    RemoveAdminsNotify(),
    GroupTransferNotify(),
    GroupTransferRsp(),
  ];

  @override
  void initState() {
    super.initState();
    controller = GroupActionController();
    Get.put(controller, tag: '${widget.groupId}');
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controller.load(widget.groupId);
    });
    _handleMessage();
  }

  Future<void> _handleMessage() async {
    msgStreamSub = eventBus.on<EventOnNetMsg>().listen((event) {
      LoggerManager().debug("获得一个消息:${event.pbMsg.pbName}");
      final groupId = event.pbMsg.pbCommData.groupId;
      if (event.pbMsg.errCode != ErrCode.SUCCESS.value) {
        LoadingDialog.dismiss();
        showToast(event.pbMsg.errDesc);
        log("get a err msg groupId: $groupId ${event.pbMsg.pbName} ${event.pbMsg.errCode} ${event.pbMsg.errDesc}");
        return;
      }
      if (event.pbMsg.pbName != "pb_pub.HeartBeat") {
        log("get msg ${event.pbMsg.pbName}, Is me send:${event.pbMsg.pbCommData.srcId == AppUserInfo().imId} dispatch.",
            deep: 3);
      }
      msgHandlerMgr.onMsg(event.pbMsg, event.enMsgFrom);
    });

    for (var handler in handlerList) {
      msgHandlerMgr.RegMsgHandler(
        handler,
        (msg, pbMessage, enMsgFrom) {
          if (msg is KickoutRsp) {
            LoadingDialog.dismiss();
            showToast('操作成功');
            LoggerManager().debug(
              'KickOutRsp aimId: ${pbMessage.pbCommData.aimId} srcId: ${pbMessage.pbCommData.srcId}',
            );
            controller.removeMember(pbMessage.pbCommData.aimId.toInt());
          } else if (msg is BanMemberNotify) {
            LoadingDialog.dismiss();
            LoggerManager().debug(
              'BanMemberNotify aimId: ${pbMessage.pbCommData.aimId} srcId: ${pbMessage.pbCommData.srcId}',
            );
            final member =
                controller.memberMap[pbMessage.pbCommData.aimId.toInt()];
            if (null != member) {
              controller
                  .updateMemberBanStatus(pbMessage.pbCommData.aimId.toInt());
              showToast(
                  "您将${(member.username.isNotEmpty ? member.username : "${member.userId}")}设置封禁");
            }
          } else if (msg is UnbanMemberNotify) {
            LoadingDialog.dismiss();
            LoggerManager().debug(
              'UnbanMemberNotify aimId: ${pbMessage.pbCommData.aimId} srcId: ${pbMessage.pbCommData.srcId}',
            );
            final member =
                controller.memberMap[pbMessage.pbCommData.aimId.toInt()];
            if (null != member) {
              controller
                  .updateMemberUnBanStatus(pbMessage.pbCommData.aimId.toInt());
              showToast(
                "已移除${(member.username.isNotEmpty ? member.username : "${member.userId}")}封禁",
              );
            }
          } else if (msg is AddAdminsNotify) {
            LoadingDialog.dismiss();
            LoggerManager().debug(
              'AddAdminsNotify aimId: ${pbMessage.pbCommData.aimId} srcId: ${pbMessage.pbCommData.srcId}',
            );
            for (final userId in msg.memberIds) {
              final member = controller.memberMap[userId.toInt()];
              if (null != member) {
                member.role = 1;
                controller.updateMember(member);
                showToast(
                  "您将${(member.username.isNotEmpty ? member.username : "${member.userId}")}设置为管理员",
                );
              }
            }
          } else if (msg is RemoveAdminsNotify) {
            LoadingDialog.dismiss();
            LoggerManager().debug(
              'RemoveAdminsNotify aimId: ${pbMessage.pbCommData.aimId} srcId: ${pbMessage.pbCommData.srcId}',
            );
            for (final userId in msg.memberIds) {
              final member = controller.memberMap[userId.toInt()];
              if (null != member) {
                member.role = 0;
                controller.updateMember(member);
                showToast(
                  "已移除${(member.username.isNotEmpty ? member.username : "${member.userId}")}管理员身份",
                );
              }
            }
          } else if (msg is GroupTransferNotify) {
            LoadingDialog.dismiss();
            LoggerManager().debug(
              'GroupTransferNotify aimId: ${pbMessage.pbCommData.aimId} srcId: ${pbMessage.pbCommData.srcId}',
            );
            final member = controller.memberMap[msg.ownerId.toInt()];
            if (null != member) {
              showToast(
                "您将群转让给了${(member.username.isNotEmpty ? member.username : "${member.userId}")}",
              );
              Navigator.pop(context);
            }
          }
          return true;
        },
      );
    }
  }

  Future<void> _showDialog(Member member) async {
    if (widget.type == MemberType.normal) {
      showAlertView(
        "群成员管理",
        "您将${(member.username.isNotEmpty ? member.username : "${member.userId}")}移除群组",
        context,
        callBack: (index) {
          if (index == 1) {
            controller.kickOutMember(widget.groupId, member);
          }
        },
      );
    } else if (widget.type == MemberType.banned) {
      if (member.banned) {
        controller.unbanMember(widget.groupId, member);
      } else {
        controller.banMember(widget.groupId, member);
      }
    } else if (widget.type == MemberType.manager) {
      if (member.role == 1) {
        controller.removeAdmin(widget.groupId, member);
      } else {
        controller.addAdmin(widget.groupId, member);
      }
    } else {
      showAlertView(
        "转让群",
        "${(member.username.isNotEmpty ? member.username : "${member.userId}")}将成为该群群主，确定后你将立即失去群主身份",
        context,
        callBack: (index) {
          if (index == 1) {
            controller.transfer(widget.groupId, member);
          }
        },
      );
    }
  }

  String getActionText(Member member) {
    LoggerManager().debug(
        'getActionText name: ${member.username} banned: ${member.banned}');
    if (widget.type == MemberType.normal) {
      return widget.type.action;
    } else if (widget.type == MemberType.banned) {
      return member.banned ? '取消封禁' : '设置封禁';
    } else if (widget.type == MemberType.manager) {
      return member.role == 1 ? '取消管理员' : '设置管理员';
    } else {
      return '转让群';
    }
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
        title: Text(
          widget.type.value,
          style: const TextStyle(
            color: Colors.black87,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Gaps.vGap4,
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SearchMemberPage(
                    groupId: widget.groupId,
                    type: widget.type,
                  ),
                ),
              ).then((value) {
                LoggerManager().debug('search value =========> $value');
              });
            },
            child: Container(
              height: 36.h,
              margin: EdgeInsets.symmetric(horizontal: 16.w),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(24.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  Gaps.hGap6,
                  const Text(
                    '搜索群成员',
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GetBuilder(
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
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: memberCount,
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      itemBuilder: (context, index) {
                        final element = controller.memberList[index];
                        return Container(
                          height: 54.h,
                          padding: EdgeInsets.symmetric(horizontal: 12.w),
                          child: Column(
                            children: [
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    avatar.UserAvatar(
                                      size: 44.w,
                                      avatar: element.avatar,
                                      name: element.username.isNotEmpty
                                          ? element.username
                                          : "${element.userId}",
                                    ),
                                    Gaps.hGap10,
                                    Expanded(
                                      child: GroupMemberNicknameWidget(
                                        groupId: widget.groupId,
                                        member: element,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          color: Colors.black87,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10.h),
                                      child: TextButton(
                                        onPressed: () {
                                          _showDialog(element);
                                        },
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(14.r),
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                          getActionText(element),
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                indent: 56.w,
                                height: 0.5,
                                color: Colors.grey.withOpacity(0.2),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
