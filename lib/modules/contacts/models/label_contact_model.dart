import 'package:quliao/models/user/friendInfo.dart';

class LabelContactModel {
  const LabelContactModel({
    this.data,
    this.type = 0,
  });

  final FriendInfo? data;
  final int type;
}
