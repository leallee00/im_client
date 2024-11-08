import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quliao/db/friend.dart';
import 'package:quliao/models/user/userinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pb/pb_msg/friend/friend.pb.dart';
import 'package:quliao/pb/pb_pub/service.pb.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/pb/pb_msg/community/community.pb.dart' as $pbCommunity;

class SearchMember extends StatefulWidget {
  SearchMember(this.communityDetail,{super.key}) ;
  final $pbCommunity.Community communityDetail;
  @override
  SearchMemberState createState() => new SearchMemberState();
}

class SearchMemberState extends State<SearchMember> {

  @override
  void initState() {
  }
  var tctl = TextEditingController();
  List<FriendInfo> lFriendInfo1 = [];
  List<FriendInfo> filtLFriendInfo = [];
  void Filt(String data){
    log("filt:${lFriendInfo1.length} data:${data.trim().isEmpty}");
    if (data.trim().isEmpty){
      filtLFriendInfo = lFriendInfo1;
      log("all in list");
      return;
    }

    log("list len -> ${lFriendInfo1.length}");
    for(var finfo in lFriendInfo1){
      log("finfo:${finfo.userInfo.imId.toString()} data:${data}");
      if (finfo.userInfo.imId.toString().contains(data)){
        filtLFriendInfo.add(finfo);
      }else if (finfo.userInfo.appUid != null && finfo.userInfo.appUid.contains(data)){
        filtLFriendInfo.add(finfo);
      }else{
        log("not add filt list");
      }
    }
    log("ok filtLFriendInfo.len:${filtLFriendInfo.length}");
  }
  Widget OptionButton(FriendInfo finfo){
    log("展示按钮 fid:${finfo.friendId}");
    // if(finfo.state == 0){
      return TextButton(
        // color: Colors.green,
        child: Text("邀请加入圈子"),onPressed: (){
        // log("添加他为好友");
        // 发送添加好友申请
        // Client.instance.sendMsg(ApplyReq(), Int64(AppUserInfo.instance.imId), MakePBCommData(aimId: Int64(finfo.userInfo.imId), toService: Service.friend));
        var req = $pbCommunity.InviteJoinReq();
        var user = $pbCommunity.User();
        user.appId = Int64(finfo.userInfo.appId);
        // user.userId = Int64(finfo.userId);
        user.appUserId = finfo.userInfo.appUid;
        user.username = finfo.userInfo.nickName;
        user.avatar = finfo.userInfo.avatar;
        req.invitees.add(user);

        RpcCallImOuterApi(
            "/pb_grpc_community.Community/InviteJoin",
            req,
            MakePBCommData(aimId: Int64(finfo.friendId),groupId: widget.communityDetail.id, toService: Service.community))
        .then((value){
          showToast("申请已发出，等待对方确认");
          // 添加到数据库
          // AddApplyFriend(finfo, "", AppUserInfo.instance.imId);
          setState(() {

          });
        })
            .catchError((err) {
          // 看下错误类型
          // 如果没有发现好友，那么就是陌生人
          // state = 0; // 陌生人
          // needSave = true;
          // 发现的话就是好友

          log("err:${err}");
          showToast("邀请好友失败");
        });
      },);
    // }

    // if (finfo.state == 1){
    //   return Text("待确认");
    // }
    //
    // if (finfo.state == 2){
    //   return Text("通过验证");
    // }

    // return TextButton(
    //     // color: Colors.green,
    //     child: Text("邀请好友"),onPressed: (){
    //     Navigator.pushNamed(
    //         context, "ChatPrivate", arguments: {"finfo": finfo});
    //   },);
  }
  // button option


  ListTile ListBuilder(BuildContext context, int index) {
    //var item = lFriendInfo[index];
    var item = filtLFriendInfo[index];
    return ListTile(
      leading: avatar(item.userInfo.avatar, 60, 60),
      title: Text("${item.userInfo.nickName}"),
      subtitle: Text("id:${item.userInfo.imId}"),
      trailing:Container(
          child:OptionButton(item),
    )
    );
  }

  AddToFriendList(FriendInfo value){
    var needAdd = true;
    for(var finfo in lFriendInfo1){
      if (finfo.userInfo.imId == value.userInfo.imId){
        // 已经有了
        log("已经在了,lFriendInfo1.length:${lFriendInfo1.length} finfo:${value}");
        needAdd = false;
      }
    }
    if (needAdd){
      lFriendInfo1.add(value);
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:SizedBox(
        width: 400,
        height: 40,
        child: Container(
          // color: Colors.white24,
          decoration: BoxDecoration(
              // border: Border.all(color: Colors.white, width: 0.5),
              color: Colors.white24,
              borderRadius: new BorderRadius.circular((10.0))
          ),
          ///距离顶部
          margin: EdgeInsets.only(top: 1),
          padding: EdgeInsets.all(1),
          ///Alignment 用来对齐 Widget
          alignment: Alignment(0, 0),
          ///文本输入框
          child:  TextField(
            controller: tctl,
            decoration: InputDecoration( border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 1),borderRadius: BorderRadius.all(Radius.circular(10)),)),
            onChanged: (value){
              setState(() {
                Filt(value);
              });
            },
            autofocus: true,
          ),
        )
          ),
          actions: [IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              if (tctl.text.length == 0) {
                showToast("请输入用户id");
                return;
              }
              tctl.text.trim();
              var imId = Int64.parseInt(tctl.text);
              if (imId < 1000) {
                showToast("请输入imid");
                return;
              }

              if (imId == AppUserInfo.instance.imId) {
                //
                showToast("你已经在圈子里");
                return;
              }

              var needAdd = true;
              GetFriendInfo(imId.toInt()).then((value) {
                log("get friend ok ${value}");
                AddToFriendList(value);
                setState(() {
                  Filt(tctl.text.trim());
                });
              })
              //     .catchError((err) {
              //   log("get friend error");
              //   // GetUserInfo(imId.toInt()).then((value) {
              //   //   // 把用户加进去
              //   //   var finfo = FriendInfo()
              //   //     ..userInfo = value;
              //   //   AddToFriendList(finfo);
              //   //   log("${finfo}");
              //   //   setState(() {
              //   //     Filt(tctl.text.trim());
              //   //   });
              //   // }).catchError((e) {
              //   //   log("查找用户失败:${e}");
              //   //   showToast("没有找到用户");
              //   // });
              // })
              ;
            },
          )
          ],
        ),
        // backgroundColor: Colors.white10,
        body: Column(
          children: [
            Expanded(
              flex: 0,
              child: Visibility(
                visible: tctl.text.length > 0,
                child: Row(children: [
                Icon(Icons.search),
                RichText(
                  text: TextSpan(text: "搜索：",
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(text: "${tctl.text}",
                            style: TextStyle(color: Colors.red)),
                      ]),

                ),
              ],),),),
        Visibility(
          visible: filtLFriendInfo.length > 0,
          child: Expanded(
                flex: 0,
                child: Center(
                    widthFactor: 100,
                    heightFactor: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text("联系人"),
                        // 二维码
                      ],))

            ),),
            // 群列表
            Expanded(
              flex: 1,
              child: ListView.separated(
                itemCount: filtLFriendInfo.length,
                itemBuilder: ListBuilder,
                //分割器构造器
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(color: Colors.green);
                  // return index % 2 == 0 ? divider1 : divider2;
                  //               return
                },
              ),
            ),
          ],
        )
    );
  }
}
