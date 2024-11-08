import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:dotted_border/dotted_border.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/config/size_extension.dart';
import 'package:quliao/db/database.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/db/obox/model/conversation_model.dart';
import 'package:quliao/db/obox/model/group_model.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/flutter_chat_ui/flutter_chat_ui.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/global/controller/im_controller.dart';
import 'package:quliao/global/global_repository.dart';
import 'package:quliao/modules/contacts/friend/invite/invite_friend_page.dart';
import 'package:quliao/modules/conversation/enum/member.dart';
import 'package:quliao/modules/conversation/models/lw_conversation.dart';
import 'package:quliao/modules/conversation/pages/chat/group/info/action/group_action_page.dart';
import 'package:quliao/modules/conversation/pages/chat/group/info/background/group_backgroud_page.dart';
import 'package:quliao/modules/conversation/pages/chat/group/info/notice/group_notice_page.dart';
import 'package:quliao/modules/conversation/pages/chat/group/info/qrcode/group_qrcode_page.dart';
import 'package:quliao/modules/conversation/pages/chat/search/search_message_page.dart';
import 'package:quliao/modules/conversation/repository/im_conversation_repository.dart';
import 'package:quliao/net/msg_handler_mgr.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/chat_group/controller/chat_group_controller.dart';
import 'package:quliao/pages/chat_group/flyer_chat/chat_group.dart';
import 'package:quliao/pages/chat_group/flyer_chat/group_member.dart';
import 'package:quliao/pages/chat_group/group_apply.dart';
import 'package:quliao/pages/chat_group/group_avatar.dart';
import 'package:quliao/pages/chat_group/group_create.dart';
import 'package:quliao/pages/chat_group/group_member.dart';
import 'package:quliao/pages/chat_index/group_member_nickname_widget.dart';
import 'package:quliao/pages/chat_index/group_name_widget.dart';
import 'package:quliao/pages/chat_private/chat.dart';
import 'package:quliao/pages/windows/client/window_image_upload.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart';
import 'package:quliao/pb/pb_msg/msg_pusher/msgPusher.pb.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pb/pb_pub/error_code.pb.dart';
import 'package:quliao/pb/pb_pub/service.pb.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:protobuf/protobuf.dart';
import 'package:quliao/pub/pub-def.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/utils/oss_utils.dart';
import 'package:quliao/utils/toast/toast.dart';
import 'package:quliao/widgets/app_bar.dart';
import 'package:quliao/widgets/dialog/dialog.dart';
import 'package:quliao/widgets/dialog/manager.dart';
import 'package:quliao/widgets/rh_extended_image.dart';
import 'package:quliao/widgets/toast.dart';

import '../../config/dimens.dart';
import '../../pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import '../chat_index/conversation_avatar.dart';
import '../windows/comm_dialog.dart';
import '../windows/client/window_client.dart';
import 'package:quliao/pages/friend/friend_info.dart' as ffi;
import 'package:http/http.dart' as http;
import 'package:quliao/widgets/avatar.dart' as avatar;

import 'package:quliao/modules/conversation/pages/chat/group/info/member/group_member_page.dart'
    as cGroupMember;

import 'remove_group_member.dart';

class GroupInfoPage extends StatefulWidget {
  static String name = "GroupInfoPage";

  // final Int64 groupId;
  final GroupModel ginfo;

  GroupInfoPage({
    required this.ginfo,
  });

  @override
  GroupInfoPageState createState() => GroupInfoPageState();
}

// Widget
class FriendInfoItem {
  FriendInfo friendInfo = FriendInfo();
  bool selected = false;
}

class GroupInfoPageState extends State<GroupInfoPage> {
  final int maxMemberCount = 20;
  List<Member> showMemberList = <Member>[]; // 群成员列表
  List<Member> memberList = <Member>[]; // 群成员列表
  List<FriendInfo> friendInfoList = <FriendInfo>[]; // 群成员列表
  List<FriendInfoItem> lFriendItems = <FriendInfoItem>[];
  int limit = 1000;
  int offset = 0;
  ChatGroupController? c;
  Member mineMember = Member();

  List<GroupMemberModel> memberDataList = [];

  late StreamSubscription<EventOnNetMsg> msgStreamSub;
  var msgHandlerMgr = MsgHandlerMgr();
  List handlerList = [
    CreateGroupRsp(),
    MembersRsp(),
    MemberDetailRsp(),
    KickoutNotify(),
    BanGroupsRsp(),
    UnbanGroupsRsp(),
    AddAdminsNotify(),
    RemoveAdminsNotify(),
    EditRemarkRsp(),
    RemarkChangeNotify(),
    GroupDetailRsp(),
    EditGroupRemarkRsp(),
    EditMemberRemarkRsp(),
    SetMemberChatBannedStatusRsp(),
    MemberChatBannedStatusChangeNotify(),
    InviteeAgreedNotify(),
    InviteesAgreedNotify(),
    KickoutRsp(),
    QuitNotify(),
    approverApprovedNotify(),
    SetNewMemberRemindRsp(),
    ScanCodeJoinGroupSwitchStatusChangeNotify(),
    ApplyRsp(),
    ClearHisMsgRsp(),
    SetFreeJoinStatusRsp(),
  ];

  late GroupModel _groupInfo;
  GroupDetailRsp? groupDetails;

  ConversationModel? lwConversation;
  bool isPinned = false;

  void getConversationInfo() async {
    final conversation = await ImController.to.getConversationById(
      widget.ginfo.groupId.toInt(),
    );
    if (mounted) {
      setState(() {
        lwConversation = conversation;
        isPinned = lwConversation?.isPinned ?? false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _groupInfo = widget.ginfo;
    LoggerManager().error('group info ========》 $_groupInfo');
    _getCurrentUser();
    c = ChatGroupController.to(widget.ginfo.groupId.toInt().toString());
    getConversationInfo();
    GetFriends().then((value) {
      for (var finfo in value) {
        var fi = FriendInfoItem();
        fi.friendInfo = finfo;
        lFriendItems.add(fi);
      }

      setState(() {
        // 更新到页面
      });
    });

    // 处理网络消息
    HandleMsg();

    Client.instance.sendMsg(
      GroupDetailReq(),
      Int64(widget.ginfo.groupId),
      getPbCommData(),
    );

    ever(c!.applyListsSize, (callback) {
      LoggerManager().debug('applyListsSize callback =======> $callback');
      setState(() {});
    });

    eventBus.on<UpdateGroupChatBackground>().listen((event) {
      final groupId = Int64(event.groupId);
      if (groupId == widget.ginfo.groupId) {
        widget.ginfo.backPic = event.data.imageUrl;
        // widget.ginfo.updateBgToDb((widget.ginfo.groupId.toInt()));
      }
    });

    eventBus.on<DelGroupChatBackground>().listen((event) {
      final groupId = Int64(event.groupId);
      if (groupId == widget.ginfo.groupId) {
        widget.ginfo.backPic = '';
        // widget.ginfo.updateBgToDb((widget.ginfo.groupId.toInt()));
      }
    });
  }

  PBCommData getPbCommData() {
    return MakePBCommData(
      aimId: Int64(widget.ginfo.groupId),
      groupId: Int64(widget.ginfo.groupId),
      toService: Service.group,
    );
  }

  Future<void> _getCurrentUser() async {
    final Member? member = await AppDatabase().groupMemberDao?.singleMember(
          groupId: widget.ginfo.groupId.toInt(),
          userId: AppUserInfo().imId,
        );
    if (null != member) {
      mineMember = member;
      setState(() {});
    }
  }

  @override
  void dispose() {
    for (var element in handlerList) {
      msgHandlerMgr.removeMsgHandler(element);
    }
    // 取消消息处理
    msgStreamSub.cancel();
    super.dispose();
  }

  Future<void> getMember() async {
    friendInfoList.clear();
    for (var element in memberList) {
      FriendInfo friendInfo = await GetFriendInfo(element.userId.toInt());
      LoggerManager().debug(
        'friendInfo username: ${friendInfo.userInfo.nickName} remark: ${friendInfo.remark}',
      );
      element.avatar = friendInfo.userInfo.avatar;
      element.username = friendInfo.userInfo.nickName;
      if (friendInfo.remark.isNotEmpty) {
        element.remark = friendInfo.remark;
      }
      friendInfoList.add(friendInfo);
    }
    for (final item in friendInfoList) {
      LoggerManager().debug(
        'friendInfo item username: ${item.userInfo.nickName} remark: ${item.remark}',
      );
    }
    setState(() {
      // 更新页面
    });
  }

// 消息处理句柄
  void HandleMsg() {
    // 注册消息回调
    msgStreamSub = eventBus.on<EventOnNetMsg>().listen((event) {
      log("获得一个消息:${event.pbMsg.pbName}");
      final groupId = event.pbMsg.pbCommData.groupId;
      if (event.pbMsg.errCode != ErrCode.SUCCESS.value) {
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

    // MembersReq 获取成员列表
    // Client.instance.sendMsg(
    //   MembersReq(),
    //   widget.ginfo.groupId,
    //   MakePBCommData(
    //     aimId: widget.ginfo.groupId,
    //     groupId: widget.ginfo.groupId,
    //     toService: Service.group,
    //   ),
    // );
    c?.fetchGroupMembers(widget.ginfo.groupId.toInt());
    if (null != c) {
      ever(c!.groupMembers, (callback) {
        if (mounted) {
          memberList.clear();
          for (var element in callback) {
            // LoggerManager().debug(
            //     'element info =====> ${element.userId} name: ${element.username} remark: ${element.remark} role: ${element.role} banned: ${element.banned}');
            if (element.userId == AppUserInfo().imId) {
              mineMember = element;
              LoggerManager()
                  .debug('group info my remark =====> ${element.remark}');
            }
            memberList.add(element);
          }
          memberList.sort((a, b) {
            return b.role.compareTo(a.role);
          });
          getMember();
          setState(() {
            // 更新页面
          });
        }
      });
    }

    for (var handler in handlerList) {
      msgHandlerMgr.RegMsgHandler(handler, (
        GeneratedMessage msg,
        PBMessage pbMessage,
        EnMsgFrom enMsgFrom,
      ) {
        log("pbMessage.pbName = ${pbMessage.pbName}");
        if (msg is ApplyRsp) {
          c?.fetchGroupMembers(widget.ginfo.groupId.toInt());
          // Client.instance.sendMsg(
          //   MembersReq(),
          //   widget.ginfo.groupId,
          //   MakePBCommData(
          //     aimId: widget.ginfo.groupId,
          //     groupId: widget.ginfo.groupId,
          //     toService: Service.group,
          //   ),
          // );
        } else if (msg is SetFreeJoinStatusRsp) {
          LoggerManager().debug(
              'SetFreeJoinStatusRsp 是否开启自由入群 status ======> ${msg.freeJoinStatus}');
          _updateFreeJoinGroupStatus(
            pbMessage.pbCommData.srcId.toInt(),
            msg.freeJoinStatus,
          );
        } else if (msg is ScanCodeJoinGroupSwitchStatusChangeNotify) {
          final groupId = pbMessage.pbCommData.groupId;
          final aimId = pbMessage.pbCommData.aimId;
          _updateScanCodeStatus(pbMessage.pbCommData.srcId.toInt(),
              msg.switchStatus, msg.scanCodeKey);
          LoggerManager().debug(
              'ScanCodeJoinGroupSwitchStatusChangeNotify 是否开启扫码直接入群 status ======> ${msg.switchStatus} scanCodeKey: ${msg.scanCodeKey}');
        }
        if (msg is approverApprovedNotify) {
          c?.fetchGroupApplyLists();
          c?.fetchGroupMembers(widget.ginfo.groupId.toInt());
          // Client.instance.sendMsg(
          //   MembersReq(),
          //   widget.ginfo.groupId,
          //   MakePBCommData(
          //     aimId: widget.ginfo.groupId,
          //     groupId: widget.ginfo.groupId,
          //     toService: Service.group,
          //   ),
          // );
        } else if (msg is AddAdminsNotify || msg is RemoveAdminsNotify) {
          c?.fetchGroupMembers(widget.ginfo.groupId.toInt());
        } else if (msg is InviteeAgreedNotify ||
            msg is InviteesAgreedNotify ||
            msg is KickoutRsp ||
            msg is QuitNotify) {
          if (msg is QuitNotify) {
            if (msg.memberId.toInt() != AppUserInfo().imId) {
              // Client.instance.sendMsg(
              //   MembersReq(),
              //   widget.ginfo.groupId,
              //   MakePBCommData(
              //     aimId: widget.ginfo.groupId,
              //     groupId: widget.ginfo.groupId,
              //     toService: Service.group,
              //   ),
              // );
              c?.fetchGroupMembers(widget.ginfo.groupId.toInt());
            }
          } else {
            if (msg is KickoutRsp) {
              eventBus.fire(
                KickOutEvent(
                  groupId: widget.ginfo.groupId.toInt(),
                  userId: pbMessage.pbCommData.aimId.toInt(),
                ),
              );
            }
            c?.fetchGroupMembers(widget.ginfo.groupId.toInt());

            /// 暂时暴力处理
            // Client.instance.sendMsg(
            //   MembersReq(),
            //   widget.ginfo.groupId,
            //   MakePBCommData(
            //     aimId: widget.ginfo.groupId,
            //     groupId: widget.ginfo.groupId,
            //     toService: Service.group,
            //   ),
            // );
          }
        } else if (msg is SetNewMemberRemindRsp) {
          final groupId = pbMessage.pbCommData.groupId;
          final aimId = pbMessage.pbCommData.aimId;
          _updateNewRemindStatus(
              pbMessage.pbCommData.srcId.toInt(), msg.newMemberRemindClosed);
          LoggerManager().debug(
              'SetNewMemberRemindRsp 是否开启新成员入群提醒状态更新 status ======> ${msg.newMemberRemindClosed} groupId: $groupId aimId: $aimId');
        } else if (msg is SetMemberChatBannedStatusRsp) {
          final groupId = pbMessage.pbCommData.groupId;
          final aimId = pbMessage.pbCommData.aimId;
          _updateGroupBannedStatus(msg.bannedStatus);
          LoggerManager().debug(
              'SetMemberChatBannedStatusRsp 群禁言状态更新 status ======> ${msg.bannedStatus} groupId: $groupId aimId: $aimId');
        } else if (msg is MemberChatBannedStatusChangeNotify) {
        } else if (msg is EditGroupRemarkRsp) {
          LoggerManager().debug(
            '群备注编辑成功 群备注：${msg.remark}',
          );
        } else if (msg is GroupDetailRsp) {
          LoggerManager().error(
            '群信息获取成功 群名称：${msg.name}'
            ' \n 群备注：${msg.remark} '
            '\n inviteRoleLimit：${msg.inviteRoleLimit} '
            '\n newMemberRemindClosed: ${msg.newMemberRemindClosed} '
            '\n scanCodeJoinGroupSwitchStatus: ${msg.scanCodeJoinGroupSwitchStatus}'
            '\n scanCodeJoinGroupParam: ${msg.scanCodeJoinGroupParam}',
          );
          groupDetails = msg;
          // _groupInfo.initFromPBGroup(msg);
          // setState(() {});
          // AppDatabase().groupDao?.update(
          //   groupId: msg.groupId.toInt(),
          //   dataMap: <String, dynamic>{
          //     // 'needReceip': msg.needReceipt,
          //     'inviteRoleLimit': msg.inviteRoleLimit,
          //     'newMemberRemindClosed': msg.newMemberRemindClosed ? 1 : 0,
          //   },
          // );
          setState(() {});
        } else if (msg is EditRemarkRsp) {
          LoggerManager().debug(
            '群昵称编辑成功 修改人：${pbMessage.pbCommData.srcId} 被修改人：${pbMessage.pbCommData.aimId} 备注：${msg.remark}',
          );
          // mineMember.remark = msg.remark;
          // eventBus.fire(
          //   UpdateGroupMemberInfo(
          //     groupId: widget.ginfo.groupId.toInt(),
          //     member: mineMember,
          //   ),
          // );
          //
          // /// 更新数据库
          // AppDatabase().groupMemberDao?.updateMemberRemark(
          //       groupId: widget.ginfo.groupId.toInt(),
          //       member: mineMember,
          //     );
        } else if (msg is EditMemberRemarkRsp) {
          /// 修改陌生人备注成功
          LoggerManager().debug(
            'EditMemberRemarkRsp 陌生人备注编辑成功 srcId：${pbMessage.pbCommData.srcId} aimId：${pbMessage.pbCommData.aimId} 被修改人：${msg.remarkedUserId} 备注：${msg.remark}',
          );
          final Member member = memberList.firstWhere(
            (element) => element.userId == pbMessage.pbCommData.aimId,
          );
          member.remark = msg.remark;

          eventBus.fire(
            UpdateGroupMemberInfo(
              groupId: widget.ginfo.groupId.toInt(),
              member: member,
            ),
          );

          /// 更新数据库
          AppDatabase().groupMemberDao?.updateMemberRemark(
                groupId: widget.ginfo.groupId.toInt(),
                member: member,
              );
        } else if (msg is RemarkChangeNotify) {
          LoggerManager().debug(
            'RemarkChangeNotify 群昵称编辑成功 修改人：${pbMessage.pbCommData.srcId} 被修改人：${msg.editedUserId} 备注：${msg.remark}',
          );
          for (final item in memberList) {
            LoggerManager().debug(
                'member userId: ${item.userId} username: ${item.username} remark: ${item.remark}');
          }
          final Member member = memberList.firstWhere(
            (element) => element.userId == msg.editedUserId,
          );
          member.remark = msg.remark;
          if (msg.editedUserId == AppUserInfo().imId) {
            mineMember.remark = msg.remark;
          }

          eventBus.fire(
            UpdateGroupMemberInfo(
              groupId: widget.ginfo.groupId.toInt(),
              member: member,
            ),
          );

          /// 更新数据库
          AppDatabase()
              .groupMemberDao
              ?.updateMemberRemark(
                groupId: widget.ginfo.groupId.toInt(),
                member: member,
              )
              .then((value) {
            LoggerManager().debug('群昵称修改结果 =========> $value');
          });
        } else if (msg is CreateGroupRsp) {
          // 创建成功，跳转到群聊
          // Navigator.popAndPushNamed(context, "ChatGroup", arguments: msg.groupId);
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext ctx) {
            return ChatGroupPage(
              groupId: msg.groupId,
            );
          }));
        } else if (msg is MembersRsp) {
          // 创建成功，跳转到群聊
          if (msg.members.isNotEmpty) {
            memberList.clear();
            for (var element in msg.members) {
              // LoggerManager().debug(
              //     'element info =====> ${element.userId} name: ${element.username} remark: ${element.remark} role: ${element.role} banned: ${element.banned}');
              if (element.userId == AppUserInfo().imId) {
                mineMember = element;
                LoggerManager()
                    .debug('group info my remark =====> ${element.remark}');
              }
              memberList.add(element);
            }
            memberList.sort((a, b) {
              return b.role.compareTo(a.role);
            });
            getMember();
            setState(() {
              // 更新页面
            });
          }
        } else if (msg is KickoutNotify) {
          // 创建成功，跳转到群聊
          log("用户 ${msg.memberId} 被 用户${pbMessage.pbCommData.srcId} 移除群");

          // MembersReq 获取成员列表
          // Client.instance.sendMsg(
          //     MembersReq(),
          //     widget.ginfo.groupId,
          //     MakePBCommData(
          //         aimId: widget.ginfo.groupId,
          //         groupId: widget.ginfo.groupId,
          //         toService: Service.group));
          c?.fetchGroupMembers(widget.ginfo.groupId.toInt());
        }
        // else if (msg is MemberDetailRsp) {
        //   showDialog(
        //       context: context,
        //       barrierDismissible: false,
        //       builder: (BuildContext context) {
        //         return AlertDialog(
        //           title: Text("成员 ${msg.username} 的信息"),
        //           content: SingleChildScrollView(
        //             child: ListBody(
        //               children: [
        //                 Row(
        //                   children: [Text("userId："), Text("${msg.userId}")],
        //                 ),
        //                 Row(
        //                   children: [Text("groupId："), Text("${msg.groupId}")],
        //                 ),
        //                 Row(
        //                   children: [Text("remark："), Text("${msg.remark}")],
        //                 ),
        //                 Row(
        //                   children: [Text("avatar："), Text("${msg.avatar}")],
        //                 ),
        //                 Row(
        //                   children: [Text("banned："), Text("${msg.banned}")],
        //                 ),
        //                 Row(
        //                   children: [Text("role："), Text("${msg.role}")],
        //                 ),
        //               ],
        //             ),
        //           ),
        //           actions: [
        //             TextButton(
        //               child: Text("确定"),
        //               onPressed: () {
        //                 Navigator.pop(context);
        //               },
        //             )
        //           ],
        //         );
        //       });
        // }
        else if (msg is BanGroupsRsp) {
          showToast("封禁成功");
        } else if (msg is UnbanGroupsRsp) {
          showToast("解禁成功");
        } else if (msg is EditRemarkRsp) {}
        return true;
      });
    }
  }

  Future<void> _updateGroupRemark(String remark) async {
    EditGroupRemarkReq req = EditGroupRemarkReq();
    req.remark = remark;
    PBCommData pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo().imId),
      groupId: Int64(widget.ginfo.groupId),
      toService: Service.group,
    );

    http.Response response = await RpcCallImOuterApi(
      "/pb_grpc_group.Group/EditGroupRemark",
      req,
      pbCommData,
    ).catchError((err) {
      log("---err:$err");
      return http.Response("$err", 500);
    });

    if (response.statusCode == 200) {
      final EditGroupRemarkRsp rsp = EditGroupRemarkRsp();
      rsp.mergeFromBuffer(response.bodyBytes);

      groupDetails ??= GroupDetailRsp(
        groupId: Int64(widget.ginfo.groupId),
        name: widget.ginfo.name,
        remark: widget.ginfo.remark,
      );
      groupDetails!.remark = rsp.remark;

      eventBus.fire(
        UpdateGroupName(
          groupId: widget.ginfo.groupId.toInt(),
          groupDetails: groupDetails!,
        ),
      );

      if (groupInfoMap.containsKey(widget.ginfo.groupId.toString())) {
        groupInfoMap[widget.ginfo.groupId.toString()]!['remarks'] = rsp.remark;
      }

      ChatGroupController.to('${widget.ginfo.groupId}').groupInfo.value.remark =
          rsp.remark;

      AppDatabase().groupDao?.updateRemark(
            groupId: widget.ginfo.groupId.toInt(),
            remark: rsp.remark,
          );
      showToast("群备注已更新");
    }
  }

  TextEditingController searchEditCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    c = ChatGroupController.to(widget.ginfo.groupId.toInt().toString());
    if (memberList.length > 19) {
      showMemberList = memberList.sublist(0, 18);
    } else {
      showMemberList = memberList;
    }

    final list = showMemberList.map((e) => GroupMemberModel(data: e)).toList();
    memberDataList.clear();
    memberDataList.addAll(list);

    if (mineHasAdminPermission()) {
      memberDataList.add(const GroupMemberModel(type: 1));
      memberDataList.add(const GroupMemberModel(type: 2));
    }

    return Scaffold(
      backgroundColor: const Color(0XFFF5F5F5),
      appBar: CustomAppBar(
        title: const Text('群设置'),
      ),
      body: SingleChildScrollView(
        // physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(vertical: Dimens.gap_dp10),
              child: GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  childAspectRatio: 1.0,
                ),
                shrinkWrap: true,
                itemCount: memberDataList.length,
                itemBuilder: (BuildContext context, int index) {
                  return _BuildListMembers(context, index);
                },
              ),
            ),

            if (memberList.length > maxMemberCount)
              Container(
                color: Colors.white,
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    if (Dimens.isDesktop()) {
                      MyAlertDialog().show(
                        child: cGroupMember.GroupMemberPage(
                          groupId: widget.ginfo.groupId.toInt(),
                        ),
                      );
                    } else {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return cGroupMember.GroupMemberPage(
                              groupId: widget.ginfo.groupId.toInt(),
                            );
                          },
                        ),
                      );
                    }
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.w,
                    ).copyWith(top: 10.h, bottom: 12.h),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '查看更多群成员',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                        4.horizontalSpace,
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black.withOpacity(0.6),
                          size: 14.w,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

            const SizedBox(height: 5),
            Container(
              width: double.infinity,
              height: Dimens.gap_dp80,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            var groupRemark = "";
                            final hint = (null == groupDetails?.remark ||
                                    groupDetails?.remark.isEmpty == true)
                                ? groupDetails?.name
                                : groupDetails?.remark;
                            return AlertDialog(
                              title: const Text('输入群备注'),
                              content: TextField(
                                controller: TextEditingController(text: hint),
                                autofocus: true,
                                decoration: const InputDecoration(
                                  hintText: "输入群备注",
                                  prefixIcon: Icon(Icons.group),
                                ),
                                onChanged: (value) {
                                  groupRemark = value;
                                },
                              ),
                              actions: [
                                TextButton(
                                  child: const Text('确定'),
                                  onPressed: () {
                                    // 发送消息
                                    _updateGroupRemark(groupRemark);
                                    Navigator.pop(context);
                                  },
                                ),
                                TextButton(
                                  child: const Text('取消'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                )
                              ],
                            );
                          }).then((value) => {setState(() {})});
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.edit_note,
                          size: Dimens.gap_dp28,
                        ),
                        Gaps.vGap4,
                        Text(
                          '群备注',
                          style: TextStyle(
                            fontSize: Dimens.font_sp14,
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GroupQRCodePage(
                            groupInfo: widget.ginfo,
                          ),
                        ),
                      );
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.qr_code,
                          size: Dimens.gap_dp28,
                        ),
                        Gaps.vGap4,
                        Text(
                          '群二维码',
                          style: TextStyle(
                            fontSize: Dimens.font_sp14,
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      if (Dimens.isDesktop()) {
                        MyAlertDialog().show(
                          child: GroupAvatarPage(
                            ginfo: widget.ginfo,
                          ),
                        );
                        return;
                      }
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext ctx) {
                            return GroupAvatarPage(
                              ginfo: widget.ginfo,
                            );
                          },
                        ),
                      );
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.person,
                          size: Dimens.gap_dp28,
                        ),
                        Gaps.vGap4,
                        Text(
                          '群头像',
                          style: TextStyle(
                            fontSize: Dimens.font_sp14,
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      final hasAdminRights =
                          widget.ginfo.ownerId == AppUserInfo().imId ||
                              mineMember.role == 1;
                      if (Dimens.isDesktop()) {
                        MyAlertDialog()
                            .show(
                          child: GroupNoticePage(
                            groupId: widget.ginfo.groupId.toInt(),
                            notice: widget.ginfo.notice,
                            hasAdminRights: hasAdminRights,
                          ),
                        )
                            .then((value) {
                          if (null != value && value is String) {
                            widget.ginfo.notice = value;
                            setState(() {});
                          }
                        });
                      } else {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return GroupNoticePage(
                                groupId: widget.ginfo.groupId.toInt(),
                                notice: widget.ginfo.notice,
                                hasAdminRights: hasAdminRights,
                              );
                            },
                          ),
                        ).then((value) {
                          if (null != value && value is String) {
                            widget.ginfo.notice = value;
                            setState(() {});
                          }
                        });
                      }
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.announcement_outlined,
                          size: Dimens.gap_dp28,
                        ),
                        Gaps.vGap4,
                        Text(
                          '群公告',
                          style: TextStyle(
                            fontSize: Dimens.font_sp14,
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // 群管理
            Container(
              color: Colors.white,
              child: MediaQuery.removePadding(
                removeBottom: true,
                removeTop: true,
                context: context,
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  // padding: const EdgeInsets.all(20.0),
                  children: createGroupManagerWidget(context),
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
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

  bool mineHasAdminPermission() {
    return mineMember.role > 0;
  }

  Widget _BuildListMembers(BuildContext context, int index) {
    // LoggerManager().debug(
    //   '_BuildListMembers ======> $index ------ lengh: ${memberList.length} mineHasAdminPermission: ${mineHasAdminPermission()}',
    // );
    final memberData = memberDataList[index];
    final element = memberData.data;
    if (memberData.type == 0) {
      return InkWell(
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 2, 5, 2),
          child: Column(
            children: [
              Container(
                width: 50,
                height: 50,
                child: Stack(
                  children: [
                    avatar.UserAvatar(
                      size: 50,
                      avatar: element!.avatar,
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
                                ? Theme.of(context).colorScheme.error
                                : Theme.of(context).colorScheme.primary,
                            borderRadius:
                                BorderRadius.circular(Dimens.gap_dp12),
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
                  groupId: widget.ginfo.groupId.toInt(),
                  member: element,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 10, color: Colors.black54),
                ),
              ),
            ],
          ),
        ),
        onTap: () async {
          FriendInfo friendInfo = await GetFriendInfo(element.userId.toInt());
          if (Dimens.isDesktop()) {
            MyAlertDialog().show(
              child: ffi.FriendInfoV(
                finfo: friendInfo,
                member: element,
                groupId: widget.ginfo.groupId.toInt(),
                hasAdminRights: mineMember.role >= 1,
              ),
            );
            return;
          }

          LoggerManager()
              .debug('friendInfo remark ========> ${friendInfo.remark}');
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return ffi.FriendInfoV(
                  finfo: friendInfo,
                  member: element,
                  groupId: widget.ginfo.groupId.toInt(),
                  hasAdminRights: mineMember.role >= 1,
                );
              },
            ),
          );
        },
      );
    } else if (memberData.type == 1) {
      return InkWell(
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 2, 5, 2),
          child: Column(
            children: [
              DottedBorder(
                borderType: BorderType.RRect,
                radius: Radius.circular(Dimens.gap_dp8),
                dashPattern: const [6, 3],
                color: Colors.black12,
                child: SizedBox(
                  width: Dimens.gap_dp10 * 5,
                  height: Dimens.gap_dp10 * 5,
                  child: IconButton(
                    icon: Icon(
                      Icons.add,
                      size: Dimens.gap_dp30,
                      color: Colors.black26,
                    ),
                    onPressed: () {
                      if (Dimens.isDesktop()) {
                        MyAlertDialog().show(
                          child: InviteFriendPage(
                            groupId: widget.ginfo.groupId.toInt(),
                          ),
                        );
                        return;
                      }
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext ctx) {
                            return InviteFriendPage(
                              memberList: friendInfoList,
                              groupId: widget.ginfo.groupId.toInt(),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          if (Dimens.isDesktop()) {
            MyAlertDialog().show(
              child: InviteFriendPage(
                groupId: widget.ginfo.groupId.toInt(),
              ),
            );
            return;
          }
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext ctx) {
                return InviteFriendPage(
                  groupId: widget.ginfo.groupId.toInt(),
                );
              },
            ),
          );
        },
      );
    } else {
      return InkWell(
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 2, 5, 2),
          child: Column(
            children: [
              DottedBorder(
                borderType: BorderType.RRect,
                radius: Radius.circular(Dimens.gap_dp8),
                dashPattern: const [6, 3],
                color: Colors.black12,
                child: SizedBox(
                  width: Dimens.gap_dp10 * 5,
                  height: Dimens.gap_dp10 * 5,
                  child: IconButton(
                    icon: Icon(
                      Icons.remove,
                      size: Dimens.gap_dp30,
                      color: Colors.black26,
                    ),
                    onPressed: () {
                      if (Dimens.isDesktop()) {
                        MyAlertDialog().show(
                          child: GroupActionPage(
                            groupId: widget.ginfo.groupId.toInt(),
                            type: MemberType.normal,
                          ),
                        );
                      } else {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return GroupActionPage(
                                groupId: widget.ginfo.groupId.toInt(),
                                type: MemberType.normal,
                              );
                            },
                          ),
                        );
                      }
                    },
                  ),
                ),
              ),
/*              Container(
                width: 50,
                height: 50,
                child: IconButton(
                  icon: const Icon(
                    Icons.remove,
                    size: 30,
                    color: Colors.black26,
                  ),
                  onPressed: () {
                    if (Dimens.isDesktop()) {
                      MyAlertDialog().show(
                        child: GroupActionPage(
                          groupId: widget.ginfo.groupId.toInt(),
                          type: MemberType.normal,
                        ),
                      );
                    } else {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return GroupActionPage(
                              groupId: widget.ginfo.groupId.toInt(),
                              type: MemberType.normal,
                            );
                          },
                        ),
                      );
                    }
                  },
                ),
              ),*/
            ],
          ),
        ),
        onTap: () {
          if (Dimens.isDesktop()) {
            MyAlertDialog().show(
              child: InviteFriendPage(
                groupId: widget.ginfo.groupId.toInt(),
              ),
            );
            return;
          }
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext ctx) {
                return InviteFriendPage(
                  groupId: widget.ginfo.groupId.toInt(),
                );
              },
            ),
          );
        },
      );
    }
  }

  static const loadingTag = "##loading##"; //表尾标记

  List<Widget> createGroupManagerWidget(BuildContext context) {
    List<Widget> lists = [
      SizedBox(
        child: Container(
          height: 5,
          color: Color(0XFFF5F5F5),
        ),
      ),
      ListTile(
        title: const Text('群ID'),
        trailing: Text("${widget.ginfo.groupId}"),
      ),
      const Divider(
        color: Color(0XFFF5F5F5),
        height: 0.5,
      ),
      ListTile(
        title: const Text('群名称'),
        trailing: Container(
          alignment: Alignment.centerRight,
          width: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Text(
                  widget.ginfo.groupName.length > 10
                      ? "${widget.ginfo.groupName.substring(0, 7)}..."
                      : widget.ginfo.groupName,
                  maxLines: 1,
                  textAlign: TextAlign.end,
                  overflow: TextOverflow.clip,
                  style: TextStyle(fontSize: 14),
                ),
              ),
              (widget.ginfo.ownerId == AppUserInfo().imId ||
                      mineMember.role == 1)
                  ? const Icon(Icons.keyboard_arrow_right)
                  : Container(),
            ],
          ),
        ),
        onTap: () {
          if (widget.ginfo.ownerId == AppUserInfo().imId ||
              mineMember.role == 1) {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  var groupName = "";
                  return AlertDialog(
                    title: Text("输入群名称"),
                    content: TextField(
                      controller: TextEditingController(
                        text: widget.ginfo.name != ""
                            ? "${widget.ginfo.name}"
                            : "",
                      ),
                      autofocus: true,
                      decoration: const InputDecoration(
                        hintText: "请输入群名称",
                        prefixIcon: Icon(Icons.group),
                      ),
                      onChanged: (value) {
                        groupName = value;
                      },
                    ),
                    actions: [
                      TextButton(
                        child: Text("确定"),
                        onPressed: () {
                          // 发送消息
                          if (groupName.isEmpty) {
                            showToast("请输入群名称");
                            return;
                          }
                          Client.instance.sendMsg(
                            EditNameReq()..name = groupName,
                            Int64(widget.ginfo.groupId),
                            MakePBCommData(
                              aimId: Int64(widget.ginfo.groupId),
                              groupId: Int64(widget.ginfo.groupId),
                              toService: Service.group,
                            ),
                          );
                          Navigator.pop(context);
                          widget.ginfo.name = groupName;
                          showToast("群名称已更新");
                        },
                      ),
                      TextButton(
                        child: Text("取消"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  );
                }).then((value) => {setState(() {})});
          }
        },
      ),
      const Divider(
        color: Color(0XFFF5F5F5),
        height: 0.5,
      ),
      // if (widget.ginfo.ownerId == AppUserInfo().imId || mineMember.role == 1)
      //   ListTile(
      //     title: const Text('群头像'),
      //     onTap: () {
      //       // 群头像
      //       if (Dimens.isDesktop()) {
      //         MyAlertDialog().show(
      //             child: GroupAvatarPage(
      //           ginfo: widget.ginfo,
      //         ));
      //         return;
      //       }
      //       Navigator.of(context)
      //           .push(MaterialPageRoute(builder: (BuildContext ctx) {
      //         return GroupAvatarPage(
      //           ginfo: widget.ginfo,
      //         );
      //       }));
      //     },
      //     trailing: Icon(Icons.keyboard_arrow_right),
      //   ),
      // if (widget.ginfo.ownerId == AppUserInfo().imId || mineMember.role == 1)
      //   const Divider(
      //     color: Color(0XFFF5F5F5),
      //     height: 0.5,
      //   ),
      // ListTile(
      //   title: const Text('群公告'),
      //   trailing: Container(
      //     alignment: Alignment.centerRight,
      //     width: 200,
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.end,
      //       children: [
      //         Expanded(
      //           child: Text(
      //             widget.ginfo.notice,
      //             maxLines: 1,
      //             textAlign: TextAlign.end,
      //             overflow: TextOverflow.clip,
      //             style: const TextStyle(fontSize: 14),
      //           ),
      //         ),
      //         (widget.ginfo.ownerId == AppUserInfo().imId ||
      //                 mineMember.role == 1)
      //             ? const Icon(Icons.keyboard_arrow_right)
      //             : Container(),
      //       ],
      //     ),
      //   ),
      //   onTap: () {
      //     log("群公告");
      //     final hasAdminRights = widget.ginfo.ownerId == AppUserInfo().imId ||
      //         mineMember.role == 1;
      //     if (Dimens.isDesktop()) {
      //       MyAlertDialog()
      //           .show(
      //         child: GroupNoticePage(
      //           groupId: widget.ginfo.groupId.toInt(),
      //           notice: widget.ginfo.notice,
      //           hasAdminRights: hasAdminRights,
      //         ),
      //       )
      //           .then((value) {
      //         if (null != value && value is String) {
      //           widget.ginfo.notice = value;
      //           setState(() {});
      //         }
      //       });
      //     } else {
      //       Navigator.of(context).push(
      //         MaterialPageRoute(
      //           builder: (context) {
      //             return GroupNoticePage(
      //               groupId: widget.ginfo.groupId.toInt(),
      //               notice: widget.ginfo.notice,
      //               hasAdminRights: hasAdminRights,
      //             );
      //           },
      //         ),
      //       ).then((value) {
      //         if (null != value && value is String) {
      //           widget.ginfo.notice = value;
      //           setState(() {});
      //         }
      //       });
      //     }
      //   },
      // ),
      if (GlobalController.to.systemConfig.value?.emailLogin == true)
        const Divider(
          color: Color(0XFFF5F5F5),
          height: 0.5,
        ),
      if (GlobalController.to.systemConfig.value?.emailLogin == true)
        ListTile(
          title: const Text('群昵称'),
          trailing: Container(
            alignment: Alignment.centerRight,
            width: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Gaps.empty,
                ),
                GroupMemberNicknameWidget(
                  groupId: widget.ginfo.groupId.toInt(),
                  member: mineMember,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 14),
                ),
                const Icon(Icons.keyboard_arrow_right),
              ],
            ),
          ),
          onTap: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  var groupNickname = "";
                  return AlertDialog(
                    title: const Text('输入群昵称'),
                    content: TextField(
                      controller: TextEditingController(
                        text: mineMember.remark.isEmpty
                            ? mineMember.username
                            : mineMember.remark,
                      ),
                      autofocus: true,
                      decoration: const InputDecoration(
                        hintText: "输入群昵称",
                        prefixIcon: Icon(Icons.group),
                      ),
                      onChanged: (value) {
                        groupNickname = value;
                      },
                    ),
                    actions: [
                      TextButton(
                        child: const Text('确定'),
                        onPressed: () {
                          // 发送消息
                          if (groupNickname.isEmpty) {
                            showToast("请输入群昵称");
                            return;
                          }
                          EditRemarkReq req = EditRemarkReq();
                          req.remark = groupNickname;
                          req.editedUserId = Int64(AppUserInfo().imId);
                          PBCommData pbCommData = MakePBCommData(
                            aimId: Int64(AppUserInfo().imId),
                            groupId: Int64(widget.ginfo.groupId),
                            toService: Service.group,
                          );
                          Client.instance.sendMsg(
                            req,
                            Int64(widget.ginfo.groupId),
                            pbCommData,
                          );
                          Navigator.pop(context);
                          showToast("群昵称已更新");
                        },
                      ),
                      TextButton(
                        child: const Text('取消'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  );
                }).then((value) => {setState(() {})});
          },
        ),
      // const Divider(
      //   color: Color(0XFFF5F5F5),
      //   height: 0.5,
      // ),
      // ListTile(
      //   title: const Text('群备注'),
      //   trailing: Container(
      //     alignment: Alignment.centerRight,
      //     width: 200,
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.end,
      //       children: [
      //         Expanded(
      //           child: Gaps.empty,
      //         ),
      //         GroupNameWidget(
      //           groupId: widget.ginfo.groupId.toInt(),
      //           groupDetails: groupDetails,
      //           maxLines: 1,
      //           remark: true,
      //           overflow: TextOverflow.ellipsis,
      //           style: const TextStyle(fontSize: 14),
      //         ),
      //         const Icon(Icons.keyboard_arrow_right),
      //       ],
      //     ),
      //   ),
      //   onTap: () {
      //     showDialog(
      //         context: context,
      //         builder: (BuildContext context) {
      //           var groupRemark = "";
      //           final hint = (null == groupDetails?.remark ||
      //                   groupDetails?.remark.isEmpty == true)
      //               ? groupDetails?.name
      //               : groupDetails?.remark;
      //           return AlertDialog(
      //             title: const Text('输入群备注'),
      //             content: TextField(
      //               controller: TextEditingController(text: hint),
      //               autofocus: true,
      //               decoration: const InputDecoration(
      //                 hintText: "输入群备注",
      //                 prefixIcon: Icon(Icons.group),
      //               ),
      //               onChanged: (value) {
      //                 groupRemark = value;
      //               },
      //             ),
      //             actions: [
      //               TextButton(
      //                 child: const Text('确定'),
      //                 onPressed: () {
      //                   // 发送消息
      //                   _updateGroupRemark(groupRemark);
      //                   Navigator.pop(context);
      //                 },
      //               ),
      //               TextButton(
      //                 child: const Text('取消'),
      //                 onPressed: () {
      //                   Navigator.pop(context);
      //                 },
      //               )
      //             ],
      //           );
      //         }).then((value) => {setState(() {})});
      //   },
      // ),
      // const Divider(
      //   color: Color(0XFFF5F5F5),
      //   height: 0.5,
      // ),
      // ListTile(
      //   title: const Text('群二维码'),
      //   trailing: Container(
      //     alignment: Alignment.centerRight,
      //     width: 200,
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.end,
      //       children: [
      //         Expanded(
      //           child: Gaps.empty,
      //         ),
      //         const Icon(Icons.keyboard_arrow_right),
      //       ],
      //     ),
      //   ),
      //   onTap: () {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //         builder: (context) => GroupQRCodePage(
      //           groupInfo: widget.ginfo,
      //         ),
      //       ),
      //     );
      //   },
      // ),
    ];

    if (hasAdminPermission(mineMember)) {
      lists = [
        ...lists,
        ...[
          const Divider(color: Color(0XFFF5F5F5), height: 0.5),
          ListTile(
            title: Text("群成员管理"),
            onTap: () async {
              var lists = <Member>[];
              if (widget.ginfo.ownerId == AppUserInfo().imId) {
                for (var element in memberList) {
                  if (element.userId == AppUserInfo().imId ||
                      element.userId == widget.ginfo.ownerId) {
                  } else {
                    lists.add(element);
                  }
                }
              } else if (mineMember.role == 1) {
                for (var element in memberList) {
                  if (element.userId == AppUserInfo().imId ||
                      element.userId == widget.ginfo.ownerId ||
                      element.role == 1) {
                  } else {
                    lists.add(element);
                  }
                }
              }
              if (Dimens.isDesktop()) {
                MyAlertDialog().show(
                  // child: GroupMemberPage(
                  //   groupId: widget.ginfo.groupId.toInt(),
                  //   memberList: lists,
                  //   title: "群成员管理",
                  //   type: GroupMemberOperate.kickout,
                  // ),
                  child: GroupActionPage(
                    groupId: widget.ginfo.groupId.toInt(),
                    type: MemberType.normal,
                  ),
                );
                return;
              }
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext ctx) {
                    return GroupActionPage(
                      groupId: widget.ginfo.groupId.toInt(),
                      type: MemberType.normal,
                    );
                    // return GroupMemberPage(
                    //   groupId: widget.ginfo.groupId.toInt(),
                    //   memberList: lists,
                    //   title: "群成员管理",
                    //   type: GroupMemberOperate.kickout,
                    // );
                  },
                ),
              );
            },
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          const Divider(color: Color(0XFFF5F5F5), height: 0.5),
          ListTile(
            title: Text("群内封禁"),
            onTap: () {
              var lists = <Member>[];
              for (var element in memberList) {
                if (element.userId == AppUserInfo().imId ||
                    element.userId == widget.ginfo.ownerId) {
                } else {
                  lists.add(element);
                }
              }
              if (Dimens.isDesktop()) {
                MyAlertDialog().show(
                  // child: GroupMemberPage(
                  //   groupId: widget.ginfo.groupId.toInt(),
                  //   memberList: lists,
                  //   title: "群内封禁",
                  //   type: GroupMemberOperate.ban,
                  // ),
                  child: GroupActionPage(
                    groupId: widget.ginfo.groupId.toInt(),
                    type: MemberType.banned,
                  ),
                );
                return;
              }
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext ctx) {
                    // return GroupMemberPage(
                    //   groupId: widget.ginfo.groupId.toInt(),
                    //   memberList: lists,
                    //   title: "群内封禁",
                    //   type: GroupMemberOperate.ban,
                    // );
                    return GroupActionPage(
                      groupId: widget.ginfo.groupId.toInt(),
                      type: MemberType.banned,
                    );
                  },
                ),
              );
            },
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          const Divider(color: Color(0XFFF5F5F5), height: 0.5),
          ListTile(
            title: Text("入群申请管理"),
            onTap: () async {
              if (Platform.isMacOS || Platform.isWindows) {
                await MyAlertDialog().show(
                    child: GroupApplyPage(
                  groupId: widget.ginfo.groupId.toInt(),
                ));
              } else {
                await Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext ctx) {
                  return GroupApplyPage(
                    groupId: widget.ginfo.groupId.toInt(),
                  );
                }));
              }
              setState(() {});
            },
            trailing: Obx(() => Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (ChatGroupController.to(widget.ginfo.groupId.toString())
                            .applyListsSize
                            .value >
                        0)
                      Container(
                        width: 18,
                        height: 18,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Colors.red),
                        child: Center(
                          child: Text(
                            ChatGroupController.to(
                                    widget.ginfo.groupId.toString())
                                .applyListsSize
                                .value
                                .toString(),
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    const Icon(Icons.keyboard_arrow_right),
                  ],
                )),
          ),
          const Divider(color: Color(0XFFF5F5F5), height: 0.5),
          if (widget.ginfo.ownerId == AppUserInfo().imId)
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ListTile(
                  title: Text("设置群管理"),
                  onTap: () {
                    var lists = <Member>[];
                    for (var element in memberList) {
                      if (element.userId != AppUserInfo().imId) {
                        lists.add(element);
                      }
                    }
                    if (Dimens.isDesktop()) {
                      MyAlertDialog().show(
                        // child: GroupMemberPage(
                        //   groupId: widget.ginfo.groupId.toInt(),
                        //   memberList: lists,
                        //   title: "设置群管理",
                        //   type: GroupMemberOperate.administrator,
                        // ),
                        child: GroupActionPage(
                          groupId: widget.ginfo.groupId.toInt(),
                          type: MemberType.manager,
                        ),
                      );
                      return;
                    }
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext ctx) {
                          // return GroupMemberPage(
                          //   groupId: widget.ginfo.groupId.toInt(),
                          //   memberList: lists,
                          //   title: "设置群管理",
                          //   type: GroupMemberOperate.administrator,
                          // );
                          return GroupActionPage(
                            groupId: widget.ginfo.groupId.toInt(),
                            type: MemberType.manager,
                          );
                        },
                      ),
                    );
                  },
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                const Divider(color: Color(0XFFF5F5F5), height: 0.5),
                ListTile(
                  title: Text("转让群"),
                  onTap: () async {
                    var lists = <Member>[];
                    for (var element in memberList) {
                      if (element.userId != AppUserInfo().imId) {
                        lists.add(element);
                      }
                    }
                    if (Dimens.isDesktop()) {
                      MyAlertDialog().show(
                        // child: GroupMemberPage(
                        //   groupId: widget.ginfo.groupId.toInt(),
                        //   memberList: lists,
                        //   title: "转让群",
                        //   type: GroupMemberOperate.transference,
                        // ),
                        child: GroupActionPage(
                          groupId: widget.ginfo.groupId.toInt(),
                          type: MemberType.transfer,
                        ),
                      );
                      return;
                    }
                    await Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext ctx) {
                          // return GroupMemberPage(
                          //   groupId: widget.ginfo.groupId.toInt(),
                          //   memberList: lists,
                          //   title: "转让群",
                          //   type: GroupMemberOperate.transference,
                          // );
                          return GroupActionPage(
                            groupId: widget.ginfo.groupId.toInt(),
                            type: MemberType.transfer,
                          );
                        },
                      ),
                    );
                    if (context.mounted) {
                      Navigator.pop(context);
                    }
                  },
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
              ],
            ),
          SizedBox(
            child: Container(
              height: 5,
              color: Color(0XFFF5F5F5),
            ),
          ),
          // _buildNeedReceiptWidget(context),
          _buildInviteRoleLimitWidget(context),
        ],
      ];
    }

    if (widget.ginfo.ownerId == AppUserInfo().imId) {
      lists = [
        ...lists,
        ...[
          const Divider(color: Color(0XFFF5F5F5), height: 0.5),
          _buildGroupBannedTipWidget(context),
          const Divider(color: Color(0XFFF5F5F5), height: 0.5),
          _buildNewMemberRemindWidget(context),
          const Divider(color: Color(0XFFF5F5F5), height: 0.5),
          _buildScanCodeJoinGroupWidget(context),
          const Divider(color: Color(0XFFF5F5F5), height: 0.5),
          _buildFreeJoinGroupWidget(context),
          const Divider(color: Color(0XFFF5F5F5), height: 0.5),
          _buildForbiddenAddFriendsWidget(context),
          const Divider(color: Color(0XFFF5F5F5), height: 0.5),
          ListTile(
            title: const Text('消息免打扰'),
            onTap: () {
              widget.ginfo.name;
              _editGroupDisturbStatus();
            },
            trailing: SizedBox(
              width: Dimens.gap_dp40,
              height: Dimens.gap_dp22,
              child: FlutterSwitch(
                value: widget.ginfo.noDisturb == 1,
                width: Dimens.gap_dp40,
                height: Dimens.gap_dp22,
                borderRadius: Dimens.gap_dp20,
                toggleSize: Dimens.gap_dp20,
                padding: Dimens.gap_dp2,
                onToggle: (value) {
                  _editGroupDisturbStatus();
                },
                activeColor: Theme.of(context).colorScheme.primary,
                inactiveColor:
                    Theme.of(context).colorScheme.primary.withOpacity(0.3),
              ),
            ),
          ),
          const Divider(color: Color(0XFFF5F5F5), height: 0.5),
          ListTile(
            title: const Text('会话置顶'),
            onTap: () async {
              if (null != lwConversation) {
                await ImController.to.pin(lwConversation!);
                if (mounted) {
                  setState(() {
                    isPinned = !isPinned;
                  });
                }
              }
            },
            trailing: SizedBox(
              width: Dimens.gap_dp40,
              height: Dimens.gap_dp22,
              child: FlutterSwitch(
                value: lwConversation?.isPinned ?? false,
                width: Dimens.gap_dp40,
                height: Dimens.gap_dp22,
                borderRadius: Dimens.gap_dp20,
                toggleSize: Dimens.gap_dp20,
                padding: Dimens.gap_dp2,
                onToggle: (value) async {
                  if (null != lwConversation) {
                    await ImController.to.pin(lwConversation!);
                    if (mounted) {
                      setState(() {
                        isPinned = !isPinned;
                      });
                    }
                  }
                },
                activeColor: Theme.of(context).colorScheme.primary,
                inactiveColor:
                    Theme.of(context).colorScheme.primary.withOpacity(0.3),
              ),
            ),
          ),
        ],
      ];
    }

    lists.add(
      SizedBox(
        child: Container(
          height: 5,
          color: Color(0XFFF5F5F5),
        ),
      ),
    );

    Widget _widget = Gaps.empty;
    if (mineMember.role == 1) {
      _widget = Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Divider(color: Color(0XFFF5F5F5), height: 0.5),
          _buildGroupBannedTipWidget(context),
          const Divider(color: Color(0XFFF5F5F5), height: 0.5),
          _buildNewMemberRemindWidget(context),
          const Divider(color: Color(0XFFF5F5F5), height: 0.5),
          _buildScanCodeJoinGroupWidget(context),
          const Divider(color: Color(0XFFF5F5F5), height: 0.5),
          _buildFreeJoinGroupWidget(context),
          const Divider(color: Color(0XFFF5F5F5), height: 0.5),
          _buildForbiddenAddFriendsWidget(context),
          const Divider(color: Color(0XFFF5F5F5), height: 0.5),
          ListTile(
            title: const Text('消息免打扰'),
            onTap: () {
              _editGroupDisturbStatus();
            },
            trailing: SizedBox(
              width: Dimens.gap_dp40,
              height: Dimens.gap_dp22,
              child: FlutterSwitch(
                value: widget.ginfo.noDisturb == 1,
                width: Dimens.gap_dp40,
                height: Dimens.gap_dp22,
                borderRadius: Dimens.gap_dp20,
                toggleSize: Dimens.gap_dp20,
                padding: Dimens.gap_dp2,
                onToggle: (value) {
                  _editGroupDisturbStatus();
                },
                activeColor: Theme.of(context).colorScheme.primary,
                inactiveColor:
                    Theme.of(context).colorScheme.primary.withOpacity(0.3),
              ),
            ),
          ),
          const Divider(color: Color(0XFFF5F5F5), height: 0.5),
          ListTile(
            title: const Text('会话置顶'),
            onTap: () async {
              if (null != lwConversation) {
                await ImController.to.pin(lwConversation!);
                if (mounted) {
                  setState(() {
                    isPinned = !isPinned;
                  });
                }
              }
            },
            trailing: SizedBox(
              width: Dimens.gap_dp40,
              height: Dimens.gap_dp22,
              child: FlutterSwitch(
                value: lwConversation?.isPinned ?? false,
                width: Dimens.gap_dp40,
                height: Dimens.gap_dp22,
                borderRadius: Dimens.gap_dp20,
                toggleSize: Dimens.gap_dp20,
                padding: Dimens.gap_dp2,
                onToggle: (value) async {
                  if (null != lwConversation) {
                    await ImController.to.pin(lwConversation!);
                    if (mounted) {
                      setState(() {
                        isPinned = !isPinned;
                      });
                    }
                  }
                },
                activeColor: Theme.of(context).colorScheme.primary,
                inactiveColor:
                    Theme.of(context).colorScheme.primary.withOpacity(0.3),
              ),
            ),
          ),
        ],
      );
    }
    lists.add(_widget);

    // if (mineMember.role == 1)
    //   lists.add(
    //     _buildGroupBannedTipWidget(context),
    //   );
    //
    // if (mineMember.role == 1)
    //   lists.add(
    //     _buildNewMemberRemindWidget(context),
    //   );
    //
    // if (mineMember.role == 1)
    //   lists.add(
    //     _buildScanCodeJoinGroupWidget(context),
    //   );
    //
    // if (mineMember.role == 1)
    //   lists.add(
    //     _buildFreeJoinGroupWidget(context),
    //   );
    // if (mineMember.role == 1)
    //   lists.add(
    //     _buildForbiddenAddFriendsWidget(context),
    //   );

    lists.add(
      SizedBox(
        child: Container(
          height: 5,
          color: Color(0XFFF5F5F5),
        ),
      ),
    );

    lists = [
      ...lists,
      ...[
        ListTile(
          title: Text("查找聊天内容"),
          trailing: Icon(Icons.chevron_right),
          onTap: () async {
            if (Platform.isWindows || Platform.isMacOS) {
              final value = await MyAlertDialog().show<String>(
                child: SearchMessagePage(
                  conversationId: widget.ginfo.groupId.toInt(),
                  privateChat: false,
                ),
              );
              if (null != value) {
                eventBus.fire(ScrollToMessage(messageId: value));
                if (context.mounted) {
                  Navigator.pop(context);
                }
              }
              return;
            }
            Navigator.of(context)
                .push(
              MaterialPageRoute(
                builder: (context) => SearchMessagePage(
                  conversationId: widget.ginfo.groupId.toInt(),
                  privateChat: false,
                ),
              ),
            )
                .then((value) {
              eventBus.fire(ScrollToMessage(messageId: value));
              Navigator.pop(context);
            });
          },
        ),
        Divider(
          color: Color(0XFFF5F5F5),
          height: 0.5,
        ),
        ListTile(
          title: Text("设置当前聊天背景"),
          trailing: const Icon(Icons.chevron_right),
          onTap: () {
            // pickerPic();
            Get.to(
              GroupBackgroudPage(groupInfo: widget.ginfo),
            );
          },
        ),
        Divider(
          color: Color(0XFFF5F5F5),
          height: 0.5,
        ),
        ListTile(
          title: Text("投诉"),
          trailing: Icon(Icons.chevron_right),
          onTap: () {
            final req = AddSuggestReq(
              type: 0,
              kind: 2,
            );
            GlobalRepository().report(
              req: req,
              callback: () {
                ToastUtil.show('已投诉');
              },
            );
          },
        ),
        SizedBox(
          child: Container(
            height: 5,
            color: Color(0XFFF5F5F5),
          ),
        ),
        Container(
          height: 50,
          child: InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "删除聊天记录",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            onTap: () async {
              DialogManager.showClearChatHistoryDialog(
                context,
                '确定要清空聊天记录吗？',
                onConfirm: () async {
                  GlobalController.to.removeMsgSn(widget.ginfo.groupId.toInt());

                  ImConversationRepository().clearSessionMsg(
                    widget.ginfo.groupId.toInt(),
                    isGroup: true,
                  );

                  /// 清空聊天记录
                  await dbDelChat(
                    widget.ginfo.groupId.toInt(),
                    CHAT_TYPE.GROUP,
                  );
                  // ImController.to.updateConversationMsgTips(
                  //   widget.ginfo.groupId.toInt(),
                  //   '',
                  // );
                  _clearHistoryMessage();
                  showToast("聊天记录已清空");
                },
              );
            },
          ),
        ),
      ],
    ];

    if (widget.ginfo.ownerId != AppUserInfo().imId) {
      lists.add(Container(color: Color(0XFFF5F5F5), height: 5));
      lists.add(GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          DialogManager.showExitGroupDialog(
            context,
            onConfirm: () async {
              Client.instance.sendMsg(
                QuitReq(),
                Int64(widget.ginfo.groupId),
                MakePBCommData(
                  aimId: Int64(widget.ginfo.groupId),
                  groupId: Int64(widget.ginfo.groupId),
                  toService: Service.group,
                ),
              );
              showToast('您退出了群${widget.ginfo.name}');

              // final conversation = await ImController.to.getConversationById(
              //   widget.ginfo.groupId.toInt(),
              // );
              // await AppDatabase().groupMemberDao?.delete(
              //       groupId: widget.ginfo.groupId.toInt(),
              //       userId: AppUserInfo().imId,
              //     );
              // if (null != conversation) {
              //   ImController.to.delete(conversation);
              // }
              if (context.mounted) {
                Navigator.pop(context, true);
              }
            },
          );
        },
        child: Container(
          height: 50,
          alignment: Alignment.center,
          child: const Text(
            "删除并退出",
            style: TextStyle(
              color: Colors.red,
            ),
          ),
        ),
      ));
    }

    return lists;
  }

  // Future<void> _editNeedReceipt(
  //   BuildContext context,
  //   bool needReceipt,
  // ) async {
  //   Client.instance.sendMsg(
  //     EditMemberCountLimitReq(
  //       memberCountLimit: needReceipt ? 0 : 100,
  //     ),
  //     Int64(_groupInfo.groupId),
  //     MakePBCommData(
  //       aimId: Int64(_groupInfo.groupId),
  //       groupId: Int64(_groupInfo.groupId),
  //       toService: Service.group,
  //     ),
  //   );
  //   Client.instance.sendMsg(
  //     EditNeedReceiptReq(needReceipt: !needReceipt),
  //     Int64(_groupInfo.groupId),
  //     MakePBCommData(
  //       aimId: Int64(_groupInfo.groupId),
  //       groupId: Int64(_groupInfo.groupId),
  //       toService: Service.group,
  //     ),
  //   );
  //   GroupModel info = c!.groupInfo.value;
  //   // info.needReceip = !needReceipt;
  //   info.memberCountLimit = needReceipt ? 0 : 100;
  //   c!.groupInfo.value = info;
  //
  //   _groupInfo.needReceipt = !needReceipt;
  //   setState(() {});
  //
  //   AppDatabase().objectBox.addGroup(info);
  //
  //   // AppDatabase().groupDao?.update(
  //   //   groupId: _groupInfo.groupId.toInt(),
  //   //   dataMap: <String, dynamic>{
  //   //     'needReceipt': _groupInfo.needReceipt,
  //   //   },
  //   // );
  //
  //   showToast("您修改了已读回执");
  // }

  Future<void> _editInviteRoleLimit(
    BuildContext context,
    bool inviteRoleLimit,
  ) async {
    Client.instance.sendMsg(
      EditInviteRoleLimitReq(roleLimit: inviteRoleLimit ? 1 : 0),
      Int64(_groupInfo.groupId),
      MakePBCommData(
        aimId: Int64(_groupInfo.groupId),
        groupId: Int64(_groupInfo.groupId),
        toService: Service.group,
      ),
    );
    GroupModel info = c!.groupInfo.value;
    info.inviteRoleLimit = inviteRoleLimit ? 1 : 0;
    c!.groupInfo.value = info;

    _groupInfo.inviteRoleLimit = inviteRoleLimit ? 1 : 0;

    AppDatabase().objectBox.addGroup(info);

    // AppDatabase().groupDao?.update(
    //   groupId: _groupInfo.groupId.toInt(),
    //   dataMap: <String, dynamic>{
    //     // 'needReceip': msg.needReceipt,
    //     'inviteRoleLimit': _groupInfo.inviteRoleLimit,
    //   },
    // );

    setState(() {});

    showToast("您修改了群成员邀请好友的权限");
  }

  // Widget _buildNeedReceiptWidget(BuildContext context) {
  //   final bool needReceipt = _groupInfo.needReceip;
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     mainAxisSize: MainAxisSize.min,
  //     children: [
  //       ListTile(
  //         title: const Text('是否需要已读回执'),
  //         onTap: () {
  //           _editNeedReceipt(context, needReceipt);
  //         },
  //         trailing: Switch(
  //           value: needReceipt,
  //           onChanged: (value) {
  //             _editNeedReceipt(context, needReceipt);
  //           },
  //         ),
  //       ),
  //       Container(
  //         margin: const EdgeInsets.only(left: 15, bottom: 15),
  //         child: Text(
  //           needReceipt ? "消息展示已读状态，群成员数小于100人" : "消息不展示已读状态，群成员无上限限制",
  //           style: const TextStyle(color: Colors.red, fontSize: 10),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  void _updateScanCodeStatus(
      int srcId, bool scanCodeStatus, String scanCodeKey) async {
    GroupModel info = c!.groupInfo.value;
    info.scanCodeJoinGroupSwitchStatus = scanCodeStatus ? 1 : 0;
    info.scanCodeJoinGroupParam = scanCodeKey;
    c!.groupInfo.value = info;

    _groupInfo.scanCodeJoinGroupSwitchStatus = scanCodeStatus ? 1 : 0;
    _groupInfo.scanCodeJoinGroupParam = scanCodeKey;

    AppDatabase().objectBox.addGroup(info);

    // AppDatabase().groupDao?.update(
    //   groupId: _groupInfo.groupId.toInt(),
    //   dataMap: <String, dynamic>{
    //     'scanCodeJoinGroupSwitchStatus':
    //         _groupInfo.scanCodeJoinGroupSwitchStatus,
    //     'scanCodeJoinGroupParam': _groupInfo.scanCodeJoinGroupParam,
    //   },
    // );

    setState(() {});

    if (srcId == AppUserInfo().imId) {
      showToast("修改成功");
    }
  }

  void _updateFreeJoinGroupStatus(
    int srcId,
    bool freeJoinStatus,
  ) async {
    GroupModel info = c!.groupInfo.value;
    info.freeJoinStatus = freeJoinStatus ? 1 : 0;
    c!.groupInfo.value = info;

    _groupInfo.freeJoinStatus = freeJoinStatus ? 1 : 0;

    AppDatabase().objectBox.addGroup(info);

    // AppDatabase().groupDao?.update(
    //   groupId: _groupInfo.groupId.toInt(),
    //   dataMap: <String, dynamic>{
    //     'freeJoinStatus': _groupInfo.freeJoinStatus,
    //   },
    // );

    setState(() {});

    if (srcId == AppUserInfo().imId) {
      showToast("修改成功");
    }
  }

  void _updateNewRemindStatus(int srcId, bool newMemberRemindClosed) async {
    GroupModel info = c!.groupInfo.value;
    info.newMemberRemindClosed = newMemberRemindClosed ? 1 : 0;
    c!.groupInfo.value = info;

    _groupInfo.newMemberRemindClosed = newMemberRemindClosed ? 1 : 0;

    AppDatabase().objectBox.addGroup(info);

    // AppDatabase().groupDao?.update(
    //   groupId: _groupInfo.groupId.toInt(),
    //   dataMap: <String, dynamic>{
    //     'newMemberRemindClosed': _groupInfo.newMemberRemindClosed,
    //   },
    // );

    setState(() {});

    if (srcId == AppUserInfo().imId) {
      showToast("修改成功");
    }
  }

  void _updateGroupBannedStatus(int bannedStatus) async {
    GroupModel info = c!.groupInfo.value;
    info.memberChatBannedStatus = bannedStatus;
    c!.groupInfo.value = info;

    _groupInfo.memberChatBannedStatus = bannedStatus;

    AppDatabase().objectBox.addGroup(info);

    // AppDatabase().groupDao?.update(
    //   groupId: _groupInfo.groupId.toInt(),
    //   dataMap: <String, dynamic>{
    //     'memberChatBannedStatus': _groupInfo.memberChatBannedStatus,
    //   },
    // );

    setState(() {});

    showToast("您修改了群禁言状态");
  }

  void _editGroupBannedStatus(bool banned) async {
    final bannedStatus = banned ? 0 : 1;
    final req = SetMemberChatBannedStatusReq(bannedStatus: bannedStatus);
    Client.instance.sendMsg(
      req,
      Int64(_groupInfo.groupId),
      MakePBCommData(
        aimId: Int64(AppUserInfo().imId),
        groupId: Int64(_groupInfo.groupId),
        toService: Service.group,
      ),
    );
  }

  void _editNewMemberRemindStatus(bool isRemind) async {
    final req = SetNewMemberRemindReq(newMemberRemindClosed: isRemind);
    Client.instance.sendMsg(
      req,
      Int64(_groupInfo.groupId),
      MakePBCommData(
        aimId: Int64(AppUserInfo().imId),
        groupId: Int64(_groupInfo.groupId),
        toService: Service.group,
      ),
    );
  }

  void _updateForbiddenAddFriendsStatus(
    bool forbiddenAddFriends,
  ) async {
    GroupModel info = c!.groupInfo.value;
    info.forbiddenAddFriends = forbiddenAddFriends ? 0 : 1;
    c!.groupInfo.value = info;

    _groupInfo.forbiddenAddFriends = forbiddenAddFriends ? 0 : 1;

    AppDatabase().objectBox.addGroup(info);

    // AppDatabase().groupDao?.update(
    //   groupId: _groupInfo.groupId.toInt(),
    //   dataMap: <String, dynamic>{
    //     'forbiddenAddFriends': _groupInfo.forbiddenAddFriends,
    //   },
    // );

    setState(() {});

    showToast('修改成功');
  }

  void _editForbiddenAddFriendsStatus(bool forbiddenAddFriends) async {
    final title = forbiddenAddFriends ? '是否允许群内成员互加好友' : '是否关闭群内成员互加好友';
    DialogManager.showFreeJoinGroupDialog(
      context,
      title,
      onConfirm: () {
        ImConversationRepository().setGroupProp(
          context,
          groupId: _groupInfo.groupId.toInt(),
          callback: () {
            _updateForbiddenAddFriendsStatus(forbiddenAddFriends);
          },
        );
      },
    );
  }

  void _editFreeJoinGroupStatus(bool freeJoinGroup) async {
    final title = freeJoinGroup ? '是否关闭自由入群' : '是否开启自由入群';
    DialogManager.showFreeJoinGroupDialog(
      context,
      title,
      onConfirm: () {
        final req = SetFreeJoinStatusReq(freeJoinStatus: !freeJoinGroup);
        Client.instance.sendMsg(
          req,
          Int64(_groupInfo.groupId),
          MakePBCommData(
            aimId: Int64(AppUserInfo().imId),
            groupId: Int64(_groupInfo.groupId),
            toService: Service.group,
          ),
        );
      },
    );
  }

  void _editScanCodeJoinGroupStatus(bool scanCodeJoinGroup) async {
    final title = scanCodeJoinGroup ? '是否关闭扫码直接入群' : '是否开启扫码直接入群';
    DialogManager.showFreeJoinGroupDialog(
      context,
      title,
      onConfirm: () {
        final req = SetScanCodeJoinGroupSwitchReq(
          switchStatus: !scanCodeJoinGroup,
        );
        Client.instance.sendMsg(
          req,
          Int64(_groupInfo.groupId),
          MakePBCommData(
            aimId: Int64(AppUserInfo().imId),
            groupId: Int64(_groupInfo.groupId),
            toService: Service.group,
          ),
        );
      },
    );
  }

  void _editGroupDisturbStatus() async {
    /// 是否免打扰
    final noDisturb = widget.ginfo.noDisturb == 1;
    await AppDatabase().groupDao?.update(
      groupId: widget.ginfo.groupId.toInt(),
      dataMap: <String, dynamic>{
        'noDisturb': !noDisturb,
      },
    );
    final noDisturbValue = noDisturb ? 0 : 1;
    await ImController.to.updateConversationDisturbStatus(
      widget.ginfo.groupId.toInt(),
      noDisturbValue,
    );
    widget.ginfo.noDisturb = noDisturbValue;
    setState(() {});
  }

  void _clearHistoryMessage() async {
    final req = ClearHisMsgReq();
    Client.instance.sendMsg(
      req,
      Int64(_groupInfo.groupId),
      MakePBCommData(
        aimId: Int64(AppUserInfo().imId),
        groupId: Int64(_groupInfo.groupId),
        toService: Service.group,
      ),
    );
  }

  Widget _buildForbiddenAddFriendsWidget(BuildContext context) {
    final forbiddenAddFriends = _groupInfo.forbiddenAddFriends == 1;
    // debugPrint(
    //     'forbiddenAddFriends =======> ${_groupInfo.forbiddenAddFriends}');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          title: const Text('是否允许群内成员可以互加好友'),
          onTap: () {
            _editForbiddenAddFriendsStatus(forbiddenAddFriends);
          },
          trailing: SizedBox(
            width: Dimens.gap_dp40,
            height: Dimens.gap_dp22,
            child: FlutterSwitch(
              value: !forbiddenAddFriends,
              width: Dimens.gap_dp40,
              height: Dimens.gap_dp22,
              borderRadius: Dimens.gap_dp20,
              toggleSize: Dimens.gap_dp20,
              padding: Dimens.gap_dp2,
              onToggle: (value) {
                _editForbiddenAddFriendsStatus(forbiddenAddFriends);
              },
              activeColor: Theme.of(context).colorScheme.primary,
              inactiveColor:
                  Theme.of(context).colorScheme.primary.withOpacity(0.3),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 15, bottom: 15),
          child: Text(
            forbiddenAddFriends ? '关闭状态下群内成员无法互加好友' : '开启状态下群内成员可以互加好友',
            style: const TextStyle(color: Colors.red, fontSize: 10),
          ),
        ),
      ],
    );
  }

  Widget _buildFreeJoinGroupWidget(BuildContext context) {
    final bool feeJoinGroup = _groupInfo.freeJoinGroup;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          title: const Text('是否开启自由加群'),
          onTap: () {
            _editFreeJoinGroupStatus(feeJoinGroup);
          },
          trailing: SizedBox(
            width: Dimens.gap_dp40,
            height: Dimens.gap_dp22,
            child: FlutterSwitch(
              value: feeJoinGroup,
              width: Dimens.gap_dp40,
              height: Dimens.gap_dp22,
              borderRadius: Dimens.gap_dp20,
              toggleSize: Dimens.gap_dp20,
              padding: Dimens.gap_dp2,
              onToggle: (value) {
                _editFreeJoinGroupStatus(feeJoinGroup);
              },
              activeColor: Theme.of(context).colorScheme.primary,
              inactiveColor:
                  Theme.of(context).colorScheme.primary.withOpacity(0.3),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 15, bottom: 15),
          child: Text(
            feeJoinGroup ? '开启状态下无需管理员审核直接入群' : '关闭状态下需管理员审核才能入群',
            style: const TextStyle(color: Colors.red, fontSize: 10),
          ),
        ),
      ],
    );
  }

  Widget _buildScanCodeJoinGroupWidget(BuildContext context) {
    final bool scanCodeJoinGroup = _groupInfo.scanCodeJoinGroup;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          title: const Text('是否开启扫码直接入群'),
          onTap: () {
            _editScanCodeJoinGroupStatus(scanCodeJoinGroup);
          },
          trailing: SizedBox(
            width: Dimens.gap_dp40,
            height: Dimens.gap_dp22,
            child: FlutterSwitch(
              value: scanCodeJoinGroup,
              width: Dimens.gap_dp40,
              height: Dimens.gap_dp22,
              borderRadius: Dimens.gap_dp20,
              toggleSize: Dimens.gap_dp20,
              padding: Dimens.gap_dp2,
              onToggle: (value) {
                _editScanCodeJoinGroupStatus(scanCodeJoinGroup);
              },
              activeColor: Theme.of(context).colorScheme.primary,
              inactiveColor:
                  Theme.of(context).colorScheme.primary.withOpacity(0.3),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 15, bottom: 15),
          child: Text(
            scanCodeJoinGroup ? '开启状态下会扫码会直接入群' : '关闭状态下群聊二维码无效',
            style: const TextStyle(color: Colors.red, fontSize: 10),
          ),
        ),
      ],
    );
  }

  Widget _buildNewMemberRemindWidget(BuildContext context) {
    final bool isRemind = _groupInfo.newMemberRemind;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          title: const Text('是否开启新成员入群提醒'),
          onTap: () {
            _editNewMemberRemindStatus(isRemind);
          },
          trailing: SizedBox(
            width: Dimens.gap_dp40,
            height: Dimens.gap_dp22,
            child: FlutterSwitch(
              value: isRemind,
              width: Dimens.gap_dp40,
              height: Dimens.gap_dp22,
              borderRadius: Dimens.gap_dp20,
              toggleSize: Dimens.gap_dp20,
              padding: Dimens.gap_dp2,
              onToggle: (value) {
                _editNewMemberRemindStatus(isRemind);
              },
              activeColor: Theme.of(context).colorScheme.primary,
              inactiveColor:
                  Theme.of(context).colorScheme.primary.withOpacity(0.3),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 15, bottom: 15),
          child: Text(
            isRemind ? '开启状态下会收到震动/响铃提醒' : '关闭状态下不会收到震动/响铃提醒',
            style: const TextStyle(color: Colors.red, fontSize: 10),
          ),
        ),
      ],
    );
  }

  Widget _buildGroupBannedTipWidget(BuildContext context) {
    final bool isBanned = _groupInfo.isBanned;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          title: const Text('群禁言'),
          onTap: () {
            _editGroupBannedStatus(isBanned);
          },
          trailing: SizedBox(
            width: Dimens.gap_dp40,
            height: Dimens.gap_dp22,
            child: FlutterSwitch(
              value: isBanned,
              width: Dimens.gap_dp40,
              height: Dimens.gap_dp22,
              borderRadius: Dimens.gap_dp20,
              toggleSize: Dimens.gap_dp20,
              padding: Dimens.gap_dp2,
              onToggle: (value) {
                _editGroupBannedStatus(isBanned);
              },
              activeColor: Theme.of(context).colorScheme.primary,
              inactiveColor:
                  Theme.of(context).colorScheme.primary.withOpacity(0.3),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 15, bottom: 15),
          child: Text(
            isBanned ? '只有管理员才可以发言' : '发言无限制',
            style: const TextStyle(color: Colors.red, fontSize: 10),
          ),
        ),
      ],
    );
  }

  Widget _buildInviteRoleLimitWidget(BuildContext context) {
    final bool inviteRoleLimit = _groupInfo.inviteRoleLimit == 0;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          title: const Text('是否允许普通成员邀请好友入群'),
          onTap: () {
            _editInviteRoleLimit(context, inviteRoleLimit);
          },
          trailing: SizedBox(
            width: Dimens.gap_dp40,
            height: Dimens.gap_dp22,
            child: FlutterSwitch(
              value: inviteRoleLimit,
              width: Dimens.gap_dp40,
              height: Dimens.gap_dp22,
              borderRadius: Dimens.gap_dp20,
              toggleSize: Dimens.gap_dp20,
              padding: Dimens.gap_dp2,
              onToggle: (value) {
                _editInviteRoleLimit(context, inviteRoleLimit);
              },
              activeColor: Theme.of(context).colorScheme.primary,
              inactiveColor:
                  Theme.of(context).colorScheme.primary.withOpacity(0.3),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 15, bottom: 15),
          child: Text(
            inviteRoleLimit ? '任何人都可以邀请好友入群' : '只有管理员可以邀请好友入群',
            style: const TextStyle(color: Colors.red, fontSize: 10),
          ),
        ),
      ],
    );
  }

  // void pickerPic() {
  //   // // 从相机选择
  //   if (WindowClient.instance.isPC()) {
  //     chooseLocalImage().then((value) async {
  //       if (value == null || value.path.length < 3) {
  //         showToast('请选择图片');
  //         return;
  //       }
  //       final imageUrl = await _uploadImage(value.path);
  //       if (null == imageUrl || imageUrl.isEmpty) {
  //         showToast('请重新上传');
  //         return;
  //       }
  //       widget.ginfo.backPic = imageUrl;
  //       widget.ginfo.updateBgToDb((widget.ginfo.groupId.toInt()));
  //       setState(() {});
  //     });
  //   } else {
  //     ImagePicker().getImage(source: ImageSource.gallery).then((value) async {
  //       if (value == null || value.path.length < 3) {
  //         showToast("请选择图片");
  //         return;
  //       }
  //       final imageUrl = await _uploadImage(value.path);
  //       if (null == imageUrl || imageUrl.isEmpty) {
  //         showToast('请重新上传');
  //         return;
  //       }
  //       widget.ginfo.backPic = imageUrl;
  //       widget.ginfo.updateBgToDb((widget.ginfo.groupId.toInt()));
  //       setState(() {});
  //     });
  //   }
  // }

  Future<String?> _uploadImage(String path) async {
    try {
      CustomToast.loading();
      final name = path.substring(path.lastIndexOf('/') + 1, path.length);
      final avatarUrl =
          await OssUtils.uploadFile(path, name: 'conversationBg/$name');
      CustomToast.dismiss();
      return avatarUrl;
    } catch (error) {
      CustomToast.dismiss();
      return null;
    }
  }
}
