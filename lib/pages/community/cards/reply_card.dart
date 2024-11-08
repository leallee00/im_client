// 帖子卡片
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/pages/community/multi_photo_view.dart';
import 'package:quliao/mywedgits/user/CommunityAvatar.dart';
import 'package:quliao/pages/community/pub.dart';
import 'package:quliao/pages/community/reply_talk.dart';
import 'package:quliao/pages/community/user_info.dart';
import 'package:quliao/pb/pb_msg/community/community.pb.dart' as $pbCommunity;
import 'package:quliao/pub/log.dart';
import 'package:quliao/pub/pub-def.dart';

import 'fade_route.dart';
typedef ItemBuildFunc = List<Widget> Function();
class ReplyCard extends StatefulWidget {
  ReplyCard(this.post, this.comment, this.reply, {super.key, this.talkId = Int64.ZERO});
  final $pbCommunity.Reply reply;
  final $pbCommunity.Post post;
  final $pbCommunity.Comment comment;
  final Int64 talkId;

  @override
  ReplyCardState createState() => new ReplyCardState();
}

class ReplyCardState extends State<ReplyCard> {
  POST_LIKE_TYPE postLikeType = POST_LIKE_TYPE.Like;
  SetReplyLike(POST_LIKE_TYPE likeType){
    postLikeType = likeType;
    dbAddCommunityLike(LikeKey(widget.post.id, commentId: widget.comment.id, replyId: widget.reply.id), postLikeType);
    setState(() {
    });
  }

  @override
  void initState() {
    super.initState();
    dbGetCommunityLike(LikeKey(widget.post.id,  commentId:widget.comment.id, replyId: widget.reply.id)).then((value){
      postLikeType = value;
      setState(() {

      });
    });
  }

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.black12,
      ),
      child: Column(
        children: [
          // 头部
          Row(
            children: [
              Expanded(
                  flex: 5,
                  child: AvatarPost(widget.reply.userId, widget.reply.avatar,
                      widget.reply.username,
                      widget.reply.createAt)
              ),
              Expanded(
                child: IconButton(
                  icon: Icon(Icons.share), onPressed: () {  },
                ),
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
                        LikeReply(widget.reply, $pbCommunity.LikeType.UP).then((
                            value) {
                          widget.reply.likes ++;
                          SetReplyLike(POST_LIKE_TYPE.Like);
                        });
                        break;
                      case POST_LIKE_TYPE.Like: // 喜欢
                      // 取消喜欢
                        UnLikeReply(widget.reply, $pbCommunity.LikeType.UP)
                            .then((value) {
                          widget.reply.likes --;
                          SetReplyLike(POST_LIKE_TYPE.None);
                        });
                        break;
                      case POST_LIKE_TYPE.Unlike: // 不喜欢
                      // 先取消不喜欢，再喜欢
                        UnLikeReply(widget.reply, $pbCommunity.LikeType.DOWN)
                            .then((value) {
                          LikeReply(widget.reply, $pbCommunity.LikeType.UP)
                              .then((value) {
                            widget.reply.likes += 2;
                            SetReplyLike(POST_LIKE_TYPE.Like);
                          });
                        });
                        break;
                    }
                  },
                ),
              ),
              Expanded(
                child:
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "${widget.reply.likes}",
                    style: TextStyle(color: Colors.blue),),
                ),
              ),
              Expanded(
                child:
                IconButton(icon: Icon(Icons.thumb_down,
                  color: postLikeType == POST_LIKE_TYPE.Unlike
                      ? Colors.blue
                      : Colors.grey,),
                  onPressed: () {
                    switch (postLikeType) {
                      case POST_LIKE_TYPE.None: // 没有点过
                      // 喜欢
                        LikeReply(widget.reply, $pbCommunity.LikeType.DOWN)
                            .then((value) {
                          widget.reply.likes --;
                          SetReplyLike(POST_LIKE_TYPE.Unlike);
                        });
                        break;
                      case POST_LIKE_TYPE.Like: // 喜欢
                      // 取消喜欢
                        UnLikeReply(widget.reply, $pbCommunity.LikeType.UP)
                            .then((value) {
                          LikeReply(widget.reply, $pbCommunity.LikeType.DOWN)
                              .then((value) {
                            widget.reply.likes -= 2;
                            SetReplyLike(POST_LIKE_TYPE.Unlike);
                          });
                        });
                        break;
                      case POST_LIKE_TYPE.Unlike: // 不喜欢
                      // 先取消不喜欢，再喜欢
                        UnLikeReply(widget.reply, $pbCommunity.LikeType.DOWN)
                            .then((value) {
                          widget.reply.likes ++;
                          SetReplyLike(POST_LIKE_TYPE.None);
                        });
                        break;
                    }
                  },
                ),
                // Transform.rotate(
                //   angle: pi, child: IconButton(icon: Icon(Icons.navigation),),),
              )
            ],
          ),

          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.fromLTRB(40, 0, 10, 10),
            child: Column(
              children: [
                // 内容
                widget.reply.talkId == 0 ?
                Container(
                  alignment: Alignment.topLeft,
                  // margin: EdgeInsets.fromLTRB(40, 0, 10, 10),
                  child: Text("${widget.reply.content}"),
                ) :
                Container(
                  alignment: Alignment.topLeft,
                  // margin: EdgeInsets.fromLTRB(40, 0, 10, 10),
                  child: Text.rich(TextSpan(
                      text: "回复 ",
                      children: [
                        TextSpan(
                            text: "${widget.reply.toUsername}",
                            style: TextStyle(color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // 打开用户信息
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                      return CommunityUserInfo(
                                          widget.reply.toUserId.toInt());
                                    }));
                              }
                        ),
                        TextSpan(text: ": ${widget.reply.content}"),
                      ]
                  )),
                  // Text("${widget.reply.content}"),
                ),

                // 如果有图片的话就给个图片
                widget.reply.images.length > 0
                    ? Container(
                  // margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: buildGrid(_buildImageTitleList))
                    : Container(),

                buildTalkButten(),
              ],
            ),
          )

        ],
      ),
    );
  }

  Widget buildTalkButten(){
    log("widget.talkId=${widget.talkId}");

    if (widget.talkId != Int64.ZERO){
      log("在对话窗口，不需要再显示按钮");
      return Container();
    }
    if (widget.reply.talkId == Int64.ZERO){
      log("在评论窗口，但是不是会话的一部分，不需要再显示按钮");
      return Container();
    }

    return InkWell(
      child: Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "查看对话", style: TextStyle(color: Colors.blue),)),
      onTap: () {
        // 打开对话
        Navigator.push(context, MaterialPageRoute(
            builder: (BuildContext context) {
              log("widget.reply.talkId=${widget.reply.talkId}");
              return ReplyTalkPage(widget.post, widget.comment, widget.reply.talkId);
            }));
      },
    );
  }

  Widget buildGrid(ItemBuildFunc buildFunc) {
    return
      // Offstage(offstage: _images.isEmpty,
      // child:
      GridView.count(
        shrinkWrap:true,//范围内进行包裹（内容多高ListView就多高）
        physics:NeverScrollableScrollPhysics(),//禁止滚动
        //水平子Widget之间间距
        crossAxisSpacing: 5.0,
        //垂直子Widget之间间距
        mainAxisSpacing: 5.0,
        //GridView内边距
        padding: EdgeInsets.fromLTRB(0,10,0,0),

        //一行的Widget数量
        crossAxisCount: 3,
        //子Widget宽高比例
        childAspectRatio: 1.0,

        //子Widget列表
        children: buildFunc(),
        // )
      ) ;
  }

  //////////////////////////
  // 图片
  List<Widget> _buildImageTitleList() {
    List imgDataArr = [];
    log("==============渲染图片:${widget.reply.images}");
    return List.generate(widget.reply.images.length, (index) {
      // Asset asset = _images[index];
      // log("_images[${index}]:${asset.identifier}${asset.name}");
      var img = widget.reply.images[index].url;
      imgDataArr.add(img);
      return Container(
        child:
        InkWell(child: Image.network(img, fit: BoxFit.cover,),
          onTap: () {
            // Navigator.of(context).push(
            //     new FadeRoute(page: PhotoViewGalleryScreen(
            //       images: imgDataArr, //传入图片list
            //       index: index, //传入当前点击的图片的index
            //       heroTag: img, //传入当前点击的图片的hero tag （可选）
            //     )));
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
              return new PhotoViewGalleryScreen(
                widget.post,
                OptBuildType.ReplaySummary,
                comment: widget.comment,
                reply: widget.reply,
                images: imgDataArr, //传入图片list
                index: index, //传入当前点击的图片的index
                heroTag: img, //传入当前点击的图片的hero tag （可选）
              );
            }));
          },
        ),
      );
    });
  }
/////////////////////////
}