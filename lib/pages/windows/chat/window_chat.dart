import 'dart:async';
import 'dart:io';
import 'package:contextual_menu/contextual_menu.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:open_filex/open_filex.dart';
import 'package:protobuf/protobuf.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/flutter_chat_ui/flutter_chat_ui.dart';
import 'package:quliao/models/Global.dart';
import 'package:quliao/models/msg_struct.dart';
import 'package:quliao/models/user/userinfo.dart';
import 'package:quliao/net/msg_handler_mgr.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/chat_group/flyer_chat/chat_group_change_to_message.dart';
import 'package:quliao/pages/chat_private/chat.dart';
import 'package:quliao/pages/chat_private/chat_events.dart';
import 'package:quliao/pages/chat_private/flyer_chat/chat_private_change_to_message.dart';
import 'package:quliao/pages/windows/chat/chat_bottom_input.dart';
import 'package:quliao/pages/windows/chat/group_right_menu_widget.dart';
import 'package:quliao/pages/windows/chat/home_create_widget.dart';
import 'package:quliao/pages/windows/chat/window_chat_local_notifi.dart';
import 'package:quliao/pages/windows/client/contextual_menu_util.dart';
import 'package:quliao/pages/windows/client/window_client.dart';
import 'package:quliao/pb/pb_msg/gate/gate.pbserver.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pb/pb_pub/error_code.pbenum.dart';
import 'package:quliao/pb/pb_pub/service.pb.dart';
import 'package:quliao/pb/pb_pub/service.pbserver.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/pub/pub-def.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';
import 'package:http/http.dart' as http;
import 'package:searchfield/searchfield.dart';
import 'package:quliao/mywedgits/badger/badger.dart';

import '../../chat_index/msg_session_widget.dart';

class WindowChatPage extends StatefulWidget {
  static const name = "WindowChatPage";
  WindowChatPage({super.key});

  @override
  WindowChatPageState createState() => WindowChatPageState();
}

enum MenuValue {
  MenuValue_CreateGroupChat,
  MenuValue_ApplyGroupChat,
  MenuValue_AddFriend,
  MenuValue_Scene,
}

class WindowChatPageState extends State<WindowChatPage> {
  // bool _active = false;
  // int msgCount = 0;
  int limit = 20;
  int offSet = 0;
  List<ChatItemFinfo> lChatItems = <ChatItemFinfo>[];
  late StreamSubscription<EventOnNetMsg> msgStreamSub;
  // late StreamSubscription<EventMsgCountClear> eventNotifySub;
  late StreamSubscription<ReloadChatListData> reloadChatListDataSub;

  // 是否可以刷新页面
  bool canRefresh = true;

  // 聊天状态 0无 1 私聊 2群组
  int chatType = 0;

  // chat action
  List<types.Message> chatMessages = [];

  final chatUser = types.User(
    id: AppUserInfo().imId.toString(),
    firstName: AppUserInfo().nickName,
    imageUrl:
        "${AppUserInfo().appAvatar}?x-oss-process=image/resize,m_fill,h_100,w_100",
  );

  FocusNode inputNode = FocusNode();
  TextEditingController inputController = TextEditingController();

  /// 私聊消息
  List<ChatPrivateData> lsPrivateMsg = <ChatPrivateData>[];
  var msgHandlerMgr = MsgHandlerMgr();

  FriendInfo finfo = FriendInfo();

  Int64 groupId = Int64(0);
  GroupInfo groupInfo = GroupInfo();
  MemberDetailRsp mineMemberInfo = MemberDetailRsp();

  var pbNameMsgReceipt = MsgReceipt().info_.qualifiedMessageName;
  List handlerList = [
    ChatText(),
    GroupChat(),
    GroupDetailRsp(),
    InviteReq(),
    InviteAnswerReq(),
    MembersRsp(),
    MemberDetailRsp(),
    MsgReceipt(),
    NameChangeNotify(),
    GroupEmoticon(),
    GroupMedia(),
    GroupGift(),
    QuitRsp(),
    GroupDisbandedNotify(),
    QuitNotify(),
    NoticeChangeNotify(),
    AddAdminsNotify(),
    RemoveAdminsNotify(),
    RemarkChangeNotify(),
    GroupBannedNotify(),
    GroupUnbannedNotify(),
    BanMemberNotify(),
    UnbanMemberNotify(),
    GroupTransferNotify(),
    AvatarChangeNotify(),
  ];

  PBCommData getPbCommData() {
    return MakePBCommData(
        aimId: groupId, groupId: groupId, toService: Service.group);
  }

  @override
  void dispose() {
    msgStreamSub.cancel();
    reloadChatListDataSub.cancel();
    // eventNotifySub.cancel();
    for (var element in handlerList) {
      msgHandlerMgr.removeMsgHandler(element);
    }
    WindowClient.instance.finfo = finfo;
    WindowClient.instance.groupId = groupId;
    WindowClient.instance.chatType = chatType;

    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    initHandleMsg();
    loadLocalChatListData();

    finfo = WindowClient.instance.finfo;
    groupId = WindowClient.instance.groupId;
    chatType = WindowClient.instance.chatType;
    loadChatData(chatType);
  }

  Future<void> initHandleMsg() async {
    msgStreamSub = eventBus.on<EventOnNetMsg>().listen((event) async {
      if (event.pbMsg.errCode != ErrCode.SUCCESS.value) {
        log("get a err msg  code:${event.pbMsg.errCode} desc:${event.pbMsg.errDesc} ${event.pbMsg}");
        showToast("code:${event.pbMsg.errCode} desc:${event.pbMsg.errDesc}");
        return;
      }

      if (event.pbMsg.pbName != "pb_pub.HeartBeat") {
        log("获得消息 ${event.pbMsg.pbName} ${event.pbMsg.pbCommData.msgSn} ${event.pbMsg.pbCommData.srcId}->${event.pbMsg.pbCommData.aimId} 派发处理");
      }

      if (chatType == 1) {
        var result = await msgHandlerMgr.onMsg(event.pbMsg,event.enMsgFrom);
        if (result) {
          log("回调处理消息 ${event.pbMsg.pbName} 成功!! 清理一下新消息条数");
          DBClearNewMsgCount(finfo.userInfo.imId, CHAT_TYPE.PRIVATE);
        }
      } else if (chatType == 2) {
        if (event.pbMsg.pbCommData.groupId != groupId) {
          return;
        }
        DBClearNewMsgCount(groupId.toInt(), CHAT_TYPE.GROUP);
        var result = msgHandlerMgr.onMsg(event.pbMsg,event.enMsgFrom);
        // 已读标志
        if (event.pbMsg.pbName != pbNameMsgReceipt &&
            result == true &&
            event.pbMsg.pbCommData.srcId != AppUserInfo.instance.imId) {
          log(" 回执状态: ${MSG_STATE.READ} 为消息 sn:${event.pbMsg.pbCommData.srcId} name:${event.pbMsg.pbName} :srcId：${event.pbMsg.pbCommData.srcId} myId:${AppUserInfo.instance.imId} 发送的回执 ");
          sendReceiptMsg(event.pbMsg.pbCommData,
              state: MSG_STATE.READ, beginTime: Int64());

          // 更新数据
          // DBUpdateFriendGroupMsgState(event.pbMsg.pbCommData.msgSn, MSG_STATE.READ);
        }
      }
    });

    reloadChatListDataSub = eventBus.on<ReloadChatListData>().listen((event) {
      log('*************ReloadChatListData');
      loadLocalChatListData();
    });



    // 注册消息处理句柄
    for (var handler in handlerList) {
      msgHandlerMgr.RegMsgHandler(handler,
          (GeneratedMessage msg, PBMessage pbMessage, EnMsgFrom enMsgFrom) {
        log("pbMessage.pbName = ${pbMessage.pbName}", deep: 5);
        if (pbMessage.pbName.contains("GroupDetailRsp")) {
          GroupDetailRsp message = GroupDetailRsp()
            ..mergeFromBuffer(pbMessage.pbData);
          // 把消息加入消息列表
          groupInfo.name = message.name;
          groupInfo.notice = message.notice;
          groupInfo.ownerId = message.ownerId;
          groupInfo.disbanded = message.disbanded ? 1 : 0;
          updateWidget();
        } else if (pbMessage.pbName.contains("MembersRsp")) {
          // 把消息加入消息列表
          updateWidget();
        } else if (pbMessage.pbName.contains("GroupTransferNotify")) {
          GroupTransferNotify message = GroupTransferNotify()
            ..mergeFromBuffer(pbMessage.pbData);
          groupInfo.ownerId = message.ownerId;
          if (message.ownerId.toInt() == AppUserInfo().imId) {
            showToast("你已成为群主");
            updateWidget();
          }
          addGroupMsgToList(pbMessage);
        } else if (pbMessage.pbName.contains("MsgReceipt")) {
          MsgReceipt message = MsgReceipt()..mergeFromBuffer(pbMessage.pbData);
          log("MsgReceipt ${pbMessage.pbCommData.srcId}");

          if (isMySendMsg(pbMessage.pbCommData.srcId)) {
            // 自己的回执消息，不改变
            return false;
          }
          if (chatType == 1 || chatType == 2) {
            if (chatType == 1) {
              log("得到一个确认消息，更新数据 message ${message.state} msgSn: ${pbMessage.pbCommData.msgSn.toInt()}  是我？ ${isMySendMsg(pbMessage.pbCommData.srcId)}");
              // 找到消息并变更状态
              for (var element in lsPrivateMsg) {
                if (!element.isSplitLine &&
                    element.msgSn == pbMessage.pbCommData.msgSn) {
                  if (element.msgStatus.value < message.state.value) {
                    log("找到对应消息，并需要修改状态，${element.msgStatus}->${message.state}");
                    element.msgStatus = message.state;
                    break;
                  }
                }
              }
            } else if (chatType == 2) {
              for (var item in groupInfo.lstMsg) {
                if (item.pbHeadMsg.pbCommData.msgSn ==
                    pbMessage.pbCommData.msgSn) {
                  if (item.msgStatus.value < message.state.value) {
                    if (isMySendMsg(pbMessage.pbCommData.srcId)) {
                      log("msg state change from :${item.msgStatus} to ${message.state} ${AppUserInfo().imId} ${pbMessage.pbCommData.srcId}");
                      item.msgStatus = message.state;
                    } else {
                      var str = pbMessage.pbCommData.exp["GROUP_MSG_STATUS"];
                      if (str != null && str.isNotEmpty) {
                        item.msgStatus = MSG_STATE.valueOf(int.parse(str))!;
                        log("msg state change from :${item.msgStatus} to ${MSG_STATE.valueOf(int.parse(str))!} ${AppUserInfo().imId} ${pbMessage.pbCommData.srcId}");
                      }
                    }
                  }
                  // 根据确认设置消息状态
                  break;
                }
              }
            }

            for (var i = 0; i < chatMessages.length; i++) {
              var element = chatMessages[i];
              if (element.id == "${pbMessage.pbCommData.msgSn.toInt()}" &&
                  element.status != Status.seen) {
                types.Message changeMessage = chatType == 2
                    ? types.Message.fromJson(
                        groupMessageChangeStatu(element, message))
                    : types.Message.fromJson(
                        messageChangeStatu(element, message));
                chatMessages.removeAt(i);
                chatMessages.insert(i, changeMessage);
                log("更新本地列表显示 ${changeMessage.status}");
                updateWidget();
                break;
              }
            }
          }
        } else if (pbMessage.pbName.contains("NameChangeNotify")) {
          NameChangeNotify message = NameChangeNotify()
            ..mergeFromBuffer(pbMessage.pbData);

          // 根据确认设置消息状态
          groupInfo.name = message.name;
          addChatMsgToList(pbMessage);

        } else if (pbMessage.pbName.contains("AvatarChangeNotify")) {
          AvatarChangeNotify message = AvatarChangeNotify()
            ..mergeFromBuffer(pbMessage.pbData);
          // 根据确认设置消息状态
          groupInfo.name = message.avatar;
          // _addMsgToList(ChatGroupData()..initWithPBMsg(pbMessage));
          addGroupMsgToList(pbMessage);
        } else if (pbMessage.pbName.contains("GroupChat")) {
          if (pbMessage.pbCommData.srcId == AppUserInfo().imId) {
            // 自己发的不需处理
            return false;
          }
          showLocalNotificationAlert(pbMessage);
          addGroupMsgToList(pbMessage);
        } else if (pbMessage.pbName.contains("MemberDetailRsp")) {
          MemberDetailRsp message = MemberDetailRsp()
            ..mergeFromBuffer(pbMessage.pbData);
          mineMemberInfo = message;
        } else if (pbMessage.pbName.contains("ChatText")) {
          log("得到一个chatText，添加进列表");
          // 把消息加入消息列表
          log("GeneratedMessage ChatText ${pbMessage.pbCommData.srcId}， aimId = ${pbMessage.pbCommData.aimId} finfo.friendId = ${finfo.friendId}");
          if (pbMessage.pbCommData.srcId == AppUserInfo().imId) {
            // 自己发的不需处理
            return false;
          }
          showLocalNotificationAlert(pbMessage);
          if (pbMessage.pbCommData.srcId == finfo.friendId) {
            // 自己发的不需处理
            addPrivateMsgToList(ChatPrivateData()..initWithPbMsg(pbMessage));
          }
        } else {
          addGroupMsgToList(pbMessage);
        }
        return true;
      });
    }
  }

  // 搜索框
  final searchFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    // log("----------------appuser ${AppUserInfo()}");
    var user = AppUserInfo();
    // 获取消息列表
    // log("-----------------build scaffold lChatItems.length=${lChatItems.length}");

    // String title = '聊天(${msgCount})--ID:${user.imId} type:${user.clientType}';

    ///////////////////////////////////////////////////////////////////
    // 头部信息
    String title = '聊天--ID:${user.imId} type:${user.clientType}';
    // String ttime = ""; // 好友最后登录时间算出的一个大概时间描述，比如 刚刚在线，一天内在线，一周内，一月内，很久了
    var uavatar ;//= //avatar(url, iWidth, iHeight)
    if (chatType == 1) {
      title = finfo.userInfo.nickName;
      uavatar = avatar(finfo.userInfo.avatar, 25, 25, nick: "${finfo.userInfo.nickName}无");
    } else if (chatType == 2) {
      title = groupInfo.name;
      uavatar = avatar(finfo.userInfo.avatar, 25, 25, nick: groupInfo.name);
    }
    //
    /////////////////////////////////////////////////////////////////////////////

    // search
    final suggestions = [];//['ABC', 'ACD', 'DEF', 'GHI', 'JKL'];

    return Scaffold(
        body: Row(
          children: [
            Container(
              width: 300,
              child:
              Column(
                children: [
                Container(
                width: 300,
                height: 50,
                child:SearchField(
                    onSearchTextChanged: (query) {
                      final filter = suggestions
                          .where((element) =>
                          element.toLowerCase().contains(query.toLowerCase()))
                          .toList();
                      return filter.map((e) => SearchFieldListItem<String>(e)).toList();
                    },
                    key: const Key('searchfield'),
                    hint: '搜索',
                    suggestions: suggestions.map((e) => SearchFieldListItem<String>(e)).toList(),
                    focusNode: searchFocus,
                    suggestionState: Suggestion.expand,
                    onSuggestionTap: (SearchFieldListItem<String> x) {
                      searchFocus.unfocus();
                    },)
                ),
              Expanded(
                child:ListView.separated(
                    itemCount: lChatItems.length,// + 1, // 留一个位置给系统消息
                    itemBuilder: listBuilder,
                    //分割器构造器
                    separatorBuilder: (BuildContext context, int index) {
                      return const Divider(
                          color: Color(0x28808080), height: 1, thickness: 1);
                    },
                  ),),
                ],
              ),
            ),
            Expanded(
              child: chatType == 0
                  ? const Center(
                      child: Text(
                        "暂无聊天记录",
                        style: TextStyle(fontSize: 14),
                      ),
                    )
                  :
              Scaffold(
                appBar: AppBar(
                  elevation: 0,
                  backgroundColor: Color.fromARGB(80, 218, 218, 218),
                  // centerTitle: true,
                  title:
                  Row(
                    children: [
                      uavatar,
                      Column(
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                              color: Colors.black87,
                              fontSize: 16,
                            ),
                          ),
                          // 更新时间展示一下
                          // Text(
                          //   title,
                          //   style: const TextStyle(
                          //     color: Colors.grey,
                          //     fontSize: 8,
                          //   ),
                          // ),
                        ],
                      ),
                    ],
                  ),
                  actions: [
                    homeCreateAction(context),
                    chatType == 2
                        ? groupRightAction(context, groupInfo, groupId)
                        : Container(),
                  ],
                ),
                body:Chat(
                      messages: chatMessages,
                      backPic: groupInfo.backPic,
                      onAttachmentPressed: _handleAttachmentPressed,
                      onMessageTap: _handleMessageTap,
                      onPreviewDataFetched: _handlePreviewDataFetched,
                      onSendPressed: _handleSendPressed,
                      showUserAvatars: chatType==2,// 群聊的时候展示头像 true,
                      showUserNames: false,
                      customBottomWidget: ChatBottomInputBar(
                        inputNode: inputNode,
                        inputController: inputController,
                        onAttachmentPressed: _handleAttachmentPressed,
                        onSendPressed: _handleSendPressed,
                      ),
                      user: chatUser,
                      emptyState: Container(
                        alignment: Alignment.center,
                        child: const Text(
                          "暂无聊天记录",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
              )
            ),
          ],
        ));
  }

  void switchChat(ChatItemFinfo chatItem){
    switch (chatItem.chatItem.chatType) {
      case CHAT_TYPE.PRIVATE:
        log("ChatPage:${chatItem.finfo}");
        reloadChat();
        finfo = chatItem.finfo;
        loadChatData(1);
        break;
      case CHAT_TYPE.GROUP:
        reloadChat();
        groupId = chatItem.ginfo.groupId;
        loadChatData(2);
        break;
    }
  }

  Widget listBuilder(BuildContext context, int indexIn) {
    // if (indexIn == 0) {
    //   return ServiceNotifyBar();
    // }
    var index = indexIn;// - 1;
    var item = lChatItems[index];

    bool choose = false;
    if (chatType == 1) {
      if (finfo.userInfo.imId > 0 &&
          item.finfo.userInfo.imId == finfo.userInfo.imId) {
        choose = true;
      }
    } else if (chatType == 2) {
      if (groupInfo.groupId > 0 && item.ginfo.groupId == groupInfo.groupId) {
        choose = true;
      }
    }

    return ContextMenuUtil(
      customMenu: Menu(items: [
        MenuItem(
          label: '删除聊天',
          onClick: (_) {
            canRefresh = false;
            showDialog(
                context: context,
                builder: (BuildContext context1) {
                  return CupertinoAlertDialog(
                    title: const Text(
                      "确认信息",
                      style: TextStyle(fontSize: 16, color: Colors.red),
                    ),
                    content: item.chatItem.chatType == CHAT_TYPE.PRIVATE
                        ? RichText(
                            text: TextSpan(
                                text: "您即将删除和",
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: "${item.chatItem.chatId}",
                                      style: const TextStyle(
                                          fontSize: 16, color: Colors.red)),
                                  const TextSpan(
                                    text: "的聊天信息",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black),
                                  )
                                ]),
                          )
                        : RichText(
                            text: TextSpan(
                                text: "您即将删除群",
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: "${item.chatItem.chatId}",
                                      style: const TextStyle(
                                          fontSize: 16, color: Colors.red)),
                                  const TextSpan(
                                    text: "的聊天信息",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black),
                                  )
                                ]),
                          ),
                    actions: <Widget>[
                      TextButton(
                          onPressed: () {
                            // _deleteItem(item.id, item.originId, index);
                            // lChatItems.removeAt(index);
                            // log("删除前 ${item.getName()}, count:${lChatItems.length}");
                            lChatItems.remove(item);
                            // 删除私聊数据
                            dbDelChat(item.chatItem.chatId,
                                    item.chatItem.chatType,
                                    delMsgList: true)
                                .then((value) {
                              updateWidget();
                              canRefresh = true;
                              Navigator.of(context).pop(true);
                            });
                          },
                          child: const Text(
                            "是的",
                            style: TextStyle(fontSize: 14, color: Colors.green),
                          )),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(false);
                          canRefresh = true;
                        },
                        child: const Text(
                          "再想想",
                          style: TextStyle(fontSize: 14, color: Colors.green),
                        ),
                      )
                    ],
                  );
                });
          },
        ),
      ]),
      child: Container(
        // color: choose ? const Color.fromRGBO(238, 238, 238, 1) : Colors.white,
        color: choose ? Colors.blueAccent : Colors.white,
        child: InkWell(
          onTap: () {
            switchChat(item);

          },
          child:
            MsgSessionWidget(item),

        ),
      ),
    );
  }

  ////////////////////////////////////////////
  // funcs
  Future<void> loadLocalChatListData() async {
    // var userId = AppUserInfo.instance.imId.toInt();
    // 获取新消息个数
    // msgCount = await GetTotalNewMsgCount();

    // 获取列表
    List<ChatItemFinfo> lsTempChatItems = <ChatItemFinfo>[];
    var rslt = await dbMsg?.query(tbChatList,
        limit: limit, offset: offSet, orderBy: "msgTime desc");
    // log("lllllllllllllllllllllllllllllllllll get msg list count:${rslt.length} limit: limit:${limit}, offset: offSet :${offSet}");
    if (rslt != null) {
      for (var item in rslt) {
        // log("lllllllllllllllllllllllllllllllllllllllllll db msg info:${item}");
        var chatItem = ChatItemFinfo();
        chatItem.chatItem.initWithMap(item);
        if (chatItem.chatItem.chatId == 0) {
          dbMsg?.delete(tbChatList, where: "chatId=0");
          continue;
        }

        // var finfo = FriendInfo();
        switch (chatItem.chatItem.chatType) {
          case CHAT_TYPE.PRIVATE:
            // log("pppppppppppppppppp chatItem->${chatItem.chatItem.chatId}");
            chatItem.finfo = FriendInfo();
            await chatItem.finfo.LoadFriendData(chatItem.chatItem
                .chatId); //await GetFriendInfoForChat(chatItem.chatItem.chatId);//await GetUserInfo(chatItem.finfo.userInfo);
            break;
          case CHAT_TYPE.GROUP:
            chatItem.ginfo = GroupInfo();
            await chatItem.ginfo.fetchGroupData(chatItem.chatItem.chatId);
            // chatItem.ginfo = GroupInfo()
            //   ..groupId = Int64(chatItem.chatItem.chatId)
            //   ..name = "群${item['chatId']}"; // 测试用，应该去获取群信息
            break;
        }

        lsTempChatItems.add(chatItem);
      }
    }
    // log("here");
    lChatItems = lsTempChatItems;

    // 如果还没有选中的就用第一个
    if(chatType == 0){
      // 没有场景，给一个默认
      if (lChatItems.isNotEmpty){
        switchChat(lChatItems[0]);
      }
    }

    updateWidget();
  }

  Future<void> addChatMsgToList(PBMessage pbMsg) async {
    log("=============== get msg ");
    if (!Global.pbMsgCreator.needSave(pbMsg.pbName)) {
      // log("msg ${pbMsg.pbName} 不需要保存");
      return;
    }

    if (pbMsg.pbName == pbNameMsgReceipt) {
      // log("MsgReceipt 不需保存！！！");
      return;
    }
    log("addChatMsgToList of pbmsgsn=${pbMsg.pbCommData.msgSn} ${pbMsg.pbName}");
    int chatId = 0;
    bool isOwner = pbMsg.pbCommData.srcId.toInt() == AppUserInfo.instance.imId;
    var msgTime = DateTime.fromMillisecondsSinceEpoch(
            pbMsg.pbCommData.time.toInt() * 1000)
        .toString();

    if (pbMsgChatTextName == pbMsg.pbName) {
      chatId = (AppUserInfo.instance.imId == pbMsg.pbCommData.srcId.toInt())
          ? pbMsg.pbCommData.aimId.toInt()
          : pbMsg.pbCommData.srcId.toInt();
    } else {
      chatId = pbMsg.pbCommData.groupId.toInt();
    }

    Map<String, dynamic> map = {};
    if (pbMsgChatTextName == pbMsg.pbName) {
      var pbCT = ChatText();
      pbCT.mergeFromBuffer(pbMsg.pbData);
      String msgTips = GetMsgTips(pbCT.chatType, text: pbCT.text);
      log("===========get msgTips=${msgTips} ");
      map = {
        'chatId': chatId,
        'msgSn': pbMsg.pbCommData.msgSn.toInt(),
        'chatType': CHAT_TYPE.PRIVATE.index,
        'newMsgCount': isOwner ? 0 : 1,
        // 新消息条数
        'msgTips': msgTips,
        // 简短提示
        'msgTime': msgTime,
        'createTime': DateTime.now().toString(),
      };
    } else {
      String tips = await tipsFromGropMsg(pbMsg, isOwner);
      map = {
        'chatId': chatId,
        'msgSn': pbMsg.pbCommData.msgSn.toInt(),
        'chatType': CHAT_TYPE.GROUP.index,
        'newMsgCount': 1,
        'msgTips': tips, // 简短提示
        'msgTime': msgTime,
        'createTime': DateTime.now().toString(),
      };
    }

    var chatItem = ChatItemFinfo();
    chatItem.chatItem.initWithMap(map);

    switch (chatItem.chatItem.chatType) {
      case CHAT_TYPE.PRIVATE:
        chatItem.finfo = FriendInfo();
        await chatItem.finfo.LoadFriendData(chatItem.chatItem
            .chatId); //await GetFriendInfoForChat(chatItem.chatItem.chatId);//await GetUserInfo(chatItem.finfo.userInfo);
        break;
      case CHAT_TYPE.GROUP:
        chatItem.ginfo = GroupInfo();
        await chatItem.ginfo.fetchGroupData(chatItem.chatItem.chatId);
        break;
    }

    List<ChatItemFinfo> lsTempChatItems = <ChatItemFinfo>[];
    if (lChatItems.isNotEmpty) {
      for (var element in lChatItems) {
        if (element.chatItem.chatId == chatItem.chatItem.chatId) {
          // chatItem.chatItem.newMsgCount = element.chatItem.newMsgCount + 1;
          lsTempChatItems.add(chatItem);
        } else {
          lsTempChatItems.add(element);
        }
      }
    } else {
      lsTempChatItems.add(chatItem);
    }

    lChatItems = lsTempChatItems;
    updateWidget();
  }

  void reloadChat() {
    // 重置群组状态
    chatType = 0;
    chatMessages = [];
    finfo = FriendInfo();
    groupId = Int64(0);
    groupInfo = GroupInfo();
    mineMemberInfo = MemberDetailRsp();
    updateWidget();
  }

  void loadChatData(int type) {
    chatType = type;
    inputController.clear();

    Future.delayed(const Duration(milliseconds: 200), () {
      // 延迟生效
      if (chatType == 1) {
        DBClearNewMsgCount(finfo.userInfo.imId, CHAT_TYPE.PRIVATE);
        loadPrivateChatHistoryMessage();
        eventBus.fire(EventMsgCountClear()..imId = finfo.userInfo.imId);
      } else if (chatType == 2) {
        groupInfo.groupId = groupId;
        DBClearNewMsgCount(groupId.toInt(), CHAT_TYPE.GROUP);
        Client.instance.sendMsg(GroupDetailReq(), groupId, getPbCommData());
        fetchGroupInfoFromDB();
        fetchGroupMineMember();
        loadGroupHistoryMsgList();
        eventBus.fire(EventMsgCountClear()..imId = groupId.toInt());
      }
      FocusScope.of(context).requestFocus(inputNode);
    });
  }

  void _addMessage(types.Message message) {
    chatMessages.insert(0, message);
    updateWidget();
  }

  late String picturePath;
  Future<void> _handleAttachmentPressed() async {
    if (chatType == 2) {
      if (groupInfo.disbanded == 1) {
        showToast("群已解散");
        return;
      }
      if (mineMemberInfo.banned) {
        showToast("你已被封禁");
        return;
      }
    }
    log("点击上传图片");

    SendImageMsg(
      chatType == 2 ? AppUserInfo().imId : finfo.userInfo.imId,
      context,
      imageBlock: (pickerFile, msgSN) async {
        if (pickerFile != null) {
          final bytes = await pickerFile.readAsBytes();
          final image = await decodeImageFromList(bytes);

          final message = types.ImageMessage(
            author: chatUser,
            createdAt: DateTime.now().millisecondsSinceEpoch,
            height: image.height.toDouble(),
            id: (msgSN.isNotEmpty ? msgSN : const Uuid().v4()),
            name: pickerFile.name,
            size: bytes.length,
            uri: pickerFile.path,
            status: Status.sent,
            width: image.width.toDouble(),
          );
          _addMessage(message);
        }
      },
      isGroupChat: chatType == 2 ? true : false,
      groupId: groupId,
    );
  }

  void _handleMessageTap(BuildContext _, types.Message message) async {
    if (message is types.FileMessage) {
      var localPath = message.uri;

      if (message.uri.startsWith('http')) {
        try {
          final index =
              chatMessages.indexWhere((element) => element.id == message.id);
          final updatedMessage =
              (chatMessages[index] as types.FileMessage).copyWith(
            isLoading: true,
          );

          chatMessages[index] = updatedMessage;

          updateWidget();

          final client = http.Client();
          final request = await client.get(Uri.parse(message.uri));
          final bytes = request.bodyBytes;
          final documentsDir = (await getApplicationDocumentsDirectory()).path;
          localPath = '$documentsDir/${message.name}';

          if (!File(localPath).existsSync()) {
            final file = File(localPath);
            await file.writeAsBytes(bytes);
          }
        } finally {
          final index =
              chatMessages.indexWhere((element) => element.id == message.id);
          final updatedMessage =
              (chatMessages[index] as types.FileMessage).copyWith(
            isLoading: null,
          );
          chatMessages[index] = updatedMessage;

          updateWidget();
        }
      }

      await OpenFilex.open(localPath);
    }
  }

  void _handlePreviewDataFetched(
    types.TextMessage message,
    types.PreviewData previewData,
  ) {
    final index =
        chatMessages.indexWhere((element) => element.id == message.id);
    final updatedMessage = (chatMessages[index] as types.TextMessage).copyWith(
      previewData: previewData,
    );
    chatMessages[index] = updatedMessage;
    updateWidget();
  }

  void _handleSendPressed(types.PartialText message) {
    if (chatType == 2) {
      if (groupInfo.disbanded == 1) {
        showToast("群已解散");
        return;
      }
      if (mineMemberInfo.banned) {
        showToast("你已被封禁");
        return;
      }
    }

    if (message.text.isEmpty) {
      showToast("请输入聊天内容");
      return;
    }

    if (chatType == 1) {
      var amId = finfo.userInfo.imId.toInt();
      sendTextMsg(
        amId,
        message.text,
        sendBlock: (msgSN) {
          final textMessage = types.TextMessage(
            author: chatUser,
            createdAt: DateTime.now().millisecondsSinceEpoch,
            id: (msgSN.isNotEmpty ? msgSN : const Uuid().v4()),
            status: Status.sent,
            text: message.text,
          );
          _addMessage(textMessage);
        },
      );
    } else {
      GroupChat groupChat =
          GroupChat(text: message.text, chatType: TextChatType.TEXT);
      PBCommData pbCommData = getPbCommData()..needReadReceipt = true;
      Client.instance.sendMsg(groupChat, groupId, pbCommData);

      final textMessage = types.TextMessage(
        author: chatUser,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        id: "${pbCommData.msgSn.toInt()}",
        text: message.text,
        status: Status.sent,
      );
      log("_handleSendPressed, ${message.text}");
      // // 发送消息
      _addMessage(textMessage);
    }

    inputController.clear();
  }

  ///////////////////////////////////////////
  Future<void> loadGroupHistoryMsgList() async {
    dbMsg
        ?.query(tbGroupMsgTable,
            where: "groupId=?",
            whereArgs: [groupInfo.groupId.toInt()],
            limit: limit,
            offset: offSet,
            orderBy: "msgTime desc")
        .then((value) async {
      log("---------------group info valuecount:${value.length}");
      // 构建消息列表
      List<ChatGroupData> lsCPData = <ChatGroupData>[];
      List<types.Message> messageList = [];

      for (var cpd in value) {
        var d = ChatGroupData();

        // 等待加载用户信息
        await d.initWithMap(cpd);
        lsCPData.insert(0, d);
        var map = await changeToGroupMessageMap(d);
        final message = types.Message.fromJson(map);
        messageList.add(message);
        log("group message sn ${d.pbHeadMsg.pbCommData.msgSn}");
        // log("msg:sn->${d.msgSn},msgTime->${d.msgTime},createTime->${d.createTime},imId->${d.srcId}");

        // 已读标志
        if (d.pbHeadMsg.pbCommData.srcId != AppUserInfo.instance.imId &&
            d.pbHeadMsg.pbName != pbNameMsgReceipt &&
            d.msgStatus.value < MSG_STATE.READ.value) {
          sendReceiptMsg(d.pbHeadMsg.pbCommData,
              state: MSG_STATE.READ, beginTime: Int64());
        }
      }

      if (lsCPData.isNotEmpty) {
        lsCPData[lsCPData.length - 1].selected = true;
      }
      groupInfo.lstMsg = lsCPData;
      chatMessages = messageList;

      updateWidget();
    });
  }

  Future<void> fetchGroupInfoFromDB() async {
    GroupInfo dbGroupInfo = GroupInfo();
    await dbGroupInfo.fetchGroupData(groupId.toInt());
    groupInfo.disturb = dbGroupInfo.disturb;
    groupInfo.avatar = dbGroupInfo.avatar;
    log("获取本地群组信息 是否开启免打扰${groupInfo.disturb}, ${dbGroupInfo.disturb}");
  }

  void fetchGroupMineMember() {
    Client.instance.sendMsg(
        MemberDetailReq(),
        groupId,
        MakePBCommData(
            aimId: Int64(AppUserInfo().imId),
            groupId: groupId,
            toService: Service.group));
  }

  void loadPrivateChatHistoryMessage() async {
    // 获取历史消息
    // todo 改造为db读取制作初始化进行，其他刷新不读，消息直接构造插入列表即可
    log("loadHistoryMessage");
    var value = await dbMsg?.query(tbPrivateMsgTable,
        where: "friendId=?",
        whereArgs: [finfo.friendId],
        limit: limit,
        offset: offSet,
        orderBy: "msgTime desc");
    if ((value ?? []).isNotEmpty) {
      log("---------------------get value my imid:${AppUserInfo.instance.imId.toInt()} widget.finfo.friendId:${finfo.friendId} friend imid:${finfo.userInfo.imId.toInt()} count=${value?.length}");
      // 构建消息列表
      // List<ChatPrivateData> lsCPData = <ChatPrivateData>[];
      // ChatPrivateData? preData;
      var cdDataList = [];
      for (var cpd in (value ?? [])) {
        // log("${cpd}");
        var d = ChatPrivateData()..initWithMap(cpd);
        // log("从数据库加载的消息:${(d.pbServiceMsg as ChatText).text} 是否自己发的:${d.srcId == AppUserInfo().imId}");
        cdDataList.add(d);
        final message = types.Message.fromJson(await changeToMessageMap(d));
        chatMessages.add(message);
      }

      updateWidget();

      // 更新未读条数Config.chatTypePrivate
      DBClearNewMsgCount(finfo.userInfo.imId, CHAT_TYPE.PRIVATE);
    }
  }

  void addGroupMsgToList(PBMessage pbMessage) async {
    if (chatType == 1) {
    } else if (chatType == 2) {
      for (var item in groupInfo.lstMsg) {
        if (item.pbHeadMsg.pbCommData.msgSn == pbMessage.pbCommData.msgSn) {
          log("已经有一个了，不再加入");
          return;
        }
      }
      log("222222222222222222_addMsgToList of pbmsgsn=${pbMessage.pbCommData.msgSn} ${pbMessage.pbName}",
          deep: 2);
      var msg = ChatGroupData();
      msg.initWithPBMsg(pbMessage); //.then((value) {
      // GetUserInfo(pbMessage.pbCommData.srcId.toInt()).then((value) {
      //   msg.uinfo = value;
      // });
      msg.uinfo = await GetUserInfo(pbMessage.pbCommData.srcId.toInt());
      log("add msg :${msg.pbHeadMsg.pbCommData.msgSn} to list");
      groupInfo.lstMsg.add(msg);

      var map = await changeToGroupMessageMap(msg);

      if (map.isNotEmpty &&
          chatType == 2 &&
          groupInfo.groupId == pbMessage.pbCommData.groupId) {
        final message = types.Message.fromJson(map);
        chatMessages.insert(0, message);
        updateWidget();
      }
    }
    // rcvMsgCount++;
  }

  Future<void> addPrivateMsgToList(ChatPrivateData cpData,
      {bool freshView = true}) async {
    if (chatType == 1) {
      log("msg state=${cpData.msgStatus.value} ${GetMsgState(cpData.msgStatus)} sn:${cpData.msgSn} ${(cpData.pbServiceMsg as ChatText).text}");

      var map = await changeToMessageMap(cpData);
      final message = types.Message.fromJson(map);
      chatMessages.insert(0, message);

      if (cpData.srcId != AppUserInfo.instance.imId &&
          cpData.pbMsg.pbName != pbNameMsgReceipt &&
          cpData.msgStatus.value < MSG_STATE.READ.value) {
        // 已读通知
        sendReceiptMsg(cpData.pbMsg.pbCommData,
            state: MSG_STATE.READ, beginTime: Int64());

        // todo 改造外服务端rsp收到再改状态
        cpData.msgStatus = MSG_STATE.READ;
        DBUpdateMsgState(cpData.msgSn, MSG_STATE.READ, EnMsgFrom.local);
      }

      if (freshView && finfo.friendId == cpData.friendId.toInt()) {
        updateWidget();
      }
    }
  }

  void updateWidget() {
    setState(() {});
  }
}
