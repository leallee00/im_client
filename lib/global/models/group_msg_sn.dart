class GroupMsgSn {
  GroupMsgSn({
    this.groupId = 0,
    this.msgSn = 0,
    this.groupMsgSn = 0,
  });

  GroupMsgSn.fromJson(Map<Object?, Object?> json) {
    groupId = json['groupId'] as int;
    msgSn = json['msgSn'] as int;
    groupMsgSn = json['groupMsgSn'] as int;
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'groupId': groupId,
        'msgSn': msgSn,
        'groupMsgSn': groupMsgSn,
      };

  late int groupId;
  late int msgSn;
  late int groupMsgSn;
}
