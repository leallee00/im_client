// 圈子广场
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/community/user_info.dart';
import 'package:quliao/pb/pb_msg/community/community.pb.dart' as $pbCommunity;
import 'package:quliao/pb/pb_pub/service.pb.dart';
import 'package:quliao/pub/config.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/pub/log.dart';

class Members extends StatefulWidget {
  static const name = "Members";
  Members({super.key, this.communityId}) ;

  Int64? communityId = Int64();
  @override
  MembersState createState() => new MembersState();
}

class MembersState extends State<Members> {

  List<$pbCommunity.Member> members = <$pbCommunity.Member>[];

  @override
  void initState() {
    super.initState();
    LoadMembers();
  }

  // 获取成员列表
  Future<void> LoadMembers({int offset = 0, int count = 20,}) async {
    var req = $pbCommunity.MembersReq();
    RpcCallImOuterApi(
        "/pb_grpc_community.Community/Members",
        req, MakePBCommData(
        aimId: Int64(AppUserInfo.instance.imId),
        groupId: widget.communityId!,
        toService: Service.community)).then((response) {
      if (response.statusCode != 200) {
        log("query error ${response.body}");
        return;
      }

      // log("get UserPostsRsp: ${response.body}");
      // 更新一下
      var rsp = $pbCommunity.MembersRsp();

      rsp.mergeFromBuffer(response.bodyBytes);

      log("get MembersRsp: ${rsp}");
      members = rsp.members;
      setState(() {

      });
    });
  }

  // 更新用户信息
  Future<void> UpdateMember({required int role, required Int64 userId}) async{
    var req = $pbCommunity.UpdateMemberReq();
    req.member.role = role;
    req.keys.add("role");
    RpcCallImOuterApi(
        "/pb_grpc_community.Community/UpdateMember",
        req,
        MakePBCommData(
            aimId: userId,
            groupId: widget.communityId!,
            toService: Service.community
        )).then((response) {
      if (response.statusCode != 200) {
        log("query error ${response.body}");
        return;
      }

      // var rsp = $pbCommunity.UpdateMemberRsp();
      // rsp.mergeFromBuffer(response.bodyBytes);

      setState(() {
        LoadMembers();
      });
    });
  }

  // 删除用户
  Future<void> DeleteMembers() async{
    var req = $pbCommunity.UpdateMemberReq();
    RpcCallImOuterApi(
        "/pb_grpc_community.Community/UpdateMember",
        req,
        MakePBCommData(
          aimId: Int64(AppUserInfo.instance.imId),
          groupId: widget.communityId!,
          toService: Service.community
        )).then((response) {
      if (response.statusCode != 200) {
        log("query error ${response.body}");
        return;
      }

      var rsp = $pbCommunity.UpdateMemberRsp();
      rsp.mergeFromBuffer(response.bodyBytes);

      setState(() {

      });
    });
  }

  ScrollController membersScrollController = ScrollController();

  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.black54,
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text("成员管理", style: TextStyle(color: Colors.black54),),
          actions: [

          ],
        ),
        body: ListView.builder(
          itemCount: members.length,
          shrinkWrap: true,
          itemBuilder: _BuildListMembers,

          // 控制滚动
          scrollDirection: Axis.vertical,
          controller: membersScrollController,
        )
      );
  }

  Widget _BuildListMembers(BuildContext context, int index) {
    var element = members[index];
    log("index:${index} element.avatar.isEmpty:${element.avatar.isEmpty}");
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (BuildContext context) {
          return CommunityUserInfo(element.userId.toInt());
        }));
      },
      onLongPress: () {
        showDialog(
            context: context,
            builder: (ctx) {
              return SimpleDialog(
                // contentPadding: EdgeInsets.all(20),
                insetPadding: EdgeInsets.all(70),
                title: Text("你要做什么?"),
                titlePadding: EdgeInsets.fromLTRB(85,20,20,0),
                backgroundColor: Colors.white,
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6))),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(20,10,20,0),
                    child: TextButton(
                      // color: Colors.blue,
                      // // minWidth: 150,
                      // highlightColor: Colors.blue[700],
                      // colorBrightness: Brightness.dark,
                      // splashColor: Colors.grey,
                      child: Text((element.role == 0)?"设为管理员":"取消管理员"),
                      // shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      onPressed: () {
                        int role = 0;
                        if (element.role == 0) {
                          role = 1;
                        } else if (element.role == 1) {
                          role = 0;
                        } else {
                          showToast("无法取消群主的管理员身份");
                          return;
                        }
                        var req = $pbCommunity.UpdateMemberReq();
                        req.member = element;
                        req.member.role = role;
                        req.keys.add("role");
                        RpcCallImOuterApi(
                          "/pb_grpc_community.Community/UpdateMember",
                          req,
                          MakePBCommData(
                          aimId: element.userId,
                          groupId: widget.communityId!,
                          toService: Service.community
                        )).then((response) {
                          // log(response.body);
                          if (response.statusCode != 200) {
                            log("query error ${response.body}");
                            return;
                          }
                          showToast("操作成功");
                          Navigator.pop(context);
                        },
                      );
                    })
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20,10,20,0),
                    child: TextButton(
                      // color: Colors.blue,
                      // // minWidth: 150,
                      // highlightColor: Colors.blue[700],
                      // colorBrightness: Brightness.dark,
                      // splashColor: Colors.grey,
                      child: Text("移除该成员"),
                      // shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(20,10,20,0),
                      child: TextButton(
                        // color: Colors.black54,
                        // // minWidth: 150,
                        // highlightColor: Colors.black87,
                        // colorBrightness: Brightness.dark,
                        // splashColor: Colors.grey,
                        child: Text("返回"),
                        // shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                  ),
                ],
              );
            }
        );
      },
      child: Container(
        height: 60,
        // width: 50,
        padding: EdgeInsets.fromLTRB(10,5,5,5),
        // margin: EdgeInsets.all(10),
        child:
        Row (children: [
          Container(
            width: 50,
            height: 50,
            // child: Image.network(element.avatar, fit: BoxFit.fitHeight,),
            child: CircleAvatar(
              // radius: 10.0,
              backgroundImage: NetworkImage(element.avatar.isEmpty?ConfigMgr().config!.defaultGirlAvatar:element.avatar),),
          ),
          SizedBox(width: 12,),
          Container(
            width: 250,
            child: Text(element.username.isEmpty?"用户${element.userId}":element.username, style: TextStyle(fontSize: 12),),
            // Column(
            //   children: [
            //     Text(element.userId.toString(), style: TextStyle(fontSize: 12),),
            //     Text(element.username, style: TextStyle(fontSize: 12),),
            //   ],
            // )
          ),
          Container(
            // child: (element.role == 2)? Column() : TextButton(
            //   child: Text("删除", style: TextStyle(color: Colors.black87),),
            //   onPressed: () {
            //     // if(element.role == 2) {
            //     //   showToast("无法删除圈子管理员");
            //     // }
            //   },
            // ),
          ),
        ],),
      ),
    );
  }
}
