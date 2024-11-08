import 'dart:convert';

import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quliao/db/database.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/db/friend.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/global/controller/im_controller.dart';
import 'package:quliao/global/controller/unread_message_controller.dart';
import 'package:quliao/global/models/group_msg_sn.dart';
import 'package:quliao/global/repository/user_repository.dart';
import 'package:quliao/models/Global.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/models/user/userinfo.dart';
import 'package:quliao/mywedgits/badger/badger.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/chat_private/chat.dart';
import 'package:quliao/pb/pb_msg/call_scene/call_scene.pb.dart';
import 'package:quliao/pb/pb_msg/friend/friend.pb.dart' as $friend;
import 'package:quliao/pb/pb_msg/gate/gate.pb.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart' as $group;
import 'package:quliao/pb/pb_msg/offline_msg/offlineMsg.pb.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pb/pb_pub/error_code.pbenum.dart';
import 'package:quliao/pb/pb_pub/service.pb.dart';
import 'package:quliao/pub/config.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:protobuf/protobuf.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/utils/storage/index.dart';

import '../models/sound_effect/sound_effect.dart';
import '../models/sound_effect/type_def.dart';
import '../pb/pb_msg/group/group.pb.dart';
import '../pub/pub-def.dart';

void initCommMsgHandlers() {
  Client.instance.msgHandlerMgr.RegMsgHandler(CommRsp(), onCommRsp);
  Client.instance.msgHandlerMgr.RegMsgHandler(MsgReceipt(), onMsgReceipt);
  // Client.instance.msgHandlerMgr
  //     .RegMsgHandler(ReadOfflineMsgRsp(), onOfflineMsgRsp);
  Client.instance.msgHandlerMgr.RegMsgHandler(ChatText(), onChatText,
      soundEffect: SoundEffectType.msgReceived);
  Client.instance.msgHandlerMgr.RegMsgHandler(GroupChat(), onGroupChat,
      soundEffect: SoundEffectType.msgReceived);
  Client.instance.msgHandlerMgr.RegMsgHandler(KickOffUser(), _onKickOffUser);
  Client.instance.msgHandlerMgr.RegMsgHandler(HeartBeat(), _onHeartBeat);
  Client.instance.msgHandlerMgr.RegMsgHandler(LoginRsp(), _onLoginRsp);
  Client.instance.msgHandlerMgr.RegMsgHandler(DialReq(), _onDialReq); // 打电话弹出窗口

  Client.instance.msgHandlerMgr.RegMsgHandler($group.InviteReq(), _onInviteReq,
      soundEffect: SoundEffectType.msgReceived); // 邀请入群
  Client.instance.msgHandlerMgr.RegMsgHandler($group.ApplyReq(), _onApplyReq,
      soundEffect: SoundEffectType.msgReceived); // 申请入群
  Client.instance.msgHandlerMgr.RegMsgHandler(
      $group.QuitNotify(), _onQuitNotify,
      soundEffect: SoundEffectType.msgReceived);
  Client.instance.msgHandlerMgr.RegMsgHandler(
      $group.GroupDisbandedNotify(), _onGroupDisbandedNotify,
      soundEffect: SoundEffectType.msgReceived);
  Client.instance.msgHandlerMgr.RegMsgHandler(
      $group.NameChangeNotify(), _onGroupNameChangeNotify,
      soundEffect: SoundEffectType.msgReceived);
  Client.instance.msgHandlerMgr.RegMsgHandler(
      $group.AvatarChangeNotify(), _onGroupAvatarChangeNotify,
      soundEffect: SoundEffectType.msgReceived);

  Client.instance.msgHandlerMgr.RegMsgHandler($group.QuitRsp(), _onQuitRsp,
      soundEffect: SoundEffectType.msgReceived);
  Client.instance.msgHandlerMgr.RegMsgHandler(
      $friend.ApplyReq(), _onFriendApplyReq,
      soundEffect: SoundEffectType.msgReceived);
  Client.instance.msgHandlerMgr.RegMsgHandler(
      $friend.ApplyAnswerReq(), _onApplyAnswerReq,
      soundEffect: SoundEffectType.msgReceived);
  Client.instance.msgHandlerMgr
      .RegMsgHandler($friend.ApplyAnswerRsp(), _onApplyAnswerRsp);
  Client.instance.msgHandlerMgr
      .RegMsgHandler(FetchNewHistoryMsgRsp(), _fetchHistoryMsg);
  Client.instance.msgHandlerMgr.RegMsgHandler(
    FetchSysNotifyMsgListRsp(),
    _fetchSysNotifyMsg,
  );
  Client.instance.msgHandlerMgr
      .RegMsgHandler(MsgRecallRsp(), _handleMsgRecallRsp);
  Client.instance.msgHandlerMgr.RegMsgHandler(
      ReadyForGroupsNewMsgInfoRsp(), _handleReadyForGroupsNewMsgInfoReq);
  Client.instance.msgHandlerMgr.RegMsgHandler(
    GroupsNewMsgInfoNotify(),
    _handleGroupsNewMsgInfoNotify,
  );
  Client.instance.msgHandlerMgr.RegMsgHandler(
    GroupOfflineMsgStatusChangeNotify(),
    _handleGroupOfflineMsgStatusChangeNotify,
  );
  Client.instance.msgHandlerMgr
      .RegMsgHandler(OneGroupHistoryMsgReq(), _handleGroupMsgRsp);
  Client.instance.msgHandlerMgr.RegMsgHandler(
    OfflineMsgStatueChangeNotify(),
    _handleOfflineMsgStatueChangeNotify,
  );
}

bool _handleOfflineMsgStatueChangeNotify(
    GeneratedMessage msg, PBMessage pbMsg, EnMsgFrom enMsgFrom) {
  if (msg is OfflineMsgStatueChangeNotify) {
    LoggerManager().debug(
        '_handleOfflineMsgStatueChangeNotify ======> session: ${msg.session}');
    final statusChangeItems = msg.statusChangeItems;
    for (final item in statusChangeItems) {
      AppDatabase()
          .privateMsgDao
          ?.updateMsgStatus(
            item.msgSn.toInt(),
            msgState: item.msgCurStatus,
          )
          .then((value) {
        LoggerManager().debug(
            '_handleOfflineMsgStatueChangeNotify msgSn: ${item.msgSn} ==== value: $value');
      });
    }

    if (statusChangeItems.isNotEmpty) {
      final req = OfflineMsgStatueChangeNotifyReceived(
        session: msg.session,
      );
      Client.instance.sendMsg(
        req,
        Int64(AppUserInfo().imId),
        MakePBCommData(toService: Service.offline_msg)
          ..srcClientType = AppUserInfo().clientType,
      );
    }
  }
  return true;
}

bool _handleGroupMsgRsp(
    GeneratedMessage msg, PBMessage pbMsg, EnMsgFrom enMsgFrom) {
  if (msg is $group.OneGroupHistoryMsgRsp) {
    msg.mergeFromBuffer(pbMsg.pbData);
    $group.GroupHistoryMsg historyMsg = msg.groupHistoryMsg;
    log("消息查询成功 =================== ${historyMsg.toString()}");
  }
  return true;
}

bool _handleGroupOfflineMsgStatusChangeNotify(
  GeneratedMessage msg,
  PBMessage pbMsg,
  EnMsgFrom enMsgFrom,
) {
  if (msg is GroupOfflineMsgStatusChangeNotify) {
    final statusChangeItems = msg.statusChangeItems;
    LoggerManager().debug(
        '_handleGroupOfflineMsgStatusChangeNotify ======> session: ${msg.session}');
    for (final item in statusChangeItems) {
      AppDatabase()
          .groupMessageDao
          ?.updateMsgStatus(
            item.msgSn.toInt(),
            msgState: item.msgCurStatus,
          )
          .then((value) {
        LoggerManager().debug(
            '_handleGroupOfflineMsgStatusChangeNotify msgSn: ${item.msgSn} ==== value: $value');
      });
    }

    if (statusChangeItems.isNotEmpty) {
      final req = GroupOfflineMsgStatusChangeNotifyReceived(
        session: msg.session,
      );
      Client.instance.sendMsg(
        req,
        Int64(AppUserInfo().imId),
        MakePBCommData(toService: Service.group)
          ..srcClientType = AppUserInfo().clientType,
      );
    }
  }
  return true;
}

bool _handleGroupsNewMsgInfoNotify(
  GeneratedMessage msg,
  PBMessage pbMsg,
  EnMsgFrom enMsgFrom,
) {
  if (msg is GroupsNewMsgInfoNotify) {
    msg.mergeFromBuffer(pbMsg.pbData);
    final groupIdMsgSnMap = <int, int>{};
    final groupIdLatestMsgSnMap = <int, int>{};
    for (var userGroupsNewMsgInfo in msg.infoItem) {
      var tmsg = PBMessage();
      PBCommData commData = PBCommData();
      commData.mergeFromBuffer(userGroupsNewMsgInfo.lastHisMsg.pbCommData);
      tmsg.pbCommData = commData;
      tmsg.pbData = userGroupsNewMsgInfo.lastHisMsg.pbData;
      tmsg.pbName = userGroupsNewMsgInfo.lastHisMsg.pbName;

      groupIdMsgSnMap[userGroupsNewMsgInfo.groupId.toInt()] =
          userGroupsNewMsgInfo.lastHisMsg.groupMsgSn.toInt();

      groupIdLatestMsgSnMap[userGroupsNewMsgInfo.groupId.toInt()] =
          userGroupsNewMsgInfo.lastHisMsg.msgSn.toInt();

      // final unreadMsgCount = userGroupsNewMsgInfo.newMsgCount;
      // if (unreadMsgCount > 1) {
      //   final groupId = userGroupsNewMsgInfo.groupId.toInt();
      //   ImController.to
      //       .getConversationById(groupId.toInt())
      //       .then((conversation) {
      //     if (null == conversation) {
      //       _createNewConversation(
      //         groupId,
      //         userGroupsNewMsgInfo,
      //         commData,
      //         tmsg,
      //         userGroupsNewMsgInfo.newMsgCount,
      //       );
      //     } else {
      //       UnReadMessageController.to.increaseUnReadMsgCount(
      //         commData,
      //         userGroupsNewMsgInfo.groupId.toInt(),
      //         msgCount: userGroupsNewMsgInfo.newMsgCount,
      //         groupOffline: true,
      //       );
      //     }
      //   });
      // }
      //
      // LoggerManager().debug(
      //   '_handleGroupsNewMsgInfoNotify pbName: ${tmsg.pbName} groupId: ${userGroupsNewMsgInfo.groupId} groupMsgSn: ${userGroupsNewMsgInfo.lastHisMsg.groupMsgSn} msgSn: ${userGroupsNewMsgInfo.lastHisMsg.msgSn} unreadMsgCount: $unreadMsgCount',
      // );
      //
      // /// 强制发送收到回执
      // sendReceiptMsg(
      //   commData,
      //   beginTime: Int64(0),
      //   state: MSG_STATE.RECEIVED,
      // );

      /// 派发处理
      Client().onNetMsg(tmsg, enMsgFrom);
    }

    var localMsgSnMap = GlobalController.to.groupIdMsgSnMap;
    final localLatestMsgSnMap = GlobalController.to.groupIdLatestMsgSnMap;
    if (localMsgSnMap.isNotEmpty) {
      for (final key in groupIdMsgSnMap.keys) {
        localMsgSnMap[key] = groupIdMsgSnMap[key]!;
      }
      final dataMap = <int, int>{};
      for (final key in localMsgSnMap.keys) {
        dataMap.putIfAbsent(key, () => localMsgSnMap[key]!);
      }
      GlobalController.to.groupIdMsgSnMap.value = dataMap;
    } else {
      GlobalController.to.groupIdMsgSnMap.value = groupIdMsgSnMap;
    }
    if (localLatestMsgSnMap.isNotEmpty) {
      for (final key in groupIdLatestMsgSnMap.keys) {
        localLatestMsgSnMap[key] = groupIdLatestMsgSnMap[key]!;
      }
      final dataMap = <int, int>{};
      for (final key in groupIdLatestMsgSnMap.keys) {
        dataMap.putIfAbsent(key, () => groupIdLatestMsgSnMap[key]!);
      }
      GlobalController.to.groupIdLatestMsgSnMap.value = dataMap;
    } else {
      GlobalController.to.groupIdLatestMsgSnMap.value = groupIdLatestMsgSnMap;
    }

    final list = <GroupMsgSn>[];
    for (final key in groupIdMsgSnMap.keys) {
      final item = GroupMsgSn(
        groupId: key,
        groupMsgSn: groupIdMsgSnMap[key]!,
        msgSn: groupIdLatestMsgSnMap[key]!,
      );
      list.add(item);
    }
    Storage.instance.setString(
      StorageKey.offlineMsgSn,
      jsonEncode(list),
    );
  }
  return true;
}

Future<void> _createNewConversation(
  int groupId,
  UserGroupsNewMsgInfo userGroupsNewMsgInfo,
  PBCommData commData,
  PBMessage pbMsg,
  int unreadMsgCount,
) async {
  bool isOwner = pbMsg.pbCommData.srcId.toInt() == AppUserInfo.instance.imId;
  String tips = await tipsFromGropMsg(pbMsg, isOwner);
  final lastHisMsg = userGroupsNewMsgInfo.lastHisMsg;
  final dataMap = <String, dynamic>{
    'chatId': groupId.toInt(),
    'msgSn': lastHisMsg.msgSn.toInt(),
    'groupMsgSn': lastHisMsg.groupMsgSn.toInt(),
    'chatType': CHAT_TYPE.GROUP.index,
    'newMsgCount': userGroupsNewMsgInfo.newMsgCount,
    'msgTips': tips,
    'msgTime': DateTime.fromMillisecondsSinceEpoch(
      lastHisMsg.createdAt.toInt() * 1000,
    ).toString(),
    'createTime': DateTime.fromMillisecondsSinceEpoch(
      lastHisMsg.createdAt.toInt() * 1000,
    ).toString(),
  };
  // final value = await ImController.to.insertOrUpdate(
  //   groupId.toInt(),
  //   dataMap: dataMap,
  //   conversationType: CHAT_TYPE.GROUP,
  // );
  // if (null != value) {
  //   LoggerManager().debug(
  //       'groupId ======> ${userGroupsNewMsgInfo.groupId.toInt()} \n newMsgCount ===========> ${userGroupsNewMsgInfo.newMsgCount}');
  //   UnReadMessageController.to.increaseUnReadMsgCount(
  //     commData,
  //     userGroupsNewMsgInfo.groupId.toInt(),
  //     msgCount: userGroupsNewMsgInfo.newMsgCount,
  //     groupOffline: true,
  //   );
  // }
}

bool _handleReadyForGroupsNewMsgInfoReq(
  GeneratedMessage msg,
  PBMessage pbMsg,
  EnMsgFrom enMsgFrom,
) {
  return true;
}

bool _handleMsgRecallRsp(
  GeneratedMessage msg,
  PBMessage pbMsg,
  EnMsgFrom enMsgFrom,
) {
  LoggerManager().debug('收到撤销消息响应');
  if (msg is MsgRecallRsp) {
    try {
      LoggerManager().debug(
          'msgSn: ${msg.msgSn} --- result: ${msg.result} groupId: ${pbMsg.pbCommData.groupId} srcId: ${pbMsg.pbCommData.srcId}');
      if (pbMsg.pbCommData.groupId > 0) {
        AppDatabase()
            .objectBox
            .getGroupMsg(
              pbMsg.pbCommData.groupId.toInt(),
              msg.msgSn.toInt(),
            )
            .then((groupMsg) {
          if (null != groupMsg) {
            groupMsg.recallUid = pbMsg.pbCommData.srcId.toInt();
            AppDatabase().objectBox.addGroupMsg(groupMsg).then(
              (value) async {
                if (value > 0) {
                  LoggerManager().error(
                    'MsgRecallReq 群消息更新成功 =========> groupId: ${pbMsg.pbCommData.groupId.toInt()} $value msgSn: ${msg.msgSn.toInt()}',
                  );
                }
              },
            ).onError(
              (error, _) {
                LoggerManager().error(
                    'MsgRecallReq 群消息更新失败 =========> groupId: ${pbMsg.pbCommData.groupId.toInt()} \n $error');
              },
            );
          }
        });
      } else {
        final String condition = 'msgSn=${msg.msgSn}';

        final friendId =
            (AppUserInfo.instance.imId == pbMsg.pbCommData.srcId.toInt())
                ? pbMsg.pbCommData.aimId.toInt()
                : pbMsg.pbCommData.srcId.toInt();

        AppDatabase()
            .objectBox
            .getPrivateMsg(
              friendId,
              msg.msgSn.toInt(),
            )
            .then((privateMsg) {
          if (null != privateMsg) {
            /// 更新撤回人的uid
            privateMsg.recallUid = pbMsg.pbCommData.srcId.toInt();
            AppDatabase().objectBox.addPrivateMsg(privateMsg).then(
              (value) async {
                if (value > 0) {
                  LoggerManager().error(
                    'MsgRecallReq 私聊消息更新成功 =========> friendId: $friendId $value msgSn: ${msg.msgSn.toInt()}',
                  );
                }
              },
            ).onError(
              (error, _) {
                LoggerManager().error(
                    'MsgRecallReq 私聊消息更新失败 =========> friendId: $friendId \n $error');
              },
            );
          }
        });

        dbMsg
            ?.update(
          tbPrivateMsgTable,
          {
            "msgType": TextChatType.RECALL.value,
            'recallUid': pbMsg.pbCommData.srcId.toInt(),
          },
          where: condition,
        )
            .then((value) {
          LoggerManager().debug('--------- $value');
        });
      }
    } catch (error) {}
  }
  return true;
}

bool _fetchSysNotifyMsg(
  GeneratedMessage msg,
  PBMessage pbMsg,
  EnMsgFrom enMsgFrom,
) {
  if (msg is FetchSysNotifyMsgListRsp) {
    msg.mergeFromBuffer(pbMsg.pbData);
    log("_fetchSysNotifyMsg 系统消息总数：${msg.totalCount.toInt()}");
    final msgSnMap = <Int64, HistoryMsg>{};
    for (var offlineMsg in msg.chatHisMsgs) {
      if (msgSnMap.containsKey(offlineMsg.msgSn)) {
        continue;
      }
      msgSnMap[offlineMsg.msgSn] = offlineMsg;
      var tmsg = PBMessage();

      PBCommData commData = PBCommData();
      commData.mergeFromBuffer(offlineMsg.pbCommData);
      commData.msgSn = offlineMsg.msgSn;
      commData.groupId = offlineMsg.groupId;
      commData.groupMsgSn = offlineMsg.groupId;
      commData.aimId = offlineMsg.aimId;
      commData.srcId = offlineMsg.srcId;
      commData.time = offlineMsg.createdAt;

      tmsg.pbCommData = commData;
      tmsg.pbData = offlineMsg.pbData;
      tmsg.pbName = offlineMsg.pbName;

      // HistoryMsg();

      /// 派发处理
      Client().onNetMsg(tmsg, enMsgFrom);
    }

    if (msg.chatHisMsgs.isNotEmpty && msg.chatHisMsgs.length >= 20) {
      // fetchHistoryMessage(beginId: msg.pbHisMsg.first.id.toInt());
      Future.delayed(
        const Duration(seconds: 2),
        () {
          fetchSysNotifyMsg(
            beginId: msg.chatHisMsgs.first.id.toInt(),
          );
        },
      );
    }
  }
  return true;
}

bool _fetchHistoryMsg(
    GeneratedMessage msg, PBMessage pbMsg, EnMsgFrom enMsgFrom) {
  if (msg is FetchNewHistoryMsgRsp) {
    msg.mergeFromBuffer(pbMsg.pbData);
    log("收到一个离线消息 =================== ${pbMsg.pbName} 包含消息数：${msg.pbHisMsg.length}");

    final msgSnMap = <Int64, HistoryMsg>{};

    for (var offlineMsg in msg.pbHisMsg) {
      if (msgSnMap.containsKey(offlineMsg.msgSn)) {
        continue;
      }
      msgSnMap[offlineMsg.msgSn] = offlineMsg;
      var tmsg = PBMessage();
      PBCommData commData = PBCommData();
      commData.mergeFromBuffer(offlineMsg.pbCommData);
      commData.msgSn = offlineMsg.msgSn;
      commData.groupId = offlineMsg.groupId;
      commData.aimId = offlineMsg.aimId;
      commData.srcId = offlineMsg.srcId;
      commData.time = offlineMsg.createdAt;
      tmsg.pbCommData = commData;
      tmsg.pbData = offlineMsg.pbData;
      tmsg.pbName = offlineMsg.pbName;

      /// 派发处理
      Client().onNetMsg(tmsg, enMsgFrom);
    }
    // if (msg.pbHisMsg.isNotEmpty && msg.pbHisMsg.length >= 10) {
    //   // fetchHistoryMessage(beginId: msg.pbHisMsg.first.id.toInt());
    //   Future.delayed(
    //     const Duration(seconds: 2),
    //     () {
    //       fetchHistoryMessage(
    //         beginId: msg.pbHisMsg.first.id.toInt(),
    //       );
    //     },
    //   );
    // }
    if (msg.pbHisMsg.isNotEmpty) {
      final req = ReadyForSyncOfflineMsgStatusReq();
      Client.instance.sendMsg(
        req,
        Int64(AppUserInfo().imId),
        MakePBCommData(toService: Service.offline_msg)
          ..srcClientType = AppUserInfo().clientType,
      );
    }
  }
  return true;
}

// 普通确认信息
bool onCommRsp(GeneratedMessage msg, PBMessage pbMessage, EnMsgFrom enMsgFrom) {
  //
  if (msg is CommRsp) {
    if (msg.result.value == 0) {
      // 成功
      log("收到通用返回消息 ${msg} 处理成功！！    pbMessage:${pbMessage}");
    } else {
      log("收到通用返回消息 ${msg} 处理失败！！    pbMessage:${pbMessage}");
    }
    // log("收到通用返回消息 ${msg}    pbMessage:${pbMessage}");
  }

  return false;
}

// 消息确认
bool onMsgReceipt(
    GeneratedMessage msg, PBMessage pbMessage, EnMsgFrom enMsgFrom) {
  if (msg is MsgReceipt) {
    LoggerManager().debug(
        "--收到一个确认消息 ${pbMessage.pbCommData.msgSn},>>${msg.state} msgstate:${pbMessage.pbCommData.exp} ismeSend:${pbMessage.pbCommData.srcId == AppUserInfo.instance.imId}<<<<<<<<  group:${pbMessage.pbCommData.msgSn} ");
    final containsKey =
        Client.instance.messageMap.containsKey(pbMessage.pbCommData.msgSn);
    if (containsKey) {
      Client.instance.messageMap.remove(pbMessage.pbCommData.msgSn);
      LoggerManager().debug(
          ' ---------- MsgReceipt 将消息(${pbMessage.pbCommData.msgSn})从缓存中删除 ---------- ');
      LoggerManager().debug(
          ' ---------- MsgReceipt messageMap ===> ${Client.instance.messageMap} ---------- ');
    }

    final groupId = pbMessage.pbCommData.groupId.toInt();

    // 更新状态
    if (groupId > 0) {
      // 群消息是直接更新消息状态，不需要派发了，网络层会派发的
      DBUpdateGroupMsgState(
        pbMessage,
        enMsgFrom,
        needFire: true,
      );
    } else {
      // 私聊消息是从db读取的，更改状态后刷新一下，后面改为直接改消息
      DBUpdateMsgState(
        pbMessage.pbCommData.msgSn,
        msg.state,
        enMsgFrom,
        pbMessage: pbMessage,
      );
    }
  }

  // 上层逻辑还需要处理
  return false;
}

// 读取离线消息
bool onOfflineMsgRsp(
    GeneratedMessage msg, PBMessage pbMsg, EnMsgFrom enMsgFrom) {
  if (msg is ReadOfflineMsgRsp) {
    // var msg = ReadOfflineMsgRsp();
    msg.mergeFromBuffer(pbMsg.pbData);
    log("收到一个离线消息${pbMsg.pbName} 包含消息数：${msg.msgList.length}");
    for (var offlineMsg in msg.msgList) {
      var tmsg = PBMessage();
      // tmsg.mergeFromBuffer(offlineMsg.pbData);
      // log(offlineMsg);
      tmsg.pbCommData = offlineMsg.pbCommData.deepCopy() //PBCommData()
        ..time = offlineMsg.time
        ..msgSn = offlineMsg.sn
        ..groupMsgSn = offlineMsg.pbCommData.groupMsgSn
        ..srcId = offlineMsg.srcUserid
        ..aimId = offlineMsg.aimUserid;
      tmsg.pbData = offlineMsg.pbData;
      tmsg.pbName = offlineMsg.pbName;

      // 像收到一个新消息一样处理
      /// 派发处理
      Client().onNetMsg(tmsg, enMsgFrom);
      // dbSaveMsg(tmsg);
      // log("派发离线消息:${tmsg.pbName}");
      // // if (!Client.instance.msgHandlerMgr.onMsg(tmsg)){
      //   Client.instance.msgHandlerMgr.onMsg(tmsg);
      //   //如果没有人处理，或者需要全局通知则发送全局通知
      //   eventBus.fire(EventOnNetMsg(tmsg));
      // }
    }

    if (msg.msgList.isNotEmpty) {
      // getOfflineMsg(msg.msgList.last.time.toInt() + 1, 10);
    }
  }

  return true;
}

// 私聊消息
bool onChatText(GeneratedMessage msg, PBMessage pbMsg, EnMsgFrom enMsgFrom) {
  if (msg is ChatText) {
    // dbSaveMsg(pbMsg);
  }

  return true;
}

bool onGroupChat(GeneratedMessage msg, PBMessage pbMsg, EnMsgFrom enMsgFrom) {
  if (msg is GroupChat) {
    // dbSaveMsg(pbMsg);
  }

  return true;
}

bool _onKickOffUser(
    GeneratedMessage msg, PBMessage pbMsg, EnMsgFrom enMsgFrom) {
  // 被踢出了，先断网
  Client.instance.Stop();
  log("被踢了:(");
  // 交给界面处理跳转
  return false;
}

bool _onHeartBeat(GeneratedMessage msg, PBMessage pbMsg, EnMsgFrom enMsgFrom) {
  if (msg is HeartBeat) {
    if (msg.type == HEART_BEAT_TYPE.COMM) {
      // 维持网络状态即可
      // Client.instance.lastRcvHeartBeatTime = DateTime.now().millisecondsSinceEpoch;
      Client.instance.onHeartBeat();
      return true;
    }
  }

  return false;
}

bool _onLoginRsp(GeneratedMessage msg, PBMessage pbMsg, EnMsgFrom enMsgFrom) {
  log("-----------------login rsp---------------");
  if (msg is LoginRsp) {
    msg.mergeFromBuffer(pbMsg.pbData);
    LoggerManager().debug(
        '_onLoginRsp ======> result: ${msg.result} \n reason: ${msg.reason}');
    if (msg.result == ErrCode.SUCCESS.value) {
      // 认证成功
      var user = AppUserInfo();
      user.appId = ConfigMgr().config!.appId; //loginRsp.appId;
      user.appUid = msg.appUserId;
      user.curMsgSN = msg.msgSn;
      user.imToken = msg.reconnectToken;
      log("认证成功 得到的sn:${user.curMsgSN} snuser:${user.curMsgSN >> 32}  snsn:${user.curMsgSN - (AppUserInfo.instance.imId << 32)}");
      // 登录成功处理
      Client.instance.onLoginSuccess();
      Client.instance.sendMsg(ReadyForGroupsNewMsgInfoReq(), Int64(user.imId),
          MakePBCommData(aimId: Int64(user.imId), toService: Service.group));
    } else {
      log("认证失败 $msg  ");
      if (msg.result == ErrCode.PermissionDenied.value) {
        eventBus.fire(PermissionDefined());
      }
    }
    return true;
  }

  return false;
}

/// 通话请求，全局弹出窗口
bool _onDialReq(GeneratedMessage msg, PBMessage pbMsg, EnMsgFrom enMsgFrom) {
  // log("get DialReq msg");
  if (msg is DialReq) {
    log("------------ 2-2 _onDialReq msg->$msg pbMsg->$pbMsg");
    if (Global.isInCallScene == false) {
      // 切换到视频通话界面
      // 发个事件出去吧 todo
      // Navigator.push(Global.mainPageContext,
      //     MaterialPageRoute(builder: (BuildContext context) {
      //       return CallPage(callType: msg.callType,
      //           caller: pbMsg.pbCommData.srcId,
      //           callee: msg.calleeId);
      //     },));
    }
  }

  // 交给上层处理
  return false;
}

/// 通话请求，全局弹出窗口
// bool _onCallSceneStateChangeNotify(GeneratedMessage msg,PBMessage pbMsg){
//   log("get DialReq msg");
//   if (msg is CallSceneStateChangeNotify)
//     if (msg.newState == CALL_SCENE_STATE.CALL_SCENE_STATE_CALLING) {
//       if (Global.isInCallScene == false) {
//         // 切换到视频通话界面
//         Navigator.push(Global.mainPageContext,
//             MaterialPageRoute(builder: (BuildContext context) {
//               return CallPage(callType: msg.callType,
//                   caller: pbMsg.pbCommData.srcId,
//                   callee: msg.calleeId);
//             },));
//       }else{
//         // 用户忙
//       }
//
//       // 继续往上传递
//       return false;
//     }
// }

/// 邀请入群
bool _onInviteReq(GeneratedMessage msg, PBMessage pbMsg, EnMsgFrom enMsgFrom) {
  if (msg is $group.InviteReq) {
    LoggerManager().debug('invited ids =======> ${msg.inviteeIds}');
    if (msg.inviteeIds.contains(Int64(AppUserInfo().imId))) {
      Client.instance.sendMsg(
        $group.InviteAnswerReq()..agree = true,
        pbMsg.pbCommData.groupId,
        MakePBCommData(
          aimId: pbMsg.pbCommData.srcId,
          groupId: pbMsg.pbCommData.groupId,
          toService: Service.group,
        ),
      );
    }

    // var msg = "${pbMsg.pbCommData.srcId} 邀请您加入群 ${pbMsg.pbCommData.groupId} 您是否同意？";
    // // 弹出确认对话框
    // // 发个事情让顶层窗口去处理 todo
    // showDialog(context: Global.mainPageContext,
    //   builder: (BuildContext context){
    //     return CupertinoAlertDialog(
    //       title: Text("邀请入群信息"),
    //       content: Column(
    //         children: [
    //           SizedBox(height: 10,),
    //           Align(
    //             child: Text("${pbMsg.pbCommData.srcId} 邀请您加入群 ${pbMsg.pbCommData.groupId} 您是否同意？"),
    //             alignment: Alignment(0,0),
    //           )
    //         ],
    //       ),
    //       actions: [
    //         CupertinoDialogAction(
    //           child: Text("拒绝"),

    //           onPressed: () {
    //             // 同意加入
    // Client.instance.sendMsg($group.InviteAnswerReq()..agree = false, pbMsg.pbCommData.groupId, MakePBCommData(aimId: pbMsg.pbCommData.srcId, groupId: pbMsg.pbCommData.groupId, toService: Service.group));

    //             Navigator.pop(context);
    //             print("取消");
    //           },
    //         ),
    //         CupertinoDialogAction(
    //           child: Text("同意"),
    //           onPressed: () {
    //             print("确定");

    //             // 同意加入
    //             Client.instance.sendMsg($group.InviteAnswerReq()..agree = true, pbMsg.pbCommData.groupId, MakePBCommData(aimId: pbMsg.pbCommData.srcId, groupId: pbMsg.pbCommData.groupId, toService: Service.group));

    //             Navigator.pop(context);
    //           },
    //         ),
    //       ],
    //     );
    //   }
    // );
  }

  return true;
}

// 收到申请进群消息
bool _onApplyReq(GeneratedMessage msg, PBMessage pbMsg, EnMsgFrom enMsgFrom) {
  log("-------------------------------------------------------------");

  // 发个事件让顶层窗口去处理
  // if (msg is $group.ApplyReq) {
  //   log("applyreq");
  //   showDialog(context: Global.mainPageContext,
  //       builder: (BuildContext context){
  //     return CupertinoAlertDialog(
  //       title: Text("申请入群确认"),
  //       content: Column(
  //         children: [
  //           SizedBox(height: 10,),
  //           Align(
  //             child: Text("${pbMsg.pbCommData.srcId} 申请加入群 ${pbMsg.pbCommData.groupId} 您是否同意？"),
  //             alignment: Alignment(0,0),
  //           )
  //         ],
  //       ),
  //       actions: [
  //         CupertinoDialogAction(
  //           child: Text("拒绝"),
  //
  //           onPressed: () {
  //             // 同意加入
  //             Client.instance.sendMsg($group.ApplyAnswerReq()..agree = false, pbMsg.pbCommData.groupId, MakePBCommData(aimId: pbMsg.pbCommData.srcId, groupId: pbMsg.pbCommData.groupId, toService: Service.group));
  //
  //             Navigator.pop(context);
  //             print("取消");
  //           },
  //         ),
  //         CupertinoDialogAction(
  //           child: Text("同意"),
  //           onPressed: () {
  //             print("确定");
  //
  //             // 同意加入
  //             Client.instance.sendMsg($group.ApplyAnswerReq()..agree = true, pbMsg.pbCommData.groupId, MakePBCommData(aimId: pbMsg.pbCommData.srcId, groupId: pbMsg.pbCommData.groupId, toService: Service.group));
  //
  //             Navigator.pop(context);
  //           },
  //         ),
  //       ],
  //     );
  //   }
  //   );
  // }
  // 交给上层处理
  return false;
}

//////// 群名称变更通知
// NameChangeNotify
bool _onGroupNameChangeNotify(
    GeneratedMessage msg, PBMessage pbMsg, EnMsgFrom enMsgFrom) {
  log("-------------------------------------------------------------");
  if (msg is $group.NameChangeNotify) {
    // 更新数据库
    // dbMsg?.update(
    //     tbGroup,
    //     {
    //       "name": msg.name,
    //     },
    //     where: "groupId = ${pbMsg.pbCommData.groupId}");
    // // 更新页面
    final groupId = pbMsg.pbCommData.groupId.toInt();
    if (groupId > 0) {
      AppDatabase().objectBox.getGroup(groupId).then((group) {
        if (null != group) {
          group.name = msg.name;
          AppDatabase().objectBox.addGroup(group);
        }
      });
      // AppDatabase().objectBox.getConversation(groupId).then((conversation) {
      //   if (null != conversation) {
      //     LoggerManager().error('_onGroupNameChangeNotify ======> 群名成功更新为: ${msg.name}');
      //     conversation.groupInfo?.name = msg.name;
      //     ImController.to.conversationListener?.onConversationUpdated(conversation);
      //   }
      // });
    }
  }

  // 交给上层处理
  return false;
}

/// 群头像
bool _onGroupAvatarChangeNotify(
  GeneratedMessage msg,
  PBMessage pbMsg,
  EnMsgFrom enMsgFrom,
) {
  log("-------------------------------------------------------------");
  if (msg is $group.AvatarChangeNotify) {
    // 更新数据库
    final groupId = pbMsg.pbCommData.groupId.toInt();
    if (groupId > 0) {
      AppDatabase().objectBox.getGroup(groupId).then((group) {
        if (null != group) {
          group.avatar = msg.avatar;
          AppDatabase().objectBox.addGroup(group);
        }
      });
    }
    // dbMsg?.update(
    //     tbGroup,
    //     {
    //       "avatar": msg.avatar,
    //     },
    //     where: "groupId = ${pbMsg.pbCommData.groupId}");
    // 更新页面
  }

  // 交给上层处理
  return false;
}
// NoticeChangeNotify
// 存数据库
//AddAdminsNotify
// 存数据库

// RemoveAdminsNotify
// 变更库

// GroupTransferNotify
// 变更库

// 退出群
bool _onQuitNotify(GeneratedMessage msg, PBMessage pbMsg, EnMsgFrom enMsgFrom) {
  log("--------------------------_onQuitNotify-----------------------------------");
  if (msg is $group.QuitNotify) {
    if (pbMsg.pbCommData.srcId == AppUserInfo.instance.imId) {
      removeGroup(pbMsg.pbCommData.groupId, enMsgFrom);
    }
  }

  // 交给上层处理
  return false;
}

bool _onQuitRsp(GeneratedMessage msg, PBMessage pbMsg, EnMsgFrom enMsgFrom) {
  log("--------------------------_onQuitNotify-----------------------------------");
  if (msg is $group.QuitRsp) {
    if (pbMsg.pbCommData.srcId == AppUserInfo.instance.imId) {
      log("退出群组，删除群相关");
      removeGroup(pbMsg.pbCommData.groupId, enMsgFrom);
    }
  }

  // 交给上层处理
  return false;
}

void removeGroup(Int64 groupId, EnMsgFrom enMsgFrom) {
  // 清除群聊信息
  // dbMsg?.delete(tbGroupMsgTable,
  //     where: "groupId = ?", whereArgs: [groupId.toInt()]);
  //
  // // 自己退出群
  dbMsg?.delete(tbGroup, where: "groupId = ?", whereArgs: [groupId.toInt()]);
  // dbMsg?.delete(tbChatList,
  //     where: "chatId=? and chatType=${CHAT_TYPE.GROUP.index}",
  //     whereArgs: [groupId.toInt()]);
  // UnReadMessageController.to.clearUnReadMsgCount(
  //   conversationId: groupId.toInt(),
  //   conversationType: CHAT_TYPE.GROUP,
  // );
  AppDatabase().objectBox.getConversation(groupId.toInt()).then((value) {
    if (null != value) {
      AppDatabase().objectBox.deleteConversation(value);
      ImController.to.conversationListener?.onConversationDeleted(
        value.conversationId,
      );
    }
  });

  AppDatabase().objectBox.deleteGroupHistoryMsg(groupId.toInt());
  AppDatabase().objectBox.getGroup(groupId.toInt()).then((value) {
    if (null != value) {
      AppDatabase().objectBox.deleteGroup(value);
    }
  });
  log("删除群信息----------------------------");
}

//
//GroupDisbandedNotify
bool _onGroupDisbandedNotify(
    GeneratedMessage msg, PBMessage pbMsg, EnMsgFrom enMsgFrom) {
  log("-----------------------------_onGroupDisbandedNotify--------------------------------");
  if (msg is $group.GroupDisbandedNotify) {
    final groupId = pbMsg.pbCommData.groupId.toInt();
    // UnReadMessageController.to.clearUnReadMsgCount(
    //   conversationId: groupId.toInt(),
    //   conversationType: CHAT_TYPE.GROUP,
    // );
    ImController.to.conversationListener?.onConversationDeleted(groupId);
    AppDatabase().objectBox.getConversation(groupId).then((value) {
      if (null != value) {
        AppDatabase().objectBox.deleteConversation(value);
      }
    });
    // showToast("${pbMsg.pbCommData.srcId}解散了群${pbMsg.pbCommData.groupId}");
    //
    // // 删除群信息
    // dbMsg.delete(tbGroup, where: "groupId = ?", whereArgs: [pbMsg.pbCommData.groupId.toInt()]);
    // dbMsg.delete(tbChatList, where: "userId = ? and chatId=? and chatType=${CHAT_TYPE.GROUP.toInt()}", whereArgs: [AppUserInfo.instance.imId.toInt(), pbMsg.pbCommData.groupId.toInt()] );
  }

  // 交给上层处理
  return false;
}

//BanMemberNotify

//UnbanMemberNotify

bool _onFriendApplyReq(
    GeneratedMessage msg, PBMessage pbMsg, EnMsgFrom enMsgFrom) {
  log("----------------_onFriendApplyReq-------------- ");
  //自己发的不处理
  if (isMySendMsg(pbMsg.pbCommData.srcId)) {
    return false;
  }

  // 存储到新的朋友
  if (msg is $friend.ApplyReq) {
    eventBus.fire(FriendApplyBus(true));
    GetUserInfo(pbMsg.pbCommData.srcId.toInt()).then((value) {
      log("_onFriendApplyReq:$value pbMsg.pbCommData.srcId:${pbMsg.pbCommData.srcId}");
      var reqText = msg.msg;
      if (reqText.isEmpty) {
        reqText = "我是 ${value.nickName}";
      }
      AddApplyFriend(
          FriendInfo()..userInfo = value,
          reqText,
          pbMsg.pbCommData.srcId.toInt(),
          $friend.FRIEND_APPLY_STATE.Request); // 携带的信息要加上
      showToast("${value.nickName} 申请加您为好友: $reqText");
    });
  }

  /// 增加添加好友的个数
  UnReadMessageController.to.increaseNewFriendApplyCount();
  return false;
}

bool _onApplyAnswerReq(
    GeneratedMessage msg, PBMessage pbMsg, EnMsgFrom enMsgFrom) {
  log("----------------_onApplyAnswerReq-------------- ");
  if (isMySendMsg(pbMsg.pbCommData.srcId)) {
    return false;
  }

  LoggerManager().debug(
      '_onApplyAnswerReq srcId: ${pbMsg.pbCommData.srcId} \n aimId: ${pbMsg.pbCommData.aimId} \n groupId: ${pbMsg.pbCommData.groupId}');

  // 存储到新的朋友
  if (msg is $friend.ApplyAnswerReq) {
    LoggerManager()
        .debug('_onApplyAnswerReq agree status ========> ${msg.agree}');
    // 更新状态
    UserRepository().getUserInfo(pbMsg.pbCommData.srcId.toInt()).then((value) {
      if (msg.agree) {
        UpdateApplyFriendState(
            pbMsg.pbCommData.srcId.toInt(), $friend.FRIEND_APPLY_STATE.Agree);
        showToast("${value.nickName} 通过了您的好友申请");

        eventBus.fire(
          ApplyAnswerEvent(
            pbMsg.pbCommData.srcId.toInt(),
            value.nickName,
          ),
        );

        // 添加好友
        AddFriendToDB(pbMsg.pbCommData.srcId.toInt(), enFriendRelation.friend);

        // 构造一个聊天消息
        var tmsg = PBMessage();
        var chatMsg = ChatText()
          ..text = "我通过了你的朋友验证请求，现在我们可以开始聊天了"
          ..chatType = TextChatType.TEXT;
        tmsg.pbCommData = pbMsg.pbCommData.deepCopy()
          ..serviceType = Service.gate;
        tmsg.pbData = chatMsg.writeToBuffer();
        tmsg.pbName = chatMsg.info_.qualifiedMessageName;

        // 像收到一个新消息一样处理
        /// 派发处理
        Client().onNetMsg(tmsg, enMsgFrom);
      } else {
        UpdateApplyFriendState(
            pbMsg.pbCommData.srcId.toInt(), $friend.FRIEND_APPLY_STATE.Reject);
        showToast("${value.nickName} 拒绝了您的好友申请");
      }
    });
  }

  return false;
}

bool _onApplyAnswerRsp(
    GeneratedMessage msg, PBMessage pbMsg, EnMsgFrom enMsgFrom) {
  log("----------------_onApplyAnswerRsp-------------- ");
// 存储到新的朋友
  // 这个消息是服务端的返回消息，自己发的，代表服务端处理了请求
  if (msg is $friend.ApplyAnswerRsp) {
// 更新状态
    int friendId = pbMsg.pbCommData.aimId.toInt();
    UserRepository().getUserInfo(friendId).then((value) {
      if (msg.agree) {
        UpdateApplyFriendState(friendId, $friend.FRIEND_APPLY_STATE.Agree);
        showToast("您通过了 ${value.nickName} 的好友申请");
        // 添加好友
        AddFriendToDB(friendId, enFriendRelation.friend);
        // 构造一个聊天消息
        var tmsg = PBMessage();
        var chatMsg = ChatText()
          ..text = "我通过了你的朋友验证请求，现在我们可以开始聊天了"
          ..chatType = TextChatType.TEXT;
        tmsg.pbCommData = pbMsg.pbCommData.deepCopy()
          ..serviceType = Service.gate;
        tmsg.pbData = chatMsg.writeToBuffer();
        tmsg.pbName = chatMsg.info_.qualifiedMessageName;

        /// 派发处理
        Client().onNetMsg(tmsg, enMsgFrom);
      } else {
        UpdateApplyFriendState(friendId, $friend.FRIEND_APPLY_STATE.Reject);
        showToast("您拒绝了 ${value.nickName} 的好友申请");
      }
    });
  }

  return false;
}
