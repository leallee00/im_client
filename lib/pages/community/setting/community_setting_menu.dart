import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/msg_handler_mgr.dart';
import 'package:quliao/pages/community/publish_post.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/pb/pb_msg/community/community.pb.dart' as $pbCommunity;
import 'package:quliao/pages/community/member/members.dart';

import 'community_setting_rule.dart';

class ComunitySettingMenuPage extends StatefulWidget {
  ComunitySettingMenuPage(this.comunity, {super.key});

  final $pbCommunity.Community comunity;
  @override
  _ComunitySettingMenuPageState createState() =>
      new _ComunitySettingMenuPageState();
}

// Widget
class _MemberInfoItem {
  FriendInfo friendInfo = FriendInfo();
  bool selected = false;
}

class _ComunitySettingMenuPageState extends State<ComunitySettingMenuPage> {
  // List<Member> memberList = []; // 群成员列表
  int limit = 1000;
  int offset = 0;

  late StreamSubscription<EventOnNetMsg> msgStreamSub;
  var msgHandlerMgr = MsgHandlerMgr();

  @override
  void initState() {
    super.initState();

    // 处理网络消息
    HandleMsg();

    log("完全不是我们吗？_ComunitySettingMenuPageState");
  }

  @override
  void dispose() {
    super.dispose();

    // 取消消息处理
    msgStreamSub.cancel();
  }

// 消息处理句柄
  void HandleMsg() {
    // 注册消息回调
    msgStreamSub = eventBus.on<EventOnNetMsg>().listen((event) {
      //   // log("获得一个消息:${event.pbMsg.pbName}");
      //   if (event.pbMsg.errCode != ErrCode.SUCCESS.value) {
      //     showToast(
      //         "收到错误消息 ${event.pbMsg.pbName} ${event.pbMsg.errCode} ${event.pbMsg
      //             .errDesc}");
      //     log("get a err msg ${event.pbMsg.pbName} ${event.pbMsg.errCode} ${event
      //         .pbMsg.errDesc}");
      //     return;
      //   }
      //   // log("get a err msg ${event.pbMsg.pbName}");
      //   // msgHandlerMgr.OnMsg(event.pbMsg);
    });
  }

  TextEditingController searchEditCtrl = TextEditingController();

  // 根据列表生成widget
  // List<Widget> CreateMembers() {
  //   List<Widget> lw = [];
  //   memberList.forEach((element) {
  //     if (element.username == null || element.username == "") {
  //       element.username = "${element.userId}";
  //     }
  //     lw.add(
  //       Container(
  //           width: 200,
  //           child: Row(children: [
  //             Chip(avatar: avatar(element.avatar, 30, 30),
  //               backgroundColor: Colors.blue,
  //               label: new Text(element.username),
  //             ),
  //             PopupMenuButton<int>(
  //               icon: Icon(Icons.edit),
  //               onSelected: (int value) {
  //                 log("select menu value:$value");
  //                 switch (value) {
  //                   case 0:
  //                     break;
  //                   case 1:
  //                     break;
  //                   case 2:
  //                     showDialog(
  //                         context: context,
  //                         builder: (BuildContext context)
  //                         {
  //                           var remark = "";
  //                           return AlertDialog(
  //                             title: Text("备注"),
  //                             content: TextField(
  //                               autofocus: true,
  //                               decoration: InputDecoration(
  //                                 // labelText: "群id",
  //                                 hintText: "请输备注",
  //                                 prefixIcon: Icon(Icons.group),
  //                               ),
  //                               onChanged: (value) {
  //                                 remark = value;
  //                               },
  //                             ),
  //                             actions: [
  //                               TextButton(
  //                                 child: Text("确定"),
  //                                 onPressed: () {
  //                                   // 发送消息
  //                                   // Client.instance.sendMsg(EditRemarkReq()..remark = remark, widget.groupId,
  //                                   //     MakePBCommData(aimId: element.userId,
  //                                   //         groupId: widget.groupId,
  //                                   //         toService: Service.group));
  //                                   // Navigator.pop(context);
  //
  //                                   showToast("备注已修改");
  //                                 },
  //                               ),
  //                               TextButton(
  //                                 child: Text("取消"),
  //                                 onPressed: () {
  //                                   Navigator.pop(context);
  //                                 },
  //                               )
  //                             ],
  //                           );
  //                         }
  //                     );
  //                     break;
  //                   case 3:
  //                     // Client.instance.sendMsg(AddAdminsReq()..memberIds.add(element.userId), widget.groupId, MakePBCommData(aimId: element.userId, groupId: widget.groupId, toService: Service.group));
  //                     showToast("您将${element.userId} 设置为管理员");
  //                     break;
  //                   case 4:
  //                     // Client.instance.sendMsg(RemoveAdminsReq()..memberIds.add(element.userId), widget.groupId, MakePBCommData(aimId: element.userId, groupId: widget.groupId, toService: Service.group));
  //                     showToast("您将${element.userId}移除管理员权限");
  //                     break;
  //                   case 5:
  //                     // Client.instance.sendMsg(GroupTransferReq(), widget.groupId, MakePBCommData(aimId:element.userId, groupId: widget.groupId, toService: Service.group));
  //                     showToast("您将群转让给了${element.userId}");
  //                     break;
  //                   case 6:
  //                     // Client.instance.sendMsg(BanMemberReq(), widget.groupId, MakePBCommData(aimId:element.userId, groupId: widget.groupId, toService: Service.group));
  //                     showToast("您将${element.userId}关进了小黑屋");
  //                     break;
  //                   case 7:
  //                     // Client.instance.sendMsg(UnbanMemberReq(), widget.groupId, MakePBCommData(aimId:element.userId, groupId: widget.groupId, toService: Service.group));
  //                     showToast("您将${element.userId}放出了小黑屋");
  //                     break;
  //                   default:
  //                     break;
  //                 }
  //               },
  //               itemBuilder: (context) {
  //                 return <PopupMenuEntry<int>>[
  //                   PopupMenuItem<int>(
  //                     value: 0,
  //                     child: Row(children: [
  //                       Icon(Icons.delete),
  //                       Text("移出群"),
  //                     ],),), // Text('发起群聊'),
  //                   PopupMenuItem<int>(
  //                     value: 1,
  //                     child: Row(children: [
  //                       Icon(Icons.info),
  //                       Text("查看信息"),
  //                     ],),),
  //                   PopupMenuItem<int>(
  //                     value: 2,
  //                     child: Row(children: [
  //                       Icon(Icons.info),
  //                       Text("备注"),
  //                     ],),),
  //                   PopupMenuItem<int>(
  //                     value: 3,
  //                     child: Row(children: [
  //                       Icon(Icons.info),
  //                       Text("设为管理"),
  //                     ],),),
  //                   PopupMenuItem<int>(
  //                     value: 4,
  //                     child: Row(children: [
  //                       Icon(Icons.info),
  //                       Text("移除管理员"),
  //                     ],),),
  //                   PopupMenuItem<int>(
  //                     value: 5,
  //                     child: Row(children: [
  //                       Icon(Icons.info),
  //                       Text("群转让"),
  //                     ],),),
  //                   PopupMenuItem<int>(
  //                     value: 6,
  //                     child: Row(children: [
  //                       Icon(Icons.info),
  //                       Text("禁言"),
  //                     ],),),
  //                   PopupMenuItem<int>(
  //                     value: 7,
  //                     child: Row(children: [
  //                       Icon(Icons.info),
  //                       Text("解禁"),
  //                     ],),),
  //                 ];
  //               },
  //             ),
  //           ],)
  //       ),
  //
  //     );
  //   });
  //
  //   return lw;
  // }

  Widget build(BuildContext context) {
    // Widget divider = Divider(color: Colors.blue,);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: BackButton(
          color: Colors.black54,
        ),
        backgroundColor: Colors.white,
        // leading:
        centerTitle: true,
        title: Text('圈子设置', style: TextStyle(color: Colors.black54)),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          // TextButton(onPressed: ()=>{log("press!!!!")}, child: Text("点我试试")),
          // Divider(height: 1,),
          ListTile(
            // onTap: (){
            //
            // },
            title: Row(
              children: [
                avatar(widget.comunity.avatar, 60, 60),
                SizedBox(
                  width: 10,
                ),
                Text(widget.comunity.name),
                Expanded(
                  flex: 5,
                  child: Text(""),
                ),
                Expanded(
                  child: Text("设置"),
                ),
              ],
            ),
            // subtitle: Text("${groupname}"),
            onTap: () {
              log("设置");
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return CommunitySettingRule(widget.comunity);
              }));
            },
            trailing: new Icon(Icons.keyboard_arrow_right),
          ),
          Divider(
            color: Colors.blue,
          ),
          ListTile(
            title: Text("版区管理"),
            onTap: () {
              log("打开版区");
            },
            trailing: new Icon(Icons.keyboard_arrow_right),
          ),
          Divider(
            height: 1,
          ),
          ListTile(
            title: Text("成员管理"),
            onTap: () => {
              log("打开成员管理"),
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return Members(communityId: widget.comunity.id);
              })),
            },
            trailing: new Icon(Icons.keyboard_arrow_right),
          ),
          Divider(
            height: 1,
          ),
          ListTile(
            title: Text("升级社团人数"),
            onTap: () => {log("打开社团人数管理")},
            trailing: new Icon(Icons.keyboard_arrow_right),
          ),

          Divider(
            height: 1,
          ),
          ListTile(
            title: Text("发起抽奖"),
            onTap: () => {log("发起抽奖")},
            trailing: new Icon(Icons.keyboard_arrow_right),
          ),
          Divider(
            height: 1,
          ),
          ListTile(
            title: Text("发起投票"),
            onTap: () => {
              log("发起投票"), // 跳转到发布帖子页面
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return PublishPost(
                    communityId: widget.comunity.id.toInt(),
                    canChangeId: false);
              }))
            },
            trailing: new Icon(Icons.keyboard_arrow_right),
          ),

          Divider(
            color: Colors.blue,
          ),
          ListTile(
              title: Row(
                children: [
                  Text("我的社团昵称"),
                  Expanded(
                    flex: 3,
                    child: Text(""),
                  ),
                  Expanded(
                    child: Text(AppUserInfo.instance.nickName),
                  ),
                ],
              ),
              // subtitle: Text("${groupname}"),
              onTap: () {
                // log("名称");
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      var groupName = "";
                      return AlertDialog(
                        title: Text("输入昵称"),
                        content: TextField(
                          autofocus: true,
                          decoration: InputDecoration(
                            // labelText: "群id",
                            hintText: "输入昵称",
                            prefixIcon: Icon(Icons.group),
                          ),
                          onChanged: (value) {
                            groupName = value;
                          },
                        ),
                        actions: [
                          TextButton(
                            child: Text("确定"),
                            onPressed: () {
                              // 发送消息
                              // Client.instance.sendMsg(EditNameReq()..name = groupName, widget.groupId,
                              //     MakePBCommData(aimId: widget.groupId,
                              //         groupId: widget.groupId,
                              //         toService: Service.group));
                              Navigator.pop(context);

                              showToast("您在圈子的名称已更新");
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
              },
              trailing: new Icon(Icons.keyboard_arrow_right)),
          Divider(
            height: 1,
          ),
          ListTile(
            title: Text("消息提醒"),
            onTap: () => {log("消息提醒")},
            trailing: new Icon(Icons.keyboard_arrow_right),
          ),
          Divider(
            color: Colors.blue,
          ),
          ListTile(
              title: Text("封禁该圈子"),
              onTap: () {
                // Client.instance.sendMsg(BanGroupsReq()..groupIds.add(widget.groupId), widget.groupId, MakePBCommData(aimId: widget.groupId, groupId: widget.groupId, toService: Service.group));
              }),
          Divider(
            height: 1,
            indent: 1,
            endIndent: 1,
          ),
          ListTile(
              title: Text("解禁该圈子"),
              onTap: () {
                // Client.instance.sendMsg(UnbanGroupsReq()..groupIds.add(widget.groupId), widget.groupId, MakePBCommData(aimId: widget.groupId, groupId: widget.groupId, toService: Service.group));
              }),
          Divider(
            height: 1,
            indent: 1,
            endIndent: 1,
          ),
        ],
      ),
    );
  }

// static const loadingTag = "##loading##"; //表尾标记
// var _words = <String>[loadingTag];
// Widget ListBuilder(BuildContext context, int index) {
//   // log("refresh ListBuilder");
//   // var user = AppUserInfo();
//   // var item = lFriendItems[index];
//   return Row(
//     children: [
//       Checkbox(
//         value: item.selected,
//         activeColor: Colors.red, //选中时的颜色
//         onChanged:(value){
//           // 展示到选中列表中
//
//           setState(() {
//             item.selected=value;
//           });
//         } ,
//       ),
//       avatar(item.friendInfo.userInfo.avatar, 30, 30),
//       Text(item.friendInfo.userInfo.nickName),
//     ],
//   );
// }
}
