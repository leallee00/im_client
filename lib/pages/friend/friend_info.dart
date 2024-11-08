// 新的朋友列表
import 'dart:async';
import 'dart:io';

import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:protobuf/protobuf.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/config/size_extension.dart';
import 'package:quliao/db/database.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/global/controller/im_controller.dart';
import 'package:quliao/models/user/friendInfo.dart' as $locFriendInfo;
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/msg_handler_mgr.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/chat_index/group_member_nickname_widget.dart';
import 'package:quliao/pages/chat_index/user_nickname_widget.dart';
import 'package:quliao/pages/chat_private/flyer_chat/chat_test_controller.dart';
import 'package:quliao/pages/chat_private/flyer_chat/test_page.dart';
import 'package:quliao/pages/friend/friend_info_set.dart';
import 'package:quliao/pages/home/home_page.dart';
import 'package:quliao/pages/windows/home/window_home.dart';
import 'package:quliao/pb/pb_msg/friend/friend.pb.dart' as $pbfriend;
import 'package:quliao/pb/pb_msg/friend/friend.pb.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pb/pb_pub/error_code.pbenum.dart';
import 'package:quliao/pb/pb_pub/service.pb.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/utils/cache.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/utils/toast/toast.dart';
import 'package:quliao/widgets/app_bar.dart';
import 'package:quliao/widgets/avatar.dart';
import 'package:quliao/widgets/button.dart';
import 'package:quliao/widgets/dialog/manager.dart';

import '../../pb/pb_msg/black_list/blackList.pb.dart';
import '../../../../models/user/friendInfo.dart';

class FriendInfoV extends StatefulWidget {
  static const name = "FriendInfoV";

  const FriendInfoV({
    super.key,
    required this.finfo,
    this.member,
    this.groupId = 0,
    this.hasAdminRights = false,
  });

  final $locFriendInfo.FriendInfo finfo;
  final int groupId;
  final Member? member;
  final bool hasAdminRights;

  @override
  FriendInfoVState createState() => FriendInfoVState();
}

class FriendInfoVState extends State<FriendInfoV> {
  late Member _member;

  late StreamSubscription<EventOnNetMsg> msgStreamSub;
  final MsgHandlerMgr msgHandlerMgr = MsgHandlerMgr();
  final List handlerList = [
    EditRemarkRsp(),
    RemarkChangeNotify(),
  ];

  /// 是否在我的黑名单
  bool inMyBlackList = false;

  bool get groupView => widget.groupId > 0;

  String get signName => widget.finfo.userInfo.signName.isEmpty
      ? '暂无签名'
      : widget.finfo.userInfo.signName;

  @override
  void initState() {
    super.initState();
    _member = widget.member ?? Member();
    _getCurrentUser();
    _handleMsg();
    if (widget.finfo.friendRelation != $locFriendInfo.enFriendRelation.friend) {
      queryIsInBlackList();
    } else {
      inMyBlackList = widget.finfo.blocked;
    }
  }

  @override
  void dispose() {
    for (var element in handlerList) {
      msgHandlerMgr.removeMsgHandler(element);
    }
    msgStreamSub.cancel();
    super.dispose();
  }

  Future<void> _handleMsg() async {
    msgStreamSub = eventBus.on<EventOnNetMsg>().listen((event) {
      // log("获得一个消息:${event.pbMsg.pbName}");
      if (event.pbMsg.errCode != ErrCode.SUCCESS.value) {
        showToast(event.pbMsg.errDesc);
        log("get a err msg ${event.pbMsg.pbName} ${event.pbMsg.errCode} ${event.pbMsg.errDesc}");
        return;
      }
      if (event.pbMsg.pbName != "pb_pub.HeartBeat") {
        log(
          "get msg ${event.pbMsg.pbName}, Is me send:${event.pbMsg.pbCommData.srcId == AppUserInfo().imId} dispatch.",
          deep: 3,
        );
      }
      msgHandlerMgr.onMsg(event.pbMsg, event.enMsgFrom);
    });

    for (var handler in handlerList) {
      msgHandlerMgr.RegMsgHandler(
        handler,
        (
          GeneratedMessage msg,
          PBMessage pbMessage,
          EnMsgFrom enMsgFrom,
        ) {
          log("pbMessage.pbName = ${pbMessage.pbName}");
          if (msg is EditRemarkRsp) {
            LoggerManager().debug(
              'EditRemarkRsp 群昵称编辑成功 修改人：${pbMessage.pbCommData.srcId} 被修改人：${pbMessage.pbCommData.aimId} 备注：${msg.remark}',
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
            //   groupId: widget.ginfo.groupId.toInt(),
            //   member: mineMember,
            // );
          } else if (msg is RemarkChangeNotify) {
            LoggerManager().debug(
              'RemarkChangeNotify 群昵称编辑成功 修改人：${pbMessage.pbCommData.srcId} 被修改人：${pbMessage.pbCommData.aimId} 备注：${msg.remark}',
            );
          }
          return true;
        },
      );
    }
  }

  Future<void> _getCurrentUser() async {
    final Member? member = await AppDatabase().groupMemberDao?.singleMember(
          groupId: widget.groupId,
          userId: widget.finfo.userInfo.imId,
        );
    if (null != member) {
      _member = member;
      setState(() {});
    }
  }

  Future<void> _updateTargetRemark(String text) async {
    EditRemarkReq req = EditRemarkReq();
    req.remark = text;
    req.editedUserId = Int64(widget.finfo.friendId);
    PBCommData pbCommData = MakePBCommData(
      aimId: Int64(widget.finfo.friendId),
      groupId: Int64(widget.groupId),
      toService: Service.group,
    );
    pbCommData.srcId = Int64(AppUserInfo().imId);
    Client.instance.sendMsg(
      req,
      Int64(widget.groupId),
      pbCommData,
    );
  }

  Future<void> _updateUserRemark(String text) async {
    if (widget.finfo.friendRelation == $locFriendInfo.enFriendRelation.friend) {
      int conversationId = widget.finfo.friendId;
      widget.finfo.UpdateField(
        'remark',
        text,
        Friend()..remark = text,
        groupId: widget.groupId,
      );
      if (groupView) {
        _member.remark = text;
        conversationId = _member.userId.toInt();
      } else {
        widget.finfo.remark = text;
      }
      setState(() {});
      ImController.to.updateConversationRemark(
        conversationId,
        text,
      );
    } else {
      EditMemberRemarkReq req = EditMemberRemarkReq();
      req.remark = text;
      req.remarkedUserId = Int64(widget.finfo.friendId);
      PBCommData pbCommData = MakePBCommData(
        aimId: Int64(widget.finfo.friendId),
        groupId: Int64(widget.groupId),
        toService: Service.group,
      );
      pbCommData.srcId = Int64(AppUserInfo().imId);
      Client.instance.sendMsg(
        req,
        Int64(widget.groupId),
        pbCommData,
      );
      ImController.to.updateConversationRemark(
        widget.finfo.friendId,
        text,
      );
    }
  }

  Future<void> queryIsInBlackList() async {
    final req = IsInBlackListReq();

    final response = await RpcCallImOuterApi(
      '/pb_grpc_friend.Friend/IsInBlackList',
      req,
      MakePBCommData(
        aimId: Int64(widget.finfo.friendId),
        toService: Service.friend,
      ),
    );
    if (response.statusCode == 200) {
      final rsp = IsInBlackListRsp()..mergeFromBuffer(response.bodyBytes);
      debugPrint('isInBlackListStatus =========> ${rsp.isInBlackListStatus}');
      if (rsp.isInBlackListStatus.value ==
          EnIsInBlackListStatus.InMyBlackList.value) {
        /// 在我的黑名单
        if (mounted) {
          setState(() {
            inMyBlackList = true;
          });
        }
      }
    }
  }

  void saveBlackList() async {
    if (inMyBlackList) {
      final req = DeleteBlackListReq(
        srcUserid: Int64(AppUserInfo().imId),
        aimUserid: Int64(widget.finfo.friendId),
      );

      final response = await RpcCallImOuterApi(
        '/pb_grpc_friend.Friend/DeleteBlackList',
        req,
        MakePBCommData(
          aimId: Int64(widget.finfo.friendId),
          toService: Service.friend,
        ),
      );

      if (response.statusCode == 200) {
        ToastUtil.show('已移除黑名单');
        if (widget.finfo.friendRelation == enFriendRelation.friend) {
          widget.finfo.UpdateField(
            'blocked',
            false,
            Friend()..blocked = false,
          );
        }
        if (mounted) {
          setState(() {
            inMyBlackList = false;
          });
        }
      }
    } else {
      final req = SaveBlackListReq(
        srcUserid: Int64(AppUserInfo().imId),
        aimUserid: Int64(widget.finfo.friendId),
      );

      final response = await RpcCallImOuterApi(
        '/pb_grpc_blackList.BlackList/SaveBlackList',
        req,
        MakePBCommData(
          aimId: Int64(widget.finfo.friendId),
          toService: Service.black_list,
        ),
      );

      if (response.statusCode == 200) {
        showToast('已拉入黑名单');
        if (widget.finfo.friendRelation == enFriendRelation.friend) {
          widget.finfo.UpdateField(
            'blocked',
            true,
            Friend()..blocked = true,
          );
        }
        if (mounted) {
          setState(() {
            inMyBlackList = true;
          });
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        actionPadding: EdgeInsets.zero,
        actions: groupView ||
                GlobalController.to.systemConfig.value?.emailLogin == false
            ? null
            : [
                IconButton(
                  icon: const Icon(
                    Icons.more_horiz,
                    color: Colors.black54,
                  ),
                  onPressed: () {
                    // 打开设置
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return FriendInfoSet(
                            finfo: widget.finfo,
                          );
                        },
                      ),
                    );
                  },
                ),
              ],
      ),
      body: MakeBodyWidget(),
    );
  }

  Widget MakeBodyWidget() {
    String tmpData = "";
    log("widget.finfo.state=${widget.finfo.friendRelation} widget.finfo.uinfo:${widget.finfo.userInfo}");
    if (widget.finfo.friendRelation != $locFriendInfo.enFriendRelation.friend) {
      return ListView(children: [
        Container(
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: UserAvatar(
                  avatar: widget.finfo.userInfo.avatar,
                  name: widget.finfo.userInfo.nickName,
                  size: Dimens.gap_dp50,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    groupView
                        ? GroupMemberNicknameWidget(
                            groupId: widget.groupId,
                            member: _member,
                            forceShowNickname: true,
                            style: TextStyle(
                              fontSize: Dimens.font_sp14,
                            ),
                          )
                        : UserNicknameWidget(
                            friendInfo: widget.finfo,
                            style: TextStyle(
                              fontSize: Dimens.font_sp14,
                            ),
                          ),
                    if (GlobalController.to.systemConfig.value?.hideUserSign ==
                        false)
                      Padding(
                        padding: EdgeInsets.only(top: 5.h),
                        child: Text(
                          signName,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    const SizedBox(height: 5),
                    Offstage(
                      offstage: widget.finfo.friendRelation !=
                          $locFriendInfo.enFriendRelation.stranger,
                      child: Row(
                        children: [
                          Text(
                            '陌生人',
                            style: TextStyle(
                              fontSize: Dimens.font_sp12,
                              color: Theme.of(context).colorScheme.error,
                            ),
                          ),
                          const Icon(
                            Icons.masks_rounded,
                          ),
                        ],
                      ),
                    ),
                    Offstage(
                      offstage: widget.finfo.friendRelation !=
                          $locFriendInfo.enFriendRelation.black,
                      child: Row(
                        children: [
                          Text(
                            '黑名单',
                            style: TextStyle(
                              fontSize: Dimens.font_sp12,
                              color: Theme.of(context).colorScheme.error,
                            ),
                          ),
                          const Icon(
                            Icons.bug_report_sharp,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Gaps.vGap20,
        ListTile(
          title: const Text('设置标签'),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(widget.finfo.tags),
              const Icon(Icons.chevron_right),
            ],
          ),
          onTap: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: TextField(
                      autofocus: true,
                      controller:
                          TextEditingController(text: widget.finfo.tags),
                      decoration: const InputDecoration(
                        hintText: '标签',
                        prefixIcon: Icon(Icons.group),
                      ),
                      onChanged: (value) {
                        // widget.finfo.mobile = value;
                        tmpData = value;
                      },
                    ),
                    actions: [
                      TextButton(
                        child: Text("确定"),
                        onPressed: () {
                          Navigator.pop(context);
                          widget.finfo.tags = tmpData;
                          widget.finfo.UpdateField("tags", tmpData,
                              $pbfriend.Friend()..tags = tmpData);
                          setState(() {});
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
                });
            ////////////
          },
        ),
        if (groupView)
          Divider(
            color: Color(0x28808080),
            height: 1,
            indent: Dimens.gap_dp16,
            endIndent: Dimens.gap_dp16,
          ),
        if (groupView)
          ListTile(
            title: const Text('设置备注'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                groupView
                    ? GroupMemberNicknameWidget(
                        groupId: widget.groupId,
                        member: _member,
                      )
                    : UserNicknameWidget(
                        friendInfo: widget.finfo,
                        style: const TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                const Icon(Icons.chevron_right),
              ],
            ),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    String remark;
                    if (groupView) {
                      remark = _member.remark.isEmpty
                          ? _member.username
                          : _member.remark;
                    } else {
                      remark = widget.finfo.remark.isEmpty
                          ? widget.finfo.userInfo.nickName
                          : widget.finfo.remark;
                    }
                    return AlertDialog(
                      // title: Text("输入群id"),
                      content: TextField(
                        autofocus: true,
                        controller: TextEditingController(text: remark),
                        decoration: InputDecoration(
                          // labelText: "群id",
                          hintText: "备注",
                          prefixIcon: Icon(Icons.group),
                        ),
                        onChanged: (value) {
                          // widget.finfo.mobile = value;
                          tmpData = value;
                        },
                      ),
                      actions: [
                        TextButton(
                          child: Text("确定"),
                          onPressed: () {
                            Navigator.pop(context);
                            _updateUserRemark(tmpData);
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
                  });
              ////////////
            },
          ),
        // if (widget.finfo.friendRelation !=
        //     $locFriendInfo.enFriendRelation.friend)
        //   const Divider(
        //     color: Color(0x28808080),
        //     height: 0.5,
        //   ),
        // if (widget.finfo.friendRelation !=
        //     $locFriendInfo.enFriendRelation.friend)
        //   ListTile(
        //     title: const Text("加入黑名单"),
        //     onTap: () {
        //       saveBlackList();
        //     },
        //     trailing: SizedBox(
        //       width: Dimens.gap_dp40,
        //       height: Dimens.gap_dp22,
        //       child: FlutterSwitch(
        //         value: inMyBlackList,
        //         width: Dimens.gap_dp40,
        //         height: Dimens.gap_dp22,
        //         borderRadius: Dimens.gap_dp20,
        //         toggleSize: Dimens.gap_dp20,
        //         padding: Dimens.gap_dp2,
        //         onToggle: (value) async {
        //           saveBlackList();
        //         },
        //         activeColor: Theme.of(context).colorScheme.primary,
        //         inactiveColor:
        //             Theme.of(context).colorScheme.primary.withOpacity(0.3),
        //       ),
        //     ),
        //   ),
        Divider(
          color: Color(0x28808080),
          height: 1,
          indent: Dimens.gap_dp16,
          endIndent: Dimens.gap_dp16,
        ),
        if (Cache.getInstance().systemConfig?.canAddFriend ?? false)
          Column(
            children: [
              SizedBox(
                child: Container(
                  height: 5,
                  color: Color(0x28808080),
                ),
              ),
              Container(
                height: 50,
                alignment: Alignment.center,
                child: InkWell(
                  child: const Text(
                    "加为好友",
                    style: TextStyle(color: Color(0xD30B228B)),
                  ),
                  onTap: () {
                    log("添加他为好友");
                    // 发送添加好友申请
                    Client.instance.sendMsg(
                        $pbfriend.ApplyReq(),
                        Int64(AppUserInfo.instance.imId),
                        MakePBCommData(
                            aimId: Int64(widget.finfo.userInfo.imId),
                            toService: Service.friend));
                    showToast("申请已发出，等待对方确认");
                    // 添加到数据库
                    // AddApplyFriend(widget.finfo, "", AppUserInfo.instance.imId);
                    setState(() {});
                  },
                ),
              ),
              const Divider(
                color: Color(0x28808080),
                height: 0.5,
              ),
            ],
          )
      ]);
    } else {
      return ListView(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: Dimens.gap_dp16),
                child: UserAvatar(
                  avatar: widget.finfo.userInfo.avatar,
                  name: widget.finfo.userInfo.nickName,
                  size: Dimens.gap_dp50,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    groupView
                        ? GroupMemberNicknameWidget(
                            groupId: widget.groupId,
                            member: _member,
                            forceShowNickname: true,
                            style: TextStyle(
                              fontSize: Dimens.font_sp14,
                            ),
                          )
                        : UserNicknameWidget(
                            friendInfo: widget.finfo,
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                            forceShowNickname: true,
                          ),
                    if (GlobalController.to.systemConfig.value?.hideUserSign ==
                        false)
                      Padding(
                        padding: EdgeInsets.only(top: 5.h),
                        child: Text(
                          signName,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
          Gaps.vGap20,
          ListTile(
            title: Text("设置标签"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(widget.finfo.tags),
                Icon(Icons.chevron_right),
              ],
            ),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    // title: Text("输入群id"),
                    content: TextField(
                      autofocus: true,
                      controller:
                          TextEditingController(text: widget.finfo.tags),
                      decoration: InputDecoration(
                        // labelText: "群id",
                        hintText: "标签",
                        prefixIcon: Icon(Icons.group),
                      ),
                      onChanged: (value) {
                        // widget.finfo.mobile = value;
                        tmpData = value;
                      },
                    ),
                    actions: [
                      TextButton(
                        child: Text("确定"),
                        onPressed: () {
                          Navigator.pop(context);
                          widget.finfo.tags = tmpData;
                          widget.finfo.UpdateField("tags", tmpData,
                              $pbfriend.Friend()..tags = tmpData);
                          setState(() {});
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
                },
              );
            },
          ),
          Divider(
            color: Color(0x28808080),
            height: 1,
            indent: Dimens.gap_dp16,
            endIndent: Dimens.gap_dp16,
          ),
          ListTile(
            title: Text('设置备注'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                groupView
                    ? GroupMemberNicknameWidget(
                        groupId: widget.groupId,
                        member: _member,
                        style: TextStyle(
                          fontSize: Dimens.gap_dp14,
                        ),
                      )
                    : UserNicknameWidget(
                        friendInfo: widget.finfo,
                        style: TextStyle(
                          fontSize: Dimens.gap_dp14,
                        ),
                      ),
                const Icon(Icons.chevron_right),
              ],
            ),
            onTap: () {
              ///////////
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    String remark;
                    if (groupView) {
                      remark = _member.remark.isEmpty
                          ? _member.username
                          : _member.remark;
                    } else {
                      remark = widget.finfo.remark.isEmpty
                          ? widget.finfo.userInfo.nickName
                          : widget.finfo.remark;
                    }
                    return AlertDialog(
                      // title: Text("输入群id"),
                      content: TextField(
                        autofocus: true,
                        controller: TextEditingController(text: remark),
                        decoration: const InputDecoration(
                          // labelText: "群id",
                          hintText: "备注",
                          prefixIcon: Icon(Icons.group),
                        ),
                        onChanged: (value) {
                          // widget.finfo.mobile = value;
                          tmpData = value;
                        },
                      ),
                      actions: [
                        TextButton(
                          child: Text("确定"),
                          onPressed: () {
                            Navigator.pop(context);
                            _updateUserRemark(tmpData);
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
                  });
            },
          ),
          Divider(
            color: Color(0x28808080),
            height: 1,
            indent: Dimens.gap_dp16,
            endIndent: Dimens.gap_dp16,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: Dimens.gap_dp16,
            ).copyWith(top: Dimens.gap_dp44),
            child: CustomButton(
              width: double.infinity,
              height: Dimens.gap_dp48,
              size: CustomButtonSize.large,
              shape: CustomButtonShape.stadium,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext ctx) {
                      return ChatPage(
                        finfo: widget.finfo,
                      );
                    },
                  ),
                );
              },
              child: Text(
                '发消息',
                style: TextStyle(
                  fontSize: Dimens.font_sp16,
                ),
              ),
            ),
          ),
          if (GlobalController.to.systemConfig.value?.emailLogin == false)
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: Dimens.gap_dp16,
              ).copyWith(top: Dimens.gap_dp24),
              child: CustomButton(
                width: double.infinity,
                height: Dimens.gap_dp48,
                size: CustomButtonSize.large,
                shape: CustomButtonShape.stadium,
                backgroundColor: Colors.redAccent,
                onPressed: () {
                  final content = RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '您真的要删除与好友 ',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                        ),
                        TextSpan(
                          text: widget.finfo.userInfo.nickName,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        TextSpan(
                          text: ' ${widget.finfo.tags} ',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        TextSpan(
                          text: '的所有信息吗？',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                        ),
                      ],
                    ),
                  );
                  DialogManager.showDeleteFriendDialog(
                    context,
                    content,
                    onConfirm: () async {
                      await dbDelFriend(widget.finfo.friendId);
                      // 发送删除
                      var response = await RpcCallImOuterApi(
                        "/pb_grpc_friend.Friend/DeleteFriend",
                        DeleteFriendReq(),
                        MakePBCommData(
                          aimId: Int64(widget.finfo.friendId),
                          toService: Service.friend,
                        ),
                      );
                      if (response.statusCode == 200) {
                        showToast('删除成功!');
                        eventBus.fire(
                          DeleteFriendEvent(
                            userId: widget.finfo.friendId,
                          ),
                        );
                      }

                      if (Platform.isWindows ||
                          Platform.isLinux ||
                          Platform.isMacOS) {
                        Navigator.popUntil(
                          context,
                          ModalRoute.withName(WindowHomePage.name),
                        );
                      } else {
                        Navigator.popUntil(
                          context,
                          ModalRoute.withName(MainPage.name),
                        );
                      }
                    },
                  );
                },
                child: Text(
                  '删除好友',
                  style: TextStyle(
                    fontSize: Dimens.font_sp16,
                  ),
                ),
              ),
            ),
        ],
      );
    }
  }
}
