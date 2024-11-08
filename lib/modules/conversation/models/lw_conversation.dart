import 'package:quliao/pub/pub-def.dart';

class LwConversation {
  LwConversation({
    required this.conversationId,
    this.type,
    this.top,
    this.avatar,
    this.name,
    this.remark,
    this.unreadCount,
    this.noDisturb = false,
    this.lastMessage,
    this.draftText,
    this.msgTime,
    this.createTime,
    this.groupType = 0,
  });

  bool get privateChat => type == CHAT_TYPE.PRIVATE.index;

  bool get isPinned => top == true;

  LwConversation.fromJson(Map<String, dynamic> json) {
    conversationId = json['chatId'];
    type = json['chatType'];
    top = json['top'] == 1;
    noDisturb = json['noDisturb'] == 1;
    avatar = json['avatar'];
    name = json['name'];
    remark = json['remark'];
    unreadCount = json['newMsgCount'];
    lastMessage = json['msgTips'];
    draftText = json['draftText'];
    unreadCount = json['unreadCount'];
    msgTime = DateTime.parse(json['msgTime']);
    createTime = DateTime.parse(json['createTime']);
    msgSn = json['msgSn'] as int;
    if (null != json['groupMsgSn']) {
      groupMsgSn = json['groupMsgSn'] as int;
    } else {
      groupMsgSn = 0;
    }
    if (null != json['groupType']) {
      groupType = json['groupType'] as int;
    } else {
      groupType = 0;
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['conversationId'] = conversationId;
    data['chatType'] = type;
    data['top'] = top == true ? 1 : 0;
    data['avatar'] = avatar;
    data['name'] = name;
    data['remark'] = remark;
    data['unreadCount'] = unreadCount;
    data['lastMessage'] = lastMessage;
    data['draftText'] = draftText;
    data['unreadCount'] = unreadCount;
    data['msgSn'] = msgSn;
    data['groupMsgSn'] = groupMsgSn;
    data['groupType'] = groupType;
    return data;
  }

  late int conversationId;
  int? type;
  bool? top;
  String? avatar;
  String? name;
  String? remark;
  int? unreadCount;
  late bool noDisturb;
  String? lastMessage;
  String? draftText;
  DateTime? msgTime;
  DateTime? createTime;
  late int msgSn;
  late int groupMsgSn;
  late int groupType;
}
