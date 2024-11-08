// 消息列表项 对应 dbChatList 这个表里面的项
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';

// import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:flutter_video_info/flutter_video_info.dart';
import 'package:image_painter/image_painter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lpinyin/lpinyin.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/db/database.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/db/obox/model/group_msg_model.dart';
import 'package:quliao/db/obox/model/user_model.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/global/repository/user_repository.dart';
import 'package:quliao/im/im_client.dart';
import 'package:quliao/models/Global.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/models/user/myinfo.dart' as $myInfo;
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/models/user/userinfo.dart' as $locUinfo;
import 'package:quliao/modules/conversation/pages/chat/editor/image_editor_page.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/windows/client/window_client.dart';
import 'package:quliao/pages/windows/client/window_image_upload.dart';
import 'package:quliao/pb/pb_msg/gate/gate.pb.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart';
import 'package:quliao/pb/pb_pub/comm.pbserver.dart';
import 'package:quliao/pb/pb_pub/service.pbenum.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/pub/log.dart';
import 'package:protobuf/protobuf.dart' as $pb;
import 'package:http/http.dart' as $http;
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/utils/oss_utils.dart';
import 'package:quliao/utils/screen_shot.dart';
import 'package:quliao/widgets/desktop.dart';
import 'package:quliao/widgets/loading.dart';
import 'package:quliao/widgets/rh_extended_image.dart';
import 'package:uuid/uuid.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

import '../../pub/pub-def.dart';
import 'package:path/path.dart' as $path;

enum V_CHAT_TYPE {
  CHAT_TYPE_PRIVATE,
  CHAT_TYPE_GROUP,
  CHAT_TYPE_SPLIT_LINE, // 分割线
}

class ChatItemFinfo {
  // FriendInfo friendInfo = FriendInfo();
  ChatItem chatItem = ChatItem();

  // 如果chatItem.CHAT_TYPE = CHAT_TYPE_PRIVATE; chatInfo = FriendInfo, 如果 chatItem.CHAT_TYPE = CHAT_TYPE_GROUP chatInfo = GroupInfo
  // dynamic chatInfo;
  // $Uinfo.UserInfo finfo;
  late FriendInfo finfo = FriendInfo();
  GlobalKey key = GlobalKey();
  late GroupInfo ginfo = GroupInfo();

  String getName() {
    switch (chatItem.chatType) {
      case CHAT_TYPE.PRIVATE:
        return finfo.remark.isEmpty ? finfo.userInfo.nickName : finfo.remark;
      case CHAT_TYPE.GROUP:
        return ginfo.name;
    }
    return "unknown";
  }
}

class ChatItem {
  // late int userId; // 当前用户的用户id
  late int chatId; // 群聊为群id， 私聊为好友id
  late CHAT_TYPE chatType; // 聊天类型 0 私聊， 1群聊
  late int newMsgCount; // 新消息条数
  late String msgTips; // 消息提示  文字直接展示，其他的展示[类型名]
  late DateTime msgTime; // 消息发送时的实际时间
  late DateTime createTime; // 插入表的时间
  late int msgSn; // 列表消息sn

  initWithMap(Map<String, dynamic> data) {
    // userId = data["userId"] ?? 0; // 当前用户的用户id
    chatId = data["chatId"] ?? 0; // 群聊为群id， 私聊为好友id
    chatType = CHAT_TYPE.values[data["chatType"] ?? 0]; // 聊天类型 0 私聊， 1群聊
    newMsgCount = data["newMsgCount"] ?? 0; // 新消息条数
    msgTips = data["msgTips"] ?? ""; // 消息提示  文字直接展示，其他的展示[类型名]
    msgTime = DateTime.parse(data["msgTime"]); // 消息发送时的实际时间
    createTime = DateTime.parse(data["createTime"]); // 插入表的时间
    msgSn = data["msgSn"] ?? 0;
  }

  Future<void> initWithPbMessage(PBMessage pbMsg) async {
    // userId = pbMsg.pbCommData.["userId"] ?? 0; // 当前用户的用户id
    if (pbMsg.pbCommData.groupId > 0) {
      chatId = pbMsg.pbCommData.groupId
          .toInt(); //data["chatId"] ?? 0; // 群聊为群id， 私聊为好友id
      chatType = CHAT_TYPE
          .GROUP; //CHAT_TYPE.values[data["chatType"] ?? 0]; // 聊天类型 0 私聊， 1群聊
    } else {
      chatId = pbMsg.pbCommData.srcId.toInt() == $myInfo.AppUserInfo().imId
          ? pbMsg.pbCommData.aimId.toInt()
          : pbMsg.pbCommData.srcId
              .toInt(); //data["chatId"] ?? 0; // 群聊为群id， 私聊为好友id
      chatType = CHAT_TYPE
          .PRIVATE; //CHAT_TYPE.values[data["chatType"] ?? 0]; // 聊天类型 0 私聊， 1群聊
    }

    msgTips = await tipsFromMsg(
        pbMsg); //data["msgTips"] ?? ""; // 消息提示  文字直接展示，其他的展示[类型名]
    msgTime = DateTime.fromMillisecondsSinceEpoch(
        pbMsg.pbCommData.time.toInt() *
            1000); //DateTime.parse(data["msgTime"]); // 消息发送时的实际时间
    createTime = DateTime
        .now(); //.fromMicrosecondsSinceEpoch(pbMsg.pbCommData.time.toInt()*1000) ;//DateTime.parse(data["createTime"]); // 插入表的时间
    msgSn = pbMsg.pbCommData.msgSn.toInt(); //data["msgSn"] ?? 0;
  }
}

Map<String, Map<String, dynamic>> groupInfoMap = {};

// 群信息
class GroupMember {
  late int imId;
  late int role;
}

class GroupInfo {
  Int64 groupId = Int64(0);
  Int64 ownerId = Int64(0);

  // int members = 0;
  bool top = false;
  int inviteRoleLimit = 1;
  String name = "";
  String backPic = "";
  String notice = ""; // 群公告
  String avatar = "";
  String remark = "";
  bool needReceip = false;
  int memberCountLimit = 0;
  Map<int, GroupMember> mapMembers = Map<int, GroupMember>(); // 群成员
  List<ChatGroupData> lstMsg = <ChatGroupData>[];

  /// 是否开启免打扰
  int disturb = 0;

  /// 1: 免打扰
  int noDisturb = 0;

  /// 是否解散
  int disbanded = 0;

  /// 群禁言状态 0：所有人可发言
  /// 1：管理员可以发言
  /// 2：群主可以发言
  int memberChatBannedStatus = 0;

  /// 是否开启新成员入群提醒
  /// 0：开启
  /// 1：关闭
  int newMemberRemindClosed = 0;

  /// 扫码入群是否开启
  /// 0：开启
  /// 1：关闭
  int scanCodeJoinGroupSwitchStatus = 0;

  /// 是否被封禁
  int banned = 0;

  int count = 0;
  int noticeVersion = 0;

  String scanCodeJoinGroupParam = '';

  /// 是否自由加群
  int freeJoinStatus = 0;

  /// 是否允许互加好友
  int forbiddenAddFriends = 0;

  int groupType = GroupType.Comm.value;

  /// 对普通用户来说，群聊已禁言
  bool get isBanned => memberChatBannedStatus > 0;

  /// 是否开启新成员入群提醒
  bool get newMemberRemind => newMemberRemindClosed == 0;

  /// 扫码入群是否开启
  bool get scanCodeJoinGroup => scanCodeJoinGroupSwitchStatus == 1;

  /// 群聊是否已解散
  bool get isDisbanded => disbanded == 1;

  bool get isGroupBanned => banned == 1;

  /// 是否自由加群
  bool get freeJoinGroup => freeJoinStatus == 1;

  String? nameIndex;

  initWithMap(Map<String, dynamic> data) {
    groupId = Int64(data["groupId"]); // 当前用户的用户id
    ownerId = Int64(data["ownerId"]); // INTEGER,'   // 群聊为群id， 私聊为好友id
    // members = data["members"]; // INTEGER UNIQUE,' // 消息sn
    name = data["name"];
    if (data["needReceip"] != null) {
      if (data['needReceip'] is int) {
        needReceip = data['needReceip'] == 1;
      } else if (data['needReceip'] is bool) {
        needReceip = data['needReceip'];
      }
    }
    if (data["inviteRoleLimit"] != null) {
      inviteRoleLimit = data["inviteRoleLimit"];
    }
    if (data["top"] != null) {
      final topValue = data['top'];
      if (topValue is int) {
        top = topValue == 1;
      } else if (topValue is bool) {
        top = data['top'];
      }
    } else {
      top = false;
    }
    if (data["memberCountLimit"] != null) {
      memberCountLimit = data["memberCountLimit"];
    }
    backPic = data["backPic"] ?? "";
    notice = data["notice"]; // TEXT,'
    avatar = data["avatar"]; // INTEGER,' // 发送消息的端类型
    disturb = data["disturb"] ?? 0;
    noDisturb = data["noDisturb"] ?? 0;
    disbanded = data['disbandState'] ?? 0;
    remark = '${data["remarks"] ?? ''}';
    memberChatBannedStatus = data["memberChatBannedStatus"] ?? 0;
    final newMemberRemindClosedValue = data["newMemberRemindClosed"];
    if (newMemberRemindClosedValue is int) {
      newMemberRemindClosed = newMemberRemindClosedValue;
    } else if (newMemberRemindClosedValue is bool) {
      newMemberRemindClosed = newMemberRemindClosedValue ? 1 : 0;
    }

    final scanCodeJoinGroupSwitchStatusValue =
        data["scanCodeJoinGroupSwitchStatus"];
    if (scanCodeJoinGroupSwitchStatusValue is int) {
      scanCodeJoinGroupSwitchStatus = scanCodeJoinGroupSwitchStatusValue;
    } else if (scanCodeJoinGroupSwitchStatus is bool) {
      scanCodeJoinGroupSwitchStatus =
          scanCodeJoinGroupSwitchStatusValue ? 1 : 0;
    }

    scanCodeJoinGroupParam = '${data['scanCodeJoinGroupParam']}';
    banned = data['banned'] ?? 0;
    count = data['count'] ?? 0;
    noticeVersion = data['noticeVersion'] ?? 0;
    forbiddenAddFriends = data['forbiddenAddFriends'] ?? 0;

    if (null != data['freeJoinStatus']) {
      if (data['freeJoinStatus'] is int) {
        freeJoinStatus = data['freeJoinStatus'];
      } else if (data['freeJoinStatus'] is bool) {
        freeJoinStatus = (data['freeJoinStatus'] as bool) ? 1 : 0;
      }
    } else {
      freeJoinStatus = 0;
    }

    groupType = data['groupType'] ?? GroupType.Comm.value;
    nameIndex = PinyinHelper.getFirstWordPinyin(name)[0].toUpperCase();
  }

  void initFromPBGroup(GroupDetailRsp groupRsp) {
    groupId = groupRsp.groupId; // 当前用户的用户id
    ownerId = groupRsp.ownerId; // INTEGER,'   // 群聊为群id， 私聊为好友id
    // members = groupRsp.members; // INTEGER UNIQUE,' // 消息sn
    name = groupRsp.name;
    top = groupRsp.top;
    // needReceip = groupRsp.needReceipt;
    inviteRoleLimit = groupRsp.inviteRoleLimit;
    memberCountLimit = groupRsp.memberCountLimit;
    notice = groupRsp.notice; // TEXT,'
    avatar = groupRsp.avatar; // INTEGER,' // 发送消息的端类型
    disbanded = groupRsp.disbanded ? 1 : 0;
    remark = groupRsp.remark;
    memberChatBannedStatus = groupRsp.memberChatBannedStatus;
    newMemberRemindClosed = groupRsp.newMemberRemindClosed ? 1 : 0;
    scanCodeJoinGroupSwitchStatus =
        groupRsp.scanCodeJoinGroupSwitchStatus ? 1 : 0;
    scanCodeJoinGroupParam = groupRsp.scanCodeJoinGroupParam;
    banned = groupRsp.banned ? 1 : 0;
    count = groupRsp.memberCount;
    noticeVersion = groupRsp.noticeVersion;
    freeJoinStatus = groupRsp.freeJoin ? 1 : 0;
    groupType = groupRsp.groupType.value;
    forbiddenAddFriends = groupRsp.forbiddenAddFriendsToEachOther ? 1 : 0;
    nameIndex = PinyinHelper.getFirstWordPinyin(name)[0].toUpperCase();
    Map<String, dynamic> map = {};
    map["groupId"] = groupId.toInt();
    map["ownerId"] = groupId.toInt();
    // map["members"] = members;
    map["top"] = top ? 1 : 0;
    map["name"] = name;
    map["remark"] = remark;
    map["needReceip"] = needReceip;
    map["inviteRoleLimit"] = inviteRoleLimit;
    map["memberCountLimit"] = memberCountLimit;
    map["backPic"] = backPic;
    map["notice"] = notice;
    map["avatar"] = avatar;
    map["remarks"] = remark;
    map["disturb"] = disturb;
    map["noDisturb"] = noDisturb;
    map["disbandState"] = disbanded;
    map["memberChatBannedStatus"] = memberChatBannedStatus;
    map["newMemberRemindClosed"] = newMemberRemind ? 0 : 1;
    map["scanCodeJoinGroupSwitchStatus"] = scanCodeJoinGroup ? 1 : 0;
    map["scanCodeJoinGroupParam"] = scanCodeJoinGroupParam;
    map["banned"] = banned;
    map["count"] = count;
    map["noticeVersion"] = noticeVersion;
    map["freeJoinStatus"] = freeJoinStatus;
    map["groupType"] = groupType;
    map["forbiddenAddFriends"] = forbiddenAddFriends;
    groupInfoMap[groupId.toInt().toString()] = map;
  }

  Future<bool> fetchGroupData(int gId, {bool isFirst = false}) async {
    // log("--------state:${state}");
    // userId = AppUserInfo.instance.imId;
    groupId = Int64(gId);
    // if (groupInfoMap.containsKey(gId.toString())) {
    //   initWithMap(groupInfoMap[gId.toString()]!);
    //   return true;
    // }

    var result =
        await dbMsg?.query(tbGroup, where: "groupId=?", whereArgs: [gId]);

    // bool needSave = false;
    if ((result ?? []).isNotEmpty && !isFirst) {
      // 找到了
      LoggerManager().debug('result ========> ${result![0]}');
      initWithMap(result![0]);
      groupInfoMap[groupId.toInt().toString()] = result[0];
      log("get groupInfo from db");
    } else {
      // 没有找到 去网上找

      // $http.Response response = await RpcCallAppInterface(
      // message GroupDetailReq {} // srcId=用户id, groupId=指定群的id
      $http.Response response = await RpcCallImOuterApi(
              "/pb_grpc_group.Group/GroupDetail",
              GroupDetailReq(),
              MakePBCommData(
                  aimId: Int64($myInfo.AppUserInfo().imId),
                  groupId: Int64(gId),
                  toService: Service.group))
          .catchError((err) {
        log("---err:${err}");
        return $http.Response("$err", 500);
      });
      // if (response == null){
      //   showToast("获取好友:${friendImId}信息失败");
      //   return false;
      // }
      if (response.statusCode == 500) {
        // 业务错误
        //return null;
      }
      log("GroupDetailReq");
      if (response.statusCode == 200) {
        var rsp = GroupDetailRsp()..mergeFromBuffer(response.bodyBytes);
        initFromPBGroup(rsp);
        if (rsp.disbanded) {
          // 群已经解散
        } else {
          log("保存群组信息");
          saveGroupInfo();
        }
      }
    }
    // log("--------11state:${state}");
    return true;
  }

  updateDisturbToDb(int gId) {
    dbMsg?.update(
      tbGroup,
      {
        "disturb": disturb,
        "backPic": backPic,
      },
      where: "groupId=?",
      whereArgs: [gId],
    );
  }

  updateBgToDb(int gId) {
    dbMsg?.update(
      tbGroup,
      {
        "backPic": backPic,
      },
      where: "groupId=?",
      whereArgs: [gId],
    );
  }

  saveGroupInfo() {
    dbMsg?.insert(
      tbGroup,
      {
        "groupId": groupId.toInt(),
        "ownerId": ownerId.toInt(),
        // "members": members,
        "name": name,
        "needReceip": needReceip,
        "memberCountLimit": memberCountLimit,
        "inviteRoleLimit": inviteRoleLimit,
        "backPic": backPic,
        "disbandState": disbanded,
        "notice": notice,
        "avatar": avatar,
        'top': top,
        "disturb": disturb,
        "noDisturb": noDisturb,
        "remarks": remark,
        "banned": banned,
        "count": count,
        "noticeVersion": noticeVersion,
        "freeJoinStatus": freeJoinStatus,
        "memberChatBannedStatus": memberChatBannedStatus,
        "newMemberRemindClosed": newMemberRemindClosed,
        "scanCodeJoinGroupSwitchStatus": scanCodeJoinGroupSwitchStatus,
        "scanCodeJoinGroupParam": scanCodeJoinGroupParam,
        "groupType": groupType,
        "forbiddenAddFriends": forbiddenAddFriends,
      },
    ).then((value) {
      LoggerManager().debug('tbGroup insert $name value: $value');
    });
  }

  Future<bool> updateAvatarAction(String groupAvatar) async {
    EditAvatarReq req = EditAvatarReq();
    req.avatar = groupAvatar;
    $http.Response response = await RpcCallImOuterApi(
            "/pb_grpc_group.Group/EditAvatar",
            req,
            MakePBCommData(
                aimId: Int64($myInfo.AppUserInfo().imId),
                groupId: groupId,
                toService: Service.group))
        .catchError((err) {
      log("---err:${err}");
      return $http.Response("$err", 500);
    });

    log("EditAvatarReq");
    if (response.statusCode == 200) {
      // 更新群组头像
      return true;
    }
    return false;
  }

  @override
  String toString() {
    return 'GroupInfo{groupId: $groupId, ownerId: $ownerId, top: $top, inviteRoleLimit: $inviteRoleLimit, name: $name, backPic: $backPic, notice: $notice, avatar: $avatar, remark: $remark, needReceip: $needReceip, memberCountLimit: $memberCountLimit, mapMembers: $mapMembers, lstMsg: $lstMsg, disturb: $disturb, noDisturb: $noDisturb, disbanded: $disbanded, memberChatBannedStatus: $memberChatBannedStatus, newMemberRemindClosed: $newMemberRemindClosed, scanCodeJoinGroupSwitchStatus: $scanCodeJoinGroupSwitchStatus, banned: $banned, count: $count, noticeVersion: $noticeVersion, scanCodeJoinGroupParam: $scanCodeJoinGroupParam, freeJoinStatus: $freeJoinStatus, forbiddenAddFriends: $forbiddenAddFriends, groupType: $groupType, nameIndex: $nameIndex}';
  }
}

// 私聊消息结构
class ChatGroupData {
  late MSG_STATE msgStatus; // 消息状态
  late PBMessage pbHeadMsg; // 整个消息
  late $pb.GeneratedMessage pbDataMsg; // 解析的具体消息
  late TextChatType msgType;
  int recallUid = 0;
  int msgSn = 0;

  $locUinfo.UserInfo uinfo = $locUinfo.UserInfo();

  UserModel userInfo = UserModel();

  // 控制用
  bool selected = false;

  Future<void> initWithMapWithoutType(Map<String, dynamic> data) async {
    msgStatus = data["msgStatus"] ?? "";
    pbHeadMsg = PBMessage(
        pbName: data["pbName"] ?? "",
        pbCommData: PBCommData.fromBuffer(data["pbCommData"]),
        pbData: data["pbData"]);
    // dbSaveMsg(pbHeadMsg, flushed: false);
    msgType = TextChatType.valueOf(data['msgType'] ?? 0)!;
    pbDataMsg =
        Global.pbMsgCreator.createPbMsg(pbHeadMsg.pbName, pbHeadMsg.pbData)!;

    final srcId = pbHeadMsg.pbCommData.srcId.toInt();

    if (srcId > 0) {
      try {
        final userModel = await UserRepository().getUserInfo(
          srcId,
          sourceVersion: pbHeadMsg.pbCommData.userSourceVersion,
        );
        userModel.id = srcId;
        userInfo = userModel;
      } catch (error) {
        LoggerManager().error(
          'group user info error ======> $error',
        );
      }
    }
  }

  Future<void> generate(
    GroupMsgModel model,
  ) async {
    msgStatus = MSG_STATE.valueOf(model.msgState)!;
    pbHeadMsg = PBMessage(
      pbName: model.pbName,
      pbCommData: PBCommData.fromBuffer(model.pbCommData),
      pbData: model.pbData,
    );
    pbDataMsg = Global.pbMsgCreator.createPbMsg(
      pbHeadMsg.pbName,
      pbHeadMsg.pbData,
    )!;
    msgSn = model.msgSn;
    msgType = (null != model.recallUid && model.recallUid! > 0)
        ? TextChatType.RECALL
        : TextChatType.TEXT;
    LoggerManager().error('generate model srcId =========> ${model.srcId}');
    if (model.srcId > 0) {
      try {
        // final userModel = await AppDatabase().objectBox.getUser(model.srcId);
        final userModel = await UserRepository().getUserInfo(
          model.srcId,
          sourceVersion: model.userSourceVersion,
        );
        userModel.id = model.srcId;
        userInfo = userModel;
      } catch (error) {
        LoggerManager().error(
          'group user info error ======> $error',
        );
      }
    }
  }

  Future<void> initWithMap(Map<String, dynamic> data) async {
    if (data['msgType'] == TextChatType.RECALL.value) {
      if (null != data['recallUid']) {
        recallUid = data['recallUid'] as int;
      }
    }
    if (data['type'] != null && data['type'] == 1) {
      msgStatus = data["msgStatus"] ?? "";
      pbHeadMsg = PBMessage(
        pbName: data["pbName"] ?? "",
        pbCommData: PBCommData.fromBuffer(data["pbCommData"]),
        pbData: data["pbData"],
      );
      dbSaveMsg(pbHeadMsg, flushed: false);
    } else {
      msgStatus = MSG_STATE.valueOf(data["msgStatus"] ?? 0)!;
      pbHeadMsg = PBMessage.fromBuffer(data["pbData"]);
    }
    msgType = TextChatType.valueOf(data['msgType'] ?? 0)!;
    pbDataMsg =
        Global.pbMsgCreator.createPbMsg(pbHeadMsg.pbName, pbHeadMsg.pbData)!;

    final srcId = pbHeadMsg.pbCommData.srcId.toInt();

    if (srcId > 0) {
      try {
        final userModel = await UserRepository().getUserInfo(
          srcId,
          sourceVersion: pbHeadMsg.pbCommData.userSourceVersion,
        );
        userModel.id = srcId;
        userInfo = userModel;
      } catch (error) {
        LoggerManager().error(
          'group user info error ======> $error',
        );
      }
    }
    msgSn = data['msgSn'] ?? 0;
  }

  // Future<ChatGroupData> initWithPBMsg(PBMessage pbMessage) async {
  Future<void> initWithPBMsg(PBMessage pbMessage) async {
    LoggerManager().debug(
        'initWithPBMsg pbName ======> ${pbMessage.pbName} pbData ======> ${pbMessage.pbData}');
    msgStatus = MSG_STATE.INIT; // 主要是自己的状态新建的时候给个初始化
    pbHeadMsg = pbMessage;
    msgType = TextChatType.TEXT;
    pbDataMsg =
        Global.pbMsgCreator.createPbMsg(pbHeadMsg.pbName, pbHeadMsg.pbData)!;

    // $locUinfo.GetUserInfo(pbHeadMsg.pbCommData.srcId.toInt()).then((value) {
    //   uinfo = value;
    // });

    final srcId = pbHeadMsg.pbCommData.srcId.toInt();

    if (srcId > 0) {
      try {
        final userModel = await UserRepository().getUserInfo(
          srcId,
          sourceVersion: pbHeadMsg.pbCommData.userSourceVersion.toInt(),
        );
        userModel.id = srcId;
        userInfo = userModel;
      } catch (error) {
        LoggerManager().error(
          'group user info error ======> $error',
        );
      }
    }
  }

  ChatGroupData initPBMessage(PBMessage pbMessage) {
    pbHeadMsg = pbMessage;
    pbDataMsg = Global.pbMsgCreator.createPbMsg(
      pbHeadMsg.pbName,
      pbHeadMsg.pbData,
    )!;
    return this;
  }
}

///////////////////////////////////////////////////
// 消息发送
void sendTextMsg(
  int aimId,
  String text, {
  void Function(String msgSN)? sendBlock,
}) {
  var user = $myInfo.AppUserInfo.instance;
  if (user.imId == 0) {
    // 跳转到登录页面
    log("请先登录");
    return;
  }
  // 构造text消息
  var chatText = ChatText();
  chatText.aimUserId = Int64(aimId); // 'aimUserId')
  chatText.chatType = TextChatType
      .TEXT; //..e<$0.TextChatType>(3, 'chatType', $pb.PbFieldType.OE, defaultOrMaker: $0.TextChatType.TEXT, valueOf: $0.TextChatType.valueOf, enumValues: $0.TextChatType.values)
  // chatText.data = action.payload["data"]??"";//..aOS(4, 'data')
  // if (msgInputCtl.text.length == 0){
  //   showToast("还没有输入任何信息");
  //   // 获取焦点
  //   //FocusScope.of(context).requestFocus(focusNode);
  //   return;
  // }
  // 发送消息
  // var text = msgInputCtl.text;
  // msgInputCtl.clear();
  // msgInputFocus.unfocus();
  chatText.text = text;

  // 调用网络组件发送消息
  // var pbMsg = Client().sendMsg(chatText, "${finfo.imId}", pbCommData);
  var pbCommData = MakePBCommData(aimId: Int64(aimId))
    ..needReadReceipt = true
    ..needPushMsg = true;

  if (sendBlock != null) {
    sendBlock("${pbCommData.msgSn.toInt()}");
  }

  Client().sendMsg(
    chatText,
    Int64(aimId),
    pbCommData,
  ); //pbCommData);
  // 存储到消息列表，数据库
  // dbSaveMsg(pbMsg);
  // .then((value){
  //   // 通知消息到达，展示到界面
  //   GlobalStore.store.dispatch(GlobalActionCreator.onNetMsg(pbMsg));
  // });
}

void sendFileMsg(
  int aimId, {
  required PlatformFile file,
  // Function(String, String)? callback,]
  String? messageId,
  bool isGroupChat = false,
  Int64 groupId = Int64.ZERO,
  Function(FileMessage)? callback,
  Function(String, Status)? onStatusChanged,
}) async {
  String msgSn = messageId ?? IMClient.generateMessageId();

  final path = file.path;
  final name = file.name;

  if (null == messageId) {
    final FileMessage fileMessage = IMClient.buildFileMessage(
      aimId,
      path!,
      msgSn,
      file.size,
      name,
    );

    callback?.call(fileMessage);
  }

  final String? fileUrl = await OssUtils.uploadFile(
    path!,
    name: 'file/$name',
  );

  if (!TextUtil.isEmpty(fileUrl)) {
    await IMClient.sendFileMessage(
      aimId,
      fileUrl!,
      name: file.name,
      size: file.size,
      msgSn: msgSn,
      groupId: groupId,
      conversationType: isGroupChat ? CHAT_TYPE.GROUP : CHAT_TYPE.PRIVATE,
    );
  } else {
    showToast('文件发送失败，请重试');
    IMClient.sendFileMessage(
      aimId,
      path,
      name: name,
      size: file.size,
      msgSn: msgSn,
      groupId: groupId,
      conversationType: isGroupChat ? CHAT_TYPE.GROUP : CHAT_TYPE.PRIVATE,
    ).then((value) {
      onStatusChanged?.call(msgSn, Status.error);
      Future.delayed(const Duration(milliseconds: 1000), () {
        if (groupId > 0) {
          updateGroupMsgState(
            Int64.parseInt(msgSn),
            MSG_STATE.FAULT,
            EnMsgFrom.local,
          );
        } else {
          DBUpdateMsgState(
            Int64.parseInt(msgSn),
            MSG_STATE.FAULT,
            EnMsgFrom.local,
          );
        }
      });
    });
  }
}

void sendAudioMsg(
  int aimId, {
  required File soundFile,
  required int size,
  required Duration audioDuration,
  Function(AudioMessage)? callback,
  String? messageId,
  bool isGroupChat = false,
  Int64 groupId = Int64.ZERO,
  Function(String, Status)? onStatusChanged,
}) async {
  String msgSn = messageId ?? IMClient.generateMessageId();

  final path = soundFile.path;
  final name = path.substring(path.lastIndexOf("/") + 1, path.length);

  if (null == messageId) {
    final AudioMessage audioMessage = IMClient.buildAudioMessage(
      aimId,
      path,
      msgSn,
      size,
      name,
      audioDuration.inMicroseconds,
    );

    callback?.call(audioMessage);
  }

  final String? fileUrl = await OssUtils.uploadFile(
    path,
    name: 'audio/$name',
  );

  if (!TextUtil.isEmpty(fileUrl)) {
    await IMClient.sendAudioMessage(
      aimId,
      fileUrl!,
      name: name,
      size: size,
      msgSn: msgSn,
      groupId: groupId,
      duration: audioDuration.inMicroseconds,
      conversationType: isGroupChat ? CHAT_TYPE.GROUP : CHAT_TYPE.PRIVATE,
    );
  } else {
    showToast('语音发送失败，请重试');
    IMClient.sendAudioMessage(
      aimId,
      path,
      name: name,
      size: size,
      msgSn: msgSn,
      groupId: groupId,
      duration: audioDuration.inMicroseconds,
      conversationType: isGroupChat ? CHAT_TYPE.GROUP : CHAT_TYPE.PRIVATE,
    ).then((value) {
      onStatusChanged?.call(msgSn, Status.error);
      Future.delayed(const Duration(milliseconds: 1000), () {
        if (groupId > 0) {
          updateGroupMsgState(
            Int64.parseInt(msgSn),
            MSG_STATE.FAULT,
            EnMsgFrom.local,
          );
        } else {
          DBUpdateMsgState(
            Int64.parseInt(msgSn),
            MSG_STATE.FAULT,
            EnMsgFrom.local,
          );
        }
      });
    });
  }
}

const _uuid = Uuid();

Future<String> getTempPath() async {
  final id = _uuid.v4();
  return getTemporaryDirectory().then((appDocDir) {
    String filePath = '${appDocDir.path}$id.jpeg';
    return filePath;
  });
}

double getFileSize(File file) {
  int sizeInBytes = file.lengthSync();
  double sizeInMb = sizeInBytes / (1024 * 1024);
  return sizeInMb;
}

// final imagePicker = ImagePicker();
void SendImageMsg(
  int aimId,
  BuildContext context, {
  String? targetName,
  String? path,
  String? messageId,
  bool cameraPick = false,
  void Function(XFile? pickerFile, String msgSN)? imageBlock,
  bool isGroupChat = false,
  Int64 groupId = Int64.ZERO,
  Function(ImageMessage)? callback,
  Function(String, Status)? onStatusChanged,
}) async {
  // 选择图片
  XFile? imageFile;

  if (null == path) {
    if (Platform.isWindows || Platform.isMacOS || Platform.isLinux) {
      imageFile = await chooseLocalImage();
    } else {
      log("get image");
      imageFile = await ImagePicker().pickImage(
        source: ImageSource.gallery,
      );

      // if (null != imageFile) {
      //   final target = await getTempPath();
      //   final size = getFileSize(File(imageFile.path));
      //   if (size > 3) {
      //     final result = await FlutterImageCompress.compressAndGetFile(
      //       imageFile.path,
      //       target,
      //       quality: 85,
      //     );
      //     if (null != result) {
      //       imageFile = result;
      //     }
      //   }
      // }
    }
  } else {
    imageFile = XFile(path);
  }

  if (imageFile == null || imageFile.path.length < 3) {
    if (WindowClient.instance.isPC()) {
    } else {
      showToast("请选择图片");
    }
    return;
  }

  if (Platform.isWindows || Platform.isMacOS) {
    if (null == path) {
      final size = await ScreenshotHelper.getImageSize(imageFile.path);

      // ignore: use_build_context_synchronously
      DesktopWidget.showPopupWindow(
        context: context,
        child: (closeFunc) {
          return ImageEditorPage(
            filePath: imageFile!.path,
            callback: (result) {
              closeFunc();
              if (null != result) {
                final imageKey = GlobalKey<ImagePainterState>();
                // ignore: use_build_context_synchronously
                DesktopWidget.showPopupWindow(
                  context: context,
                  child: (closeFunc1) {
                    return Column(
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.circular(Dimens.gap_dp16),
                            child: ImagePainter.file(
                              result,
                              key: imageKey,
                            ),
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.symmetric(vertical: Dimens.gap_dp16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimens.gap_dp8),
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(
                                Dimens.gap_dp8,
                              ),
                              child: Container(
                                width: Dimens.gap_dp10 * 12,
                                height: Dimens.gap_dp46,
                                alignment: Alignment.center,
                                child: Text(
                                  '完成编辑',
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.surface,
                                  ),
                                ),
                              ),
                              onTap: () async {
                                try {
                                  LoadingDialog.show();
                                  final image = await imageKey.currentState
                                      ?.exportImage();
                                  if (null != image) {
                                    String directory;

                                    if (Platform.isWindows) {
                                      final dic = await getTemporaryDirectory();
                                      directory = dic.path;
                                    } else {
                                      final dic =
                                          await getApplicationSupportDirectory();
                                      directory = dic.path;
                                    }

                                    const uuid = Uuid();
                                    final fileName =
                                        'screenshot_edit_${uuid.v4()}.png';
                                    final filePath = '$directory/$fileName';

                                    final imgFile = File(filePath);

                                    imgFile.writeAsBytesSync(image);

                                    LoadingDialog.dismiss();

                                    closeFunc1();

                                    // ignore: use_build_context_synchronously
                                    DesktopWidget.showDesktopPopupWindow(
                                      context: context,
                                      width: 600,
                                      height: 600,
                                      target: targetName,
                                      child: (closeFunc1) => Container(
                                        padding: const EdgeInsets.all(16),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: SizedBox(
                                                height:
                                                    min(360, size.height / 2),
                                                child: RHExtendedImage.file(
                                                  imgFile,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                OutlinedButton(
                                                    onPressed: () {
                                                      closeFunc1();
                                                    },
                                                    child: const Text(('取消'))),
                                                const SizedBox(
                                                  width: 20,
                                                ),
                                                ElevatedButton(
                                                    onPressed: () async {
                                                      closeFunc1();
                                                      String msgSn = messageId ??
                                                          IMClient
                                                              .generateMessageId();
                                                      final bytes =
                                                          await imgFile
                                                              .readAsBytes();
                                                      final image =
                                                          await decodeImageFromList(
                                                              bytes);

                                                      if (null == path ||
                                                          cameraPick) {
                                                        final ImageMessage
                                                            imageMessage =
                                                            IMClient
                                                                .buildImageMessage(
                                                          aimId,
                                                          imgFile.path,
                                                          msgSn,
                                                          bytes.length,
                                                          image.width
                                                              .toDouble(),
                                                          image.height
                                                              .toDouble(),
                                                          fileName,
                                                        );

                                                        callback?.call(
                                                            imageMessage);
                                                      }

                                                      final Uint8List
                                                          uint8List =
                                                          await imgFile
                                                              .readAsBytes();

                                                      final String? fileUrl =
                                                          await OssUtils
                                                              .uploadFileData(
                                                        uint8List.toList(),
                                                        name: 'image/$fileName',
                                                      );

                                                      if (!TextUtil.isEmpty(
                                                          fileUrl)) {
                                                        await IMClient
                                                            .sendImageMessage(
                                                          aimId,
                                                          fileUrl!,
                                                          msgSn: msgSn,
                                                          name: fileName,
                                                          size: bytes.length,
                                                          width: image.width
                                                              .toDouble(),
                                                          height: image.height
                                                              .toDouble(),
                                                          groupId: groupId,
                                                          conversationType:
                                                              isGroupChat
                                                                  ? CHAT_TYPE
                                                                      .GROUP
                                                                  : CHAT_TYPE
                                                                      .PRIVATE,
                                                        );
                                                      } else {
                                                        showToast('图片上传失败，请重试');
                                                        onStatusChanged?.call(
                                                            msgSn,
                                                            Status.error);
                                                        Future.delayed(
                                                            const Duration(
                                                                milliseconds:
                                                                    1000), () {
                                                          if (groupId > 0) {
                                                            updateGroupMsgState(
                                                              Int64.parseInt(
                                                                  msgSn),
                                                              MSG_STATE.FAULT,
                                                              EnMsgFrom.local,
                                                            );
                                                          } else {
                                                            DBUpdateMsgState(
                                                              Int64.parseInt(
                                                                  msgSn),
                                                              MSG_STATE.FAULT,
                                                              EnMsgFrom.local,
                                                            );
                                                          }
                                                        });
                                                      }
                                                    },
                                                    child: const Text(('发送')))
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  }
                                } catch (error) {
                                  LoadingDialog.dismiss();
                                }
                              },
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                  width: 600,
                  height: 600,
                );
              }
            },
          );
        },
        width: 600,
        height: 600,
      );
      return;
    }
  }

  String msgSn = messageId ?? IMClient.generateMessageId();
  final bytes = await imageFile.readAsBytes();
  final image = await decodeImageFromList(bytes);

  if (null == path || cameraPick) {
    final ImageMessage imageMessage = IMClient.buildImageMessage(
      aimId,
      imageFile.path,
      msgSn,
      bytes.length,
      image.width.toDouble(),
      image.height.toDouble(),
      imageFile.name,
    );

    callback?.call(imageMessage);
  }

  final Uint8List uint8List = await imageFile.readAsBytes();

  final String? fileUrl = await OssUtils.uploadFileData(
    uint8List.toList(),
    name: 'image/${imageFile.name}',
  );

  if (!TextUtil.isEmpty(fileUrl)) {
    await IMClient.sendImageMessage(
      aimId,
      fileUrl!,
      msgSn: msgSn,
      name: imageFile.name,
      size: bytes.length,
      width: image.width.toDouble(),
      height: image.height.toDouble(),
      groupId: groupId,
      conversationType: isGroupChat ? CHAT_TYPE.GROUP : CHAT_TYPE.PRIVATE,
    );
  } else {
    showToast('图片上传失败，请重试');
    onStatusChanged?.call(msgSn, Status.error);
    Future.delayed(const Duration(milliseconds: 1000), () {
      if (groupId > 0) {
        updateGroupMsgState(
          Int64.parseInt(msgSn),
          MSG_STATE.FAULT,
          EnMsgFrom.local,
        );
      } else {
        DBUpdateMsgState(
          Int64.parseInt(msgSn),
          MSG_STATE.FAULT,
          EnMsgFrom.local,
        );
      }
    });
  }
}

void SendScreenshot(
  int aimId, {
  required String path,
  String? messageId,
  void Function(XFile? pickerFile, String msgSN)? imageBlock,
  bool isGroupChat = false,
  Int64 groupId = Int64.ZERO,
  Function(ImageMessage)? callback,
  Function(String, Status)? onStatusChanged,
}) async {
  // 选择图片
  XFile? imageFile = XFile(path);

  String msgSn = messageId ?? IMClient.generateMessageId();
  final bytes = await imageFile.readAsBytes();
  final image = await decodeImageFromList(bytes);

  if (null == messageId) {
    final ImageMessage imageMessage = IMClient.buildImageMessage(
      aimId,
      imageFile.path,
      msgSn,
      bytes.length,
      image.width.toDouble(),
      image.height.toDouble(),
      imageFile.name,
    );

    callback?.call(imageMessage);
  }

  final String? fileUrl = await OssUtils.uploadFile(
    imageFile.path,
    name: 'screenshot/${imageFile.name}',
  );

  if (!TextUtil.isEmpty(fileUrl)) {
    await IMClient.sendImageMessage(
      aimId,
      fileUrl!,
      msgSn: msgSn,
      name: imageFile.name,
      size: bytes.length,
      width: image.width.toDouble(),
      height: image.height.toDouble(),
      groupId: groupId,
      conversationType: isGroupChat ? CHAT_TYPE.GROUP : CHAT_TYPE.PRIVATE,
    );
  } else {
    showToast('图片上传失败，请重试');
    IMClient.sendImageMessage(
      aimId,
      imageFile.path,
      msgSn: msgSn,
      name: imageFile.name,
      size: bytes.length,
      width: image.width.toDouble(),
      height: image.height.toDouble(),
      groupId: groupId,
      conversationType: isGroupChat ? CHAT_TYPE.GROUP : CHAT_TYPE.PRIVATE,
    ).then((value) {
      onStatusChanged?.call(msgSn, Status.error);
      Future.delayed(const Duration(milliseconds: 1000), () {
        if (groupId > 0) {
          updateGroupMsgState(
            Int64.parseInt(msgSn),
            MSG_STATE.FAULT,
            EnMsgFrom.local,
          );
        } else {
          DBUpdateMsgState(
            Int64.parseInt(msgSn),
            MSG_STATE.FAULT,
            EnMsgFrom.local,
          );
        }
      });
    });
  }
}

Future<void> sendVideoMsg(
  int aimId, {
  String? path,
  String? messageId,
  bool isGroupChat = false,
  bool cameraPick = false,
  Int64 groupId = Int64.ZERO,
  Function(VideoMessage)? callback,
  Function(String, Status)? onStatusChanged,
}) async {
  File? videoFile;

  if (null == path) {
    final FilePickerResult? result =
        await FilePicker.platform.pickFiles(type: FileType.video);
    if (null != result && result.files.isNotEmpty) {
      videoFile = File(result.files.single.path!);
    }
  } else {
    videoFile = File(path);
  }

  if (null == videoFile) {
    showToast("请选择视频");
    return;
  }

  final videoSize = await videoFile.length();
  if (videoSize >= 104857600) {
    showToast("发送失败,视频不能大于100MB");
    return;
  }

  String msgSn = messageId ?? IMClient.generateMessageId();
  final bytes = await videoFile.readAsBytes();
  final String name = $path.basename(videoFile.path);

  final FlutterVideoInfo videoInfo = FlutterVideoInfo();
  final VideoData? videoData = await videoInfo.getVideoInfo(videoFile.path);

  final String? thumbnail = await VideoThumbnail.thumbnailFile(
    video: videoFile.path,
    thumbnailPath: (await getTemporaryDirectory()).path,
    imageFormat: ImageFormat.JPEG,
    quality: 100,
  );

  if (null == thumbnail) {
    showToast("视频上传失败，请重试");
    return;
  }

  final String thumbnailName = $path.basename(thumbnail);

  final String? thumbnailUrl = await OssUtils.uploadFile(
    thumbnail,
    name: 'video/$thumbnailName',
  );

  LoggerManager().debug('封面上传成功，封面地址 =======> $thumbnailUrl');

  final videoWidth = videoData?.width ?? 0;
  final videoHeight = videoData?.height ?? 0;

  LoggerManager().debug('开始上传视频：视频宽高 =====> $videoWidth --- $videoHeight');

  if (null == path || cameraPick) {
    final VideoMessage videoMessage = IMClient.buildVideoMessage(
      aimId,
      videoFile.path,
      msgSn,
      bytes.length,
      videoWidth.toDouble(),
      videoHeight.toDouble(),
      name,
      thumbnailUrl,
    );

    callback?.call(videoMessage);
  }

  // if (Platform.isAndroid || Platform.isIOS || Platform.isMacOS) {
  //   VideoCompress.compressProgress$.subscribe((progress) {
  //     LoggerManager().debug('progress ========> $progress');
  //   });
  //
  //   final mediaInfo = await VideoCompress.compressVideo(
  //     videoFile.path,
  //     quality: VideoQuality.DefaultQuality,
  //   );
  //   if (null != mediaInfo) {
  //     LoggerManager().debug('compress path ======? ${mediaInfo.path}');
  //   }
  // }

  final String? fileUrl = await OssUtils.uploadFile(
    videoFile.path,
    name: name,
  );

  if (!TextUtil.isEmpty(fileUrl)) {
    await IMClient.sendVideoMessage(
      aimId,
      fileUrl!,
      msgSn: msgSn,
      name: name,
      size: bytes.length,
      width: (videoData?.width ?? 0).toDouble(),
      height: (videoData?.height ?? 0).toDouble(),
      thumbnail: thumbnailUrl,
      groupId: groupId,
      conversationType: isGroupChat ? CHAT_TYPE.GROUP : CHAT_TYPE.PRIVATE,
    );
  } else {
    showToast('视频上传失败，请重试');
    IMClient.sendVideoMessage(
      aimId,
      videoFile.path,
      msgSn: msgSn,
      name: name,
      size: bytes.length,
      width: (videoData?.width ?? 0).toDouble(),
      height: (videoData?.height ?? 0).toDouble(),
      thumbnail: thumbnailUrl,
      groupId: groupId,
      conversationType: isGroupChat ? CHAT_TYPE.GROUP : CHAT_TYPE.PRIVATE,
    ).then((value) {
      onStatusChanged?.call(msgSn, Status.error);
      Future.delayed(const Duration(milliseconds: 1000), () {
        if (groupId > 0) {
          updateGroupMsgState(
            Int64.parseInt(msgSn),
            MSG_STATE.FAULT,
            EnMsgFrom.local,
          );
        } else {
          DBUpdateMsgState(
            Int64.parseInt(msgSn),
            MSG_STATE.FAULT,
            EnMsgFrom.local,
          );
        }
      });
    });
  }
}
