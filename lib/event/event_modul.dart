import 'package:file_selector/file_selector.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/modules/conversation/enum/member.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart';
import 'package:quliao/pb/pb_msg/user_center/userCenter.pb.dart'
    hide FriendInfo;
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pub/pub-def.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

// 消息是从哪里来的，方便业务处理
enum EnMsgFrom {
  local, // 本地发送的消息
  net // 从网络来的消息
}

class ApplyAnswerEvent {
  const ApplyAnswerEvent(
    this.userId,
    this.nickname,
  );

  final int userId;
  final String nickname;
}

class KickOutEvent {
  const KickOutEvent({
    required this.groupId,
    required this.userId,
  });

  final int groupId;
  final int userId;
}

class UpdateRedPacketState {
  const UpdateRedPacketState({
    required this.id,
    required this.data,
  });

  final String id;
  final RedPacketInfoRsp data;
}

class NotifyRedPacket {
  const NotifyRedPacket({
    required this.message,
    required this.conversationId,
  });

  final types.Message message;
  final int conversationId;
}

class DelPrivateChatBackground {
  const DelPrivateChatBackground({
    required this.friendId,
    required this.data,
  });

  final int friendId;
  final BackgroundImageInfo data;
}

class UpdatePrivateChatBackground {
  const UpdatePrivateChatBackground({
    required this.friendId,
    required this.data,
  });

  final int friendId;
  final BackgroundImageInfo data;
}

class DelGroupChatBackground {
  const DelGroupChatBackground({
    required this.groupId,
    required this.data,
  });

  final int groupId;
  final BackgroundImageInfo data;
}

class UpdateGroupChatBackground {
  const UpdateGroupChatBackground({
    required this.groupId,
    required this.data,
  });

  final int groupId;
  final BackgroundImageInfo data;
}

class UpdateMemberEvent {
  const UpdateMemberEvent({
    required this.member,
    this.type = MemberType.normal,
  });

  final Member member;
  final MemberType type;
}

class PermissionDefined {}

class ScrollToMessage {
  const ScrollToMessage({
    required this.messageId,
  });

  final String messageId;
}

class ForwardMessage {
  const ForwardMessage({
    required this.conversationId,
    required this.message,
  });

  final int conversationId;
  final Message message;
}

class UpdateGroupName {
  const UpdateGroupName({
    required this.groupId,
    required this.groupDetails,
  });

  final int groupId;
  final GroupDetailRsp groupDetails;
}

class UpdateGroupUserRole {
  const UpdateGroupUserRole({
    required this.groupId,
    required this.userId,
    required this.role,
  });

  final int groupId;
  final int userId;
  final int role;
}

class UpdateGroupMemberInfo {
  const UpdateGroupMemberInfo({
    required this.groupId,
    required this.member,
  });

  final int groupId;
  final Member member;
}

class UpdateFriendInfo {
  const UpdateFriendInfo({
    required this.friendInfo,
    this.groupId = 0,
  });

  final int groupId;
  final FriendInfo friendInfo;
}

/// 先统一更新，后面再分粒度更新
class UserSourceVersionChanged {}

class SendDropFiles {
  const SendDropFiles({
    required this.conversationId,
    required this.files,
  });

  final int conversationId;
  final List<XFile> files;
}

class HideChatMenuPanel {}

class ClearHistoryMessage {
  const ClearHistoryMessage({
    required this.chatId,
    this.chatType = CHAT_TYPE.PRIVATE,
  });

  final int chatId;
  final CHAT_TYPE chatType;
}

class InsertAtText {
  String text;

  InsertAtText(this.text);
}

class DeleteFriendEvent {
  const DeleteFriendEvent({
    this.userId,
  });

  final int? userId;
}

/// Event 收到网络消息
class EventOnNetMsg {
  PBMessage pbMsg;
  EnMsgFrom enMsgFrom;

  EventOnNetMsg(this.pbMsg, this.enMsgFrom);
}

/// 好友申请
class FriendApplyBus {
  bool showBadge = false;

  FriendApplyBus(this.showBadge);
}

// 接收的消息，数据库更新完成后刷新本页面即可
class FriendApplyDbUpdateNotify {}

// 好友数据库变更通知
class FriendDbChangeNotify {}
// enum EVENT_NOTIFY_TYPE{
//   NEW_MSG_COUNT_CLEAR,
// }

/// 一些通知
// class EventNotify{
//   late EVENT_NOTIFY_TYPE eventNotifyType;
//   dynamic data;
// }

// /// 连接状态变化通知
// class EventOnNetStateChange{
//   EventOnNetStateChange(this.preNetState, this.curNetState, this.resion);
//   late NET_STATE preNetState;
//   late NET_STATE curNetState;
//   late String resion;
// }
//
// /// 网络类型变化通知
// class EventOnNetTypeChange{
//   EventOnNetTypeChange(this.netType);
//   late ConnectivityResult netType;
// }

/// 网络延迟变化通知

class ReloadChatListData {
  ReloadChatListData({
    this.chatId,
  });

  int? chatId;
}
