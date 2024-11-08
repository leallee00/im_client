import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/db/database.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/pages/chat_index/contact_group_list.dart';
import 'package:quliao/pages/chat_index/group_name_widget.dart';
import 'package:quliao/pages/chat_index/user_nickname_widget.dart';
import 'package:quliao/pages/chat_private/chat.dart';
import 'package:quliao/pages/windows/comm_dialog.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart';
import 'package:quliao/pub/pub-def.dart';
import 'package:quliao/widgets/avatar.dart';
import 'package:quliao/widgets/radio_button.dart';

import '../../models/user/friendInfo.dart';

class SelectChatList extends StatefulWidget {
  const SelectChatList({
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
  State<StatefulWidget> createState() => _SelectChatListState();
}

class _SelectChatListState extends State<SelectChatList> {
  final List<ChatItemFinfo> recentConversations = <ChatItemFinfo>[];

  bool _isMultiSelect = false;
  Map<int, ChatItemFinfo> dataMap = {};

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
  void initState() {
    super.initState();
    _getRecentConversations();
  }

  Future<void> _getRecentConversations() async {
    final dataList = await AppDatabase().getChatListDao()?.query() ?? [];
    for (final item in dataList) {
      final conversation = ChatItemFinfo();
      conversation.chatItem.initWithMap(item);

      if (conversation.chatItem.chatType == CHAT_TYPE.PRIVATE) {
        conversation.finfo = FriendInfo();
      } else {
        conversation.ginfo = GroupInfo();
      }

      recentConversations.add(conversation);
    }
    setState(() {});
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
          '选择一个聊天',
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
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimens.gap_dp16),
                child: const Text(
                  '最近聊天',
                  style: TextStyle(color: Colors.black87),
                ),
              ),
              Expanded(child: Gaps.empty),
              TextButton(
                onPressed: () {
                  if (Platform.isWindows || Platform.isMacOS) {
                    MyAlertDialog().show<bool>(
                      child: ContactGroupList(
                        messages: widget.messages,
                        conversationId: widget.conversationId,
                        mergeForward: widget.mergeForward,
                        privateChat: widget.privateChat,
                      ),
                    ).then((value) {
                      if (value ?? false) {
                        Navigator.pop(context, true);
                      }
                    });
                    return;
                  }
                  Navigator.of(context).push<bool>(
                    MaterialPageRoute(
                      builder: (context) {
                        return ContactGroupList(
                          messages: widget.messages,
                          conversationId: widget.conversationId,
                          mergeForward: widget.mergeForward,
                          privateChat: widget.privateChat,
                        );
                      },
                    ),
                  ).then((value) {
                    if (value ?? false) {
                      Navigator.pop(context, true);
                    }
                  });
                },
                child: Text(
                  '创建聊天',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              Gaps.hGap10,
            ],
          ),
          Expanded(
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return RecentConversationItem(
                  data: recentConversations[index],
                  isMultiSelect: _isMultiSelect,
                  isChecked: dataMap
                      .containsKey(recentConversations[index].chatItem.chatId),
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
              itemCount: recentConversations.length,
            ),
          ),
        ],
      ),
    );
  }
}

class RecentConversationItem extends StatefulWidget {
  const RecentConversationItem({
    super.key,
    required this.data,
    this.isMultiSelect = false,
    this.isChecked = false,
    this.onTap,
  });

  final ChatItemFinfo data;
  final bool isMultiSelect;
  final bool isChecked;
  final Function(ChatItemFinfo)? onTap;

  @override
  State<StatefulWidget> createState() => _RecentConversationItemState();
}

class _RecentConversationItemState extends State<RecentConversationItem> {
  late ChatItemFinfo chatItem;

  @override
  void initState() {
    super.initState();
    chatItem = widget.data;
    _refreshConversationInfo();
  }

  bool get privateChat => chatItem.chatItem.chatType == CHAT_TYPE.PRIVATE;

  String get avatarUrl =>
      privateChat ? chatItem.finfo.userInfo.avatar : chatItem.ginfo.avatar;

  String get conversationName => privateChat
      ? chatItem.finfo.userInfo.nickName + chatItem.getName()
      : chatItem.ginfo.name + chatItem.getName();

  bool get showAvatar => avatarUrl.contains('http') || conversationName.isEmpty;

  Future<void> _refreshConversationInfo() async {
    if (chatItem.chatItem.chatType == CHAT_TYPE.PRIVATE) {
      final friendInfo = FriendInfo();
      friendInfo.LoadFriendData(chatItem.chatItem.chatId).then((value) {
        chatItem.finfo = friendInfo;
        setState(() {});
      });
    } else {
      final groupInfo = GroupInfo();
      groupInfo.fetchGroupData(chatItem.chatItem.chatId).then((value) {
        chatItem.ginfo = groupInfo;
        setState(() {});
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.surface,
      child: InkWell(
        onTap: () {
          widget.onTap?.call(widget.data);
        },
        child: Container(
          height: Dimens.gap_dp1 * 72,
          padding: EdgeInsets.symmetric(
            horizontal: Dimens.gap_dp20,
          ),
          child: Row(
            children: [
              if (widget.isMultiSelect)
                Padding(
                  padding: EdgeInsets.only(right: Dimens.gap_dp10),
                  child: CheckBoxButton(
                    isChecked: widget.isChecked,
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
                                friendInfo: chatItem.finfo,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: const Color(0xFF333333),
                                  fontSize: Dimens.font_sp14,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            : GroupNameWidget(
                                groupId: chatItem.ginfo.groupId.toInt(),
                                groupDetails: GroupDetailRsp(
                                  name: chatItem.getName(),
                                  remark: chatItem.ginfo.remark,
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
