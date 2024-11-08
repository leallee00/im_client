import 'dart:async';

import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:protobuf/protobuf.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/msg_handler_mgr.dart';
import 'package:quliao/pages/chat_group/controller/chat_group_controller.dart';
import 'package:quliao/pages/chat_index/user_nickname_widget.dart';
import 'package:quliao/pages/chat_private/chat.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pb/pb_pub/error_code.pbenum.dart';
import 'package:quliao/pb/pb_pub/service.pbenum.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/pub/pub-def.dart';
import 'package:quliao/widgets/avatar.dart';
import 'package:quliao/widgets/radio_button.dart';

import '../../net/socket.dart';
import 'group_name_widget.dart';

class ContactGroupList extends StatefulWidget {
  const ContactGroupList({
    super.key,
    required this.messages,
    required this.conversationId,
    this.mergeForward = false,
    this.privateChat = true,
  });

  final List<Message> messages;
  final bool mergeForward;
  final bool privateChat;
  final int conversationId;

  @override
  State<StatefulWidget> createState() => _ContactGroupListState();
}

class _ContactGroupListState extends State<ContactGroupList> {
  final List<ChatItemFinfo> conversations = <ChatItemFinfo>[];
  final List<FriendInfo> _contacts = [];
  final List<GroupInfo> _groups = [];
  late StreamSubscription<EventOnNetMsg> msgStreamSub;
  var msgHandlerMgr = MsgHandlerMgr();

  bool _isMultiSelect = false;
  Map<int, ChatItemFinfo> dataMap = {};

  @override
  void initState() {
    super.initState();
    getContacts();
    handleMsg();
  }

  void handleMsg() {
    msgStreamSub = eventBus.on<EventOnNetMsg>().listen((event) {
      // log("获得一个消息:${event.pbMsg.pbName}");
      if (event.pbMsg.errCode != ErrCode.SUCCESS.value) {
        showToast(event.pbMsg.errDesc);
        // log("get a err msg ${event.pbMsg.pbName} ${event.pbMsg.errCode} ${event.pbMsg.errDesc}");
        return;
      }
      if (event.pbMsg.pbName != "pb_pub.HeartBeat") {
        log("get a msg ${event.pbMsg.pbName} ${event.pbMsg.pbCommData.msgSn}");
      }
      msgHandlerMgr.onMsg(event.pbMsg, event.enMsgFrom);
    });

    /// 获取群列表
    Client.instance.sendMsg(
      GroupsReq(),
      Int64(AppUserInfo.instance.imId),
      MakePBCommData(toService: Service.group),
    );

    // 注册消息处理句柄
    msgHandlerMgr.RegMsgHandler(GroupsRsp(), (
      GeneratedMessage msg,
      PBMessage pbMessage,
      EnMsgFrom enMsgFrom,
    ) {
      if (msg is GroupsRsp) {
        List<GroupInfo> groups = <GroupInfo>[];

        for (var element in msg.groups) {
          log("群聊列表信息 ${element.name}");
          // var inList = false;

          groups.add(
            GroupInfo()
              ..groupId = element.groupId
              ..avatar = element.avatar
              ..name = element.name,
          );
        }
        _groups.addAll(groups);
        if (mounted) {
          setState(() {});
        }
      }
      return true;
    });
  }

  Future<void> getContacts() async {
    GetFriends().then((value) {
      if (value.isNotEmpty) {
        _contacts.addAll(value);
        if (mounted) {
          setState(() {});
        }
      }
    });
  }

  Future<void> _onItemTap(ChatItemFinfo data) async {
    if (_isMultiSelect) {
      if (dataMap.containsKey(data.chatItem.chatId)) {
        dataMap.remove(data.chatItem.chatId);
      } else {
        dataMap[data.chatItem.chatId] = data;
      }
      setState(() {});
    } else {
      dataMap[data.chatItem.chatId] = data;
      if (widget.mergeForward) {
        GlobalController.to.mergeForwardMessage(
          dataMap,
          widget.messages,
          conversationId: widget.conversationId,
          privateChat: widget.privateChat,
        );
      } else {
        GlobalController.to.forwardMessage(
          dataMap,
          widget.messages,
          conversationId: widget.conversationId,
          privateChat: widget.privateChat,
        );
      }
      Navigator.pop(context, true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.surface,
        leading: const BackButton(
          color: Colors.black87,
        ),
        title: const Text(
          '选择聊天',
          style: TextStyle(color: Colors.black87),
        ),
        actions: [
          TextButton(
            onPressed: () {
              if (dataMap.isNotEmpty) {
                /// 完成
                if (widget.mergeForward) {
                  GlobalController.to.mergeForwardMessage(
                    dataMap,
                    widget.messages,
                    conversationId: widget.conversationId,
                    privateChat: widget.privateChat,
                  );
                } else {
                  GlobalController.to.forwardMessage(
                    dataMap,
                    widget.messages,
                    conversationId: widget.conversationId,
                    privateChat: widget.privateChat,
                  );
                }
                Navigator.pop(context, true);
              } else {
                setState(() {
                  _isMultiSelect = !_isMultiSelect;
                });
              }
            },
            child: Text(
              dataMap.isNotEmpty
                  ? '完成'
                  : _isMultiSelect
                      ? '单选'
                      : '多选',
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final ChatItemFinfo itemInfo = ChatItemFinfo();
                itemInfo.finfo = _contacts[index];
                itemInfo.chatItem = ChatItem();
                itemInfo.chatItem.chatId = _contacts[index].friendId;
                itemInfo.chatItem.chatType = CHAT_TYPE.PRIVATE;
                return _ContactGroupItem(
                  data: itemInfo,
                  isMultiSelect: _isMultiSelect,
                  isChecked: dataMap.containsKey(itemInfo.finfo.friendId),
                  onTap: _onItemTap,
                );
              },
              separatorBuilder: (context, index) {
                return Container(
                  width: double.infinity,
                  height: Dimens.gap_dp1 / 2,
                  color: Theme.of(context).dividerColor,
                  margin: EdgeInsets.only(left: Dimens.gap_dp10 * 7),
                );
              },
              itemCount: _contacts.length,
            ),
            Container(
              width: double.infinity,
              height: Dimens.gap_dp1 / 2,
              color: Theme.of(context).dividerColor,
              margin: EdgeInsets.only(left: Dimens.gap_dp10 * 7),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final ChatItemFinfo itemInfo = ChatItemFinfo();
                itemInfo.chatItem = ChatItem();
                itemInfo.chatItem.chatType = CHAT_TYPE.GROUP;
                itemInfo.chatItem.chatId = _groups[index].groupId.toInt();
                itemInfo.ginfo = _groups[index];
                return _ContactGroupItem(
                  data: itemInfo,
                  isMultiSelect: _isMultiSelect,
                  isChecked:
                      dataMap.containsKey(_groups[index].groupId.toInt()),
                  onTap: _onItemTap,
                );
              },
              separatorBuilder: (context, index) {
                return Container(
                  width: double.infinity,
                  height: Dimens.gap_dp1 / 2,
                  color: Theme.of(context).dividerColor,
                  margin: EdgeInsets.only(left: Dimens.gap_dp10 * 7),
                );
              },
              itemCount: _groups.length,
            ),
          ],
        ),
      ),
    );
  }
}

class _ContactGroupItem extends StatelessWidget {
  const _ContactGroupItem({
    required this.data,
    this.isMultiSelect = false,
    this.isChecked = false,
    this.onTap,
  });

  final ChatItemFinfo data;
  final bool isMultiSelect;
  final bool isChecked;
  final Function(ChatItemFinfo)? onTap;

  bool get privateChat => data.chatItem.chatType == CHAT_TYPE.PRIVATE;

  String get avatarUrl =>
      privateChat ? data.finfo.userInfo.avatar : data.ginfo.avatar;

  String get conversationName => privateChat
      ? data.finfo.userInfo.nickName + data.getName()
      : data.ginfo.name + data.getName();

  bool get showAvatar => avatarUrl.contains('http') || conversationName.isEmpty;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.surface,
      child: InkWell(
        onTap: () {
          onTap?.call(data);
        },
        child: Container(
          height: Dimens.gap_dp1 * 72,
          padding: EdgeInsets.symmetric(
            horizontal: Dimens.gap_dp20,
          ),
          child: Row(
            children: [
              if (isMultiSelect)
                Padding(
                  padding: EdgeInsets.only(right: Dimens.gap_dp10),
                  child: CheckBoxButton(
                    isChecked: isChecked,
                    // onChanged: (value) {},
                  ),
                ),
              UserAvatar(avatar: avatarUrl, name: conversationName),
              Gaps.hGap10,
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: Dimens.gap_dp10,
                  ),
                  child: Row(
                    children: [
                      if (!privateChat)
                        Padding(
                          padding: EdgeInsets.only(right: Dimens.gap_dp4),
                          child: Icon(
                            Icons.group,
                            size: 20,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      Expanded(
                        child: privateChat
                            ? UserNicknameWidget(
                                friendInfo: data.finfo,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: const Color(0xFF333333),
                                  fontSize: Dimens.font_sp14,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            : GroupNameWidget(
                                groupId: data.ginfo.groupId.toInt(),
                                groupDetails: GroupDetailRsp(
                                  name: data.getName(),
                                  remark: data.ginfo.remark,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: const Color(0xFF333333),
                                  fontSize: Dimens.font_sp14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
