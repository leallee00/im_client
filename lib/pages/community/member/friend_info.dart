// 新的朋友列表
import 'package:date_format/date_format.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quliao/models/user/friendInfo.dart' as $locFriendInfo;
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/pages/chat_private/call.dart';
import 'package:quliao/pages/chat_private/flyer_chat/test_page.dart';
import 'package:quliao/pages/friend/friend_info_set.dart';
import 'package:quliao/pb/pb_msg/call_scene/call_scene.pb.dart';
import 'package:quliao/pb/pb_msg/friend/friend.pb.dart' as $pbfriend;
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/utils/cache.dart';

class FriendInfoV extends StatefulWidget {
  const FriendInfoV({
    super.key,
    required this.finfo,
    required this.groupId,
  });

  final $locFriendInfo.FriendInfo finfo;
  final int groupId;

  @override
  FriendInfoVState createState() => new FriendInfoVState();
}

class FriendInfoVState extends State<FriendInfoV> {
  String get userNickname => widget.finfo.userInfo.nickName.isEmpty
      ? '游客${widget.finfo.userInfo.imId}'
      : widget.finfo.userInfo.nickName;

  String get signName => widget.finfo.userInfo.signName.isEmpty
      ? '暂无签名'
      : widget.finfo.userInfo.signName;

  @override
  void initState() {}

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        // actions: [
        //   IconButton(
        //     icon: Icon(Icons.more_horiz),
        //     onPressed: () {
        //       // 打开设置
        //       Navigator.push(context,
        //           MaterialPageRoute(builder: (BuildContext context) {
        //         return FriendInfoSet(
        //           finfo: widget.finfo,
        //         );
        //       }));
        //     },
        //   ),
        // ],
      ),
      // backgroundColor: Colors.white10,
      body: MakeBodyWidget(),
    );
  }

  Widget MakeBodyWidget() {
    String tmpData = "";
    log("widget.finfo.state=${widget.finfo} widget.finfo.uinfo:${widget.finfo.userInfo}");
    if (widget.finfo.friendRelation ==
        $locFriendInfo.enFriendRelation.stranger) {
      return ListView(children: [
        Container(
          child: Row(
            children: [
              avatar(widget.finfo.userInfo.avatar, 60, 60),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          widget.finfo.userInfo.nickName,
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                          ),
                        ),
                        Icon(
                          Icons.pregnant_woman,
                          color: Colors.red,
                        )
                      ],
                    ),
                    Text("昵称:$userNickname"),
                    Text("个性签名:$signName"),
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(color: Colors.grey),
        if (Cache.getInstance().systemConfig?.canAddFriend ?? false)
          TextButton(
            onPressed: () {},
            child: Text("加为好友"),
          ),
      ]);
    } else if (widget.finfo.friendRelation ==
        $locFriendInfo.enFriendRelation.friend) {
      return ListView(
        children: [
          Container(
            child: Row(
              children: [
                avatar(widget.finfo.userInfo.avatar, 60, 60),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            widget.finfo.userInfo.nickName,
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                            ),
                          ),
                          Icon(
                            Icons.pregnant_woman,
                            color: Colors.red,
                          )
                        ],
                      ),
                      Text("昵称:$userNickname"),
                      Text("个性签名:$signName"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // 分割
          Divider(color: Colors.grey),
          ListTile(
            title: Text("电话号码:${widget.finfo.mobile}"),
            onTap: () {
              ///////////
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      // title: Text("输入群id"),
                      content: TextField(
                        autofocus: true,
                        decoration: InputDecoration(
                          // labelText: "群id",
                          hintText: "电话号码",
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
                            widget.finfo.mobile = tmpData;
                            var pbFriend = $pbfriend.Friend();
                            pbFriend.mobile = tmpData;
                            widget.finfo
                                .UpdateField("mobile", tmpData, pbFriend);
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
            title: Text("标签:${widget.finfo.tags}"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              ///////////
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      // title: Text("输入群id"),
                      content: TextField(
                        autofocus: true,
                        decoration: InputDecoration(
                          // labelText: "群id",
                          hintText: "标签",
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
                            widget.finfo.tags = tmpData;
                            widget.finfo.UpdateField("tags", tmpData,
                                $pbfriend.Friend()..tags = tmpData);
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
          ListTile(title: Text("朋友圈"), trailing: Icon(Icons.chevron_right)),
          ListTile(
            title: Text("更多信息"),
            trailing: Icon(Icons.chevron_right),
          ),
          Divider(color: Colors.grey),
          Divider(color: Colors.grey),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text("发消息"),
            onTap: () {
              // Navigator.popAndPushNamed(context, "ChatPrivate", arguments:widget.finfo);
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext ctx) {
                return ChatPage(
                  finfo: widget.finfo,
                );
              }));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.videocam,
            ),
            title: Text("音视频通话"),
            onTap: () {
              // 切换到视频通话界面
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return CallPage(
                      callType: CALL_TYPE.CALL_TYPE_VIDEO,
                      caller: Int64(AppUserInfo.instance.imId),
                      callee: Int64(widget.finfo.userInfo.imId));
                },
              ));
            },
          ),
        ],
      );
    }

    return Container(
      child: Text("no data"),
    );
  }
}
