import 'dart:async';
import 'dart:io';
import 'package:desktop_drop/desktop_drop.dart';
import 'package:file_selector/file_selector.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/config/config.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/db/obox/model/conversation_model.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/global/controller/im_controller.dart';
import 'package:quliao/global/controller/unread_message_controller.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/modules/contacts/friend/invite/invite_friend_page.dart';
import 'package:quliao/modules/conversation/im_conversation.dart';
import 'package:quliao/modules/conversation/models/lw_conversation.dart';
import 'package:quliao/mywedgits/badger/badger.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/auth/sign_in_screen.dart';
import 'package:quliao/pages/chat_group/flyer_chat/chat_group.dart';
import 'package:quliao/pages/chat_group/group_create.dart';
import 'package:quliao/pages/chat_index/chat_index.dart';
import 'package:quliao/pages/chat_private/flyer_chat/test_page.dart';
import 'package:quliao/pages/friend/add_friend.dart';
import 'package:quliao/pages/windows/chat/chat_page_controller.dart';
import 'package:quliao/pages/windows/chat/drop_send_file.dart';
import 'package:quliao/pages/windows/comm_dialog.dart';
import 'package:quliao/pb/pb_msg/friend/friend.pb.dart' as friendPb;
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pb/pb_pub/gm_notify.pb.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/pub-def.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/utils/oss_utils.dart';
import 'package:quliao/widgets/desktop.dart';
import 'package:quliao/widgets/dialog/manager.dart';
import 'package:tuple/tuple.dart';
import 'package:path/path.dart' as path;
import 'package:url_launcher/url_launcher.dart';

import '../../../db/database.dart';
import '../../../models/user/myinfo.dart';
import '../../../pb/pb_pub/service.pb.dart';
import '../../../pb/pb_msg/group/group.pb.dart';
import '../../../pub/im_grpc_opt.dart';
import '../../../pub/log.dart';
import '../../../widgets/empty.dart';

class DeskChatPage extends StatefulWidget {
  const DeskChatPage({
    super.key,
  });

  @override
  State<StatefulWidget> createState() => _DeskChatPageState();
}

class _DeskChatPageState extends State<DeskChatPage>
    with AutomaticKeepAliveClientMixin {
  final ValueNotifier<bool> _dragValueNotifier = ValueNotifier(false);
  var inputGroupId = Int64(0);

  late StreamSubscription<EventOnNetMsg> msgStreamSub;

  @override
  void initState() {
    super.initState();
    Get.put(ChatPageController());
    eventBus.on<ReloadChatListData>().listen((event) {
      final conversationId = event.chatId;
      if (null != conversationId) {
        ImController.to.selectConversation(conversationId);
      }
    });
    registerEventBus();
  }

  void registerEventBus() async {
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
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    var c = ChatPageController.to;
    return Obx(
      () => Scaffold(
        body: Row(
          children: [
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  _buildAppBar(context),
                  Container(
                    height: Dimens.gap_dp1 / 2,
                    color: Theme.of(context).dividerColor,
                  ),
                  Expanded(
                    child: IMConversation(
                      key: Key('${AppUserInfo().imId}'),
                      onConversationLoaded: (conversations) {
                        final chatConversations = <Tuple2<int, Widget>>[];
                        final preChatConversations = c.chatConversations;

                        final conversationList =
                            <Tuple2<int, ConversationModel>>[];
                        final preConversations = c.conversations;

                        for (final conversation in conversations) {
                          final conversationId = conversation.conversationId;
                          final index =
                              preChatConversations.indexWhere((element) {
                            return element.item1 == conversationId;
                          });
                          if (index > -1) {
                            chatConversations.add(
                              preChatConversations[index],
                            );
                            conversationList.add(
                              preConversations[index],
                            );
                          } else {
                            Widget widget;
                            if (conversation.privateChat) {
                              FriendInfo friendInfo = FriendInfo();
                              friendInfo.friendId = conversation.conversationId;
                              widget = ChatPage(
                                  finfo: friendInfo, enableBack: false);
                            } else {
                              widget = ChatGroupPage(
                                groupId: Int64(conversation.conversationId),
                                name: conversation.nickname,
                                enableBack: false,
                              );
                            }
                            chatConversations.add(
                              Tuple2(conversationId, widget),
                            );
                            conversationList.add(
                              Tuple2(conversationId, conversation),
                            );
                          }
                        }
                        c.conversations.value = conversationList;
                        c.chatConversations.value = chatConversations;
                      },
                      onTap: (conversation) {
                        final conversationId = conversation.conversationId;
                        final chatConversations = c.chatConversations;
                        final int currentIndex =
                            chatConversations.indexWhere((element) {
                          return element.item1 == conversationId;
                        });
                        c.currentIndex.value = currentIndex;
                        GlobalController.to
                            .updateCurrentConversation(conversationId);
                        UnReadMessageController.to.clearUnReadMsgCount(
                          conversationId: conversationId,
                          conversationType: conversation.privateChat
                              ? CHAT_TYPE.PRIVATE
                              : CHAT_TYPE.GROUP,
                        );
                      },
                      // onConversationDelete: _showDeleteConversationDialog,
                      onConversationPin: (context, conversation) {
                        // ImController.to.pin(conversation);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: Dimens.gap_dp1 / 2,
              height: double.infinity,
              color: Theme.of(context).dividerColor,
            ),
            Expanded(
              child: DropTarget(
                enable: c.chatConversations.isNotEmpty,
                onDragDone: (detail) {
                  _dragValueNotifier.value = false;
                  _sendGroupDropFiles(detail, context);
                },
                onDragEntered: (detail) {
                  _dragValueNotifier.value = true;
                },
                onDragExited: (detail) {
                  _dragValueNotifier.value = false;
                },
                child: Stack(
                  children: [
                    _buildChatConversations(),
                    ValueListenableBuilder(
                      valueListenable: _dragValueNotifier,
                      builder: (context, dragging, child) {
                        return Visibility(
                          visible: dragging,
                          child: const DropSendFile(),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChatConversations() {
    final controller = ChatPageController.to;
    return IndexedStack(
      index: controller.chatConversations.isEmpty
          ? 0
          : controller.currentIndex.value,
      children: controller.chatConversations.isEmpty
          ? [const Empty()]
          : controller.chatConversations.map((e) {
              return Container(
                key: Key('${e.item1}'),
                child: e.item2,
              );
            }).toList(),
    );
  }

  Future<void> _showDeleteConversationDialog(
    BuildContext context,
    LwConversation conversation,
  ) async {
    final target = '${conversation.name ?? conversation.conversationId}';
    final type = conversation.privateChat ? CHAT_TYPE.PRIVATE : CHAT_TYPE.GROUP;
    final titleWidget = RichText(
      text: TextSpan(
        text: type == CHAT_TYPE.PRIVATE ? '您即将删除和' : '您即将删除群',
        style: TextStyle(
          fontSize: Dimens.font_sp14,
          color: Theme.of(context).colorScheme.onBackground,
        ),
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
        // ImController.to.delete(conversation);
      },
    );
    // CustomDialog.showDialog<void>(
    //   context,
    //   barrierDismissible: false,
    //   builder: (context) {
    //     return DeleteChatDialog(
    //       target: '${conversation.conversationId}',
    //       type: conversation.privateChat ? CHAT_TYPE.PRIVATE : CHAT_TYPE.GROUP,
    //       callback: () {
    //         ImController.to.delete(conversation);
    //       },
    //     );
    //   },
    // );
  }

  Future<void> _sendGroupDropFiles(
    DropDoneDetails details,
    BuildContext context,
  ) async {
    if (!context.mounted) return;
    final controller = ChatPageController.to;
    int currentIndex = controller.currentIndex.value;

    final conversationId = controller.conversations[currentIndex].item1;

    final conversationInfo = controller.conversations[currentIndex].item2;

    String conversationName = conversationInfo.nickname ?? '';

    List<XFile> files = details.files;
    files.removeWhere((element) {
      final directory = Directory(element.path);
      final isDirectoryExists = directory.existsSync();
      return isDirectoryExists;
    });
    // ignore: use_build_context_synchronously
    DesktopWidget.showDesktopPopupWindow(
      context: context,
      width: 600,
      height: files.length < 4 ? 300 : 500,
      target: conversationName,
      child: (closeFunc) => Container(
        padding: const EdgeInsets.only(bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Scrollbar(
                child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    final file = files[index];
                    final String fileFormat = path.extension(file.path).split(
                        ".")[path.extension(file.path).split(".").length - 1];
                    return Material(
                      color: Theme.of(context).colorScheme.surface,
                      child: InkWell(
                        onTap: () {
                          launchUrl(Uri.file(file.path));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 6, horizontal: 20),
                          child: Row(
                            children: [
                              SizedBox(
                                width: Dimens.gap_dp2 * 22,
                                height: Dimens.gap_dp2 * 22,
                                child: Container(
                                  padding: EdgeInsets.all(Dimens.gap_dp4),
                                  child: Image.asset(
                                      Config.fileMap[fileFormat.toLowerCase()]),
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Text(
                                  path.basename(file.path),
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider(
                      height: 1,
                      thickness: 1,
                      color: Theme.of(context).dividerColor,
                    );
                  },
                  itemCount: files.length,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      closeFunc();
                    },
                    child: const Text('取消'),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      eventBus.fire(
                        SendDropFiles(
                          conversationId: conversationId,
                          files: files,
                        ),
                      );
                      closeFunc();
                    },
                    child: const Text('发送'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    /// 释放控制器
    super.dispose();
    msgStreamSub.cancel();
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        '会话列表',
        style: Theme.of(context).textTheme.titleMedium,
      ),
      elevation: 0,
      centerTitle: false,
      backgroundColor: Theme.of(context).colorScheme.surface,
      actions: [
        PopupMenuButton<MenuValue>(
          color: Color(0xFF2D2D2D),
          icon: const Icon(
            Icons.add,
            color: Colors.black87,
          ),
          enabled: true,
          onSelected: (MenuValue value) async {
            switch (value) {
              case MenuValue.MenuValue_CreateGroupChat:
                // 切换到创建群聊页面
                // Navigator.pushNamed(context, "GroupCreate",
                //     arguments: <FriendInfo>[]);
                MyAlertDialog().show(
                  child: const InviteFriendPage(),
                );
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
                                friendPb.ApplyReq(),
                                inputGroupId,
                                MakePBCommData(
                                  aimId: inputGroupId,
                                  groupId: inputGroupId,
                                  toService: Service.group,
                                ),
                              );

                              Navigator.pop(context);

                              showToast("请求已发送，等待确认");
                            },
                          ),
                        ],
                      );
                    });
                break;
              case MenuValue.MenuValue_AddFriend:
                MyAlertDialog().show(child: AddFriend());
                break;
              case MenuValue.MenuValue_Scene:
                // var code = await Navigator.push(context,
                //     MaterialPageRoute(builder: (context) {
                //   return ScanCodePage(title: "扫一扫");
                // }));
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
                  children: const [
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
                  children: const [
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
            ];
          },
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}

