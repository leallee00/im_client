import 'dart:typed_data';

import 'package:objectbox/objectbox.dart';
import 'package:quliao/db/obox/model/group_model.dart';
import 'package:quliao/db/obox/model/user_model.dart';
import 'package:quliao/db/obox/objectbox.g.dart';
import 'package:quliao/pb/pb_msg/offline_msg/offlineMsg.pb.dart';
import 'package:quliao/utils/msg_utils.dart';
import 'package:quliao/utils/safe_convert.dart';

@Entity()
class ConversationModel {
  ConversationModel({
    this.userSourceVersion = 0,
  });

  // @Id()
  // int id = 0;

  /// 会话id
  @Id(assignable: true)
  late int id;
  late int sessionType;
  late int srcId;
  late int userId;

  /// 最后一条消息状态
  late int lastMsgState;
  late int msgSn;
  int? groupId;
  int? groupMsgSn;
  String pbName = '';
  late Uint8List pbData;
  late Uint8List pbCommData;
  late int createdAt;
  late int updatedAt;
  int? newMsgCount;
  int? top;
  int userSourceVersion;

  UserModel? userInfo;
  GroupModel? groupInfo;

  int get conversationId => id;

  bool get isPinned => top == 1;

  String get avatar =>
      privateChat ? userInfo?.avatar ?? '' : groupInfo?.avatar ?? '';

  String get nickname => privateChat
      ? userInfo?.nickName ?? ''
      : groupInfo?.name ?? '$conversationId';

  String get remark => '';

  bool get noDisturb => false;

  bool get privateChat =>
      sessionType == CHAT_SESSION_TYPE.CHAT_SESSION_TYPE_PRIVATE_CHAT.value;

  Future<String> latestMsg() async {
    return MsgUtils.getLatestMsg(
      pbName,
      pbData,
      pbCommData,
      privateChat: privateChat,
    );
  }

  // Uint8List? smallUserStatus;
  // Uint8List? bigUserStatus;

  factory ConversationModel.fromJson(Map<String, dynamic> json) {
    final model = ConversationModel();
    model.id = asT<int>(json, 'session');
    model.sessionType = asT<int>(json, 'sessionType');
    model.srcId = asT<int>(json, 'srcId');
    model.userId = asT<int>(json, 'userId');
    model.lastMsgState = asT<int>(json, 'lastMsgState');
    model.msgSn = asT<int>(json, 'msgSn');
    model.groupId = model.id;
    model.groupMsgSn = asT<int>(json, 'groupMsgSn');
    model.pbName = asT<String>(json, 'pbName');
    model.pbData = asT<Uint8List>(json, 'pbData');
    model.pbCommData = asT<Uint8List>(json, 'pbCommData');
    model.createdAt = asT<int>(json, 'createdAt');
    model.updatedAt = asT<int>(json, 'updatedAt');
    model.newMsgCount = asT<int>(json, 'newMsgCount');
    model.top = asT<int>(json, 'top');
    model.userSourceVersion = asT<int>(json, 'userSourceVersion');
    // model.smallUserStatus = asT<Uint8List>(json, 'smallUserStatus');
    // model.bigUserStatus = asT<Uint8List>(json, 'bigUserStatus');
    return model;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['session'] = id;
    data['sessionType'] = sessionType;
    data['srcId'] = srcId;
    data['userId'] = userId;
    data['lastMsgState'] = lastMsgState;
    data['msgSn'] = msgSn;
    data['groupId'] = groupId;
    data['groupMsgSn'] = groupMsgSn;
    data['pbName'] = pbName;
    data['pbData'] = pbData;
    data['pbCommData'] = pbCommData;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['newMsgCount'] = newMsgCount;
    data['top'] = top;
    data['userSourceVersion'] = userSourceVersion;
    // data['smallUserStatus'] = smallUserStatus;
    // data['bigUserStatus'] = bigUserStatus;
    return data;
  }
}
