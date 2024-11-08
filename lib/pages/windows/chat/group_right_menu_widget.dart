import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/chat_private/chat.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart';
import 'package:quliao/pb/pb_pub/service.pbenum.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/log.dart';

Widget groupRightAction(
    BuildContext context, GroupInfo groupInfo, Int64 groupId) {
  if (groupInfo.ownerId == AppUserInfo().imId) {
    return PopupMenuButton<int>(
      color: Colors.black87,
      // icon: Icon(Icons.add),
      onSelected: (int value) {
        log("select menu value:$value");
        if (groupInfo.disbanded == 1) {
          showToast("群已解散");
          return;
        }
        switch (value) {
          case 0:
            Navigator.pushNamed(context, "GroupInfoPage", arguments: groupInfo);
            break;
          case 1:
            // 群主只能解散不能退出
            Client.instance.sendMsg(
                DisbandGroupsReq()..groupIds.add(groupId),
                groupId,
                MakePBCommData(
                    aimId: groupId,
                    groupId: groupId,
                    toService: Service.group));
            Navigator.pop(context);

            break;
          default:
            break;
        }
      },
      itemBuilder: (context) {
        List<PopupMenuEntry<int>> items = [
          PopupMenuItem<int>(
            value: 0,
            child: Row(
              children: [
                Icon(Icons.settings),
                Text(
                  "群设置",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ), // Text('发起群聊'),
          ),
          PopupMenuItem<int>(
            value: 1,
            child: Row(
              children: [
                Icon(Icons.people_outline),
                Text(
                  "解散群",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ];

        return items;
      },
    );
  } else {
    return PopupMenuButton<int>(
      color: Colors.black87,
      // icon: Icon(Icons.add),
      onSelected: (int value) {
        log("select menu value:$value");
        if (groupInfo.disbanded == 1) {
          showToast("群已解散");
          return;
        }
        switch (value) {
          case 0:
            Navigator.pushNamed(context, "GroupInfoPage", arguments: groupInfo);
            break;
          case 1:

            /// 删除群信息
            Client.instance.sendMsg(
                QuitReq(),
                groupId,
                MakePBCommData(
                    aimId: groupId,
                    groupId: groupId,
                    toService: Service.group));
            showToast("您退出了群${groupId}");
            Navigator.pop(context);
            break;
          default:
            break;
        }
      },
      itemBuilder: (context) {
        List<PopupMenuEntry<int>> items = [
          PopupMenuItem<int>(
            value: 0,
            child: Row(
              children: [
                Icon(Icons.settings),
                Text(
                  "群设置",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ), // Text('发起群聊'),
          ),
          PopupMenuItem<int>(
            value: 1,
            child: Row(
              children: [
                Icon(Icons.people_outline),
                Text(
                  "退出群",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ];

        return items;
      },
    );
  }
}
