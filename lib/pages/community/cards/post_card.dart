// 帖子卡片
import 'dart:math';

import 'package:date_format/date_format.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/event/notification.dart';
import 'package:quliao/models/relation/follow.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/pages/community/multi_photo_view.dart';
import 'package:quliao/mywedgits/user/CommunityAvatar.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/community/cards/post_best_comment.dart';
import 'package:quliao/pages/community/opt_bar/post_opt_bar.dart';
import 'package:quliao/pages/community/post.dart';
import 'package:quliao/pages/community/pub.dart';
import 'package:quliao/pb/pb_msg/community/community.pb.dart' as $pbCommunity;
import 'package:quliao/pb/pb_pub/service.pb.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/pub/pub-def.dart';

import 'fade_route.dart';

typedef ItemBuildFunc = List<Widget> Function();

// typedef FFollow = void Function(int userId, bool follow);
// enum POST_SHOW_TYPE{
//   summary,
//   detail,
// }
class PostCard extends StatefulWidget {
  // PostCard(this.post, this.isFollowed, {super.key,this.showType=CARD_SHOW_TYPE.summary}) ;
  PostCard(this.post, this.isFollowed, this.optBuildType, {super.key});

  final $pbCommunity.Post post;
  bool isFollowed;
  // final FFollow onFollow;
  // 显示类型 0：摘要 1：详细页面显示
  // CARD_SHOW_TYPE showType;
  final OptBuildType optBuildType;

  @override
  PostCardState createState() => PostCardState();
}

class PostCardState extends State<PostCard> {
  late POST_LIKE_TYPE postLikeType;
  POST_VOTE_STATUS postVoteStatus = POST_VOTE_STATUS.NOT_VOTE;
  Int64 optionId = Int64(0);
  Int64 countSum = Int64(0);

  SetPostLike(POST_LIKE_TYPE likeType) {
    postLikeType = likeType;
    dbAddCommunityLike(
        LikeKey(widget.post.id, commentId: Int64(), replyId: Int64()),
        postLikeType);
    setState(() {});
  }

  // 投票
  VotedPostVote(Int64 optionId) {
    postVoteStatus = POST_VOTE_STATUS.VOTED;
    dbVoteCommunityVote(widget.post.votes[0].id.toString(), optionId);
    setState(() {});
  }

  @override
  void initState() {
    // log("===================PostCardState->is follow:${widget.isFollowed}");
    dbGetCommunityLike(
            LikeKey(widget.post.id, commentId: Int64(), replyId: Int64()))
        .then((value) {
      // log("init like type:${value}");
      postLikeType = value;
      setState(() {});

      RelationFollow.isFollow(widget.post.userId).then((value) {
        if (widget.isFollowed != value) {
          widget.isFollowed = value!;
          setState(() {});
        }
      });
    });

    if (widget.post.votes.length > 0) {
      for (var v in widget.post.votes[0].options) {
        log(v);
        countSum += v.count;
      }

      dbGetCommunityVote(widget.post.votes[0].id.toString()).then((value) {
        // log("init votes type:${value}");
        postVoteStatus = value.status;
        optionId = value.optionId;
        log("postVoteStatus: ${postVoteStatus}, optionId: ${optionId}");
        setState(() {});
      });
    }
  }

  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Column(
        children: [
          // 头部
          Row(
            children: [
              Expanded(
                  flex: 5,
                  child: AvatarPost(
                    widget.post.userId,
                    widget.post.avatar,
                    widget.post.username,
                    widget.post.createAt,
                  )),
              Expanded(
                flex: 2,
                child: TextButton(
                  child: Container(
                    height: 25,
                    width: 70,
                    alignment: Alignment.center,
                    // padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      // border: Border.all(width: 1, color: IsFollow(widget.post.userId.toInt()) == 1?Colors.grey:Colors.blue),
                      border: Border.all(
                          width: 1,
                          color: widget.isFollowed ? Colors.grey : Colors.blue),
                    ),
//                    child: Text("+ 关注", style: TextStyle(color: Colors.blue),),
                    child: Text(
                      widget.isFollowed ? "已关注" : "+ 关注",
                      style: TextStyle(
                          color: widget.isFollowed ? Colors.grey : Colors.blue),
                    ),
                  ),
                  onPressed: () {
                    if (widget.isFollowed) {
                      // var followType = !widget.isFollowed;
                      widget.isFollowed = false;
                      var req = $pbCommunity.UnfollowReq();
                      req.followeeAppId = widget.post.appId;
                      req.followeeAppUserId = widget.post.appUserId;
                      req.followeeUserId = widget.post.userId;
                      RpcCallImOuterApi(
                              "/pb_grpc_community.Community/Unfollow",
                              req,
                              MakePBCommData(
                                  aimId: Int64(AppUserInfo.instance.imId),
                                  toService: Service.community))
                          .then((value) {
                        if (value.statusCode == 200) {
                          // SetMapFollow(widget.post.userId.toInt(), followType);
                          // widget.onFollow(widget.post.userId.toInt(), followType);

                          // dbAddCommunityFollow(widget.post.userId.toInt(), widget.isFollowed).then((value) {
                          RelationFollow.SetFollow(
                                  widget.post.userId, widget.isFollowed)
                              .then((value) {
                            NotifyFollowChange(
                                    widget.post.userId, widget.isFollowed)
                                .dispatch(context);
                            setState(() {});
                          });
                        }
                        // else {
                        //   // SetMapFollow(widget.post.userId.toInt(), followType);
                        //   // widget.onFollow(widget.post.userId.toInt(), followType);
                        //   // 关注失败，先展示一下
                        //   NotifyFollowChange(widget.post.userId.toInt(), widget.isFollowed ).dispatch(context);
                        // }
                      });
                    } else {
                      widget.isFollowed = true; // == 1?0:1;
                      var req = $pbCommunity.FollowReq();
                      // 用户信息
                      // string followerUsername = 1;
                      // string followerAvatar = 2;
                      // // 被关注者信息
                      // int64 followeeAppId = 3;
                      // int64 followeeUserId = 4;
                      // string followeeAppUserId = 5;
                      // string followeeUsername = 6;
                      // string followeeAvatar = 7;
                      req.followerUsername = AppUserInfo.instance.nickName;
                      req.followerAvatar = AppUserInfo.instance.appAvatar;
                      req.hasFollowerUsername();
                      req.followeeAppId = widget.post.appId;
                      req.followeeUserId = widget.post.userId;
                      req.followeeAppUserId = widget.post.appUserId;
                      req.followeeUsername = widget.post.username;
                      req.followeeAvatar = widget.post.avatar;

                      log("${req}");

                      //
                      RpcCallImOuterApi(
                              "/pb_grpc_community.Community/Follow",
                              req,
                              MakePBCommData(
                                  aimId: Int64(AppUserInfo.instance.imId),
                                  toService: Service.community))
                          .then((value) {
                        if (value.statusCode == 200) {
                          // SetMapFollow(widget.post.userId.toInt(), followType);
                          // widget.onFollow(widget.post.userId.toInt(), followType);
                          // dbAddCommunityFollow(widget.post.userId.toInt(), widget.isFollowed).then((value) {
                          RelationFollow.SetFollow(
                                  widget.post.userId, widget.isFollowed)
                              .then((value) {
                            NotifyFollowChange(
                                    widget.post.userId, widget.isFollowed)
                                .dispatch(context);
                            setState(() {});
                          });
                        }
                        // else {
                        //   // 关注失败，先展示一下
                        //   NotifyFollowChange(widget.post.userId.toInt(), widget.isFollowed).dispatch(context);
                        // }
                      });
                    }
                  },
                ),
              ),
              Expanded(
                  child: IconButton(
                icon: Icon(Icons.close),
                onPressed: () {},
              )),
            ],
          ),
          // 内容
          Container(
            margin:
                EdgeInsets.fromLTRB(20, 0, 20, 15), //.fromLTRB(10, 0, 0, 0),
            alignment: Alignment.centerLeft,
            child: Text("${widget.post.content}"),
          ),

          // 如果有图片的话就给个图片
          widget.post.images.length > 0
              ? buildGrid(_buildImageTitleList)
              : Container(),

          widget.post.votes.length > 0
              ? Container(
                  height: 30 * (widget.post.votes[0].options.length).toDouble(),
                  // color: Color(0x329E9E9E),
                  child: ListView.builder(
                      itemCount: widget.post.votes[0].options.length,
                      itemBuilder: (BuildContext context, int index) {
                        return postVoteStatus == POST_VOTE_STATUS.NOT_VOTE
                            ? _buildVoteList(context, index)
                            : _buildVotedList(context, index);
                      }),
                )
              : Container(),

          // 关联圈子
          Row(),

          // 神评
          // (widget.showType == CARD_SHOW_TYPE.summary &&
          //     widget.post.topComments != null &&
          //     widget.post.topComments.length > 0) ? PostBestComment(
          //     widget.post.topComments[0]) : Container(),
          (widget.optBuildType == OptBuildType.PostSummary &&
                  widget.post.topComments != null &&
                  widget.post.topComments.length > 0)
              ? PostBestComment(widget.post.topComments[0])
              : Container(),

          PostOptBar(
              widget.post, widget.optBuildType), //, CARD_SHOW_TYPE.summary),
          // 评论信息
          // Row(
          //   children: [
          //     Expanded(
          //       child: IconButton(
          //         icon: Icon(Icons.share),
          //       ),
          //     ),
          //     Expanded(
          //       child: Text("${widget.post.shares}"),
          //     ),
          //     Expanded(
          //       child: IconButton(
          //         icon: Icon(Icons.comment),
          //         onPressed: () {
          //           if (widget.showType != POST_SHOW_TYPE.summary) {
          //             return;
          //           }
          //
          //           Navigator.push(context,
          //               MaterialPageRoute(builder: (BuildContext context) {
          //                 return PostPage(widget.post, widget.isFollowed);
          //               })).then((value) {
          //             dbGetCommunityLike(LikeKey(widget.post.id)).then((value) {
          //               log("init like type:${value}");
          //               postLikeType = value;
          //
          //               // 刷新一下关注
          //               // ;
          //               // dbGetCommunityFollowWithId(widget.post.userId).then((value) {
          //               if (widget.isFollowed !=
          //                   RelationFollow.isFollowSync(widget.post.userId)) {
          //                 widget.isFollowed =
          //                     RelationFollow.isFollowSync(widget.post.userId);
          //                 NotifyFollowChange(
          //                     widget.post.userId, widget.isFollowed).dispatch(
          //                     context);
          //               }
          //               // });
          //               setState(() {
          //
          //               });
          //             });
          //             // setState(() {
          //             //   // log("bake!!!!!!!!!");
          //             // });
          //           });
          //         },
          //       ),
          //     ),
          //     Expanded(
          //       child: Text("${widget.post.comments}"),
          //     ),
          //     Expanded(
          //       // child: IconButton(icon: Icon(Icons.thumb_up, color: IsLike(widget.post.id.toString(), "", "") == 1?Colors.blue:Colors.grey,),
          //       child: IconButton(icon: Icon(Icons.thumb_up,
          //         color: postLikeType == POST_LIKE_TYPE.Like
          //             ? Colors.blue
          //             : Colors.grey,),
          //         onPressed: () {
          //           switch (postLikeType) {
          //             case POST_LIKE_TYPE.None: // 没有点过
          //             // 喜欢
          //               LikePost(widget.post, $pbCommunity.LikeType.UP).then((
          //                   value) {
          //                 widget.post.likes ++;
          //                 SetPostLike(POST_LIKE_TYPE.Like);
          //               });
          //               break;
          //             case POST_LIKE_TYPE.Like: // 喜欢
          //             // 取消喜欢
          //               UnLikePost(widget.post, $pbCommunity.LikeType.UP).then((
          //                   value) {
          //                 widget.post.likes --;
          //                 SetPostLike(POST_LIKE_TYPE.None);
          //               });
          //               break;
          //             case POST_LIKE_TYPE.Unlike: // 不喜欢
          //             // 先取消不喜欢，再喜欢
          //               UnLikePost(widget.post, $pbCommunity.LikeType.DOWN)
          //                   .then((value) {
          //                 LikePost(widget.post, $pbCommunity.LikeType.DOWN)
          //                     .then((value) {
          //                   widget.post.likes += 2;
          //                   SetPostLike(POST_LIKE_TYPE.Like);
          //                 });
          //               });
          //               break;
          //           }
          //         },),
          //     ),
          //     Expanded(
          //       child:
          //       Container(
          //         alignment: Alignment.center,
          //         child: Text(
          //           "${widget.post.likes}",
          //           style: TextStyle(color: Colors.blue),),
          //       ),
          //     ),
          //     Expanded(
          //       // child: Transform.rotate(
          //       //   angle: pi,
          //       child:
          //       IconButton(icon: Icon(Icons.thumb_down,
          //         color: postLikeType == POST_LIKE_TYPE.Unlike
          //             ? Colors.blue
          //             : Colors.grey,),
          //         onPressed: () {
          //           switch (postLikeType) {
          //             case POST_LIKE_TYPE.None: // 没有点过
          //             // 喜欢
          //               LikePost(widget.post, $pbCommunity.LikeType.DOWN).then((
          //                   value) {
          //                 widget.post.likes --;
          //                 SetPostLike(POST_LIKE_TYPE.Unlike);
          //               });
          //               break;
          //             case POST_LIKE_TYPE.Like: // 喜欢
          //             // 取消喜欢
          //               UnLikePost(widget.post, $pbCommunity.LikeType.UP).then((
          //                   value) {
          //                 LikePost(widget.post, $pbCommunity.LikeType.DOWN)
          //                     .then((value) {
          //                   widget.post.likes -= 2;
          //                   SetPostLike(POST_LIKE_TYPE.Unlike);
          //                 });
          //               });
          //               break;
          //             case POST_LIKE_TYPE.Unlike: // 不喜欢
          //             // 先取消不喜欢，再喜欢
          //               UnLikePost(widget.post, $pbCommunity.LikeType.DOWN)
          //                   .then((value) {
          //                 widget.post.likes ++;
          //                 SetPostLike(POST_LIKE_TYPE.None);
          //               });
          //               break;
          //           }
          //         },),
          //       // ),
          //     )
          //   ],
          // ),
        ],
      ),
    );
  }

  Widget buildGrid(ItemBuildFunc buildFunc) {
    return
        // Offstage(offstage: _images.isEmpty,
        // child:
        GridView.count(
      shrinkWrap: true, //范围内进行包裹（内容多高ListView就多高）
      physics: NeverScrollableScrollPhysics(), //禁止滚动
      //水平子Widget之间间距
      crossAxisSpacing: 5.0,
      //垂直子Widget之间间距
      mainAxisSpacing: 5.0,
      //GridView内边距
      padding: EdgeInsets.all(10.0),

      //一行的Widget数量
      crossAxisCount: 3,
      //子Widget宽高比例
      childAspectRatio: 1.0,

      //子Widget列表
      children: buildFunc(),
      // )
    );
  }

  // 未投票时展示的投票帖子
  Widget _buildVoteList(BuildContext context, int index) {
    var element = widget.post.votes[0].options[index];
    return InkWell(
      child: Container(
        height: 30,
        // width: 50,
        padding: EdgeInsets.fromLTRB(0, 3, 0, 3),
        // margin: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(element.text, style: TextStyle(color: Colors.blue),),
            TextButton(
              // minWidth: 400,
              // color: Color(0x25999999),
              // highlightColor: Color(0x1E000000),
              // colorBrightness: Brightness.dark,
              // shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              child: Text(
                element.content,
                style: TextStyle(color: Colors.blue, fontSize: 12),
              ),
              onPressed: () {
                log(element.content);
                // 发送投票请求
                $pbCommunity.VoteReq req = $pbCommunity.VoteReq();
                req.username = AppUserInfo.instance.nickName;
                req.avatar = AppUserInfo.instance.appAvatar;
                req.postId = widget.post.id;
                req.voteId = widget.post.votes[0].id;
                req.optionId = element.id;

                log(req);
                RpcCallImOuterApi(
                        "/pb_grpc_community.Community/Vote",
                        req,
                        MakePBCommData(
                            aimId: Int64(AppUserInfo.instance.imId),
                            groupId: widget.post.communityId,
                            toService: Service.community))
                    .then((value) {
                  if (value.statusCode != 200) {
                    // 出错了
                    // 处理错误
                    showToast("投票失败");
                    log("Vote failed");
                    return;
                  }
                  showToast("投票成功");
                  log("vote success");
                  VotedPostVote(element.id);
                });
              },
            )
          ],
        ),
      ),
    );
  }

  // 已投票时展示
  Widget _buildVotedList(BuildContext context, int index) {
    var element = widget.post.votes[0].options[index];
    return Container(
      height: 30,
      width: 300,
      // color: Colors.black12,
      padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
      // margin: EdgeInsets.all(10),
      child: Stack(
        children: [
          SizedBox(
            height: 24,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              child: LinearProgressIndicator(
                // value: ((element.count).toDouble()/(countSum).toDouble()).toStringAsFixed(2),
                value: element.count == 0
                    ? 0
                    : (element.count).toDouble() / (countSum).toDouble(),
                valueColor: AlwaysStoppedAnimation<Color>(element.id == optionId
                    ? Color(0x9066C2FF)
                    : Color(0x22585858)),
                backgroundColor: Color(0x32999999),
              ),
            ),
          ),
          Container(
            height: 24,
            padding: EdgeInsets.only(left: 10),
            alignment: Alignment.centerLeft,
            child: Text(
              element.content,
              style: TextStyle(color: Colors.black87, fontSize: 12),
            ),
          ),
          Container(
              height: 24,
              padding: EdgeInsets.only(right: 10),
              alignment: Alignment.centerRight,
              child: Text(
                "${element.count}票",
                style: TextStyle(color: Colors.black87, fontSize: 12),
              )),
        ],
      ),
    );
  }

  //////////////////////////
  // 图片
  List<Widget> _buildImageTitleList() {
    List imgDataArr = [];
    return List.generate(widget.post.images.length, (index) {
      // Asset asset = _images[index];
      // log("_images[${index}]:${asset.identifier}${asset.name}");
      var img = widget.post.images[index].url;
      imgDataArr.add(img);
      return Container(
        child:
            // TextButton(
            //   // 单图片浏览
            //   // onPressed: (){
            //   //   log("show photo");
            //   //   Navigator.of(context).push(
            //   //       MaterialPageRoute(builder: (BuildContext context) {
            //   //         return
            //   //           // JhPhotoAllScreenShow(imgDataArr: imgDataArr);
            //   //           PhotoViewSimpleScreen(
            //   //           imageProvider:NetworkImage(img),
            //   //           heroTag: 'simple',
            //   //         );
            //   //       })
            //   //   );
            //   // },
            //   // 多图片浏览
            //   onPressed: (){
            //     //FadeRoute是自定义的切换过度动画（渐隐渐现） 如果不需要 可以使用默认的MaterialPageRoute
            //     Navigator.of(context).push(new FadeRoute(page: PhotoViewGalleryScreen(
            //       images:imgDataArr,//传入图片list
            //       index: index,//传入当前点击的图片的index
            //       heroTag: img,//传入当前点击的图片的hero tag （可选）
            //     )));
            //   },
            //
            //   child:
            //     Image.network(img,fit: BoxFit.cover,),
            //
            //     ),
            InkWell(
          child: Image.network(
            img,
            fit: BoxFit.cover,
          ),
          onTap: () {
            // Navigator.of(context).push(
            //     new FadeRoute(page: PhotoViewGalleryScreen(
            //       images: imgDataArr, //传入图片list
            //       index: index, //传入当前点击的图片的index
            //       heroTag: img, //传入当前点击的图片的hero tag （可选）
            //     )));
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return PhotoViewGalleryScreen(
                widget.post,
                // widget.showType == CARD_SHOW_TYPE.summary ? OptBuildType.PostSummary:OptBuildType.PostDetail,
                widget.optBuildType,
                images: imgDataArr, //传入图片list
                index: index, //传入当前点击的图片的index
                heroTag: img,
                // comment: null, //传入当前点击的图片的hero tag （可选）
              );
            }));
          },
        ),
      );
      //   AssetThumb(
      //   asset: asset,
      //   width: 300,
      //   height: 300,
      // );
    });
  }
/////////////////////////

//   Future<void> LikePost($pbCommunity.Post post, $pbCommunity.LikeType likeType)async{
//     var req = $pbCommunity.LikeReq();
//     req.username = AppUserInfo.instance.nickName;
//     req.avatar = AppUserInfo.instance.appAvatar;
//     req.refId = post.id;
//     req.refType = $pbCommunity.RefType.POST.value;
//     req.type = likeType.value;
//
//     await RpcCallCommImGate("/pb_grpc_community.Community/Like", req, MakePBCommData(aimId: Int64(AppUserInfo.instance.imId), toService: Service.community)).then((value){
//       if (value.statusCode == 200) {
//         setState(() {
//           // UpdateMapLike(widget.post.id.toString(), widget.post.topComments[0].id.toString(), "", true);
//           // UpdateMapLike(widget.post.id, true, commentId:comment.id);
//           setState(() {
//
//           });
//         });
//       }
// //       else {
// //         setState(() {
// // //                              UpdateMapLike(widget.post.id.toString(), widget.post.topComments[0].id.toString(), "", true);
// //           switch (IsLike(widget.post.id, commentId:comment.id)) {
// //             case 0:
// //               comment.likes += 1;
// //               SetMapLike(widget.post.id.toString(), widget.post.topComments[0].id.toString(), "", 1);
// //               break;
// //             case 1:
// //               comment.likes -= 1;
// //               SetMapLike(widget.post.id.toString(), widget.post.topComments[0].id.toString(), "", 0);
// //               break;
// //             case 2:
// //               comment.likes += 2;
// //               SetMapLike(widget.post.id.toString(), widget.post.topComments[0].id.toString(), "", 1);
// //               break;
// //           }
// //         });
// //       }
//     });
//   }

//   Future<void> UnLikePost($pbCommunity.Post post, $pbCommunity.LikeType likeType)async{
//     var req = $pbCommunity.UnlikeReq();
//     req.refId = post.id;
//     req.refType = $pbCommunity.RefType.POST.value;
//     req.type = likeType.value;
//
//     await RpcCallCommImGate("/pb_grpc_community.Community/Unlike", req, MakePBCommData(aimId: Int64(AppUserInfo.instance.imId), toService: Service.community)).then((value){
//       if (value.statusCode == 200) {
//         setState(() {
//           // UpdateMapLike(widget.post.id.toString(), widget.post.topComments[0].id.toString(), "", true);
//           // UpdateMapLike(widget.post.id, false, commentId:comment.id);
//           setState(() {
//
//           });
//         });
//       }
// //       else {
// //         setState(() {
// // //                              UpdateMapLike(widget.post.id.toString(), widget.post.topComments[0].id.toString(), "", true);
// //           switch (IsLike(widget.post.id, commentId:comment.id)) {
// //             case 0:
// //               comment.likes += 1;
// //               SetMapLike(widget.post.id.toString(), widget.post.topComments[0].id.toString(), "", 1);
// //               break;
// //             case 1:
// //               comment.likes -= 1;
// //               SetMapLike(widget.post.id.toString(), widget.post.topComments[0].id.toString(), "", 0);
// //               break;
// //             case 2:
// //               comment.likes += 2;
// //               SetMapLike(widget.post.id.toString(), widget.post.topComments[0].id.toString(), "", 1);
// //               break;
// //           }
// //         });
// //       }
//     });
//   }
}
