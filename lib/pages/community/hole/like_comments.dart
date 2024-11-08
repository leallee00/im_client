// 查看帖子
// 新的朋友列表
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quliao/models/relation/follow.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/community/cards/comment_card.dart';
import 'package:quliao/pages/community/cards/post_card.dart';
import 'package:quliao/pages/community/comment.dart';
import 'package:quliao/pb/pb_msg/community/community.pb.dart' as $pbCommunity;
import 'package:quliao/pb/pb_pub/service.pbserver.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/pub/log.dart';

import '../post.dart';
import '../pub.dart';

class LikeCommentPage extends StatefulWidget {
  LikeCommentPage({super.key}) ;

  @override
  LikeCommentPageState createState() => new LikeCommentPageState();
}

class LikeCommentPageState extends State<LikeCommentPage> {
  List<$pbCommunity.Post> lstPost = List<$pbCommunity.Post>.empty(growable: true);
  List<$pbCommunity.CommentRef> lstComments = List<$pbCommunity.CommentRef>.empty(growable: true);

  @override
  void initState() {
    super.initState();
    // 获取评论列表
    LoadLikePost();
  }

  Widget build(BuildContext context) {

    return lstComments.length == 0 ? Row(
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
      itemCount: lstComments.length-2,
      shrinkWrap: true,
      itemBuilder: BuildPosts,

      // 控制滚动
      scrollDirection: Axis.vertical,
      controller: commentsScrollController,
    );
  }

  Future<void> LoadLikePost({int offset = 0, int count = 20,}) async {
    var req = $pbCommunity.UserLikesReq();
    req.offset = Int64(offset);
    req.count = Int64(count);
    req.userId = Int64(AppUserInfo.instance.imId);
    RpcCallImOuterApi(
        "/pb_grpc_community.Community/UserLikes",
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
      var rsp = $pbCommunity.UserLikesRsp();

      rsp.mergeFromBuffer(response.bodyBytes);
      log("load community post list ok");

      rsp.comments.forEach((element) {
        lstComments.insert(0, element);
      });
      lstComments = lstComments.toSet().toList();
      lstComments.sort((a, b) => a.comment.createAt.compareTo(b.comment.createAt));

      rsp.posts.forEach((element) {
        lstPost.add(element.clone());
      });
      lstPost = lstPost.toSet().toList();
      lstPost.sort((a, b) => a.createAt.compareTo(b.createAt));
      setState(() {

      });
    });
  }

  ScrollController commentsScrollController = ScrollController();

  Widget BuildPosts(BuildContext context, int index) {
    var post = lstPost[index];
    var comment = lstComments[index];
    return InkWell(
      onTap: () {
        // 老的喜欢数据
        var postLikeType = RelationFollow.isFollowSync(comment.comment.userId);
        Navigator.push(context,
            MaterialPageRoute(
                builder: (BuildContext context) {
                  return CommentPage(post, comment.comment);
                })).then((value) {
          if (postLikeType !=
              RelationFollow.isFollowSync(
                  post.userId)) {
            setState(() {

            });
          }
        });
      },
      child: CommentCard(post, comment.comment),
    );
  }
}