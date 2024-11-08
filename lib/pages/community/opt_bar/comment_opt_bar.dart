
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/pages/community/pub.dart';
import 'package:quliao/pb/pb_msg/community/community.pb.dart' as $pbCommunity;
import 'package:quliao/pub/log.dart';
import 'package:quliao/pub/pub-def.dart';
import 'package:fixnum/fixnum.dart';

class CommentOptBar extends StatefulWidget {
  CommentOptBar(this.post, this.comment, this.optBuildType, {super.key}) ;
  final $pbCommunity.Post post;
  final $pbCommunity.Comment? comment;
  final OptBuildType optBuildType;
  @override
  CommentOptBarState createState() => new CommentOptBarState();
}

class CommentOptBarState extends State<CommentOptBar> {
  late POST_LIKE_TYPE commentLikeType;

  SetCommentLike(POST_LIKE_TYPE likeType) {
    commentLikeType = likeType;
    dbAddCommunityLike(LikeKey(widget.post.id, commentId: widget.comment?.id, replyId: Int64(0)), commentLikeType);
    setState(() {

    });
  }

  @override
  void initState() {
    super.initState();

    dbGetCommunityLike(LikeKey(widget.post.id, commentId: widget.comment?.id, replyId: Int64(0))).then((value) {
      log("init like type:${value}");
      commentLikeType = value;
      setState(() {

      });
    });
  }

  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: IconButton(
            icon: Icon(Icons.share, color: Colors.grey), onPressed: () {  },
          ),
        ),
        Expanded(
          child: Text("${widget.comment?.shares}",style: TextStyle(color: Colors.grey)),
        ),
        Expanded(
          child:
          // IconButton(
          //   icon:
          Icon(Icons.comment, color: Colors.grey),
        ),
        Expanded(
          child: Text("${widget.comment?.replies}",style: TextStyle(color: Colors.grey)),
        ),
        Expanded(
          child: IconButton(icon: Icon(Icons.thumb_up,
            color: commentLikeType == POST_LIKE_TYPE.Like
                ? Colors.blue
                : Colors.grey,),
            onPressed: () {
              switch (commentLikeType) {
                case POST_LIKE_TYPE.None: // 没有点过
                // 喜欢
                  LikeComment(widget.comment!, $pbCommunity.LikeType.UP).then((value) {
                    widget.comment?.likes ++;
                    SetCommentLike(POST_LIKE_TYPE.Like);
                    setState(() {

                    });
                  });
                  break;
                case POST_LIKE_TYPE.Like: // 喜欢
                // 取消喜欢
                  UnLikeComment(widget.comment!, $pbCommunity.LikeType.UP).then((
                      value) {
                    widget.comment?.likes --;
                    SetCommentLike(POST_LIKE_TYPE.None);
                    setState(() {

                    });
                  });
                  break;
                case POST_LIKE_TYPE.Unlike: // 不喜欢
                // 先取消不喜欢，再喜欢
                  UnLikeComment(widget.comment!, $pbCommunity.LikeType.DOWN)
                      .then((value) {
                    LikeComment(widget.comment!, $pbCommunity.LikeType.UP)
                        .then((value) {
                      widget.comment?.likes += 2;
                      SetCommentLike(POST_LIKE_TYPE.Like);
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
              "${widget.comment?.likes}",
              style: TextStyle(color: Colors.blue),),
          ),
        ),
        Expanded(
          // child: Transform.rotate(
          //   angle: pi,
          child:
          IconButton(icon: Icon(Icons.thumb_down,
            color: commentLikeType == POST_LIKE_TYPE.Unlike
                ? Colors.blue
                : Colors.grey,),
            onPressed: () {
              log("点赞!!");
              switch (commentLikeType) {
                case POST_LIKE_TYPE.None: // 没有点过
                // 喜欢
                  LikeComment(widget.comment!, $pbCommunity.LikeType.DOWN).then((
                      value) {
                    widget.comment?.likes --;
                    SetCommentLike(POST_LIKE_TYPE.Unlike);
                  });
                  break;
                case POST_LIKE_TYPE.Like: // 喜欢
                // 取消喜欢
                  UnLikeComment(widget.comment!, $pbCommunity.LikeType.UP).then((
                      value) {
                    LikeComment(widget.comment!, $pbCommunity.LikeType.DOWN)
                        .then((value) {
                      widget.comment?.likes -= 2;
                      SetCommentLike(POST_LIKE_TYPE.Unlike);
                    });
                  });
                  break;
                case POST_LIKE_TYPE.Unlike: // 不喜欢
                // 先取消不喜欢，再喜欢
                  UnLikeComment(widget.comment!, $pbCommunity.LikeType.DOWN)
                      .then((value) {
                    widget.comment?.likes ++;
                    SetCommentLike(POST_LIKE_TYPE.None);
                  });
                  break;
              }
            },),
          // ),
        )
      ],
    );
  }
}
