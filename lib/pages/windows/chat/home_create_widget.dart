import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/chat_group/group_create.dart';
import 'package:quliao/pages/chat_index/chat_index.dart';
import 'package:quliao/pb/pb_msg/friend/friend.pb.dart';
import 'package:quliao/pb/pb_pub/service.pbenum.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/log.dart';

var inputGroupId = Int64(0);

Widget homeCreateAction(BuildContext context) {
  return PopupMenuButton<MenuValue>(
    color: const Color(0xFF2D2D2D),
    icon: const Icon(
      Icons.add,
      color: Colors.black87,
    ),
    enabled: true,
    onSelected: (MenuValue value) async {
      log("select menu value:$value");
      switch (value) {
        case MenuValue.MenuValue_CreateGroupChat:
          // 切换到创建群聊页面
          // Navigator.pushNamed(context, "GroupCreate",
          //     arguments: <FriendInfo>[]);
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext ctx) {
            return GroupCreate(
              memberList: const <FriendInfo>[],
              groupId: 0,
            );
          }));
          break;
        case MenuValue.MenuValue_ApplyGroupChat:
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text("输入群id"),
                  content: TextField(
                    autofocus: true,
                    decoration: const InputDecoration(
                      // labelText: "群id",
                      hintText: "请输入群id",
                      prefixIcon: Icon(Icons.group),
                    ),
                    onChanged: (value) {
                      inputGroupId = Int64.parseInt(value);
                    },
                  ),
                  actions: [
                    TextButton(
                      child: const Text("取消"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    TextButton(
                      child: const Text("加入"),
                      onPressed: () {
                        if (inputGroupId <= 0) {
                          showToast("请输入群id");
                          return;
                        }
                        // 发送消息
                        Client.instance.sendMsg(
                            ApplyReq(),
                            inputGroupId,
                            MakePBCommData(
                                aimId: inputGroupId,
                                groupId: inputGroupId,
                                toService: Service.group));

                        Navigator.pop(context);

                        showToast("请求已发送，等待确认");
                      },
                    ),
                  ],
                );
              });
          break;
        case MenuValue.MenuValue_AddFriend:
          Navigator.pushNamed(context, "AddFriend");
          break;
        case MenuValue.MenuValue_Scene:
          // String? code = await Navigator.push(context,
          //     MaterialPageRoute(builder: (context) {
          //   return ScanCodePage(title: "扫一扫");
          // }));
          break;
        default:
          break;
      }
    },
    itemBuilder: (context) {
      return <PopupMenuEntry<MenuValue>>[
        PopupMenuItem<MenuValue>(
          value: MenuValue.MenuValue_CreateGroupChat,
          // child: TextButton(onPressed: () {
          //
          // },
          child: Row(
            children: [
              Icon(
                Icons.chat_bubble,
                color: Colors.white,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                "发起群聊",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          // ), // Text('发起群聊'),
        ),
        PopupMenuItem<MenuValue>(
          value: MenuValue.MenuValue_ApplyGroupChat,
          // child: TextButton(onPressed: () {  },
          child: Row(
            children: [
              Icon(
                Icons.group_add,
                color: Colors.white,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                "加入群聊",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        // ),
        PopupMenuItem<MenuValue>(
          value: MenuValue.MenuValue_AddFriend,
          // child: TextButton(onPressed: () {  },
          child: Row(
            children: [
              Icon(
                Icons.person_add,
                color: Colors.white,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                "添加朋友",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        // ),
        // const PopupMenuItem<MenuValue>(
        //   value: MenuValue.MenuValue_Scene,
        //   // child: TextButton(onPressed: () {  },
        //   child: Row(
        //     children: [
        //       Icon(
        //         Icons.repeat,
        //         color: Colors.white,
        //       ),
        //       SizedBox(
        //         width: 4,
        //       ),
        //       Text(
        //         "扫一扫",
        //         style: TextStyle(color: Colors.white),
        //       ),
        //     ],
        //   ),
        //   // ),
        // ),
      ];
    },
  );
}
