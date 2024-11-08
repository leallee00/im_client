import 'package:quliao/models/msg_struct.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/models/user/userinfo.dart';
import 'package:quliao/pages/chat_group/flyer_chat/chat_group_change_to_message.dart';
import 'package:quliao/pages/chat_private/chat.dart';
import 'package:quliao/pages/chat_private/flyer_chat/chat_private_change_to_message.dart';
import 'package:quliao/pages/windows/client/window_client.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';

Future<void> showLocalNotificationAlert(PBMessage pbMessage) async {
  String showBody = "";
  String msgSn = "";
  String title = "";
  if (pbMessage.pbName.contains("GroupChat")) {
    var msg = ChatGroupData();
    msg.initWithPBMsg(pbMessage); //.then((value) {
    msg.uinfo = await GetUserInfo(pbMessage.pbCommData.srcId.toInt());
    var map = await changeToGroupMessageMap(msg);
    int groupId = pbMessage.pbCommData.groupId.toInt();
    GroupInfo groupInfo = GroupInfo();
    await groupInfo.fetchGroupData(groupId);
    // 本地弹消息面板
    showBody = map["text"];
    msgSn = "${pbMessage.pbCommData.msgSn}";
    title = (groupInfo.name.isNotEmpty ? "群聊-${groupInfo.name}" : "");
  } else if (pbMessage.pbName.contains("ChatText")) {
    ChatPrivateData privateData = ChatPrivateData()..initWithPbMsg(pbMessage);
    var map = await changeToMessageMap(privateData);
    int friendId = privateData.friendId.toInt();
    FriendInfo friendInfo = FriendInfo();
    await friendInfo.LoadFriendData(friendId);

    showBody = map["text"];
    msgSn = "${privateData.msgSn}";
    title = friendInfo.userInfo.nickName.isNotEmpty
        ? "用户 ${friendInfo.userInfo.nickName}"
        : "";
  }

  if (showBody.isNotEmpty) {
    WindowClient.instance.showLocalBoard(
      showBody,
      msgSn,
      title,
    );
  }
}
