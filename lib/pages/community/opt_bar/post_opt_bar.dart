
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/pages/community/pub.dart';
import 'package:quliao/pb/pb_msg/community/community.pb.dart' as $pbCommunity;
import 'package:quliao/pub/log.dart';
import 'package:quliao/pub/pub-def.dart';
import 'package:fixnum/fixnum.dart';
class PostOptBar extends StatefulWidget {
  PostOptBar(this.post, this.optBuildType, {super.key}) ;
  final $pbCommunity.Post post;
  final OptBuildType optBuildType;
  @override
  PostOptBarState createState() => new PostOptBarState();
}

class PostOptBarState extends State<PostOptBar> {
  late POST_LIKE_TYPE postLikeType = POST_LIKE_TYPE.Like;

  SetPostLike(POST_LIKE_TYPE likeType) {
    postLikeType = likeType;
    dbAddCommunityLike(LikeKey(widget.post.id, commentId: Int64(), replyId: Int64()), postLikeType);
    setState(() {

    });
  }

  @override
  void initState() {
    super.initState();

    dbGetCommunityLike(LikeKey(widget.post.id, commentId: Int64(), replyId: Int64())).then((value) {
      // log("init like type:${value}");
      postLikeType = value;
      setState(() {

      });
    }).catchError((e){
      log("error:===================get postLikeType err:$e ");
    });
  }

  Widget build(BuildContext context) {
    return Container(
    child:
      Row(
      children: [
        Expanded(
          child: IconButton(
            icon: Icon(Icons.share, color: Colors.grey,), onPressed: () {  },
          ),
        ),
        Expanded(
          child: Text("${widget.post.shares}",style: TextStyle(color: Colors.grey),),
        ),
        Expanded(
          child:
          // IconButton(
          //   icon:
          Icon(Icons.comment, color: Colors.grey),
        ),
        Expanded(
          child: Text("${widget.post.comments}", style: TextStyle( color: Colors.grey),),
        ),
        Expanded(
          child: IconButton(icon: Icon(Icons.thumb_up,
            color: postLikeType == POST_LIKE_TYPE.Like
                ? Colors.blue
                : Colors.grey,),
            onPressed: () {
              switch (postLikeType) {
                case POST_LIKE_TYPE.None: // 没有点过
                // 喜欢
                  LikePost(widget.post, $pbCommunity.LikeType.UP).then((value) {
                    widget.post.likes ++;
                    SetPostLike(POST_LIKE_TYPE.Like);
                    setState(() {

                    });
                  });
                  break;
                case POST_LIKE_TYPE.Like: // 喜欢
                // 取消喜欢
                  UnLikePost(widget.post, $pbCommunity.LikeType.UP).then((
                      value) {
                    widget.post.likes --;
                    SetPostLike(POST_LIKE_TYPE.None);
                    setState(() {

                    });
                  });
                  break;
                case POST_LIKE_TYPE.Unlike: // 不喜欢
                // 先取消不喜欢，再喜欢
                  UnLikePost(widget.post, $pbCommunity.LikeType.DOWN)
                      .then((value) {
                    LikePost(widget.post, $pbCommunity.LikeType.UP)
                        .then((value) {
                      widget.post.likes += 2;
                      SetPostLike(POST_LIKE_TYPE.Like);
                      setState(() {

                      });
                    });
                  });
                  break;
              }
            },),
        ),
        Expanded(
          child:
          Container(
            alignment: Alignment.center,
            child: Text(
              "${widget.post.likes}",
              style: TextStyle(color: Colors.blue),),
          ),
        ),
        Expanded(
          // child: Transform.rotate(
          //   angle: pi,
          child:
          IconButton(icon: Icon(Icons.thumb_down,
            color: postLikeType == POST_LIKE_TYPE.Unlike
                ? Colors.blue
                : Colors.grey,),
            onPressed: () {
              log("点赞!!");
              switch (postLikeType) {
                case POST_LIKE_TYPE.None: // 没有点过
                // 喜欢
                  LikePost(widget.post, $pbCommunity.LikeType.DOWN).then((
                      value) {
                    widget.post.likes --;
                    SetPostLike(POST_LIKE_TYPE.Unlike);
                  });
                  break;
                case POST_LIKE_TYPE.Like: // 喜欢
                // 取消喜欢
                  UnLikePost(widget.post, $pbCommunity.LikeType.UP).then((
                      value) {
                    LikePost(widget.post, $pbCommunity.LikeType.DOWN)
                        .then((value) {
                      widget.post.likes -= 2;
                      SetPostLike(POST_LIKE_TYPE.Unlike);
                    });
                  });
                  break;
                case POST_LIKE_TYPE.Unlike: // 不喜欢
                // 先取消不喜欢，再喜欢
                  UnLikePost(widget.post, $pbCommunity.LikeType.DOWN)
                      .then((value) {
                    widget.post.likes ++;
                    SetPostLike(POST_LIKE_TYPE.None);
                  });
                  break;
              }
            },),
          // ),
        )
      ],
    ));
  }
}
