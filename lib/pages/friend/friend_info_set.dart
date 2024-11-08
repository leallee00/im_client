// 新的朋友列表
import 'dart:io';

import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/pages/windows/home/window_home.dart';
import 'package:quliao/pb/pb_msg/black_list/blackList.pb.dart';
import 'package:quliao/pb/pb_msg/friend/friend.pb.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/widgets/app_bar.dart';
import 'package:quliao/widgets/button.dart';
import 'package:quliao/widgets/dialog/manager.dart';

import '../../net/socket.dart';
import '../../pb/pb_pub/service.pbenum.dart';
import '../home/home_page.dart';

class FriendInfoSet extends StatefulWidget {
  static const name = "FriendInfoSet";

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
        appBar: CustomAppBar(
          title: const Text("资料设置"),
        ),
        body: ListView(
          children: [
            // Divider(color: Colors.grey),
            // ListTile(
            //   title: Text("设置备注:"),
            //   trailing: SizedBox(
            //     width: 150,
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.end,
            //       children: [
            //         UserNicknameWidget(
            //           friendInfo: widget.finfo,
            //           maxLines: 1,
            //           overflow: TextOverflow.ellipsis,
            //         ),
            //         Icon(Icons.chevron_right)
            //       ],
            //     ),
            //   ),
            //   onTap: () {
            //     String tmpData = "";
            //     showDialog(
            //         context: context,
            //         builder: (BuildContext context) {
            //           // TextEditingController _controller = TextEditingController(text: "${widget.finfo.remark}");
            //           return AlertDialog(
            //             // title: Text("输入群id"),
            //             content: TextField(
            //               autofocus: true,
            //               controller: TextEditingController(
            //                 text: widget.finfo.remark != ""
            //                     ? widget.finfo.remark
            //                     : widget.finfo.userInfo.nickName,
            //               ),
            //               decoration: InputDecoration(
            //                 // labelText: "群id",
            //                 hintText: "备注",
            //
            //                 prefixIcon: Icon(Icons.group),
            //               ),
            //               onChanged: (value) {
            //                 // widget.finfo.mobile = value;
            //                 tmpData = value;
            //               },
            //             ),
            //             actions: [
            //               TextButton(
            //                 child: Text("确定"),
            //                 onPressed: () {
            //                   Navigator.pop(context);
            //                   widget.finfo.remark = tmpData;
            //                   widget.finfo.UpdateField("remark", tmpData,
            //                       Friend()..remark = tmpData);
            //                   setState(() {});
            //                 },
            //               ),
            //               TextButton(
            //                 child: Text("取消"),
            //                 onPressed: () {
            //                   Navigator.pop(context);
            //                 },
            //               )
            //             ],
            //           );
            //         });
            //     ////////////
            //   },
            // ),
            // Divider(
            //   color: Color(0x28808080),
            //   height: 0.5,
            // ),
            // ListTile(
            //   title: Text("朋友权限"),
            //   trailing: Icon(Icons.chevron_right),
            // ),
            // SizedBox(
            //   child: Container(
            //     height: 10,
            //     color: Color(0x28808080),
            //   ),
            // ),
            // ListTile(
            //   title: Text("把他推荐给朋友"),
            //   trailing: Icon(Icons.chevron_right),
            // ),
            // Divider(
            //   color: Color(0x28808080),
            //   height: 0.5,
            // ),
            // ListTile(
            //   title: Text("新增到桌面"),
            //   trailing: Icon(Icons.chevron_right),
            // ),
            // SizedBox(
            //   child: Container(
            //     height: 10,
            //     color: Color(0x28808080),
            //   ),
            // ),
            ListTile(
              title: Text("设置为星标朋友"),
              onTap: () {
                widget.finfo.stared = !widget.finfo.stared;
                widget.finfo.UpdateField("stared", widget.finfo.stared,
                    Friend()..stared = widget.finfo.stared);
                setState(() {});
              },
              trailing: SizedBox(
                width: Dimens.gap_dp40,
                height: Dimens.gap_dp22,
                child: FlutterSwitch(
                  value: widget.finfo.stared,
                  width: Dimens.gap_dp40,
                  height: Dimens.gap_dp22,
                  borderRadius: Dimens.gap_dp20,
                  toggleSize: Dimens.gap_dp20,
                  padding: Dimens.gap_dp2,
                  onToggle: (value) async {
                    widget.finfo.stared = value;
                    widget.finfo.UpdateField(
                      "stared",
                      value,
                      Friend()..stared = value,
                    );
                    setState(() {});
                  },
                  activeColor: Theme.of(context).colorScheme.primary,
                  inactiveColor:
                      Theme.of(context).colorScheme.primary.withOpacity(0.3),
                ),
              ),
            ),
            // Divider(
            //   color: Color(0x28808080),
            //   height: 0.5,
            // ),
            // ListTile(
            //   title: Text("加入黑名单"),
            //   onTap: () {
            //     widget.finfo.blocked = !widget.finfo.blocked;
            //     widget.finfo.UpdateField("blocked", widget.finfo.blocked,
            //         Friend()..blocked = widget.finfo.blocked);
            //     setState(() {});
            //   },
            //   trailing: SizedBox(
            //     width: Dimens.gap_dp40,
            //     height: Dimens.gap_dp22,
            //     child: FlutterSwitch(
            //       value: widget.finfo.blocked,
            //       width: Dimens.gap_dp40,
            //       height: Dimens.gap_dp22,
            //       borderRadius: Dimens.gap_dp20,
            //       toggleSize: Dimens.gap_dp20,
            //       padding: Dimens.gap_dp2,
            //       onToggle: (value) async {
            //         if (widget.finfo.blocked) {
            //           showToast('已从黑名单移除');
            //         } else {
            //           showToast('已拉入黑名单');
            //         }
            //         widget.finfo.blocked = !value;
            //         widget.finfo.UpdateField(
            //           'blocked',
            //           !value,
            //           Friend()..blocked = !value,
            //         );
            //         setState(() {});
            //       },
            //       activeColor: Theme.of(context).colorScheme.primary,
            //       inactiveColor:
            //           Theme.of(context).colorScheme.primary.withOpacity(0.3),
            //     ),
            //   ),
            // ),
            SizedBox(
              child: Container(
                height: 5,
                color: Color(0x28808080),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: Dimens.gap_dp16,
              ).copyWith(top: Dimens.gap_dp24),
              child: CustomButton(
                width: double.infinity,
                height: Dimens.gap_dp48,
                size: CustomButtonSize.large,
                shape: CustomButtonShape.stadium,
                backgroundColor: Colors.redAccent,
                onPressed: () {
                  final content = RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '您真的要删除与好友 ',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                        ),
                        TextSpan(
                          text: widget.finfo.userInfo.nickName,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        TextSpan(
                          text: ' ${widget.finfo.tags} ',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        TextSpan(
                          text: '的所有信息吗？',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                        ),
                      ],
                    ),
                  );
                  DialogManager.showDeleteFriendDialog(
                    context,
                    content,
                    onConfirm: () async {
                      await dbDelFriend(widget.finfo.friendId);
                      // 发送删除
                      var response = await RpcCallImOuterApi(
                          "/pb_grpc_friend.Friend/DeleteFriend",
                          DeleteFriendReq(),
                          MakePBCommData(
                              aimId: Int64(widget.finfo.friendId),
                              toService: Service.friend));
                      if (response.statusCode == 200) {
                        showToast("删除成功!");
                        eventBus.fire(
                            DeleteFriendEvent(userId: widget.finfo.friendId));
                      }

                      if (Platform.isWindows ||
                          Platform.isLinux ||
                          Platform.isMacOS) {
                        Navigator.popUntil(
                            context, ModalRoute.withName(WindowHomePage.name));
                      } else {
                        Navigator.popUntil(
                            context, ModalRoute.withName(MainPage.name));
                      }
                    },
                  );
                },
                child: Text(
                  '删除',
                  style: TextStyle(
                    fontSize: Dimens.font_sp16,
                  ),
                ),
              ),
            ),
            //     ListTile(leading: Icon(Icons.delete, color: Colors.red,), title: Text("删除"),onTap: (){
            //       showDialog(context: context, builder: (BuildContext context) {
            //         return AlertDialog(
            //           // title: Text("输入群id"),
            //           content: Text("您真的要删除与好友 ${widget.finfo.userInfo.nickName} ${widget.finfo.tags} 的所有信息吗？",
            //           ),
            //           actions: [
            //             TextButton(
            //               child: Text("确定"),
            //               onPressed: () {
            //                 Navigator.pop(context);
            //                 dbDelFriend(widget.finfo.friendId);
            //                 setState(() {
            //
            //                 });
            //               },
            //             ),
            //             TextButton(
            //               child: Text("取消"),
            //               onPressed: () {
            //                 Navigator.pop(context);
            //               },
            //             )
            //           ],
            //         );
            //       });
            //       ////////////
            //
            //     },),
            //     Divider(color: Color(0x28808080), height: 0.5,),
          ],
        ));
  }
}
