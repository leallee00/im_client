import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/config/images.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/models/msg_struct.dart';
import 'package:quliao/pages/chat_group/flyer_chat/chat_group_change_to_message.dart';
import 'package:quliao/pages/chat_index/at_tip_widget.dart';
import 'package:quliao/pages/chat_index/group_name_widget.dart';
import 'package:quliao/pages/chat_index/user_nickname_widget.dart';
import 'package:quliao/pages/chat_private/flyer_chat/chat_private_change_to_message.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/widgets/avatar.dart';
import 'package:quliao/widgets/rh_extended_image.dart';
import '../../event/event_bus.dart';
import '../../event/event_modul.dart';
import '../../models/user/friendInfo.dart';
import '../../models/user/userinfo.dart';
import '../../mywedgits/badger/badger.dart';
import '../../pub/func.dart';
import '../../pub/pub-def.dart';
import '../chat_private/chat.dart';
import 'conversation_avatar.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

import 'msg_badger_widget.dart';

class MsgSessionWidget extends StatefulWidget {
  // static const name = "ChatIndex";
  const MsgSessionWidget(
    this.chatItem, {
    super.key,
    this.background,
    this.selected = false,
    this.onTap,
  });

  final ChatItemFinfo chatItem;
  final Color? background;
  final bool selected;
  final GestureTapCallback? onTap;

  @override
  MsgSessionWidgetState createState() => new MsgSessionWidgetState();
}

// var pbMsgChatTextName = ChatText().info_.qualifiedMessageName;

class MsgSessionWidgetState extends State<MsgSessionWidget> {
  late ChatItemFinfo chatItem;
  late var sessionId;
  late var msgCountType;
  late StreamSubscription<EventOnNetMsg> msgStreamSub;
  late StreamSubscription<ClearHistoryMessage> clearHistoryMsgStreamSub;

  types.Status messageStatus = types.Status.sent;

  bool get _isPrivateChat => chatItem.chatItem.chatType == CHAT_TYPE.PRIVATE;

  Future<void> _refreshConversationInfo() async {
    if (chatItem.chatItem.chatType == CHAT_TYPE.PRIVATE) {
      final friendInfo = FriendInfo();
      friendInfo.LoadFriendData(sessionId).then((value) {
        chatItem.finfo = friendInfo;
        if (mounted) {
          setState(() {});
        }
      });
    } else {
      final groupInfo = GroupInfo();
      groupInfo.fetchGroupData(sessionId).then((value) {
        chatItem.ginfo = groupInfo;
        if (mounted) {
          setState(() {});
        }
      });
    }
  }

  @override
  void initState() {
    super.initState();
    chatItem = widget.chatItem;
    sessionId = chatItem.chatItem.chatId;

    _getLatestMessage();

    if (chatItem.chatItem.chatType == CHAT_TYPE.PRIVATE) {
      msgCountType = ENMsgCountType.privateMsgCount;
    } else if (chatItem.chatItem.chatType == CHAT_TYPE.GROUP) {
      msgCountType = ENMsgCountType.groupMsgCount;
    }

    clearHistoryMsgStreamSub =
        eventBus.on<ClearHistoryMessage>().listen((event) {
      if (event.chatId == chatItem.chatItem.chatId) {
        setState(() {
          chatItem.chatItem.msgTips = '';
          chatItem.chatItem.msgTime = DateTime.now();
        });
      }
    });

    msgStreamSub = eventBus.on<EventOnNetMsg>().listen((event) async {
      if (event.pbMsg.pbCommData.srcId.toInt() != chatItem.finfo.friendId &&
          event.pbMsg.pbCommData.aimId.toInt() != chatItem.finfo.friendId) {
        return;
      }

      // 获取消息后主要是更新tips
      if (event.pbMsg.pbName == pbMsgChatTextName ||
          event.pbMsg.pbCommData.groupId > 0 ||
          event.pbMsg.pbName == 'pb_pub.MsgRecallReq' ||
          event.pbMsg.pbName == 'pb_pub.MsgRecallRsp') {
        if (event.pbMsg.pbName == 'pb_pub.MsgRecallReq') {
          MsgRecallReq msgRecallRsp = MsgRecallReq()
            ..mergeFromBuffer(event.pbMsg.pbData);
          _updateMsgType(event.pbMsg, msgRecallRsp.msgSn).then((value) {
            if (value) {
              eventBus.fire(ReloadChatListData());
            }
          });
        } else if (event.pbMsg.pbName == 'pb_pub.MsgRecallRsp') {
          MsgRecallRsp msgRecallRsp = MsgRecallRsp()
            ..mergeFromBuffer(event.pbMsg.pbData);
          _updateMsgType(event.pbMsg, msgRecallRsp.msgSn).then((value) {
            if (value) {
              eventBus.fire(ReloadChatListData());
            }
          });
        } else {
          if (_isPrivateChat) {
            if (sessionId == event.pbMsg.pbCommData.srcId ||
                sessionId == event.pbMsg.pbCommData.aimId) {
              await chatItem.finfo.LoadFriendData(
                sessionId,
                userSourceVersion: event.pbMsg.pbCommData.userSourceVersion,
              );
              _updateMsgTips(event.pbMsg);
            }
          } else {
            if (sessionId == event.pbMsg.pbCommData.groupId) {
              _updateMsgTips(event.pbMsg);
            }
          }
        }
      }
    });

    _refreshConversationInfo();
  }

  Future<bool> _updateMsgType(PBMessage pbMessage, Int64 msgSn) async {
    if (pbMessage.pbCommData.groupId > 0) {
      final String condition = 'msgSn=$msgSn';
      return 1 ==
          await dbMsg?.update(
            tbGroupMsgTable,
            {
              "msgType": TextChatType.RECALL.value,
            },
            where: condition,
          );
    } else {
      final String condition = 'msgSn=$msgSn';
      return 1 ==
          await dbMsg?.update(
            tbPrivateMsgTable,
            {
              "msgType": TextChatType.RECALL.value,
            },
            where: condition,
          );
    }
  }

  Future<void> _updateMsgTips(PBMessage pbMessage) async {
    if (pbMessage.pbName.isEmpty) {
      return;
    }
    String tips = await tipsFromMsg(pbMessage);
    // LoggerManager().debug('tips ===================> $tips');
    if (tips.isNotEmpty) {
      chatItem.chatItem.msgTips = tips;

      chatItem.chatItem.msgTime = DateTime.fromMillisecondsSinceEpoch(
        pbMessage.pbCommData.time.toInt() * 1000,
      );
      _getLatestMessage();
    }
  }

  Future<void> _getLatestMessage() async {
    dbMsg
        ?.query(
      _isPrivateChat ? tbPrivateMsgTable : tbGroupMsgTable,
      where: _isPrivateChat ? 'friendId=?' : 'groupId=?',
      whereArgs: [sessionId],
      limit: 20,
      offset: 0,
      orderBy: "msgTime desc",
    )
        .then((value) async {
      if (value.isNotEmpty) {
        if (_isPrivateChat) {
          final chatPrivateData = ChatPrivateData()..initWithMap(value.first);
          final messageMap = await changeToMessageMap(chatPrivateData);
          // LoggerManager().debug('_getLatestMessage messageMap ===> $messageMap');
          final newTips = await _updateMsgTipsByLatestMessage(messageMap);
          // LoggerManager().debug(
          //     '_getLatestMessage group messageMap ===> $messageMap newTips: $newTips');
          if (mounted) {
            setState(() {
              chatItem.chatItem.msgTips = newTips;
              if (null != messageMap['author']['imageUrl']) {
                chatItem.finfo.userInfo.avatar =
                    messageMap['author']['imageUrl'];
              }
            });
          }
        } else {
          final chatGroupData = ChatGroupData();
          await chatGroupData.initWithMap(value.first);
          final messageMap = await changeToGroupMessageMap(chatGroupData);

          final newTips = await _updateMsgTipsByLatestMessage(messageMap);
          // LoggerManager().debug(
          //     '_getLatestMessage group messageMap ===> $messageMap newTips: $newTips');
          if (mounted) {
            setState(() {
              chatItem.chatItem.msgTips = newTips;
            });
          }
        }
      }
    });
  }

  Future<String> _updateMsgTipsByLatestMessage(
    Map<String, dynamic> messageMap,
  ) async {
    final String typeValue = messageMap['type'] as String;
    if (typeValue == 'image') {
      return '[图片]';
    } else if (typeValue == 'audio') {
      return '[语音]';
    } else if (typeValue == 'file') {
      return '[文件]';
    } else if (typeValue == 'video') {
      return '[视频]';
    } else if (typeValue == 'custom') {
      if (null != messageMap['metadata']) {
        final medaData = messageMap['metadata'];
        if (medaData['customType'] == 'mergeForward') {
          return '[聊天记录]';
        } else if (medaData['customType' == 'businessCard']) {
          return medaData['text'];
        }
      }
      return '[自定义消息]';
    } else {
      return messageMap['text'].toString();
    }
  }

  @override
  void dispose() {
    msgStreamSub.cancel();
    clearHistoryMsgStreamSub.cancel();
    super.dispose();
  }

  Future<void> update(ChatItemFinfo chatItem) async {
    setState(() {
      this.chatItem = chatItem;
    });
  }

  bool get privateChat => chatItem.chatItem.chatType == CHAT_TYPE.PRIVATE;

  Widget getAvatar() {
    return privateChat
        ? avatar(chatItem.finfo.userInfo.avatar, 40, 40,
            nick: chatItem.finfo.userInfo.nickName + chatItem.getName())
        : avatar(chatItem.ginfo.avatar, 40, 40,
            nick: chatItem.ginfo.name + chatItem.getName());
  }

  String get avatarUrl =>
      privateChat ? chatItem.finfo.userInfo.avatar : chatItem.ginfo.avatar;

  String get conversationName => privateChat
      ? chatItem.finfo.userInfo.nickName + chatItem.getName()
      : chatItem.ginfo.name + chatItem.getName();

  bool get showAvatar => avatarUrl.contains('http') || conversationName.isEmpty;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: widget.background ?? Theme.of(context).colorScheme.surface,
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          height: Dimens.gap_dp1 * 72,
          padding: EdgeInsets.symmetric(
            horizontal: Dimens.gap_dp20,
          ),
          child: Row(
            children: [
              UserAvatar(avatar: avatarUrl, name: conversationName),
              Gaps.hGap10,
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: Dimens.gap_dp10,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                if (!privateChat)
                                  Padding(
                                    padding:
                                        EdgeInsets.only(right: Dimens.gap_dp4),
                                    child: Icon(
                                      Icons.group,
                                      size: 20,
                                      color: widget.selected
                                          ? Theme.of(context)
                                              .colorScheme
                                              .surface
                                          : Theme.of(context)
                                              .colorScheme
                                              .primary,
                                    ),
                                  ),
                                Expanded(
                                  child: privateChat
                                      ? UserNicknameWidget(
                                          friendInfo: chatItem.finfo,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: widget.selected
                                                ? Theme.of(context)
                                                    .colorScheme
                                                    .surface
                                                : const Color(0xFF333333),
                                            fontSize: Dimens.font_sp14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )
                                      : GroupNameWidget(
                                          groupId:
                                              chatItem.ginfo.groupId.toInt(),
                                          groupDetails: GroupDetailRsp(
                                            name: chatItem.getName(),
                                            remark: chatItem.ginfo.remark,
                                          ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: widget.selected
                                                ? Theme.of(context)
                                                    .colorScheme
                                                    .surface
                                                : const Color(0xFF333333),
                                            fontSize: Dimens.font_sp14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            GetChatTime(chatItem.chatItem.msgTime),
                            style: TextStyle(
                              color: widget.selected
                                  ? Theme.of(context).colorScheme.surface
                                  : const Color(0xFFAAAAAA),
                              fontSize: Dimens.font_sp12,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          if (!privateChat)
                            AtTipWidget(
                              groupId: chatItem.ginfo.groupId.toInt(),
                            ),
                          Expanded(
                            child: Text(
                              chatItem.chatItem.msgTips,
                              softWrap: false,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: widget.selected
                                    ? Theme.of(context).colorScheme.surface
                                    : const Color(0xFF666666),
                                fontSize: Dimens.font_sp14,
                              ),
                            ),
                          ),
                          // MyMsgBadgerPage(sessionId, msgCountType),
                          MsgBadgerWidget(key: Key('$sessionId'),conversationId: sessionId),
                        ],
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
