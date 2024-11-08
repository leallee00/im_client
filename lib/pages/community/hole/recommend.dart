// 查看帖子
// 新的朋友列表
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quliao/models/relation/follow.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/community/cards/post_card.dart';
import 'package:quliao/pb/pb_msg/community/community.pb.dart' as $pbCommunity;
import 'package:quliao/pb/pb_pub/service.pbserver.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/pub/log.dart';

import '../post.dart';
import '../pub.dart';

class RecommendPage extends StatefulWidget {
  RecommendPage({super.key}) ;

  @override
  RecommendPageState createState() => new RecommendPageState();
}

class RecommendPageState extends State<RecommendPage> {
  List<$pbCommunity.Post> lstPost = List<$pbCommunity.Post>.empty(growable: true);

  @override
  void initState() {
    log("into RecommendPageState");
    super.initState();
    // 获取评论列表
    LoadRecommendPost();
  }

  Widget build(BuildContext context) {

    return lstPost.length == 0 ? Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
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
              SizedBox(height: 10,),
              Text("还没有相关帖子哦~", style: TextStyle(color: Colors.black26, fontSize: 12),),
            ],
          )
          // ListView.builder(
          //   itemCount: lstPost.length,
          //   shrinkWrap: true,
          //   itemBuilder: BuildPostList,
          //
          //   // 控制滚动
          //   scrollDirection: Axis.vertical,
          //   controller: postScrollController,
          // ),
        ]
    ) :
    ListView.builder(
      itemCount: lstPost.length,
      shrinkWrap: true,
      itemBuilder: BuildPosts,

      // 控制滚动
      scrollDirection: Axis.vertical,
      controller: commentsScrollController,
    );
  }

  Future<void> LoadRecommendPost({int offset = 0, int count = 20,}) async {
    var req = $pbCommunity.PostsReq();
    req.type = $pbCommunity.PostsReq_Type.Recommend;
    req.order = $pbCommunity.PostsReq_Order.New;
    req.offset = Int64(offset);
    req.count = Int64(count);
    RpcCallImOuterApi(
        "/pb_grpc_community.Community/Posts",
        req, MakePBCommData(
        aimId: Int64(AppUserInfo.instance.imId),
        toService: Service.community)).then((response) {
      if (response.statusCode != 200) {
        // 出错了
        // 处理错误
        log("query error ${response.body}");
        return;
      }

      // 更新一下
      var rsp = $pbCommunity.PostsRsp();

      rsp.mergeFromBuffer(response.bodyBytes);
      log("load community post list ok");
      rsp.posts.forEach((element) {
        lstPost.add(element.clone());
      });
      lstPost = lstPost.toSet().toList();
      lstPost.sort((a, b) => a.createAt.compareTo(b.createAt));
      log("get post len:${lstPost.length}");
      setState(() {

      });
    }).catchError((err){
      logError("get posts err:${err}");
    });
  }

  ScrollController commentsScrollController = ScrollController();

  Widget BuildPosts(BuildContext context, int index) {
    var post = lstPost[index];
    return InkWell(
      onTap: () {
        // 老的喜欢数据
        var postLikeType = RelationFollow.isFollowSync(post.userId);
        Navigator.push(context,
            MaterialPageRoute(
                builder: (BuildContext context) {
                  return PostPage(post, postLikeType!);
                })).then((value) {
          if (postLikeType !=
              RelationFollow.isFollowSync(
                  post.userId)) {
            setState(() {

            });
          }
        });
      },
      child: PostCard(post,
          RelationFollow.isFollowSync(
              post.userId)!,OptBuildType.PostSummary,),
    );
  }
}
