// 帖子卡片
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/pages/community/multi_photo_view.dart';
import 'package:quliao/mywedgits/user/CommunityAvatar.dart';
import 'package:quliao/pages/community/pub.dart';
import 'package:quliao/pages/community/user_info.dart';
import 'package:quliao/pb/pb_msg/community/community.pb.dart' as $pbCommunity;
import 'package:quliao/pub/log.dart';
import 'package:quliao/pub/pub-def.dart';

import 'fade_route.dart';
import 'package:fixnum/fixnum.dart';

typedef ItemBuildFunc = List<Widget> Function();
enum COMMENT_SHOW_TYPE{
  summary,
  detail,
}
class CommentCard extends StatefulWidget {
  CommentCard(this.post, this.comment, {super.key, this.showType = COMMENT_SHOW_TYPE.summary});

  final $pbCommunity.Post post;
  final $pbCommunity.Comment comment;
  final COMMENT_SHOW_TYPE showType;
  @override
  CommentCardState createState() => new CommentCardState();
}

class CommentCardState extends State<CommentCard> {
  late POST_LIKE_TYPE postLikeType = POST_LIKE_TYPE.Like;
  SetCommentLike(POST_LIKE_TYPE likeType){
    // mapLike["${PostId}_${PinLunId}_${HuiFuId}"] = LikeType;
    postLikeType = likeType;
    dbAddCommunityLike(LikeKey(widget.comment.refId, commentId: widget.comment.id, replyId: Int64()), postLikeType);
    setState(() {
    });
  }

  @override
  void initState() {
    super.initState();
    dbGetCommunityLike(LikeKey(widget.comment.refId, commentId:widget.comment.id, replyId: Int64())).then((value){
      postLikeType = value;
      setState(() {

      });
    });
  }

  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      // elevation: 1,
      // //设置shape，这里设置成了R角
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.all(Radius.circular(20.0)),),
      // margin: EdgeInsets.zero,
      // borderOnForeground: true,
      child: Column(
        children: [
          // 头部
          Row(
            children: [
              Expanded(
                  flex: 5,
                  child: AvatarPost(
                      widget.comment.userId, widget.comment.avatar,
                      widget.comment.username,
                      widget.comment.createAt)
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
                        LikeComment(widget.comment, $pbCommunity.LikeType.UP)
                            .then((value) {
                          widget.comment.likes ++;
                          SetCommentLike(POST_LIKE_TYPE.Like);
                        });
                        break;
                      case POST_LIKE_TYPE.Like: // 喜欢
                      // 取消喜欢
                        UnLikeComment(widget.comment, $pbCommunity.LikeType.UP)
                            .then((value) {
                          widget.comment.likes --;
                          SetCommentLike(POST_LIKE_TYPE.None);
                        });
                        break;
                      case POST_LIKE_TYPE.Unlike: // 不喜欢
                      // 先取消不喜欢，再喜欢
                        UnLikeComment(
                            widget.comment, $pbCommunity.LikeType.DOWN).then((
                            value) {
                          LikeComment(widget.comment,
                              $pbCommunity.LikeType.UP).then((value) {
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
                child:
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "${widget.comment.likes}",
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
                        LikeComment(widget.comment, $pbCommunity.LikeType.DOWN)
                            .then((value) {
                          widget.comment.likes --;
                          SetCommentLike(POST_LIKE_TYPE.Unlike);
                        });
                        break;
                      case POST_LIKE_TYPE.Like: // 喜欢
                      // 取消喜欢
                        UnLikeComment(widget.comment, $pbCommunity.LikeType.UP)
                            .then((value) {
                          LikeComment(widget.comment,
                              $pbCommunity.LikeType.DOWN).then((value) {
                            widget.comment.likes -= 2;
                            SetCommentLike(POST_LIKE_TYPE.Unlike);
                          });
                        });
                        break;
                      case POST_LIKE_TYPE.Unlike: // 不喜欢
                      // 先取消不喜欢，再喜欢
                        UnLikeComment(
                            widget.comment, $pbCommunity.LikeType.DOWN).then((
                            value) {
                          widget.comment.likes ++;
                          SetCommentLike(POST_LIKE_TYPE.None);
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
                Container(
                  alignment: Alignment.topLeft,
                  // margin: EdgeInsets.fromLTRB(40, 0, 20, 10),
                  //.fromLTRB(10, 0, 0, 0),
                  child: Text("${widget.comment.content}"),
                ),

                // 如果有图片的话就给个图片
                widget.comment.images.length > 0
                    ? buildGrid(_buildImageTitleList)
                    : Container(),

                // 回复
                (widget.showType == COMMENT_SHOW_TYPE.summary &&
                    widget.comment.topReplies.length > 0) ?
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.fromLTRB(0, 10, 20, 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Column(
                    children: MakeReplyList(),
                  ),

                ) : Container(),
              ],
            ),
          )

        ],
      ),
    );
  }

  List<Widget> MakeReplyList(){
    var widgetList = List<Widget>.empty(growable: true);
    for(var reply in widget.comment.topReplies){
      widgetList.add(RichText(
        text: TextSpan(
          // text:
            children: [
              TextSpan(
                text: reply.username,//"${widget.comment.topReplies[0].username}",
                style: TextStyle(color: Colors.blue),
                  recognizer: TapGestureRecognizer()..onTap=(){
                    // 打开用户信息
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                      return CommunityUserInfo(reply.userId.toInt());
                    }));
                  }
              ),
              TextSpan(
                text: ": ",//'${widget.comment.topReplies[0].content}',
                style: TextStyle(color: Colors.black),
              ),
              TextSpan(
                text: reply.content,//'${widget.comment.topReplies[0].content}',
                style: TextStyle(color: Colors.black),
              ),
            ]
        ),
      ),);
    }
    if (widget.comment.replies > widget.comment.topReplies.length){
      widgetList.add(
        //   InkWell(
        // child:
        Text("查看${widget.comment.replies}条评论", style: TextStyle(color: Colors.blue),),
        // onTap: (){
        //   // 打开评论页面
        //
      //   },
      // )
    );
    }
    return widgetList;
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
    // log("==============渲染图片:${widget.comment.images}");
    return List.generate(widget.comment.images.length, (index) {
      // Asset asset = _images[index];
      // log("_images[${index}]:${asset.identifier}${asset.name}");
      var img = widget.comment.images[index].url;
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
              return PhotoViewGalleryScreen(
                widget.post,
                widget.showType == COMMENT_SHOW_TYPE.summary? OptBuildType.CommentSummary:OptBuildType.CommentDetail,
                comment: widget.comment,
                images: imgDataArr, //传入图片list
                index: index, //传入当前点击的图片的index
                heroTag: img, controller: PageController(), reply: $pbCommunity.Reply(), //传入当前点击的图片的hero tag （可选）
              );
            }));
          },
        ),
      );
    });
  }
/////////////////////////
}