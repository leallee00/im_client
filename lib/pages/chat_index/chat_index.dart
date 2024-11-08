import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:protobuf/protobuf.dart';
import 'package:quliao/base/scan.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/db/obox/model/conversation_model.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/global/controller/im_controller.dart';
import 'package:quliao/modules/contacts/friend/invite/invite_friend_page.dart';
import 'package:quliao/modules/conversation/im_conversation.dart';
import 'package:quliao/modules/conversation/models/lw_conversation.dart';
import 'package:quliao/global/controller/unread_message_controller.dart';
import 'package:quliao/modules/conversation/repository/im_conversation_repository.dart';
import 'package:quliao/mywedgits/badger/badger.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/auth/sign_in_screen.dart';
import 'package:quliao/pages/chat_group/flyer_chat/chat_group.dart';
import 'package:quliao/pages/chat_group/group_create.dart';
import 'package:quliao/pages/chat_group/group_repository.dart';
import 'package:quliao/pages/chat_index/conversation_controller.dart';
import 'package:quliao/pages/chat_private/chat.dart';
import 'package:quliao/pages/chat_private/flyer_chat/test_page.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pb/pb_pub/gm_notify.pb.dart';
import 'package:quliao/pb/pb_pub/service.pb.dart';
import 'package:quliao/pb/pb_pub/service.pbserver.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/utils/cache.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/utils/oss_utils.dart';
import 'package:quliao/widgets/app_bar.dart';
import 'package:quliao/widgets/dialog/dialog.dart';
import 'package:quliao/widgets/dialog/manager.dart';
import 'package:quliao/widgets/empty.dart';
import 'package:quliao/widgets/loading.dart';
import '../../db/database.dart';
import '../../pub/im_grpc_opt.dart';
import '../../pub/pub-def.dart';
import 'msg_session_widget.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

import 'package:quliao/pb/pb_msg/friend/friend.pb.dart' as friendPb;

class ItemModelData {
  String title;
  IconData icon;
  int type;

  ItemModelData(this.title, this.icon, this.type);
}

class ChatIndex extends StatefulWidget {
  static const name = "ChatIndex";

  ChatIndex({super.key});

  @override
  ChatIndexState createState() => new ChatIndexState();
}

enum MenuValue {
  MenuValue_CreateGroupChat,
  MenuValue_ApplyGroupChat,
  MenuValue_AddFriend,
  MenuValue_Scene,
  MenuValue_Scan,
}

class ChatIndexState extends State<ChatIndex>
    with AutomaticKeepAliveClientMixin {
  int limit = 100;
  int offSet = 0;
  List<ChatItemFinfo> lChatItems = <ChatItemFinfo>[];
  late StreamSubscription<EventOnNetMsg> msgStreamSub;

  late StreamSubscription<ReloadChatListData> refreshListStreamSub;
  late StreamSubscription<DeleteFriendEvent> deleteFriendStreamSub;

  // 是否可以刷新页面
  bool canRefresh = true;

  late List<ItemModelData> menuItems;
  final CustomPopupMenuController _controller = CustomPopupMenuController();

  @override
  void initState() {
    super.initState();

    menuItems = [
      ItemModelData('发起群聊', Icons.chat_bubble, 0),
      ItemModelData('加入群聊', Icons.group_add, 1),
      ItemModelData('扫一扫', Icons.crop_free, 2),
    ];

    log("life initState --------------------初始化 ChatIndexState");
    registerEventBus();
    // 清理消息条数
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      UnReadMessageController.to.getTotalUnReadMsgCount();
    });
  }

  @override
  void dispose() {
    log("life dispose --------------------");
    super.dispose();
    log("----------------------释放窗口 ChatIndexState");
    msgStreamSub.cancel();
    refreshListStreamSub.cancel();
    deleteFriendStreamSub.cancel();
  }

  var inputGroupId = Int64(0);

  @override
  Widget build(BuildContext context) {
    super.build(context);
    Widget divider = Container(
      width: double.infinity,
      height: Dimens.gap_dp1 / 2,
      color: Theme.of(context).dividerColor,
      margin: EdgeInsets.only(left: Dimens.gap_dp10 * 7),
    );
    // Widget divider1 = Divider(
    //   color: Colors.blue,
    // );
    // Widget divider2 = Divider(color: Colors.green);
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text('消息'),
        actions: [
          CustomPopupMenu(
            menuBuilder: () => ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                color: const Color(0xFF4C4C4C),
                padding: EdgeInsets.symmetric(
                  vertical: Dimens.gap_dp10,
                ),
                child: IntrinsicWidth(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: menuItems
                        .map(
                          (item) => GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () async {
                              _controller.hideMenu();
                              if (item.type == 0) {
                                Get.to(const InviteFriendPage());
                              } else if (item.type == 1) {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text("输入群id"),
                                      content: TextField(
                                        autofocus: true,
                                        decoration: const InputDecoration(
                                          // labelText: "群id",
                                          hintText: "请输入群id",
                                          prefixIcon: Icon(Icons.group),
                                        ),
                                        onChanged: (value) {
                                          inputGroupId = Int64.parseInt(value);
                                        },
                                      ),
                                      actions: [
                                        TextButton(
                                          child: const Text("取消"),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                        TextButton(
                                          child: const Text("加入"),
                                          onPressed: () {
                                            if (inputGroupId <= 0) {
                                              showToast("请输入群id");
                                              return;
                                            }
                                            // 发送消息
                                            Client.instance.sendMsg(
                                                ApplyReq(),
                                                inputGroupId,
                                                MakePBCommData(
                                                    aimId: inputGroupId,
                                                    groupId: inputGroupId,
                                                    toService: Service.group));

                                            Navigator.pop(context);
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                );
                              } else {
                                final result = await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return ScanCodePage(title: "扫一扫");
                                    },
                                  ),
                                );
                                final data =
                                    jsonDecode(result) as Map<String, dynamic>;
                                LoggerManager()
                                    .debug('chat index scan code data: $data');
                                if (data['type'] == 1) {
                                  final groupId = Int64(data['data'] as int);
                                  final groupMember =
                                      await AppDatabase().groupMemberDao?.query(
                                            groupId: groupId.toInt(),
                                            userId: AppUserInfo().imId,
                                          );
                                  if (null != groupMember &&
                                      groupMember.isNotEmpty) {
                                    showToast('您已在本群');
                                    return;
                                  } else {
                                    final scanCode = data['scanCode'] as bool;
                                    final scanCodeKey =
                                        data['scanCodeKey'] as String;
                                    final applyReq = ApplyReq();
                                    if (scanCode) {
                                      applyReq.scanCodeKey = scanCodeKey;
                                    }

                                    applyJoinGroup(applyReq, groupId.toInt());

                                    // 发送消息
                                    // Client.instance.sendMsg(
                                    //   applyReq,
                                    //   groupId,
                                    //   MakePBCommData(
                                    //     aimId: groupId,
                                    //     groupId: groupId,
                                    //     toService: Service.group,
                                    //   ),
                                    // );
                                    // if (!scanCode) {
                                    //   showToast("请求已发送，等待确认");
                                    // }
                                  }
                                } else if (data['type'] == 0) {
                                  final userId = data['data'] as int;
                                  if (userId == AppUserInfo.instance.imId) {
                                    showToast("不能加自己为好友");
                                    return;
                                  }
                                  Client.instance.sendMsg(
                                    friendPb.ApplyReq(),
                                    Int64(AppUserInfo.instance.imId),
                                    MakePBCommData(
                                      aimId: Int64(userId),
                                      toService: Service.friend,
                                    ),
                                  );
                                  showToast("申请已发出，等待对方确认");
                                }
                              }
                            },
                            child: Container(
                              height: Dimens.gap_dp40,
                              padding: EdgeInsets.symmetric(
                                horizontal: Dimens.gap_dp20,
                              ),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    item.icon,
                                    size: Dimens.gap_dp18,
                                    color:
                                        Theme.of(context).colorScheme.surface,
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        left: Dimens.gap_dp10,
                                      ),
                                      padding: EdgeInsets.symmetric(
                                        vertical: Dimens.gap_dp10,
                                      ),
                                      child: Text(
                                        item.title,
                                        style: TextStyle(
                                          fontSize: Dimens.font_sp14,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .surface,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            ),
            pressType: PressType.singleClick,
            verticalMargin: -10,
            controller: _controller,
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: Dimens.gap_dp10,
              ),
              child: Icon(
                Icons.add,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
          ),
          /*PopupMenuButton<MenuValue>(
            color: Color(0xFF2D2D2D),
            icon: const Icon(
              Icons.add,
              color: Colors.black87,
            ),
            enabled: true,
            onSelected: (MenuValue value) async {
              log("select menu value:$value");
              switch (value) {
                case MenuValue.MenuValue_CreateGroupChat:
                  // 切换到创建群聊页面
                  // Navigator.pushNamed(context, "GroupCreate",
                  //     arguments: <FriendInfo>[]);
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext ctx) {
                    return GroupCreate(
                      memberList: const <FriendInfo>[],
                      groupId: 0,
                    );
                  }));
                  break;
                case MenuValue.MenuValue_ApplyGroupChat:
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("输入群id"),
                          content: TextField(
                            autofocus: true,
                            decoration: const InputDecoration(
                              // labelText: "群id",
                              hintText: "请输入群id",
                              prefixIcon: Icon(Icons.group),
                            ),
                            onChanged: (value) {
                              inputGroupId = Int64.parseInt(value);
                            },
                          ),
                          actions: [
                            TextButton(
                              child: const Text("取消"),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            TextButton(
                              child: const Text("加入"),
                              onPressed: () {
                                if (inputGroupId <= 0) {
                                  showToast("请输入群id");
                                  return;
                                }
                                // 发送消息
                                Client.instance.sendMsg(
                                    ApplyReq(),
                                    inputGroupId,
                                    MakePBCommData(
                                        aimId: inputGroupId,
                                        groupId: inputGroupId,
                                        toService: Service.group));

                                Navigator.pop(context);
                              },
                            ),
                          ],
                        );
                      });
                  break;
                case MenuValue.MenuValue_AddFriend:
                  Navigator.pushNamed(context, "AddFriend");
                  break;
                case MenuValue.MenuValue_Scene:
                  // var code = await Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) {
                  //   return ScanCodePage(title: "扫一扫");
                  // }));
                  break;
                case MenuValue.MenuValue_Scan:
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ScanCodePage(title: "扫一扫");
                      },
                    ),
                  );
                  final data = jsonDecode(result) as Map<String, dynamic>;
                  LoggerManager().debug('chat index scan code data: $data');
                  if (data['type'] == 1) {
                    final groupId = Int64(data['data'] as int);
                    final groupMember =
                        await AppDatabase().groupMemberDao?.query(
                              groupId: groupId.toInt(),
                              userId: AppUserInfo().imId,
                            );
                    if (null != groupMember && groupMember.isNotEmpty) {
                      showToast('您已在本群');
                      return;
                    } else {
                      final scanCode = data['scanCode'] as bool;
                      final scanCodeKey = data['scanCodeKey'] as String;
                      final applyReq = ApplyReq();
                      if (scanCode) {
                        applyReq.scanCodeKey = scanCodeKey;
                      }

                      applyJoinGroup(applyReq, groupId.toInt());

                      // 发送消息
                      // Client.instance.sendMsg(
                      //   applyReq,
                      //   groupId,
                      //   MakePBCommData(
                      //     aimId: groupId,
                      //     groupId: groupId,
                      //     toService: Service.group,
                      //   ),
                      // );
                      // if (!scanCode) {
                      //   showToast("请求已发送，等待确认");
                      // }
                    }
                  } else if (data['type'] == 0) {
                    final userId = data['data'] as int;
                    if (userId == AppUserInfo.instance.imId) {
                      showToast("不能加自己为好友");
                      return;
                    }
                    Client.instance.sendMsg(
                      friendPb.ApplyReq(),
                      Int64(AppUserInfo.instance.imId),
                      MakePBCommData(
                        aimId: Int64(userId),
                        toService: Service.friend,
                      ),
                    );
                    showToast("申请已发出，等待对方确认");
                  }
                  break;
                default:
                  break;
              }
            },
            itemBuilder: (context) {
              return <PopupMenuEntry<MenuValue>>[
                PopupMenuItem<MenuValue>(
                  value: MenuValue.MenuValue_CreateGroupChat,
                  // child: TextButton(onPressed: () {
                  //
                  // },
                  child: Row(
                    children: [
                      Icon(
                        Icons.chat_bubble,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "发起群聊",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  // ), // Text('发起群聊'),
                ),
                PopupMenuItem<MenuValue>(
                  value: MenuValue.MenuValue_ApplyGroupChat,
                  // child: TextButton(onPressed: () {  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.group_add,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "加入群聊",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                // ),
                if (Cache.getInstance().systemConfig?.canAddFriend ?? false)
                  PopupMenuItem<MenuValue>(
                    value: MenuValue.MenuValue_AddFriend,
                    // child: TextButton(onPressed: () {  },
                    child: Row(
                      children: const [
                        Icon(
                          Icons.person_add,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "添加朋友",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                if (Platform.isAndroid || Platform.isIOS)
                  PopupMenuItem<MenuValue>(
                    value: MenuValue.MenuValue_Scan,
                    // child: TextButton(onPressed: () {  },
                    child: Row(
                      children: [
                        Icon(
                          Icons.qr_code,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "扫一扫",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
              ];
            },
          ),*/
        ],
      ),
      body: IMConversation(
        key: Key('${AppUserInfo().imId}'),
        onTap: (conversation) {
          Widget widget;
          if (conversation.privateChat) {
            FriendInfo friendInfo = FriendInfo();
            friendInfo.friendId = conversation.userId;
            widget = ChatPage(
              finfo: friendInfo,
            );
          } else {
            widget = ChatGroupPage(
              groupId: Int64(conversation.conversationId),
              name: conversation.nickname,
            );
            Get.put(
              ConversationController(),
              tag: 'conversation_${conversation.conversationId}',
            );
          }
          _nav2Conversation(widget);
          GlobalController.to.updateCurrentConversation(
            conversation.conversationId,
          );
          UnReadMessageController.to.clearUnReadMsgCount(
            conversationId: conversation.conversationId,
          );
        },
        onConversationDelete: _showDeleteConversationDialog,
        onConversationPin: (context, conversation) {
          ImController.to.pin(conversation);
        },
        // onConversationDisturb: (context, conversation) async {
        //   final noDisturb = conversation.noDisturb;
        //   await AppDatabase().groupDao?.update(
        //     groupId: conversation.conversationId,
        //     dataMap: <String, dynamic>{
        //       'noDisturb': !noDisturb,
        //     },
        //   );
        //   final noDisturbValue = noDisturb ? 0 : 1;
        //   await ImController.to.updateConversationDisturbStatus(
        //     conversation.conversationId,
        //     noDisturbValue,
        //   );
        // },
      ),
    );
  }

  Future<void> applyJoinGroup(
    ApplyReq applyReq,
    int groupId,
  ) async {
    LoadingDialog.show();
    final applyRsp = await GroupRepository().applyJoinGroup(
      applyReq,
      groupId: groupId,
    );
    LoadingDialog.dismiss();
    if (null != applyRsp) {
      showToast("请求已发送，等待确认");
    }
  }

  Future<void> _showDeleteConversationDialog(
    BuildContext context,
    ConversationModel conversation,
  ) async {
    final target = conversation.nickname;
    final type = conversation.privateChat ? CHAT_TYPE.PRIVATE : CHAT_TYPE.GROUP;
    final titleWidget = RichText(
      text: TextSpan(
        text: type == CHAT_TYPE.PRIVATE ? '您即将删除和' : '您即将删除群',
        style: const TextStyle(fontSize: 14, color: Colors.black),
        children: [
          TextSpan(
            text: ' $target ',
            style: TextStyle(
              fontSize: Dimens.font_sp14,
              color: Colors.red,
            ),
          ),
          TextSpan(
            text: '的聊天信息',
            style: TextStyle(
              fontSize: Dimens.font_sp14,
              color: Theme.of(context).colorScheme.onBackground,
            ),
          )
        ],
      ),
    );
    DialogManager.showDeleteChatDialog(
      context,
      titleWidget,
      onConfirm: () {
        ImController.to.delete(conversation);
        ImConversationRepository().delRemoteChatSession(conversation.id);
        ImConversationRepository().clearSessionMsg(
          conversation.id,
          isGroup: !conversation.privateChat,
          aimId: conversation.userId,
        );
      },
    );
  }

  Future<void> _nav2Conversation(Widget widget) async {
    Get.to(widget);
    // Navigator.of(context).push(
    //   MaterialPageRoute(
    //     builder: (BuildContext ctx) {
    //       return widget;
    //     },
    //   ),
    // );
  }

  Future<void> _topChat(ChatItemFinfo item) async {
    var top = !item.ginfo.top;

    GroupTopSetReq req = GroupTopSetReq();
    req.top = top;
    PBCommData pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo().imId),
      groupId: item.ginfo.groupId,
      toService: Service.group,
    );

    http.Response response = await RpcCallImOuterApi(
      "/pb_grpc_group.Group/GroupTopSet",
      req,
      pbCommData,
    ).catchError((err) {
      log("---err:$err");
      return http.Response("$err", 500);
    });

    if (response.statusCode == 200) {
      final GroupTopSetRsp rsp = GroupTopSetRsp();
      rsp.mergeFromBuffer(response.bodyBytes);

      GroupDetailRsp(
        groupId: item.ginfo.groupId,
        top: top,
      );

      if (groupInfoMap.containsKey(item.ginfo.groupId.toInt().toString())) {
        groupInfoMap[item.ginfo.groupId.toInt().toString()]!['top'] = top;
      }
      AppDatabase().groupDao?.updateTop(
            groupId: item.ginfo.groupId.toInt(),
            top: rsp.top,
          );
      showToast("群置顶已更新");
      showChatList();
    }
  }

  Future<void> _deleteChat(ChatItemFinfo item) async {
    dbDelChat(
      item.chatItem.chatId,
      item.chatItem.chatType,
      delMsgList: true,
    ).then(
      (value) {
        final sessionId = item.chatItem.chatId;
        UnReadMessageController.to
            .clearUnReadMsgCount(conversationId: sessionId);
        setState(() {
          // lChatItems.remove(item);
          lChatItems.removeWhere(
              (element) => element.chatItem.chatId == item.chatItem.chatId);
        });
        canRefresh = true;
      },
    );
  }

  void _createConversation(int groupId) async {
    final conversation = await ImController.to.getConversationById(groupId);
    if (null == conversation) {
      final dataMap = <String, dynamic>{
        'chatId': groupId.toInt(),
        'msgSn': 0,
        'chatType': CHAT_TYPE.GROUP.index,
        'newMsgCount': 0,
        'msgTips': '',
        'msgTime': DateTime.now().toString(),
        'createTime': DateTime.now().toString(),
      };
      await ImController.to.insertOrUpdate(
        groupId.toInt(),
        dataMap: dataMap,
        conversationType: CHAT_TYPE.GROUP,
      );
      showToast('加入成功');
      if (context.mounted) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext ctx) {
              return ChatGroupPage(groupId: Int64(groupId));
            },
          ),
        );
      }
    }
  }

  bool permissionDefined = false;

  void registerEventBus() {
    eventBus.on<PermissionDefined>().listen((event) {
      if (permissionDefined) {
        return;
      }
      permissionDefined = true;
      showToast("已被限制登录");
      AppUserInfo.instance.reset();
      Navigator.of(context).pushNamedAndRemoveUntil(
        SignInScreen.name,
        (Route<dynamic> route) => false,
      );
    });
    deleteFriendStreamSub =
        eventBus.on<DeleteFriendEvent>().listen((event) async {
      showChatList();
    });
    msgStreamSub = eventBus.on<EventOnNetMsg>().listen((event) async {
      LoggerManager().debug('chat index pbName =======> ${event.pbMsg.pbName}');
      if (event.pbMsg.pbName == 'pb_pub.GMPPullLogNotify') {
        final file = GlobalController.to.logFile.value;
        if (null != file) {
          final fileData = await file.readAsBytes();

          final name = file.path.substring(
            file.path.lastIndexOf('/') + 1,
            file.path.length,
          );

          try {
            OssUtils.uploadFileV2(
              fileData,
              name: 'log/$name',
              callback: (fileUrl) {
                LoggerManager().debug('日志上传成功 =========> $fileUrl');
                UserPushLogResult notify = UserPushLogResult();
                notify.result = 0;
                notify.resultReason = '';
                notify.logPath = fileUrl;
                final pbCommData = MakePBCommData(
                  aimId: Int64(AppUserInfo().imId),
                  toService: Service.gate,
                );
                pbCommData.msgSn = event.pbMsg.pbCommData.msgSn;
                Client().sendMsg(
                  notify,
                  Int64(AppUserInfo().imId),
                  pbCommData,
                );
              },
            );
          } catch (error) {
            if (error is HttpException) {
              UserPushLogResult notify = UserPushLogResult();
              notify.result = 1;
              notify.resultReason = error.message;
              notify.logPath = '';
              final pbCommData = MakePBCommData(
                aimId: Int64(AppUserInfo().imId),
                toService: Service.gate,
              );
              pbCommData.msgSn = event.pbMsg.pbCommData.msgSn;
              Client().sendMsg(
                notify,
                Int64(AppUserInfo().imId),
                pbCommData,
              );
            }
          }
        }
      } else if (event.pbMsg.pbName == 'pb_pub.MsgRecallReq') {
        MsgRecallReq req = MsgRecallReq()..mergeFromBuffer(event.pbMsg.pbData);
        final String condition = 'msgSn=${req.msgSn}';
        dbMsg
            ?.update(
          tbGroupMsgTable,
          {
            "msgType": TextChatType.RECALL.value,
            'recallUid': event.pbMsg.pbCommData.srcId.toInt(),
          },
          where: condition,
        )
            .then((value) {
          ImController.to
              .updateLatestMsg(event.pbMsg.pbCommData.groupId.toInt());
        });
      }
      if (event.pbMsg.pbName == 'pb_msg_group.ApplyRsp') {
        ApplyRsp rsp = ApplyRsp()..mergeFromBuffer(event.pbMsg.pbData);
        if (event.pbMsg.pbCommData.srcId == AppUserInfo().imId) {
          final applyStatus = rsp.applyStatus;
          if (applyStatus == ApplyRspStatus.WaitConfirm) {
            showToast("请求已发送，等待确认");
          } else {
            final groupId = event.pbMsg.pbCommData.groupId.toInt();
            _createConversation(groupId);
          }
        }
      } else if (event.pbMsg.pbName == 'pb_msg_group.InviteeAgreedNotify') {
        InviteeAgreedNotify rsp = InviteeAgreedNotify()
          ..mergeFromBuffer(event.pbMsg.pbData);
        LoggerManager().debug(
            'chat index InviteeAgreedNotify member count ======> ${rsp.memberCount}');
        AppDatabase().groupDao?.update(
          groupId: event.pbMsg.pbCommData.groupId.toInt(),
          dataMap: <String, dynamic>{'count': rsp.memberCount},
        );
      } else if (event.pbMsg.pbName == 'pb_msg_group.InviteesAgreedNotify') {
        InviteesAgreedNotify rsp = InviteesAgreedNotify()
          ..mergeFromBuffer(event.pbMsg.pbData);
        LoggerManager().debug(
            'chat index InviteesAgreedNotify member count ======> ${rsp.memberCount}');
        AppDatabase().groupDao?.update(
          groupId: event.pbMsg.pbCommData.groupId.toInt(),
          dataMap: <String, dynamic>{'count': rsp.memberCount},
        );
      } else if (event.pbMsg.pbName == 'pb_msg_group.approverApprovedNotify') {
        approverApprovedNotify rsp = approverApprovedNotify()
          ..mergeFromBuffer(event.pbMsg.pbData);
        LoggerManager().debug(
            'chat index approverApprovedNotify member count ======> ${rsp.memberCount}');
        AppDatabase().groupDao?.update(
          groupId: event.pbMsg.pbCommData.groupId.toInt(),
          dataMap: <String, dynamic>{'count': rsp.memberCount},
        );
      } else if (event.pbMsg.pbName == 'pb_msg_group.BanMemberNotify') {
        BanMemberNotify rsp = BanMemberNotify()
          ..mergeFromBuffer(event.pbMsg.pbData);
        if (rsp.memberId.toInt() == AppUserInfo().imId) {
          AppDatabase().groupDao?.update(
            groupId: event.pbMsg.pbCommData.groupId.toInt(),
            dataMap: <String, dynamic>{'banned': 1},
          );
        }
        AppDatabase().groupMemberDao?.updateMemberBannedStatus(
              groupId: event.pbMsg.pbCommData.groupId.toInt(),
              userId: rsp.memberId.toInt(),
              banned: true,
            );
      } else if (event.pbMsg.pbName == 'pb_msg_group.UnbanMemberNotify') {
        UnbanMemberNotify rsp = UnbanMemberNotify()
          ..mergeFromBuffer(event.pbMsg.pbData);
        if (rsp.memberId.toInt() == AppUserInfo().imId) {
          AppDatabase().groupDao?.update(
            groupId: event.pbMsg.pbCommData.groupId.toInt(),
            dataMap: <String, dynamic>{'banned': 0},
          );
        }
        AppDatabase().groupMemberDao?.updateMemberBannedStatus(
              groupId: event.pbMsg.pbCommData.groupId.toInt(),
              userId: rsp.memberId.toInt(),
              banned: false,
            );
      } else if (event.pbMsg.pbName == 'pb_msg_group.KickoutNotify') {
        KickoutNotify rsp = KickoutNotify()
          ..mergeFromBuffer(event.pbMsg.pbData);
        LoggerManager().debug(
            'chat index KickoutNotify member count ======> ${rsp.memberCount}');
        try {
          await AppDatabase().groupMemberDao?.delete(
                groupId: event.pbMsg.pbCommData.groupId.toInt(),
                userId: event.pbMsg.pbCommData.aimId.toInt(),
              );
          AppDatabase().groupDao?.update(
            groupId: event.pbMsg.pbCommData.groupId.toInt(),
            dataMap: <String, dynamic>{'count': rsp.memberCount},
          );
        } catch (error) {
          LoggerManager().debug('error ========> $error');
        }
      } else if (event.pbMsg.pbName == 'pb_msg_group.GroupDisbandedNotify') {
        AppDatabase().groupDao?.update(
          groupId: event.pbMsg.pbCommData.groupId.toInt(),
          dataMap: <String, dynamic>{'disbandState': 1},
        );
      }
      // else if (event.pbMsg.pbName == 'pb_msg_group.ApplyRsp') {
      //   if (event.pbMsg.pbCommData.srcId == AppUserInfo().imId) {
      //     ApplyRsp applyRsp = ApplyRsp()..mergeFromBuffer(event.pbMsg.pbData);
      //     if (applyRsp.scanCodeKey.isNotEmpty) {
      //       final groupId = event.pbMsg.pbCommData.groupId;
      //       _createConversation(groupId.toInt());
      //     }
      //   }
      // }
      if (event.pbMsg.pbName == 'pb_msg_gate.KickOffUser') {
        AppUserInfo.instance.reset();
        Navigator.of(context).pushNamedAndRemoveUntil(
          SignInScreen.name,
          (Route<dynamic> route) => false,
          arguments: <String, dynamic>{
            'kickOff': true,
          },
        );
        return;
      }
      if (event.pbMsg.pbName != pbMsgChatTextName &&
          event.pbMsg.pbCommData.groupId == 0) {
        return;
      }
      // 有新的用户产生才触发列表更新
      for (var item in lChatItems) {
        if (item.finfo.friendId == event.pbMsg.pbCommData.srcId.toInt() ||
            item.finfo.friendId == event.pbMsg.pbCommData.aimId.toInt()) {
          // 已经有了，直接返回
          return;
        }
      }

      if (event.pbMsg is MsgReceipt) {
        return;
      }

      // 新的场景，重建
      var chatItem = ChatItemFinfo();
      chatItem.chatItem.initWithPbMessage(event.pbMsg);
      if (chatItem.chatItem.chatId == 0) {
        log("get a net user msg, but chatid = 0 not add to list");
        return;
      }

      switch (chatItem.chatItem.chatType) {
        case CHAT_TYPE.PRIVATE:
          event.pbMsg.pbCommData.userSourceVersion;
          chatItem.finfo = FriendInfo();
          await chatItem.finfo.LoadFriendData(chatItem.chatItem.chatId);
          break;
        case CHAT_TYPE.GROUP:
          chatItem.ginfo = GroupInfo();
          await chatItem.ginfo.fetchGroupData(chatItem.chatItem.chatId);
          break;
      }

      setState(() {
        // 刷新列表
      });
    });

    refreshListStreamSub = eventBus.on<ReloadChatListData>().listen((event) {
      showChatList();
    });
  }

  ////////////////////////////////////////////
  // funcs
  Future<void> showChatList() async {
    // 获取列表
    List<ChatItemFinfo> lsTempChatItems = <ChatItemFinfo>[];
    dbMsg
        ?.query(tbChatList,
            limit: limit, offset: offSet, orderBy: "msgTime desc")
        .then((value) async {
      for (var item in value) {
        var chatItem = ChatItemFinfo();
        chatItem.chatItem.initWithMap(item);
        if (chatItem.chatItem.chatId == 0) {
          dbMsg?.delete(tbChatList, where: "chatId=0");
          continue;
        }

        // var finfo = FriendInfo();
        switch (chatItem.chatItem.chatType) {
          case CHAT_TYPE.PRIVATE:
            chatItem.finfo = FriendInfo();

            break;
          case CHAT_TYPE.GROUP:
            chatItem.ginfo = GroupInfo();

            break;
        }
        if (chatItem.chatItem.chatType == CHAT_TYPE.GROUP) {
          Get.put(
            ConversationController(),
            tag: 'conversation_${chatItem.chatItem.chatId}',
          );
          await chatItem.ginfo.fetchGroupData(chatItem.chatItem.chatId);
          if (chatItem.ginfo.top) {
            lsTempChatItems.insert(0, chatItem);
          } else {
            lsTempChatItems.add(chatItem);
          }
        } else {
          lsTempChatItems.add(chatItem);
        }
      }
      lChatItems = lsTempChatItems;

      if (lChatItems.isEmpty) {
        UnReadMessageController.to.clearUnReadMsgCount();
      }

      if (mounted) {
        setState(() {});
      }
    }).catchError((err) {
      log("error->${err.toString()}");
    });
  }

  @override
  bool get wantKeepAlive => true;
}
