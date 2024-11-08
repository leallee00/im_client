// 圈子广场
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/community/cards/comment_card.dart';
import 'package:quliao/pb/pb_msg/community/community.pb.dart' as $pbCommunity;
import 'package:quliao/pb/pb_pub/service.pb.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:http/http.dart' as http;
import 'package:quliao/pub/log.dart';

class MyComment extends StatefulWidget {
  static const name = "MyComment";
  MyComment({super.key});
  @override
  MyCommentState createState() => new MyCommentState();
}

class GroupData {
  String name = "";
  List<$pbCommunity.Community> lstCommunity = <$pbCommunity.Community>[];
}

class MyCommentState extends State<MyComment>
    with SingleTickerProviderStateMixin {
  GroupData recommend = GroupData()..name = "推荐";

  bool isNew = true;
  final _tabKey = ValueKey('tab');
  late TabController _innerTabController;

  void handleTabChange() {
    print(
        'Inner tab, previous: ${_innerTabController.previousIndex}, current: ${_innerTabController.index}');
    PageStorage.of(context)
        ?.writeState(context, _innerTabController.index, identifier: _tabKey);
  }

  @override
  void initState() {
    super.initState();

    LoadUserComments();
  }

  Future<void> LoadUserComments({
    int offset = 0,
    int count = 20,
  }) async {
    var req = $pbCommunity.UserCommentsReq();
    req.userId = Int64(AppUserInfo.instance.imId);
    req.offset = Int64(offset);
    req.count = Int64(count);
    log(req);
    RpcCallImOuterApi(
            "/pb_grpc_community.Community/UserComments",
            req,
            MakePBCommData(
                aimId: Int64(AppUserInfo.instance.imId),
                toService: Service.community))
        .then((response) {
      if (response.statusCode != 200) {
        // 出错了
        // 处理错误
        log("query error ${response.body}");
        return;
      }

      // log("get UserCommentsRsp: ${response.body}");
      // 更新一下
      var rsp = $pbCommunity.UserCommentsRsp();

      rsp.mergeFromBuffer(response.bodyBytes);

      rsp.comments.forEach((element) {
        // log("rsp: ${element.comment.id}");
        lstComment.add(element.clone());
      });
      lstComment = lstComment.toSet().toList();
      lstComment
          .sort((a, b) => a.comment.createAt.compareTo(b.comment.createAt));
      // lstComment.forEach((element) {
      //   log("lstComment length: ${element.id}");
      // });
      // log("get post len:${lstPost.length}");
      setState(() {});
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0x3000000),
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "我的评论",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          TextButton(
            child: Row(
              children: [
                Text(
                  isNew ? "最新" : "最热",
                  style: TextStyle(color: Colors.black54),
                ),
                Icon(
                  Icons.wifi_protected_setup_sharp,
                  color: isNew ? Colors.lightBlue : Colors.redAccent,
                ),
              ],
            ),
            onPressed: () {
              if (isNew) {
                isNew = false;
              } else {
                isNew = true;
              }
              setState(() {});
            },
          ),
          // IconButton(
          //   icon: Icon(
          //     Icons.settings,
          //     color: Colors.black54,
          //   ),
          //   onPressed: () {
          //     // 打开设置
          //     //   Navigator.push(
          //     //     context, MaterialPageRoute(builder: (BuildContext context) {
          //     //       return CreateCommunity();
          //     //   }));
          //   },
          // ),
        ],
      ),
      body: lstComment.length == 0
          ? Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SizedBox(height: 180,),
                  Image.asset(
                    "images/t1.png",
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "求你发个评论吧!",
                    style: TextStyle(color: Colors.black26, fontSize: 12),
                  ),
                ],
              )
            ])
          : Column(
              children: [
                Expanded(
                    child: ListView.builder(
                        itemCount: lstComment.length,
                        itemBuilder: (BuildContext context, int index) {
                          return BuildCommentList(context, index);
                        }))
              ],
            ),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children:[
      //     Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         // SizedBox(height: 180,),
      //         Image.asset(
      //           "images/t1.png",
      //           height: 150,
      //           width: 150,
      //           fit: BoxFit.cover,
      //         ),
      //         SizedBox(height: 10,),
      //         Text("求你发个评论吧!", style: TextStyle(color: Colors.black26, fontSize: 12),),
      //       ],
      //     )
      //   ]
      // ),
    );
  }

  // 评论
  List<$pbCommunity.CommentRef> lstComment = <$pbCommunity.CommentRef>[];
  ScrollController commentScrollController = ScrollController();
  Widget BuildCommentList(BuildContext context, int index) {
    return CommentCard(lstComment[index].post,
        lstComment[index].comment); //Container(child: Text("test"),);
    // return Container(child: Text("test"),);
  }
}
