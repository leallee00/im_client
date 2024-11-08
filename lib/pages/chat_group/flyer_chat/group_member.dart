import 'package:quliao/pb/pb_msg/group/group.pb.dart';

class GroupMemberModel {
  const GroupMemberModel({
    /// 1： 添加 2：删除
    this.type = 0,
    this.data,
  });

  final int type;
  final Member? data;
}
