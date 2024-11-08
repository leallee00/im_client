import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/config/size_extension.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/global/controller/im_controller.dart';
import 'package:quliao/net/msg_handler_mgr.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/chat_group/flyer_chat/chat_group.dart';
import 'package:quliao/pages/chat_index/conversation_controller.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pb/pb_pub/error_code.pb.dart';
import 'package:quliao/pb/pb_pub/service.pb.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:protobuf/protobuf.dart';
import 'package:quliao/pub/pub-def.dart';
import 'package:quliao/widgets/avatar.dart';

import '../../pub/textButtonStyle.dart';
import '../chat_private/chat.dart';
import '../../pub/func.dart';

class GroupCreate extends StatefulWidget {
  static String name = "GroupCreate";
  final List<FriendInfo> memberList; // 群成员列表
  final int groupId;

  GroupCreate({required this.memberList, required this.groupId});

  @override
  GroupCreateState createState() => GroupCreateState();
}

// Widget
class FriendInfoItem {
  FriendInfo friendInfo = FriendInfo();
  bool selected = false;
}

class GroupCreateState extends State<GroupCreate> {
  List<FriendInfoItem> lFriendItems = <FriendInfoItem>[];
  int limit = 1000;
  int offset = 0;
  bool check = false;

  late StreamSubscription<EventOnNetMsg> msgStreamSub;
  var msgHandlerMgr = MsgHandlerMgr();

  List<FriendInfo> get memberList => widget.memberList;

  final Map<int, FriendInfo> memberMap = <int, FriendInfo>{};

  bool allCheck = true;

  int selectCount = 0;

  @override
  void initState() {
    super.initState();

    for (final element in memberList) {
      memberMap[element.friendId] = element;
    }

    // 处理网络消息
    HandleMsg();

    GetFriends(isFirst: true).then((value) {
      for (var finfo in value) {
        var fi = FriendInfoItem();
        fi.friendInfo = finfo;
        if (allCheck) {
          fi.selected = true;
        } else {
          fi.selected = false;
        }
        lFriendItems.add(fi);
      }

      setState(() {
        // 更新到页面
      });
    });
  }

  @override
  void dispose() {
    super.dispose();

    // 取消消息处理
    msgStreamSub.cancel();
  }

// 消息处理句柄
  void HandleMsg() {
    // 注册消息回调
    msgStreamSub = eventBus.on<EventOnNetMsg>().listen((event) {
      // log("获得一个消息:${event.pbMsg.pbName}");
      if (event.pbMsg.errCode != ErrCode.SUCCESS.value) {
        showToast(event.pbMsg.errDesc);
        log("get a err msg ${event.pbMsg.pbName} ${event.pbMsg.errCode} ${event.pbMsg.errDesc}");
        return;
      }
      if (event.pbMsg.pbName != "pb_pub.HeartBeat") {
        log("get a msg ${event.pbMsg.pbName}");
        msgHandlerMgr.onMsg(event.pbMsg, event.enMsgFrom);
      }
    });

    // 注册消息处理句柄
    msgHandlerMgr.RegMsgHandler(CreateGroupRsp(),
        (GeneratedMessage msg, PBMessage pbMessage, EnMsgFrom enMsgFrom) {
      log("获取消息 CreateGroupRsp ${pbMessage}");
      if (msg is CreateGroupRsp) {
        Get.put(
          ConversationController(),
          tag: 'conversation_${msg.groupId}',
        );
        // 创建成功，跳转到群聊
        // Navigator.popAndPushNamed(context, "ChatGroup", arguments: msg.groupId);
        if (Platform.isMacOS || Platform.isWindows) {
          _createConversation(msg.groupId.toInt());
        } else {
          Navigator.pop(context);
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext ctx) {
                return ChatGroupPage(
                  groupId: msg.groupId,
                );
              },
            ),
          );
        }
      }
      return true;
    });
  }

  Future<void> _createConversation(
    int groupId,
  ) async {
    await ImController.to.insertEmpty(
      groupId.toInt(),
      dataMap: <String, dynamic>{
        'chatId': groupId.toInt(),
        'chatType': CHAT_TYPE.GROUP.index,
        'newMsgCount': 0,
        'msgTips': '',
        'msgSn': 0,
        'msgTime': DateTime.now().toString(),
        'createTime': DateTime.now().toString(),
      },
      conversationType: CHAT_TYPE.GROUP,
    );
    eventBus.fire(
      ReloadChatListData(chatId: groupId),
    );
    if (context.mounted) {
      Navigator.pop(context);
    }
  }

  TextEditingController searchEditCtrl = TextEditingController();

  int fetchSelectFriend() {
    int count = 0;
    for (var finfo in lFriendItems) {
      if (finfo.selected && !memberMap.containsKey(finfo.friendInfo.friendId)) {
        count += 1;
      }
    }
    return count;
  }

  List<Widget> selectedList() {
    List<Widget> wlist = <Widget>[];

    for (var finfo in lFriendItems) {
      if (finfo.selected || memberMap.containsKey(finfo.friendInfo.friendId)) {
        wlist.add(
          Chip(
            backgroundColor: const Color.fromRGBO(220, 220, 220, 1),
            avatar: UserAvatar(
              avatar: finfo.friendInfo.userInfo.avatar,
              name: finfo.friendInfo.userInfo.nickName,
              size: Dimens.gap_dp36,
              style: TextStyle(
                fontSize: Dimens.font_sp12,
                color: Theme.of(context).colorScheme.surface,
              ),
            ),
            label: Text(finfo.friendInfo.userInfo.nickName),
          ),
        );
      }
    }

    return wlist;
  }

  @override
  Widget build(BuildContext context) {
    // Widget divider = Divider(color: Colors.blue,);
    bool enable = fetchSelectFriend() > 0;
    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.black87,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "选择联系人",
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
          actions: [
            InkWell(
              onTap: () {
                for (final item in lFriendItems) {
                  if (allCheck) {
                    item.selected = false;
                  } else {
                    item.selected = true;
                  }
                }
                setState(() {
                  allCheck = !allCheck;
                });
              },
              child: Container(
                padding: const EdgeInsets.only(left: 12, right: 12),
                alignment: Alignment.center,
                child: Text(
                  allCheck ? '取消全选' : '全选',
                  style: const TextStyle(fontSize: 14, color: Colors.black87),
                ),
              ),
            ),
          ],
        ),
        body: Container(
          color: Theme.of(context).colorScheme.surface,
          child: Column(
            children: [
              Expanded(
                flex: 0,
                child: Wrap(
                    spacing: 4,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    alignment: WrapAlignment.center,
                    children: selectedList()),
              ),
              // if (widget.groupId == 0)
              //   Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     mainAxisSize: MainAxisSize.min,
              //     children: [
              //       Row(
              //         children: [
              //           Checkbox(
              //             value: check,
              //             activeColor: check ? Colors.blue : null,
              //             onChanged: (value) {
              //               setState(() {
              //                 check = value!;
              //               });
              //             },
              //           ),
              //           const Text("是否需要已读回执")
              //         ],
              //       ),
              //       Container(
              //         margin: EdgeInsets.only(left: 15, bottom: 15),
              //         child: Text(
              //             check ? "消息展示已读状态，群成员数小于100人" : "消息不展示已读状态，群成员无上限限制",
              //             style: TextStyle(color: Colors.red, fontSize: 10)),
              //       ),
              //     ],
              //   ),

              Container(
                margin: const EdgeInsets.only(left: 12, right: 12),
                alignment: Alignment.centerLeft,
                child: Text(
                  "好友列表(${lFriendItems.length})",
                  style: const TextStyle(fontSize: 14),
                ),
              ),
              // 好友列表
              Expanded(
                flex: 1,
                child: ListView.separated(
                  itemCount: lFriendItems.length,
                  itemBuilder: listBuilder,
                  //分割器构造器
                  separatorBuilder: (BuildContext context, int index) {
                    return Container(
                      width: double.infinity,
                      height: Dimens.gap_dp1 / 2,
                      color: Theme.of(context).dividerColor,
                    );
                  },
                ),
              ),

              Container(
                height: 36.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.h),
                  color: enable
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.primary.withOpacity(0.6),
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 20.h,
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: !enable
                        ? null
                        : () {
                            if (widget.groupId > 0) {
                              // 邀请加入
                              InviteReq req = InviteReq.create();

                              for (FriendInfoItem element in lFriendItems) {
                                if (element.selected &&
                                    !memberMap.containsKey(
                                        element.friendInfo.friendId)) {
                                  req.inviteeIds
                                      .add(Int64(element.friendInfo.friendId));
                                }
                              }
                              if (req.inviteeIds.isNotEmpty) {
                                // 发送消息
                                Client.instance.sendMsg(
                                    req,
                                    Int64(AppUserInfo.instance.imId),
                                    MakePBCommData(
                                      aimId: Int64(AppUserInfo.instance.imId),
                                      toService: Service.group,
                                      groupId:
                                          Int64(widget.groupId), // 让存储辨识为群消息
                                    ));
                                Navigator.pop(context);
                                showToast("已发送群聊邀请");
                              } else {
                                showToast("请选择群成员");
                              }
                            } else {
                              // 创建群
                              CreateGroupReq req = CreateGroupReq(
                                memberCountLimit: !check ? 0 : 100,
                              );
                              for (var element in lFriendItems) {
                                if (element.selected) {
                                  req.memberIds
                                      .add(Int64(element.friendInfo.friendId));
                                  if (req.name.isNotEmpty) req.name += "、";
                                  req.name +=
                                      element.friendInfo.userInfo.nickName;
                                }
                              }
                              log("发起群聊, ${req.memberIds}, ${AppUserInfo.instance.imId}");
                              if (req.memberIds.isNotEmpty) {
                                // 发送消息
                                Client.instance.sendMsg(
                                    req,
                                    Int64(AppUserInfo.instance.imId),
                                    MakePBCommData(
                                      aimId: Int64(AppUserInfo.instance.imId),
                                      toService: Service.group,
                                      // groupId:Int64(-1), // 让存储辨识为群消息
                                    ));
                              } else {
                                showToast("请选择群成员");
                              }
                            }
                          },
                    borderRadius: BorderRadius.circular(24.h),
                    child: Center(
                      child: Text(
                        widget.groupId > 0 ? "邀请加入" : "发起群聊",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Theme.of(context).colorScheme.surface,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  static const loadingTag = "##loading##"; //表尾标记
  // var _words = <String>[loadingTag];
  Widget listBuilder(BuildContext context, int index) {
    // log("refresh ListBuilder");
    // var user = AppUserInfo();
    var item = lFriendItems[index];
    //如果到了表尾
    // if (item == loadingTag) {
    //   if (lFriendItems.length - 1 < 100) {
    //     //获取数据
    //     // _retrieveData();
    //     //加载时显示loading
    //     return Container(
    //       padding: const EdgeInsets.all(16.0),
    //       alignment: Alignment.center,
    //       child: SizedBox(
    //           width: 24.0,
    //           height: 24.0,
    //           child: CircularProgressIndicator(strokeWidth: 2.0)
    //       ),
    //     );
    //   } else {
    //     //已经加载了100条数据，不再获取数据。
    //     return Container(
    //         alignment: Alignment.center,
    //         padding: EdgeInsets.all(16.0),
    //         child: Text("没有更多了", style: TextStyle(color: Colors.grey),)
    //     );
    //   }
    // }
    return SizedBox(
      height: Dimens.gap_dp56,
      child: Row(
        children: [
          Checkbox(
            value: item.selected ||
                memberMap.containsKey(item.friendInfo.friendId),
            activeColor: memberMap.containsKey(item.friendInfo.friendId)
                ? Theme.of(context).colorScheme.primary.withOpacity(0.6)
                : item.selected
                    ? Colors.blue
                    : null,
            onChanged: (value) {
              // 展示到选中列表中
              setState(() {
                item.selected = value!;
              });
            },
          ),
          UserAvatar(
            avatar: item.friendInfo.userInfo.avatar,
            name: item.friendInfo.userInfo.nickName,
            size: Dimens.gap_dp36,
          ),
          Gaps.hGap6,
          Text(item.friendInfo.userInfo.nickName),
        ],
      ),
    );
  }
}
