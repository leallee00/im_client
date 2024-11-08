// 帖子卡片
import 'package:flutter/material.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/pages/community/pub.dart';
import 'package:quliao/pb/pb_msg/community/community.pb.dart' as $pbCommunity;
import 'package:quliao/pub/pub-def.dart';
import 'package:fixnum/fixnum.dart';

typedef FFollow = void Function(int userId, bool follow);
class PostBestComment extends StatefulWidget {
  PostBestComment(this.comment, {super.key});

  final $pbCommunity.Comment comment;
  @override
  PostBestCommentState createState() => new PostBestCommentState();
}

class PostBestCommentState extends State<PostBestComment> {

  late POST_LIKE_TYPE postLikeType;
  SetCommentLike(POST_LIKE_TYPE likeType){
    // mapLike["${PostId}_${PinLunId}_${HuiFuId}"] = LikeType;
    postLikeType = likeType;
    dbAddCommunityLike(LikeKey(widget.comment.refId, commentId: widget.comment.id, replyId: Int64()), postLikeType);
    setState(() {
    });
  }

  @override
  void initState() {
    dbGetCommunityLike(LikeKey(widget.comment.refId, commentId:widget.comment.id, replyId: Int64())).then((value){
      postLikeType = value;
      setState(() {

      });
    });
  }

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Column(
        children: [
          Row(children: [
            Expanded(
              flex: 8,
              child:
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                alignment: Alignment.centerLeft,
                child:

                Chip(
                  avatar: Icon(Icons.insert_emoticon, color: Colors
                      .orange,),
                  label: Text("神评", style: TextStyle(
                      color: Colors.white),),
                  backgroundColor: Colors.redAccent,
                  labelPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  // padding:EdgeInsets.all(0),
                ),
              ),
            ),
            Expanded(
              child: IconButton(icon: Icon(Icons.thumb_up, color: postLikeType == POST_LIKE_TYPE.Like?Colors.blue:Colors.grey,),
                onPressed: (){
                  switch(postLikeType){
                    case POST_LIKE_TYPE.None: // 没有点过
                      // 喜欢
                      LikeComment(widget.comment, $pbCommunity.LikeType.UP).then((value){
                        widget.comment.likes ++;
                        SetCommentLike(POST_LIKE_TYPE.Like);
                      });
                      break;
                    case POST_LIKE_TYPE.Like: // 喜欢
                      // 取消喜欢
                      UnLikeComment(widget.comment, $pbCommunity.LikeType.UP).then((value){
                        widget.comment.likes --;
                        SetCommentLike(POST_LIKE_TYPE.None);
                      });
                      break;
                    case POST_LIKE_TYPE.Unlike: // 不喜欢
                      // 先取消不喜欢，再喜欢
                      UnLikeComment(widget.comment, $pbCommunity.LikeType.DOWN).then((value){
                        LikeComment(widget.comment, $pbCommunity.LikeType.DOWN).then((value){
                          widget.comment.likes += 2;
                          SetCommentLike(POST_LIKE_TYPE.Like);
                        });
                      });
                      break;
                  }
                },
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text("${widget.comment.likes}",
                  style: TextStyle(color: Colors.blue),),
              )
              ,
            ),
            Expanded(
              child:
              // Transform.rotate(
              //   angle: pi, child:
              IconButton(icon: Icon(Icons.thumb_down, color: postLikeType == POST_LIKE_TYPE.Unlike?Colors.blue:Colors.grey,),
                onPressed: (){
                  switch(postLikeType){
                    case POST_LIKE_TYPE.None: // 没有点过
                    //
                      LikeComment(widget.comment, $pbCommunity.LikeType.DOWN).then((value){
                        widget.comment.likes --;
                        SetCommentLike(POST_LIKE_TYPE.Unlike);
                      });
                      break;
                    case POST_LIKE_TYPE.Like: // 喜欢
                    // 取消喜欢
                      UnLikeComment(widget.comment, $pbCommunity.LikeType.UP).then((value){
                        LikeComment(widget.comment, $pbCommunity.LikeType.DOWN).then((value){
                          widget.comment.likes -=2;
                          SetCommentLike(POST_LIKE_TYPE.Unlike);
                        });
                      });
                      break;
                    case POST_LIKE_TYPE.Unlike: // 不喜欢
                    // 先取消不喜欢，再喜欢
                      UnLikeComment(widget.comment, $pbCommunity.LikeType.DOWN).then((value){
                        widget.comment.likes ++;
                        SetCommentLike(POST_LIKE_TYPE.None);
                      });
                      break;
                  }
                },
              ),
            )
          ],),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.all(20),
            child: Text("${widget.comment.content}"),
          )
        ],
      ),
    );
  }
}