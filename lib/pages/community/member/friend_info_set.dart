// 新的朋友列表
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/pages/windows/client/window_client.dart';
import 'package:quliao/pb/pb_msg/friend/friend.pb.dart';
import 'package:quliao/pub/config.dart';
import 'package:quliao/pub/func.dart';

import '../../home/home_page.dart';
import '../../windows/home/window_home.dart';

class FriendInfoSet extends StatefulWidget {
  FriendInfoSet({super.key, required this.finfo});

  final FriendInfo finfo;

  @override
  FriendInfoSetState createState() => new FriendInfoSetState();
}

class FriendInfoSetState extends State<FriendInfoSet> {
  @override
  void initState() {}

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("资料设置"),
        ),
        // backgroundColor: Colors.white10,
        body: ListView(
          children: [
            Divider(color: Colors.grey),
            ListTile(
              title: Text("设置备注:"),
              trailing: SizedBox(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    widget.finfo.remark != ""
                        ? Text(
                            "${widget.finfo.remark}",
                          )
                        : Text(
                            "${widget.finfo.userInfo.nickName}",
                          ),
                    Icon(Icons.chevron_right)
                  ],
                ),
              ),
              onTap: () {
                String tmpData = "";
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      // TextEditingController _controller = TextEditingController(text: "${widget.finfo.remark}");
                      return AlertDialog(
                        // title: Text("输入群id"),
                        content: TextField(
                          autofocus: true,
                          controller: TextEditingController(
                            text: widget.finfo.remark.length > 0
                                ? "${widget.finfo.remark}"
                                : "${widget.finfo.userInfo.nickName}",
                          ),
                          decoration: InputDecoration(
                            // labelText: "群id",
                            hintText: "备注",

                            prefixIcon: Icon(Icons.group),
                          ),
                          onChanged: (value) {
                            // widget.finfo.mobile = value;
                            tmpData = value;
                          },
                        ),
                        actions: [
                          TextButton(
                            child: Text("确定"),
                            onPressed: () {
                              Navigator.pop(context);
                              widget.finfo.remark = tmpData;
                              widget.finfo.UpdateField("remark", tmpData,
                                  Friend()..remark = tmpData);
                              setState(() {});
                            },
                          ),
                          TextButton(
                            child: Text("取消"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          )
                        ],
                      );
                    });
                ////////////
              },
            ),
            ListTile(
              title: Text("朋友权限"),
              trailing: Icon(Icons.chevron_right),
            ),
            Divider(color: Colors.grey),
            ListTile(
              title: Text("把他推荐给朋友"),
              trailing: Icon(Icons.chevron_right),
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
                title: Text("设置为星标朋友"),
                trailing: Switch(
                  value: widget.finfo.stared,
                  onChanged: (value) {
                    widget.finfo.stared = value;
                    widget.finfo
                        .UpdateField("stared", value, Friend()..stared = value);
                    setState(() {});
                  },
                )),
            Divider(color: Colors.grey),
            ListTile(
                title: Text("加入黑名单"),
                trailing: Switch(
                  value: widget.finfo.blocked,
                  onChanged: (value) {
                    widget.finfo.blocked = value;
                    widget.finfo.UpdateField(
                        "blocked", value, Friend()..blocked = value);
                    setState(() {});
                  },
                )),
            ListTile(title: Text("投诉"), trailing: Icon(Icons.chevron_right)),
            Divider(color: Colors.grey),
            ListTile(
              leading: Icon(
                Icons.delete,
                color: Colors.red,
              ),
              title: Text("删除"),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        // title: Text("输入群id"),
                        content: Text(
                          "您真的要删除跟好友 ${widget.finfo.userInfo.nickName} ${widget.finfo.tags} 的所有信息吗？",
                        ),
                        actions: [
                          TextButton(
                            child: Text("确定"),
                            onPressed: () {
                              // Navigator.pop(context);
                              dbDelFriend(widget.finfo.friendId);
                              // setState(() {
                              // });
                              if (Platform.isWindows ||
                                  Platform.isLinux ||
                                  Platform.isMacOS) {
                                Navigator.popUntil(
                                  context,
                                  ModalRoute.withName(WindowHomePage.name),
                                );
                              } else {
                                Navigator.popUntil(
                                  context,
                                  ModalRoute.withName(MainPage.name),
                                );
                              }
                            },
                          ),
                          TextButton(
                            child: Text("取消"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          )
                        ],
                      );
                    });
                ////////////
              },
            ),
            Divider(color: Colors.grey),
          ],
        ));
  }
}
