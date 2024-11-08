
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/pages/community/pub.dart';
import 'package:quliao/pb/pb_msg/community/community.pb.dart' as $pbCommunity;
import 'package:quliao/pub/log.dart';
import 'package:quliao/pub/pub-def.dart';

class ReplyOptBar extends StatefulWidget {
  ReplyOptBar(this.post, this.comment, this.reply,this.optBuildType,{super.key}) ;
  final $pbCommunity.Post post;
  final $pbCommunity.Comment? comment;
  final $pbCommunity.Reply? reply;
  final OptBuildType optBuildType;
  @override
  ReplyOptBarState createState() => new ReplyOptBarState();
}

class ReplyOptBarState extends State<ReplyOptBar> {
  late POST_LIKE_TYPE replyLikeType;

  SetReplyLike(POST_LIKE_TYPE likeType) {
    replyLikeType = likeType;
    dbAddCommunityLike(LikeKey(widget.post.id, commentId: widget.comment?.id, replyId: widget.reply?.id), replyLikeType);
    setState(() {

    });
  }

  @override
  void initState() {
    super.initState();

    dbGetCommunityLike(LikeKey(widget.post.id, commentId: widget.comment?.id, replyId: widget.reply?.id)).then((value) {
      log("init like type:${value}");
      replyLikeType = value;
      setState(() {

      });
    });
  }

  Widget build(BuildContext context) {
    return Row(
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
          child: Text("${widget.comment?.replies}", style: TextStyle( color: Colors.grey),),
        ),
        Expanded(
          child: IconButton(icon: Icon(Icons.thumb_up,
            color: replyLikeType == POST_LIKE_TYPE.Like
                ? Colors.blue
                : Colors.grey,),
            onPressed: () {
              switch (replyLikeType) {
                case POST_LIKE_TYPE.None: // 没有点过
                // 喜欢
                  LikeReply(widget.reply!, $pbCommunity.LikeType.UP).then((value) {
                    widget.reply?.likes ++;
                    SetReplyLike(POST_LIKE_TYPE.Like);
                    setState(() {

                    });
                  });
                  break;
                case POST_LIKE_TYPE.Like: // 喜欢
                // 取消喜欢
                  UnLikeReply(widget.reply!, $pbCommunity.LikeType.UP).then((
                      value) {
                    widget.reply?.likes --;
                    SetReplyLike(POST_LIKE_TYPE.None);
                    setState(() {

                    });
                  });
                  break;
                case POST_LIKE_TYPE.Unlike: // 不喜欢
                // 先取消不喜欢，再喜欢
                  UnLikeReply(widget.reply!, $pbCommunity.LikeType.DOWN)
                      .then((value) {
                    LikeReply(widget.reply!, $pbCommunity.LikeType.UP)
                        .then((value) {
                      widget.reply?.likes += 2;
                      SetReplyLike(POST_LIKE_TYPE.Like);
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
              "${widget.reply?.likes}",
              style: TextStyle(color: Colors.blue),),
          ),
        ),
        Expanded(
          // child: Transform.rotate(
          //   angle: pi,
          child:
          IconButton(icon: Icon(Icons.thumb_down,
            color: replyLikeType == POST_LIKE_TYPE.Unlike
                ? Colors.blue
                : Colors.grey,),
            onPressed: () {
              log("点赞!!");
              switch (replyLikeType) {
                case POST_LIKE_TYPE.None: // 没有点过
                // 喜欢
                  LikeReply(widget.reply!, $pbCommunity.LikeType.DOWN).then((
                      value) {
                    widget.reply?.likes --;
                    SetReplyLike(POST_LIKE_TYPE.Unlike);
                  });
                  break;
                case POST_LIKE_TYPE.Like: // 喜欢
                // 取消喜欢
                  UnLikeReply(widget.reply!, $pbCommunity.LikeType.UP).then((
                      value) {
                    LikeReply(widget.reply!, $pbCommunity.LikeType.DOWN)
                        .then((value) {
                      widget.reply?.likes -= 2;
                      SetReplyLike(POST_LIKE_TYPE.Unlike);
                    });
                  });
                  break;
                case POST_LIKE_TYPE.Unlike: // 不喜欢
                // 先取消不喜欢，再喜欢
                  UnLikeReply(widget.reply!, $pbCommunity.LikeType.DOWN)
                      .then((value) {
                    widget.reply?.likes ++;
                    SetReplyLike(POST_LIKE_TYPE.None);
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
