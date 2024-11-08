import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:quliao/db/database.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/models/user/userinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/chat_private/chat.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pb/pb_pub/service.pbenum.dart';
import 'package:quliao/pub/config.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/pub/log.dart';
import 'package:protobuf/protobuf.dart' as $pb;
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:quliao/models/user/userinfo.dart' as $locUinfo;
import 'package:http/http.dart' as http;
import 'package:quliao/utils/log/manager.dart';

Future<Map<String, dynamic>> changeToGroupMessageMap(
    ChatGroupData cpData) async {
  Map<String, dynamic> map = {};

  var pbDataMsg = cpData.pbDataMsg;
  PBMessage pbMessage = cpData.pbHeadMsg;
  var type = "text";
  var url = "";

  final groupId = pbMessage.pbCommData.groupId;

  String userNickname = '';

  final userInfo = cpData.userInfo;
  userNickname = userInfo.nickName;

  GroupChat? groupChat;

  String status = "error";
// enum Status { delivered, error, seen, sending, sent }
// 已传递，错误，已查看，正在发送，已发送

  switch (cpData.msgStatus) {
    case MSG_STATE.RECEIVED:
      status = "sent";
      break;
    case MSG_STATE.READ:
      status = "seen";
      break;
    case MSG_STATE.END:
      status = "seen";
      break;
    case MSG_STATE.IN_BLACK_LIST:
      status = "error";
      break;
    case MSG_STATE.FAULT:
      status = "error";
      break;
    case MSG_STATE.LIMITED:
      status = "error";
      break;
    case MSG_STATE.INIT:
      status = "sending";
      break;
    case MSG_STATE.SEND:
      status = "sent";
      break;
  }

  // final groupMsgSn = pbMessage.pbCommData.groupMsgSn.toInt();
  //
  // final msgList = await AppDatabase().groupMessageDao?.single(
  //       groupId.toInt(),
  //       groupMsgSn,
  //     );
  // if (null != msgList && msgList.isNotEmpty) {
  //   final msg = msgList.first;
  //   if (msg['msgType'] == TextChatType.RECALL.value) {
  //     cpData.msgType = TextChatType.RECALL;
  //     if (null != msg['recallUid']) {
  //       cpData.recallUid = msg['recallUid']  as int;
  //     }
  //   }
  // }

  final metaData = <String, dynamic>{
    'pbDataMsg': pbDataMsg,
    'pbMessage': pbMessage,
  };

  if ((pbDataMsg is! GroupChat &&
          pbDataMsg is! GroupEmoticon &&
          pbDataMsg is! GroupMedia &&
          pbDataMsg is! GroupGift) ||
      cpData.msgType == TextChatType.RECALL) {
    type = 'system';
    map = <String, dynamic>{
      'id': pbMessage.pbCommData.msgSn.toString(),
      'remoteId': pbMessage.pbCommData.groupMsgSn.toString(),
      'text': await getItemText(pbMessage, pbDataMsg),
      'type': type,
      'createdAt': (pbMessage.pbCommData.time.toInt() * 1000),
      'status': status,
      'author': {
        "firstName": userNickname,
        "id": ("${pbMessage.pbCommData.srcId..toInt()}"),
        "imageUrl":
            "${(userInfo.avatar.isNotEmpty ? userInfo.avatar : ConfigMgr().config?.defaultAvatar)}?x-oss-process=image/resize,m_fill,h_100,w_100",
        "lastName": "",
      },
    };
    if (cpData.msgType == TextChatType.RECALL) {
      final targetId = cpData.recallUid;
      if (targetId == AppUserInfo().imId) {
        map['text'] = '你撤回了一条消息';
      } else {
        final Member? member = await AppDatabase().groupMemberDao?.singleMember(
              groupId: groupId.toInt(),
              userId: targetId,
            );
        if (null != member) {
          final bool hasAdminRights = member.role >= 1;
          if (hasAdminRights) {
            $locUinfo.UserInfo aimUserInfo =
                await $locUinfo.GetUserInfo(targetId);
            final String srcNickname = aimUserInfo.nickName.isEmpty
                ? '游客$targetId'
                : aimUserInfo.nickName;
            map['text'] = '管理员 $srcNickname 撤回了一条消息';
          } else {
            $locUinfo.UserInfo aimUserInfo =
                await $locUinfo.GetUserInfo(targetId);
            final String srcNickname = aimUserInfo.nickName.isEmpty
                ? '游客${pbMessage.pbCommData.srcId}'
                : aimUserInfo.nickName;
            map['text'] = '$srcNickname 撤回了一条消息';
          }
        } else {
          $locUinfo.UserInfo aimUserInfo =
              await $locUinfo.GetUserInfo(targetId);
          final String srcNickname = aimUserInfo.nickName.isEmpty
              ? '游客$targetId'
              : aimUserInfo.nickName;
          map['text'] = '$srcNickname 撤回了一条消息';
        }
      }
    }
    return map;
  }

  if (pbDataMsg is GroupChat) {
    groupChat = pbDataMsg;
    if (groupChat.chatType == TextChatType.PIC) {
      type = "image";
    } else if (groupChat.chatType == TextChatType.AUDIO) {
      type = 'audio';
    } else if (groupChat.chatType == TextChatType.FILE) {
      type = 'file';
    } else if (groupChat.chatType == TextChatType.VIDEO) {
      type = 'video';
    } else if (groupChat.chatType == TextChatType.CUSTOMIZE) {
      type = 'custom';
    }
    url = groupChat.data;
    // log(" type = $type ${pbMessage.pbCommData.srcId.toInt()}");
  }

  // log("friendinFo: ${userInfo.imId}");
  map = {
    "createdAt": (pbMessage.pbCommData.time.toInt() * 1000),
    "id": pbMessage.pbCommData.msgSn.toString(),
    'remoteId': pbMessage.pbCommData.groupMsgSn.toString(),
    "name": "madrid",
    "status": status,
    "type": type,
    // "text": await getItemText(pbMessage, pbDataMsg),
    "text": '',
    'pbDataMsg': pbDataMsg,
    "uri": url,
    "size": 0,
  };
  map["author"] = {
    "firstName": userNickname,
    "id": ("${pbMessage.pbCommData.srcId..toInt()}"),
    "imageUrl":
        "${(userInfo.avatar.isNotEmpty ? userInfo.avatar : ConfigMgr().config?.defaultAvatar)}?x-oss-process=image/resize,m_fill,h_100,w_100",
    "lastName": "",
  };
  if (null != groupChat) {
    if (groupChat.chatType == TextChatType.AUDIO) {
      map['size'] = num.parse(groupChat.exp['size']!);
      map['duration'] = int.parse(groupChat.exp['duration']!);
    } else if (groupChat.chatType == TextChatType.FILE) {
      map['size'] = num.parse(groupChat.exp['size']!);
      if (null != groupChat.exp['name']) {
        map['name'] = groupChat.exp['name'];
      }
    } else if (groupChat.chatType == TextChatType.PIC) {
      if (null != groupChat.exp['width']) {
        map['width'] = num.parse(groupChat.exp['width']!);
      }
      if (null != groupChat.exp['height']) {
        map['height'] = num.parse(groupChat.exp['height']!);
      }
    } else if (groupChat.chatType == TextChatType.VIDEO) {
      if (null != groupChat.exp['width']) {
        map['width'] = num.parse(groupChat.exp['width']!);
      }
      if (null != groupChat.exp['height']) {
        map['height'] = num.parse(groupChat.exp['height']!);
      }
      if (null != groupChat.exp['thumbnail']) {
        metaData.putIfAbsent(
          'thumbnail',
          () => groupChat!.exp['thumbnail'],
        );
        // map['metadata'] = <String, dynamic>{
        //   'thumbnail': groupChat.exp['thumbnail'],
        // };
      }
    } else if (groupChat.chatType == TextChatType.TEXT) {
      /// 消息 at
      if (groupChat.exp.containsKey('atNames')) {
        metaData.putIfAbsent(
          'atNames',
              () => groupChat!.exp['atNames'],
        );
        metaData.putIfAbsent(
          'atNameIdMap',
              () => groupChat!.exp['atNameIdMap'],
        );
        // map['metadata'] = <String, dynamic>{
        //   'atNames': groupChat.exp['atNames'],
        //   'atNameIdMap': groupChat.exp['atNameIdMap'],
        // };
      }

      map['text'] = await getItemText(pbMessage, pbDataMsg);

      /// 消息回复
      if (groupChat.exp.containsKey('messageReply')) {
        final String? value = groupChat.exp['messageReply'];
        final String? groupId = groupChat.exp['groupId'];
        LoggerManager().debug(
          'messageReply msgSn =======> $value groupId =======> $groupId',
        );

        if (null != value && null != groupId) {
          final dataList = await dbMsg?.query(
            tbGroupMsgTable,
            where: "msgSn=?",
            whereArgs: [value],
            limit: 20,
            offset: 0,
            orderBy: "msgTime desc",
          );
          LoggerManager().debug(
            'messageReply msgSn repliedMessage dataList =======> $dataList',
          );
          if (null != dataList && dataList.isNotEmpty) {
            var d = ChatGroupData();
            // 等待加载用户信息
            await d.initWithMap(dataList.first);
            final messageMap = await changeToGroupMessageMap(d);
            types.Message message = types.Message.fromJson(messageMap);
            map['repliedMessage'] = message.toJson();
            LoggerManager().debug(
              'messageReply msgSn repliedMessage =======> ${message.id} groupId =======> $groupId',
            );
          } else {
            OneGroupHistoryMsgReq req = OneGroupHistoryMsgReq(
              msgSn: Int64.parseInt(value),
            );

            http.Response response = await RpcCallImOuterApi(
              "/pb_grpc_group.Group/GetOneGroupHistoryMsg",
              req,
              MakePBCommData(
                aimId: Int64(int.parse(groupId)),
                groupId: Int64(int.parse(groupId)),
                toService: Service.group,
              ),
            ).catchError((err) {
              log("---err:$err");
              return http.Response("$err", 500);
            });

            if (response.statusCode == 200) {
              var rsp = OneGroupHistoryMsgRsp()
                ..mergeFromBuffer(response.bodyBytes);
              GroupHistoryMsg historyMsg = rsp.groupHistoryMsg;
              log("消息查询成功 =================== ${historyMsg.toString()}");

              final dataMap = <String, dynamic>{};
              dataMap["groupId"] = historyMsg.groupId;
              dataMap["groupMsgSn"] = historyMsg.groupMsgSn;
              dataMap["msgSn"] = historyMsg.msgSn;
              dataMap["srcId"] = historyMsg.srcId;
              dataMap["pbName"] = historyMsg.pbName;
              dataMap["pbData"] = historyMsg.pbData;
              dataMap["msgStatus"] = historyMsg.msgStatus;
              dataMap["atUserReadStatus"] = historyMsg.atUserReadStatus;
              dataMap["createdAt"] = historyMsg.createdAt;
              dataMap["updateAt"] = historyMsg.updatedAt;
              dataMap["pbCommData"] = historyMsg.pbCommData;
              dataMap["type"] = 1;

              var d = ChatGroupData();
              // 等待加载用户信息
              await d.initWithMap(dataMap);
              final messageMap = await changeToGroupMessageMap(d);
              types.Message message = types.Message.fromJson(messageMap);
              map['repliedMessage'] = message.toJson();
              LoggerManager().debug(
                'messageReply msgSn repliedMessage =======> ${message.id} message =======> ${message.toJson()}',
              );
            }
          }
        }
      }
    } else if (groupChat.chatType == TextChatType.CUSTOMIZE) {
      final customType = groupChat.exp['customType'];
      if (null != customType && customType == 'mergeForward') {
        map['text'] = '[聊天记录]';
        metaData.putIfAbsent('chatType', () => groupChat!.exp['chatType']);
        metaData.putIfAbsent('customType', () => 'mergeForward');
        metaData.putIfAbsent('forwardTitle', () => groupChat!.exp['forwardTitle']);
        metaData.putIfAbsent('forwardContent', () => groupChat!.exp['forwardContent']);
        metaData.putIfAbsent('forwardMessageIds', () => groupChat!.exp['forwardMessageIds']);
      } else if (customType == 'businessCard') {
        final name = groupChat.exp['name'];
        map['text'] = '[个人名片]$name';
        metaData.putIfAbsent('name', () => groupChat!.exp['name']);
        metaData.putIfAbsent('customType', () => 'businessCard');
        metaData.putIfAbsent('avatar', () => groupChat!.exp['avatar']);
        metaData.putIfAbsent('userId', () => groupChat!.exp['userId']);
      } else if (customType == 'redPacket') {
        map['text'] = '[红包消息]';
        metaData.putIfAbsent('customType', () => 'redPacket');
        metaData.putIfAbsent('data', () => groupChat!.data);
        metaData.putIfAbsent('chatType', () => groupChat!.exp['chatType']);
      }
    }
    map['metadata'] = metaData;
  }
  return map;
}

Future<String> getItemText(
    PBMessage pbMessage, $pb.GeneratedMessage msg) async {
  if (msg is CreateGroupReq) {
    return ("abc 邀请 ${msg.name} 加入群聊 ");
  } else if (msg is GroupChat) {
    return msg.text;
  } else if (msg is GroupEmoticon) {
    // 展示表情
    return "一个表情";
  } else if (msg is GroupMedia) {
    // 展示媒体
    return "一个媒体";
  } else if (msg is GroupGift) {
    // 展示图片
    return "一个图片";
  }
/*  else if (msg is InviteReq) {
    $locUinfo.UserInfo srcUserInfo =
        await $locUinfo.GetUserInfo(pbMessage.pbCommData.srcId.toInt());
    final String srcNickname = srcUserInfo.nickName.isEmpty
        ? '${pbMessage.pbCommData.srcId}'
        : srcUserInfo.nickName;

    final List<$locUinfo.UserInfo> inviteeUsers = [];
    for (final element in msg.inviteeIds) {
      $locUinfo.UserInfo inviteeUserInfo =
          await $locUinfo.GetUserInfo(element.toInt());
      inviteeUsers.add(inviteeUserInfo);
    }

    var info = "$srcNickname 邀请 ";
    for (final element in inviteeUsers) {
      final String srcNickname =
          element.nickName.isEmpty ? '${element.appId}' : element.nickName;
      info += "$srcNickname ";
    }
    info += "进入群聊";
    return info;
  } */
  else if (msg is MsgRecallReq) {
    final groupId = pbMessage.pbCommData.groupId.toInt();

    final srcId = pbMessage.pbCommData.srcId.toInt();
    $locUinfo.UserInfo srcUserInfo = await $locUinfo.GetUserInfo(srcId);
    final String srcNickname =
        srcUserInfo.nickName.isEmpty ? '$srcId' : srcUserInfo.nickName;

    final memberId = msg.msgOwnerId.toInt();
    $locUinfo.UserInfo memberUserInfo = await $locUinfo.GetUserInfo(memberId);
    final String memberNickname =
        memberUserInfo.nickName.isEmpty ? '$memberId' : memberUserInfo.nickName;

    if (pbMessage.pbCommData.srcId.toInt() == AppUserInfo().imId) {
      return '你撤回了一条消息';
    } else {
      final Member? member = await AppDatabase().groupMemberDao?.singleMember(
            groupId: groupId.toInt(),
            userId: pbMessage.pbCommData.srcId.toInt(),
          );
      if (null != member) {
        final bool hasAdminRights = member.role >= 1;
        if (hasAdminRights) {
          $locUinfo.UserInfo aimUserInfo =
              await $locUinfo.GetUserInfo(pbMessage.pbCommData.srcId.toInt());
          final String srcNickname = aimUserInfo.nickName.isEmpty
              ? '游客${pbMessage.pbCommData.srcId}'
              : aimUserInfo.nickName;
          return '管理员 $srcNickname 撤回了一条消息';
        } else {
          $locUinfo.UserInfo aimUserInfo =
              await $locUinfo.GetUserInfo(pbMessage.pbCommData.srcId.toInt());
          final String srcNickname = aimUserInfo.nickName.isEmpty
              ? '游客${pbMessage.pbCommData.srcId}'
              : aimUserInfo.nickName;
          return '$srcNickname 撤回了一条消息';
        }
      } else {
        $locUinfo.UserInfo aimUserInfo =
            await $locUinfo.GetUserInfo(pbMessage.pbCommData.srcId.toInt());
        final String srcNickname = aimUserInfo.nickName.isEmpty
            ? '游客${pbMessage.pbCommData.srcId}'
            : aimUserInfo.nickName;
        return '$srcNickname 撤回了一条消息';
      }
    }
  } else if (msg is KickoutNotify) {
    final srcId = pbMessage.pbCommData.srcId.toInt();
    $locUinfo.UserInfo srcUserInfo = await $locUinfo.GetUserInfo(srcId);
    final String srcNickname =
        srcUserInfo.nickName.isEmpty ? '$srcId' : srcUserInfo.nickName;

    final memberId = msg.memberId.toInt();
    $locUinfo.UserInfo memberUserInfo = await $locUinfo.GetUserInfo(memberId);
    final String memberNickname =
        memberUserInfo.nickName.isEmpty ? '$memberId' : memberUserInfo.nickName;

    if (srcId == AppUserInfo().imId) {
      return '您把$memberNickname移除群聊';
    } else {
      if (memberId == AppUserInfo().imId) {
        return '您被$srcNickname移除群聊';
      } else {
        return '$srcNickname将$memberNickname移除群聊';
      }
    }
  } else if (msg is approverApprovedNotify) {
    final applicantId = msg.applicantId;
    final approverId = msg.approverId;
    LoggerManager().debug(
        'approverApprovedNotify111 applicantId: $applicantId approverId: $approverId enterGroutType: ${msg.enterGroutType}');
    $locUinfo.UserInfo? srcUserInfo;
    if (approverId != 0) {
      srcUserInfo = await $locUinfo.GetUserInfo(approverId.toInt());
    }
    String? srcNickname;
    if (approverId != 0) {
      srcNickname = srcUserInfo?.nickName.isEmpty == true
          ? '$approverId'
          : srcUserInfo?.nickName;
    }

    $locUinfo.UserInfo aimUserInfo =
        await $locUinfo.GetUserInfo(applicantId.toInt());
    final String aimNickname =
        aimUserInfo.nickName.isEmpty ? '$applicantId' : aimUserInfo.nickName;

    if (msg.enterGroutType == EnterGroupType.ScanCode) {
      if (applicantId == AppUserInfo().imId) {
        return '您通过扫描二维码进入群聊';
      } else {
        return '$aimNickname通过扫描二维码进入群聊';
      }
    } else {
      if (approverId == Int64(AppUserInfo().imId)) {
        return '您同意$aimNickname的入群申请';
      } else {
        if (applicantId == Int64(AppUserInfo().imId)) {
          return '$srcNickname同意您的入群申请';
        } else {
          return '$srcNickname同意$aimNickname的入群申请';
        }
      }
    }
  } else if (msg is InviteAnswerReq) {
    $locUinfo.UserInfo srcUserInfo =
        await $locUinfo.GetUserInfo(pbMessage.pbCommData.srcId.toInt());
    final String srcNickname = srcUserInfo.nickName.isEmpty
        ? '${pbMessage.pbCommData.srcId}'
        : srcUserInfo.nickName;

    $locUinfo.UserInfo aimUserInfo =
        await $locUinfo.GetUserInfo(pbMessage.pbCommData.aimId.toInt());
    final String aimNickname = aimUserInfo.nickName.isEmpty
        ? '${pbMessage.pbCommData.aimId}'
        : aimUserInfo.nickName;
    return "$srcNickname 由$aimNickname 邀请入群";
  } else if (msg is AddAdminsNotify) {
    ///AddAdminsNotify
    $locUinfo.UserInfo srcUserInfo =
        await $locUinfo.GetUserInfo(pbMessage.pbCommData.srcId.toInt());
    final String srcNickname = srcUserInfo.nickName.isEmpty
        ? '${pbMessage.pbCommData.srcId}'
        : srcUserInfo.nickName;

    final List<$locUinfo.UserInfo> memberUsers = [];
    for (final element in msg.memberIds) {
      $locUinfo.UserInfo memberUserInfo =
          await $locUinfo.GetUserInfo(element.toInt());
      memberUsers.add(memberUserInfo);
    }

    var info = "$srcNickname 将 ";
    for (final element in memberUsers) {
      final String srcNickname =
          element.nickName.isEmpty ? '${element.appId}' : element.nickName;
      info += "$srcNickname ";
    }
    info += "设置为管理员";

    return info;
  } else if (msg is InviteeAgreedNotify) {
    final inviterId = msg.inviterId;
    final inviteeId = msg.inviteeId;
    $locUinfo.UserInfo srcUserInfo =
        await $locUinfo.GetUserInfo(inviterId.toInt());
    final String srcNickname =
        srcUserInfo.nickName.isEmpty ? '$inviterId' : srcUserInfo.nickName;

    final $locUinfo.UserInfo inviteeUserInfo =
        await $locUinfo.GetUserInfo(inviteeId.toInt());

    final String inviteeNickname = inviteeUserInfo.nickName.isEmpty
        ? '${inviteeUserInfo.appId}'
        : inviteeUserInfo.nickName;

    if (inviterId == Int64(AppUserInfo().imId)) {
      return '您邀请$inviteeNickname进入群聊';
    } else {
      if (inviteeId == Int64(AppUserInfo().imId)) {
        return '$srcNickname邀请您进入群聊';
      } else {
        return '$srcNickname邀请$inviteeNickname进入群聊';
      }
    }
  } else if (msg is InviteesAgreedNotify) {
    final inviterId = msg.inviterId;
    $locUinfo.UserInfo srcUserInfo =
        await $locUinfo.GetUserInfo(inviterId.toInt());
    final String srcNickname =
        srcUserInfo.nickName.isEmpty ? '$inviterId' : srcUserInfo.nickName;

    final inviteeNames = msg.inviteeNames.join('，');

    if (inviterId == Int64(AppUserInfo().imId)) {
      return '您邀请$inviteeNames进入群聊';
    } else {
      return '$srcNickname邀请$inviteeNames进入群聊';
    }
  } else if (msg is TakeScreenShotNotify) {
    final groupId = pbMessage.pbCommData.groupId;
    final srcId = pbMessage.pbCommData.srcId.toInt();
    LoggerManager().debug(
      'TakeScreenShotNotify ======> groupId: $groupId srcId: $srcId}',
    );
    if (srcId == AppUserInfo().imId) {
      return '您在聊天中截屏了';
    } else {
      $locUinfo.UserInfo userInfo = await $locUinfo.GetUserInfo(srcId);
      final String srcNickname =
          userInfo.nickName.isEmpty ? '${userInfo.appId}' : userInfo.nickName;
      return '$srcNickname在聊天中截屏了';
    }
  } else if (msg is MemberChatBannedStatusChangeNotify) {
    final groupId = pbMessage.pbCommData.groupId;
    final srcId = pbMessage.pbCommData.srcId.toInt();
    final aimId = pbMessage.pbCommData.aimId.toInt();

    LoggerManager().debug(
      'MemberChatBannedStatusChangeNotify ======> groupId: $groupId srcId: $srcId aimId: $aimId bannedStatus: ${msg.bannedStatus}',
    );

    bool banned = msg.bannedStatus > 0;
    if (srcId == AppUserInfo().imId) {
      if (banned) {
        return '您设置了群禁言';
      } else {
        return '您取消了群禁言';
      }
    } else {
      $locUinfo.UserInfo userInfo = await $locUinfo.GetUserInfo(srcId);
      final String srcNickname =
          userInfo.nickName.isEmpty ? '${userInfo.appId}' : userInfo.nickName;
      if (banned) {
        return '管理员$srcNickname设置了群禁言';
      } else {
        return '管理员$srcNickname取消了群禁言';
      }
    }
  } else if (msg is RemoveAdminsNotify) {
    /// RemoveAdminsNotify
    $locUinfo.UserInfo srcUserInfo =
        await $locUinfo.GetUserInfo(pbMessage.pbCommData.srcId.toInt());
    final String srcNickname = srcUserInfo.nickName.isEmpty
        ? '${pbMessage.pbCommData.srcId}'
        : srcUserInfo.nickName;

    final List<$locUinfo.UserInfo> memberUsers = [];
    for (final element in msg.memberIds) {
      $locUinfo.UserInfo memberUserInfo =
          await $locUinfo.GetUserInfo(element.toInt());
      memberUsers.add(memberUserInfo);
    }

    var info = "$srcNickname 收回 ";
    for (final element in memberUsers) {
      final String srcNickname =
          element.nickName.isEmpty ? '${element.appId}' : element.nickName;
      info += "$srcNickname ";
    }
    info += "管理员权限";

    return info;
  } else if (msg is GroupTransferNotify) {
    /// GroupTransferNotify
    $locUinfo.UserInfo srcUserInfo =
        await $locUinfo.GetUserInfo(pbMessage.pbCommData.srcId.toInt());
    final String srcNickname = srcUserInfo.nickName.isEmpty
        ? '${pbMessage.pbCommData.srcId}'
        : srcUserInfo.nickName;

    $locUinfo.UserInfo aimUserInfo =
        await $locUinfo.GetUserInfo(msg.ownerId.toInt());
    final String aimNickname =
        aimUserInfo.nickName.isEmpty ? '${msg.ownerId}' : aimUserInfo.nickName;

    return "$srcNickname将群主转让给$aimNickname";
  } else if (msg is GroupDisbandedNotify) {
    ///GroupDisbandedNotify
    $locUinfo.UserInfo srcUserInfo =
        await $locUinfo.GetUserInfo(pbMessage.pbCommData.srcId.toInt());
    final String srcNickname = srcUserInfo.nickName.isEmpty
        ? '${pbMessage.pbCommData.srcId}'
        : srcUserInfo.nickName;
    return "$srcNickname将群解散了";
  } else if (msg is QuitNotify) {
    $locUinfo.UserInfo srcUserInfo =
        await $locUinfo.GetUserInfo(pbMessage.pbCommData.srcId.toInt());
    final String srcNickname = srcUserInfo.nickName.isEmpty
        ? '${pbMessage.pbCommData.srcId}'
        : srcUserInfo.nickName;
    return "$srcNickname退出了群";
  } else if (msg is BanMemberNotify) {
    $locUinfo.UserInfo srcUserInfo =
        await $locUinfo.GetUserInfo(pbMessage.pbCommData.srcId.toInt());
    final String srcNickname = srcUserInfo.nickName.isEmpty
        ? '${pbMessage.pbCommData.srcId}'
        : srcUserInfo.nickName;

    $locUinfo.UserInfo aimUserInfo =
        await $locUinfo.GetUserInfo(pbMessage.pbCommData.aimId.toInt());
    final String aimNickname = aimUserInfo.nickName.isEmpty
        ? '${pbMessage.pbCommData.aimId}'
        : aimUserInfo.nickName;

    if (srcUserInfo.imId == AppUserInfo().imId) {
      return "您将$aimNickname关进小黑屋";
    } else if (aimUserInfo.imId == AppUserInfo().imId) {
      return "$srcNickname将您关进小黑屋";
    }
    return "$srcNickname将$aimNickname关进小黑屋";
  } else if (msg is UnbanMemberNotify) {
    $locUinfo.UserInfo srcUserInfo =
        await $locUinfo.GetUserInfo(pbMessage.pbCommData.srcId.toInt());
    final String srcNickname = srcUserInfo.nickName.isEmpty
        ? '${pbMessage.pbCommData.srcId}'
        : srcUserInfo.nickName;

    $locUinfo.UserInfo aimUserInfo =
        await $locUinfo.GetUserInfo(pbMessage.pbCommData.aimId.toInt());
    final String aimNickname = aimUserInfo.nickName.isEmpty
        ? '${pbMessage.pbCommData.aimId}'
        : aimUserInfo.nickName;

    if (srcUserInfo.imId == AppUserInfo().imId) {
      return "您将$aimNickname从小黑屋请了出来";
    } else if (aimUserInfo.imId == AppUserInfo().imId) {
      return "$srcNickname将您从小黑屋请了出来";
    }

    return "$srcNickname将$aimNickname从小黑屋请了出来";
  } else if (msg is KickoutReq) {
    $locUinfo.UserInfo srcUserInfo =
        await $locUinfo.GetUserInfo(pbMessage.pbCommData.srcId.toInt());
    final String srcNickname = srcUserInfo.nickName.isEmpty
        ? '${pbMessage.pbCommData.srcId}'
        : srcUserInfo.nickName;

    $locUinfo.UserInfo aimUserInfo =
        await $locUinfo.GetUserInfo(pbMessage.pbCommData.aimId.toInt());
    final String aimNickname = aimUserInfo.nickName.isEmpty
        ? '${pbMessage.pbCommData.aimId}'
        : aimUserInfo.nickName;
    return "$srcNickname将$aimNickname请出了房间";
  } else if (msg is QuitReq) {
    // return Text("您退出了房间");
  } else if (msg is QuitRsp) {
    return "您退出了群";
  } else if (msg is NoticeChangeNotify) {
    $locUinfo.UserInfo srcUserInfo =
        await $locUinfo.GetUserInfo(pbMessage.pbCommData.srcId.toInt());
    final String srcNickname = srcUserInfo.nickName.isEmpty
        ? '${pbMessage.pbCommData.srcId}'
        : srcUserInfo.nickName;
    return "$srcNickname 修改了公告";
  } else if (msg is NameChangeNotify) {
    $locUinfo.UserInfo srcUserInfo =
        await $locUinfo.GetUserInfo(pbMessage.pbCommData.srcId.toInt());
    final String srcNickname = srcUserInfo.nickName.isEmpty
        ? '${pbMessage.pbCommData.srcId}'
        : srcUserInfo.nickName;
    return "$srcNickname 把群名称改为 ${msg.name}";
  } else if (msg is RemarkChangeNotify) {
    if (pbMessage.pbCommData.srcId == pbMessage.pbCommData.aimId) {
      // 自己改的
      $locUinfo.UserInfo srcUserInfo =
          await $locUinfo.GetUserInfo(pbMessage.pbCommData.srcId.toInt());
      final String srcNickname = srcUserInfo.nickName.isEmpty
          ? '${pbMessage.pbCommData.srcId}'
          : srcUserInfo.nickName;
      return "$srcNickname 更改群昵称为 ${msg.remark}";
    } else {
      // 别人改的
      $locUinfo.UserInfo srcUserInfo =
          await $locUinfo.GetUserInfo(pbMessage.pbCommData.srcId.toInt());
      final String srcNickname = srcUserInfo.nickName.isEmpty
          ? '${pbMessage.pbCommData.srcId}'
          : srcUserInfo.nickName;

      $locUinfo.UserInfo aimUserInfo =
          await $locUinfo.GetUserInfo(pbMessage.pbCommData.aimId.toInt());
      final String aimNickname = aimUserInfo.nickName.isEmpty
          ? '${pbMessage.pbCommData.aimId}'
          : aimUserInfo.nickName;
      return "$srcNickname 更改 $aimNickname 的群昵称为 ${msg.remark}";
    }
  } else if (msg is GroupBannedNotify) {
    // 被封禁
    $locUinfo.UserInfo srcUserInfo =
        await $locUinfo.GetUserInfo(pbMessage.pbCommData.srcId.toInt());
    final String srcNickname = srcUserInfo.nickName.isEmpty
        ? '${pbMessage.pbCommData.srcId}'
        : srcUserInfo.nickName;
    return "$srcNickname 封禁了该群";
  } else if (msg is GroupUnbannedNotify) {
    $locUinfo.UserInfo srcUserInfo =
        await $locUinfo.GetUserInfo(pbMessage.pbCommData.srcId.toInt());
    final String srcNickname = srcUserInfo.nickName.isEmpty
        ? '${pbMessage.pbCommData.srcId}'
        : srcUserInfo.nickName;
    return "$srcNickname 解禁了该群";
  } else if (msg is AvatarChangeNotify) {
    $locUinfo.UserInfo srcUserInfo =
        await $locUinfo.GetUserInfo(pbMessage.pbCommData.srcId.toInt());
    final String srcNickname = srcUserInfo.nickName.isEmpty
        ? '${pbMessage.pbCommData.srcId}'
        : srcUserInfo.nickName;
    return "$srcNickname 修改了群头像";
  } else if (msg is CreateGroupNotify) {
    $locUinfo.UserInfo srcUserInfo =
      await $locUinfo.GetUserInfo(pbMessage.pbCommData.srcId.toInt());
    final String srcNickname = srcUserInfo.nickName.isEmpty
        ? '${pbMessage.pbCommData.srcId}'
        : srcUserInfo.nickName;
    return '$srcNickname创建了群聊';
  }

  return '';
  return "未知消息:${pbMessage.pbName}";
}

Map<String, dynamic> groupMessageChangeStatu(
  types.Message message,
  MsgReceipt msg,
) {
  Map<String, dynamic> map = {};

  String status = "";
// enum Status { delivered, error, seen, sending, sent }
// 已传递，错误，已查看，正在发送，已发送
  switch (msg.state) {
    case MSG_STATE.RECEIVED:
      status = "sent";
      break;
    case MSG_STATE.READ:
      status = "seen";
      break;
    case MSG_STATE.END:
      status = "seen";
      break;
    case MSG_STATE.IN_BLACK_LIST:
      status = "error";
      break;
    case MSG_STATE.FAULT:
      status = "error";
      break;
    case MSG_STATE.LIMITED:
      status = "error";
      break;
    case MSG_STATE.INIT:
      status = "sent";
      break;
    case MSG_STATE.SEND:
      status = "sent";
      break;
  }
  map = message.toJson();
  if (status.isNotEmpty) {
    map["status"] = status;
  }
  return map;
}

Future<Map<String, dynamic>> groupMessageChangeType(
  int groupId,
  types.Message message,
  MsgReceipt msg,
  types.MessageType type,
  Int64 msgOwnerId,
) async {
  Map<String, dynamic> map = {};

  String status = "";
// enum Status { delivered, error, seen, sending, sent }
// 已传递，错误，已查看，正在发送，已发送
  switch (msg.state) {
    case MSG_STATE.RECEIVED:
      status = "sent";
      break;
    case MSG_STATE.READ:
      status = "seen";
      break;
    case MSG_STATE.END:
      status = "seen";
      break;
    case MSG_STATE.IN_BLACK_LIST:
      status = "error";
      break;
    case MSG_STATE.FAULT:
      status = "error";
      break;
    case MSG_STATE.LIMITED:
      status = "error";
      break;
    case MSG_STATE.INIT:
      status = "sending";
      break;
    case MSG_STATE.SEND:
      status = "sent";
      break;
  }
  map = message.toJson();
  if (status.isNotEmpty) {
    map["status"] = status;
  }
  map['type'] = type.name;
  if (msgOwnerId.toInt() == AppUserInfo().imId) {
    map['text'] = '你撤回了一条消息';
  } else {
    final Member? member = await AppDatabase().groupMemberDao?.singleMember(
          groupId: groupId.toInt(),
          userId: msgOwnerId.toInt(),
        );
    if (null != member) {
      final bool hasAdminRights = member.role >= 1;
      if (hasAdminRights) {
        $locUinfo.UserInfo aimUserInfo =
            await $locUinfo.GetUserInfo(msgOwnerId.toInt());
        final String srcNickname = aimUserInfo.nickName.isEmpty
            ? '游客${msgOwnerId.toInt()}'
            : aimUserInfo.nickName;
        map['text'] = '管理员 $srcNickname 撤回了一条消息';
      } else {
        $locUinfo.UserInfo aimUserInfo =
            await $locUinfo.GetUserInfo(msgOwnerId.toInt());
        final String srcNickname = aimUserInfo.nickName.isEmpty
            ? '游客${msgOwnerId.toInt()}'
            : aimUserInfo.nickName;
        map['text'] = '$srcNickname 撤回了一条消息';
      }
    } else {
      $locUinfo.UserInfo aimUserInfo =
          await $locUinfo.GetUserInfo(msgOwnerId.toInt());
      final String srcNickname = aimUserInfo.nickName.isEmpty
          ? '游客${msgOwnerId.toInt()}'
          : aimUserInfo.nickName;
      map['text'] = '$srcNickname 撤回了一条消息';
    }
  }
  return map;
}
