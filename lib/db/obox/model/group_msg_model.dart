import 'dart:typed_data';

import 'package:objectbox/objectbox.dart';
import 'package:quliao/utils/safe_convert.dart';

@Entity()
class GroupMsgModel {
  GroupMsgModel({
    this.id = 0,
    this.userSourceVersion = 0,
  });

  @Id()
  int id;

  // late int id;
  @Index()
  late int groupId;

  late int userId;
  /// 发送者
  late int srcId;
  String pbName = '';
  late Uint8List pbData;
  late Uint8List pbCommData;
  late int msgState;
  late int createdAt;
  late int updatedAt;
  late int msgSn;
  late int groupMsgSn;
  int? recallUid;
  int userSourceVersion;

  factory GroupMsgModel.fromJson(Map<String, dynamic> json) {
    final model = GroupMsgModel();
    model.groupId = asT<int>(json, 'groupId');
    model.userId = asT<int>(json, 'userId');
    model.srcId = asT<int>(json, 'srcId');
    model.msgState = asT<int>(json, 'msgState');
    model.pbName = asT<String>(json, 'pbName');
    model.pbData = asT<Uint8List>(json, 'pbData');
    model.pbCommData = asT<Uint8List>(json, 'pbCommData');
    model.createdAt = asT<int>(json, 'createdAt');
    model.updatedAt = asT<int>(json, 'updatedAt');
    model.msgSn = asT<int>(json, 'msgSn');
    model.groupMsgSn = asT<int>(json, 'groupMsgSn');
    model.recallUid = asT<int>(json, 'recallUid');
    model.userSourceVersion = asT<int>(json, 'userSourceVersion');
    return model;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['groupId'] = groupId;
    data['userId'] = userId;
    data['msgState'] = msgState;
    data['pbName'] = pbName;
    data['pbData'] = pbData;
    data['pbCommData'] = pbCommData;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['msgSn'] = msgSn;
    data['groupMsgSn'] = groupMsgSn;
    data['recallUid'] = recallUid;
    data['userSourceVersion'] = userSourceVersion;
    return data;
  }
}
