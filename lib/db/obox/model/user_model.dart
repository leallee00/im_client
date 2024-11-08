import 'package:objectbox/objectbox.dart';
import 'package:quliao/utils/safe_convert.dart';

@Entity()
class UserModel {
  UserModel();

  @Id(assignable: true)
  late int id;

  late int appId;
  late String appUid;
  late String appUserId;
  String nickName = '';
  String avatar = '';
  late int level = 0;
  String signName = '';
  int sourceVersion = 0;
  late int role;
  late int gender;
  bool banned = false;
  String sign = '';

  factory UserModel.fromJson(Map<String, dynamic> json) {
    final model = UserModel();
    model.id = asT<int>(json, 'imId');
    model.appId = asT<int>(json, 'appId');
    model.appUid = asT<String>(json, 'appUid');
    model.appUserId = asT<String>(json, 'appUserId');
    model.nickName = asT<String>(json, 'nickname');
    model.avatar = asT<String>(json, 'headerImageOriginal');
    model.level = asT<int>(json, 'level');
    model.signName = asT<String>(json, 'signName');
    model.sourceVersion = asT<int>(json, 'sourceVersion');
    model.role = asT<int>(json, 'role');
    model.gender = asT<int>(json, 'gender');
    model.banned = asT<bool>(json, 'banned');
    model.sign = asT<String>(json, 'sign');
    return model;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['imId'] = id;
    data['appId'] = appId;
    data['appUid'] = appUid;
    data['appUserId'] = appUserId;
    data['nickname'] = nickName;
    data['headerImageOriginal'] = avatar;
    data['level'] = level;
    data['signName'] = signName;
    data['sourceVersion'] = sourceVersion;
    data['role'] = role;
    data['gender'] = gender;
    data['banned'] = banned;
    data['sign'] = sign;
    return data;
  }
}
