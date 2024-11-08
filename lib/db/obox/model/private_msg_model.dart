import 'dart:typed_data';

import 'package:objectbox/objectbox.dart';
import 'package:quliao/utils/safe_convert.dart';

@Entity()
class PrivateMsgModel {
  PrivateMsgModel({
    this.id = 0,
    this.userSourceVersion = 0,
  });

  @Id()
  int id;

  @Index()
  late int userId;
  late int srcId;
  String pbName = '';
  late Uint8List pbData;
  late Uint8List pbCommData;
  late int msgState;
  late int createdAt;
  late int updatedAt;
  @Index()
  late int msgSn;
  int? recallUid;
  int userSourceVersion;

  factory PrivateMsgModel.fromJson(Map<String, dynamic> json) {
    final model = PrivateMsgModel();
    model.userId = asT<int>(json, 'userId');
    model.srcId = asT<int>(json, 'srcId');
    model.pbName = asT<String>(json, 'pbName');
    model.msgState = asT<int>(json, 'msgState');
    model.pbData = asT<Uint8List>(json, 'pbData');
    model.pbCommData = asT<Uint8List>(json, 'pbCommData');
    model.createdAt = asT<int>(json, 'createdAt');
    model.updatedAt = asT<int>(json, 'updatedAt');
    model.msgSn = asT<int>(json, 'msgSn');
    model.recallUid = asT<int>(json, 'recallUid');
    model.userSourceVersion = asT<int>(json, 'userSourceVersion');
    return model;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['userId'] = userId;
    data['pbName'] = pbName;
    data['msgState'] = msgState;
    data['pbData'] = pbData;
    data['pbCommData'] = pbCommData;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['msgSn'] = msgSn;
    data['recallUid'] = recallUid;
    data['userSourceVersion'] = userSourceVersion;
    return data;
  }
}
