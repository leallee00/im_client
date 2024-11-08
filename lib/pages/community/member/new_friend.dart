// 新的朋友列表
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/db/friend.dart';
import 'package:quliao/global/controller/unread_message_controller.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/mywedgits/badger/badger.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/friend/add_friend.dart';
import 'package:quliao/pages/friend/search.dart';
import 'package:quliao/pb/pb_msg/friend/friend.pb.dart';
import 'package:quliao/pb/pb_pub/service.pb.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/pub/view.dart';
import 'package:quliao/widgets/avatar.dart';
import 'package:search_page/search_page.dart';

class NewFriend extends StatefulWidget {
  NewFriend({super.key}) ;

  @override
  NewFriendState createState() => new NewFriendState();
}

class NewFriendState extends State<NewFriend> {

  var lFriendApply = <FriendApply>[];

  @override
  void initState() {
    GetApplyList().then((value) {
      lFriendApply = value;
      setState(() {

      });
    });

    // 清理新朋友数据
    UnReadMessageController.to.clearUnReadMsgCount(type: ENMsgCountType.friendList);
  }


  Widget OptionButton(FriendApply finfo) {
    Widget widget = Text("unknown");
    // log("展示按钮 uid:${finfo.userId} fid:${finfo.friendId}");
    if (AppUserInfo.instance.imId == finfo.applyId) {
      // 自己发起的申请
      switch (finfo.applyState) {
        case FRIEND_APPLY_STATE.Init:
          widget = TextButton(
            // color: Colors.green,
            child: Text("发送请求"), onPressed: () {
            Client.instance.sendMsg(
                ApplyReq(), Int64(AppUserInfo.instance.imId), MakePBCommData(
                aimId: Int64(finfo.friendId), toService: Service.friend));
            showToast("申请已发出，等待对方确认");

            setState(() {

            });
          },);
          break;
        case FRIEND_APPLY_STATE.Request: //0:发起,
          widget = TextButton(
            // color: Colors.green,
            child: Text("请求已发送,请耐心等待"), onPressed: () {
            Client.instance.sendMsg(
                ApplyReq(), Int64(AppUserInfo.instance.imId), MakePBCommData(
                aimId: Int64(finfo.friendId), toService: Service.friend));
            showToast("申请已再次发出，等待对方确认");

            setState(() {

            });
          },);
          break;
        case FRIEND_APPLY_STATE.Agree: //1:同意,
          widget = Text("对方已通过");
          break;
        case FRIEND_APPLY_STATE.Reject: //2:拒绝,
          widget = Text("对方已拒绝");
          break;
        case FRIEND_APPLY_STATE.OverTime: //3:超时,
          widget = Text("对方超时未回复");
          break;
      }
    }
    else {
      // 好友发给自己的申请
      switch (finfo.applyState) {
        case FRIEND_APPLY_STATE.Init:
          widget = TextButton(
          // color: Colors.green,
          child: Text("状态不对"),onPressed: (){
          Client.instance.sendMsg(ApplyAnswerReq()
            ..agree = true, Int64(AppUserInfo.instance.imId), MakePBCommData(
              aimId: Int64(finfo.friendId), toService: Service.friend));
          showToast("已通过验证");

          setState(() {

          });
        },);
          break;
        case FRIEND_APPLY_STATE.Request: //0:发起,
          widget = TextButton(
            // color: Colors.green,
              child: Text("通过验证"), onPressed: () {
            Client.instance.sendMsg(ApplyAnswerReq()
              ..agree = true, Int64(AppUserInfo.instance.imId), MakePBCommData(
                aimId: Int64(finfo.friendId), toService: Service.friend));
            showToast("已通过验证");
            // 更新状态
            // todo : 收到rsp回复成功消息后再做下面的操作
            finfo.applyState = FRIEND_APPLY_STATE.Agree;
            AddFriendToDB(finfo.friendId, enFriendRelation.friend);
            UpdateApplyFriendState(finfo.friendId, FRIEND_APPLY_STATE.Agree)
                .then((value) {
              setState(() {

              });
            });
          });
          break;
        case FRIEND_APPLY_STATE.Agree: //1:同意,
          widget = Text("您已通过对方的邀请");
          break;
        case FRIEND_APPLY_STATE.Reject: //2:拒绝,
          widget = Text("您已拒绝对方的申请");
          break;
        case FRIEND_APPLY_STATE.OverTime: //3:超时,
          widget = Text("对方邀请已超时");
          break;
      }
    }
    return widget;
  }
  // button option

  ListTile ListBuilder(BuildContext context, int index) {
    //var item = lFriendInfo[index];
    var item = lFriendApply[index];
    return ListTile(
        leading: UserAvatar(
          size: Dimens.gap_dp40,
          avatar: item.avatar,
          name: item.nick,
        ),
        title: Text("${item.nick}"),
        subtitle: Text("${item.applyMsg}"),
        trailing:Container(
          child:OptionButton(item),
        )
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:Text("新的朋友"),
          actions: [
            TextButton(
              child: Text("添加朋友",style: TextStyle(color: Colors.white, fontSize: 20),),
              onPressed: (){
                Navigator.pushNamed(context, "AddFriend");
              },
            ),
          ],
        ),
        // backgroundColor: Colors.white10,
        body: Column(
          children: [
            Expanded(
              flex: 0,
              child:  SearchFriendButton(context),
            ),

            // 请求列表
            Expanded(
              flex: 1,
              child: ListView.separated(
                itemCount: lFriendApply.length,
                itemBuilder: ListBuilder,
                //分割器构造器
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(color: Colors.green);
                },
              ),
            ),
          ],
        )
    );
  }
}
