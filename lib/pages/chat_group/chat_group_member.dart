import 'package:quliao/pb/pb_msg/group/group.pb.dart';

class ChatGroupMember {
  ChatGroupMember({
    required this.data,
    required this.atName,
    this.atAll = false,
  });

  final Member data;
  String atName;
  final bool atAll;
}
