// 新的朋友列表
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quliao/event/notification.dart';
import 'package:quliao/models/relation/follow.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/chat_private/flyer_chat/test_page.dart';
import 'package:quliao/pages/community/cards/comment_card.dart';
import 'package:quliao/pages/community/pub.dart';
import 'package:quliao/pages/community/temp.dart';
import 'package:quliao/pages/friend/friend_info_set.dart';
import 'package:quliao/pb/pb_msg/community/community.pb.dart' as $pbCommunity;
import 'package:quliao/pb/pb_pub/service.pb.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/pub/log.dart';

import '../../pub/config.dart';
import 'cards/post_card.dart';

class CommunityUserInfo extends StatefulWidget {
  CommunityUserInfo(this.uId, {super.key});

  final int uId;
  bool isFollowed = false;
  late String like = "0";
  late String follow = "0";
  late String follower = "0";

  @override
  CommunityUserInfoState createState() => new CommunityUserInfoState();
}

class CommunityUserInfoState extends State<CommunityUserInfo> {
  FriendInfo uinfo = FriendInfo();
  @override
  void initState() {
    super.initState();
    // lstComment.add(TempComment());
    // lstPost.add(TempPost());
    // lstTopic.add(TempTopic());
    GetFriendInfo(widget.uId).then((value) {
      uinfo = value;
      widget.isFollowed = RelationFollow.isFollowSync(Int64(widget.uId))!;
      setState(() {
        // 更新好了
        log("get uinfo data!!");
      });
    });

    LoadInfo();
    LoadFollowPost();
    LoadUserComments();
    LoadUserParticipates();
  }

  // 获取点赞关注相关信息
  Future<void> LoadInfo() async {
    var req = $pbCommunity.UserInfoReq();
    req.userId = Int64(widget.uId);
    RpcCallImOuterApi(
            "/pb_grpc_community.Community/UserInfo",
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

      // 更新一下
      var rsp = $pbCommunity.UserInfoRsp();

      rsp.mergeFromBuffer(response.bodyBytes);
      // log("get userInfoRsp: ${rsp}");

      widget.like = rsp.like;
      widget.follow = rsp.follow;
      widget.follower = rsp.follower;

      // log("get post len:${lstPost.length}");
      setState(() {});
    });
  }

  Future<void> LoadFollowPost({
    int offset = 0,
    int count = 20,
  }) async {
    var req = $pbCommunity.UserPostsReq();
    req.userId = Int64(widget.uId);
    req.offset = Int64(offset);
    req.count = Int64(count);
    log(req);
    RpcCallImOuterApi(
            "/pb_grpc_community.Community/UserPosts",
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

      // log("get UserPostsRsp: ${response.body}");
      // 更新一下
      var rsp = $pbCommunity.UserPostsRsp();

      rsp.mergeFromBuffer(response.bodyBytes);

      // log("get UserPostsRsp: ${rsp}");
      // log("load community post list ok");
      rsp.posts.forEach((element) {
        lstPost.add(element.clone());
      });
      lstPost = lstPost.toSet().toList();
      lstPost.sort((a, b) => a.createAt.compareTo(b.createAt));
      // log("get post len:${lstPost.length}");
      setState(() {});
    });
  }

  Future<void> LoadUserComments({
    int offset = 0,
    int count = 20,
  }) async {
    var req = $pbCommunity.UserCommentsReq();
    req.userId = Int64(widget.uId);
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

  Future<void> LoadUserParticipates({
    int offset = 0,
    int count = 20,
  }) async {
    var req = $pbCommunity.UserParticipatesReq();
    req.userId = Int64(widget.uId);
    req.offset = Int64(offset);
    req.count = Int64(count);
    log(req);
    RpcCallImOuterApi(
            "/pb_grpc_community.Community/UserParticipates",
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

      // log("get UserParticipatesRsp: ${response.body}");
      // 更新一下
      var rsp = $pbCommunity.UserParticipatesRsp();

      rsp.mergeFromBuffer(response.bodyBytes);

      // log("load community post list ok");
      rsp.topics.forEach((element) {
        lstTopic.add(element.clone());
      });
      lstTopic = lstTopic.toSet().toList();
      lstTopic.sort((a, b) => a.createAt.compareTo(b.createAt));
      // log("get post len:${lstPost.length}");
      setState(() {});
    });
  }

  double getScreenWidthPx() {
    return MediaQuery.of(context).size.width.toInt() *
        MediaQuery.of(context).devicePixelRatio;
  }

  double getScreenHeightPx() {
    return (MediaQuery.of(context).size.height).toInt() *
        MediaQuery.of(context).devicePixelRatio;
  }

  String safeAvata(String avata) {
    return avata.isNotEmpty ? avata : ConfigMgr().config!.defaultGirlAvatar;
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.black54,
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "好友信息",
            style: TextStyle(color: Colors.black54, fontSize: 18),
          ),
          // actions: [
          //   IconButton(
          //     icon: Icon(
          //       Icons.more_horiz,
          //       color: Colors.black54,
          //     ),
          //     onPressed: () {
          //       // 打开设置
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (BuildContext context) {
          //         return FriendInfoSet(
          //           finfo: uinfo,
          //         );
          //       }));
          //     },
          //   ),
          // ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                child: Stack(
                    // 背景
                    children: [
                      Container(
                        height: 300,
                        width: getScreenHeightPx(),
                        child: Image.network(
                          safeAvata(uinfo.userInfo.avatar),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: 300,
                        width: getScreenHeightPx(),
                        decoration: BoxDecoration(
                          color: Colors.black45,
                        ),
                        child: Text(""),
                      ),
                      Positioned(
                        top: 90,
                        left: 20,
                        height: 60,
                        width: 60,
                        child: CircleAvatar(
                          backgroundImage:
                              NetworkImage(safeAvata(uinfo.userInfo.avatar)),
                          radius: 30,
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 100,
                        // height: 60,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                // Expanded(
                                //   child:
                                //   CircleAvatar(backgroundImage: NetworkImage(uinfo.userInfo.avatar),radius: 30,),
                                // ),
                                // Expanded(
                                //   child: Row(
                                //     children: [
                                TextButton(
                                  child: Container(
                                    height: 30,
                                    width: 60,
                                    alignment: Alignment.center,
                                    // padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                    decoration: BoxDecoration(
                                      color: Colors.black26,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Text(
                                      "私信",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  onPressed: () {
                                    log("ChatPrivate:${uinfo}");
                                    // Navigator.pushNamed(
                                    //     context, "ChatPrivate", arguments:uinfo);
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext ctx) {
                                      return ChatPage(
                                        finfo: uinfo,
                                      );
                                    }));
                                  },
                                ),
                                // TextButton(
                                //   shape: StadiumBorder(),
                                //   color: Colors.black12,
                                //   child: Text("+关注",
                                //     style: TextStyle(color: Colors.white),),
                                // ),
                                TextButton(
                                  child: Container(
                                    height: 30,
                                    width: 80,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.black26,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Text(
                                      widget.isFollowed ? "已关注" : "+ 关注",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  onPressed: () {
                                    if (widget.isFollowed) {
                                      // var followType = !widget.isFollowed;
                                      widget.isFollowed = false;
                                      var req = $pbCommunity.UnfollowReq();
                                      req.followeeAppId =
                                          Int64(uinfo.userInfo.appId);
                                      req.followeeAppUserId =
                                          uinfo.userInfo.appUid;
                                      req.followeeUserId =
                                          Int64(uinfo.userInfo.imId);
                                      RpcCallImOuterApi(
                                              "/pb_grpc_community.Community/Unfollow",
                                              req,
                                              MakePBCommData(
                                                  aimId: Int64(AppUserInfo
                                                      .instance.imId),
                                                  toService: Service.community))
                                          .then((value) {
                                        if (value.statusCode == 200) {
                                          // SetMapFollow(widget.post.userId.toInt(), followType);
                                          // widget.onFollow(widget.post.userId.toInt(), followType);

                                          // dbAddCommunityFollow(widget.post.userId.toInt(), widget.isFollowed).then((value) {
                                          RelationFollow.SetFollow(
                                                  Int64(widget.uId),
                                                  widget.isFollowed)
                                              .then((value) {
                                            NotifyFollowChange(
                                                    Int64(widget.uId),
                                                    widget.isFollowed)
                                                .dispatch(context);
                                            setState(() {
                                              LoadInfo();
                                            });
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
                                      req.followerUsername =
                                          AppUserInfo.instance.nickName;
                                      req.followerAvatar =
                                          AppUserInfo.instance.appAvatar;

                                      req.followeeAppId =
                                          Int64(uinfo.userInfo.appId);
                                      req.followeeUserId =
                                          Int64(uinfo.userInfo.imId);
                                      req.followeeAppUserId =
                                          uinfo.userInfo.appUid;
                                      req.followeeUsername =
                                          uinfo.userInfo.nickName;
                                      req.followeeAvatar =
                                          uinfo.userInfo.avatar;

                                      log("${req}");

                                      //
                                      RpcCallImOuterApi(
                                              "/pb_grpc_community.Community/Follow",
                                              req,
                                              MakePBCommData(
                                                  aimId: Int64(AppUserInfo
                                                      .instance.imId),
                                                  toService: Service.community))
                                          .then((value) {
                                        if (value.statusCode == 200) {
                                          // SetMapFollow(widget.post.userId.toInt(), followType);
                                          // widget.onFollow(widget.post.userId.toInt(), followType);
                                          // dbAddCommunityFollow(widget.post.userId.toInt(), widget.isFollowed).then((value) {
                                          RelationFollow.SetFollow(
                                                  Int64(uinfo.userInfo.imId),
                                                  widget.isFollowed)
                                              .then((value) {
                                            NotifyFollowChange(
                                                    Int64(uinfo.userInfo.imId),
                                                    widget.isFollowed)
                                                .dispatch(context);
                                            setState(() {
                                              LoadInfo();
                                            });
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
                                TextButton(
                                  child: Container(
                                    height: 30,
                                    width: 40,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.black26,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.white,
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                                //     ],
                                //   ),
                                // )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 165,
                        width: getScreenWidthPx(),
                        child: Column(
                          children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "${uinfo.userInfo.nickName}",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                SizedBox(width: 20),
                                Text(
                                  "使用:${123}天",
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(width: 20),
                                Text(
                                  "♂",
                                  style: TextStyle(color: Colors.redAccent),
                                ),
                                SizedBox(width: 20),
                                Text(
                                  "♀",
                                  style: TextStyle(color: Colors.blueAccent),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            // 描述
                            Row(children: [
                              Text(
                                "这家伙很懒，什么都没有写~",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ]),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "${widget.like}",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                Text(
                                  " 获赞",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 11),
                                ),
                                SizedBox(width: 20),
                                Text(
                                  "${widget.follow}",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                Text(
                                  " 关注",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 11),
                                ),
                                SizedBox(width: 20),
                                Text(
                                  "${widget.follower}",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                Text(
                                  " 粉丝",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 11),
                                ),
                                SizedBox(width: 20),
                              ],
                            )
                          ],
                        ),
                      ),
                    ]),
              ),
            ),

            // tabBar
            Expanded(
              flex: 2,
              child: TableBars(),
            )
          ],
        ));
  }

  // 页面列表
  // ...
  // 帖子
  List<$pbCommunity.Post> lstPost = <$pbCommunity.Post>[];
  ScrollController postScrollController = ScrollController();
  Widget BuildPostList(BuildContext context, int index) {
    return PostCard(
        lstPost[index],
        RelationFollow.isFollowSync(lstPost[index].userId)!,
        OptBuildType.PostSummary); //Container(child: Text("test"),);
  }

  // 评论
  List<$pbCommunity.CommentRef> lstComment = <$pbCommunity.CommentRef>[];
  ScrollController commentScrollController = ScrollController();
  Widget BuildCommentList(BuildContext context, int index) {
    return CommentCard(lstComment[index].post,
        lstComment[index].comment); //Container(child: Text("test"),);
    // return Container(child: Text("test"),);
  }

  // 话题
  List<$pbCommunity.Topic> lstTopic = <$pbCommunity.Topic>[];
  ScrollController topicScrollController = ScrollController();
  Widget BuildTopicList(BuildContext context, int index) {
    // return PostCard(lstPost[index], RelationFollow.isFollowSync(lstPost[index].userId),OptBuildType.PostSummary);//Container(child: Text("test"),);
    return Container(
      child: Text("test"),
    );
  }

  Widget TableBars() {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          primary: true, //为false的时候会影响leading，actions、titile组件，导致向上偏移
//           textTheme: TextTheme(//设置AppBar上面各种字体主题色
// //            title: TextStyle(color: Colors.red),
//           ),
          actionsIconTheme: IconThemeData(
              color: Colors.blue,
              opacity: 0.6), //设置导航右边图标的主题色，此时iconTheme对于右边图标颜色会失效
          iconTheme: IconThemeData(
              color: Colors.black, opacity: 0.6), //设置AppBar上面Icon的主题颜色
          // brightness: Brightness.dark,//设置导航条上面的状态栏显示字体颜色
          backgroundColor: Colors.white, //设置背景颜色
//          shape: CircleBorder(side: BorderSide(color: Colors.red, width: 5, style: BorderStyle.solid)),//设置appbar形状
//          automaticallyImplyLeading: true,//在leading为null的时候失效

//          bottom: PreferredSize(child: Text('data'), preferredSize: Size(30, 30)),//出现在导航条底部的按钮
          bottom: TabBar(
              onTap: (int index) {
                print('Selected......$index');
              },
              unselectedLabelColor:
                  Colors.black87, //设置未选中时的字体颜色，tabs里面的字体样式优先级最高
              unselectedLabelStyle:
                  TextStyle(fontSize: 16), //设置未选中时的字体样式，tabs里面的字体样式优先级最高
              labelColor: Colors.blue, //设置选中时的字体颜色，tabs里面的字体样式优先级最高
              labelStyle:
                  TextStyle(fontSize: 18.0), //设置选中时的字体样式，tabs里面的字体样式优先级最高
              // isScrollable: true,//允许左右滚动
              indicatorColor: Colors.blue, //选中下划线的颜色
              indicatorSize: TabBarIndicatorSize
                  .label, //选中下划线的长度，label时跟文字内容长度一样，tab时跟一个Tab的长度一样
              // indicatorWeight: 2.0,//选中下划线的高度，值越大高度越高，默认为2。0
              // indicator: BoxDecoration(),//用于设定选中状态下的展示样式
              tabs: [
                Tab(
                  // icon: Icon(Icons.directions_transit),
                  child: Text("帖子 (${lstPost.length})"),
                ),
                Tab(
                  // icon: Icon(Icons.directions_transit),
                  child: Text("评论 (${lstComment.length})"),
                ),
                Tab(
                  // icon: Icon(Icons.directions_transit),
                  child: Text("话题 (${lstTopic.length})"),
                ),
              ]),
          // centerTitle: true,
          // title: Text('AppBar Demo'),
          toolbarHeight: 55,
          // leading: IconButton(
          //     icon: Icon(Icons.add),
          //     onPressed: (){
          //       print('add click....');
          //     }
          // ),
          // actions: <Widget>[
          //   IconButton(icon: Icon(Icons.search), onPressed: (){print('search....');}),
          //   IconButton(icon: Icon(Icons.history), onPressed: (){print('history....');}),
          // ],
        ),
        body: TabBarView(children: [
          lstPost.length > 0
              ? ListView.builder(
                  itemCount: lstPost.length,
                  shrinkWrap: true,
                  itemBuilder: BuildPostList,

                  // 控制滚动
                  scrollDirection: Axis.vertical,
                  controller: postScrollController,
                )
              : Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                            "暂时没有帖子哦!",
                            style:
                                TextStyle(color: Colors.black26, fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

          //Icon(Icons.directions_transit),
          lstComment.length > 0
              ? ListView.builder(
                  itemCount: lstComment.length,
                  shrinkWrap: true,
                  itemBuilder: BuildCommentList,

                  // 控制滚动
                  scrollDirection: Axis.vertical,
                  controller: commentScrollController,
                )
              : Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                            "暂时没有评论哦!",
                            style:
                                TextStyle(color: Colors.black26, fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

          //Icon(Icons.directions_bike),
          lstTopic.length > 0
              ? ListView.builder(
                  itemCount: lstTopic.length,
                  shrinkWrap: true,
                  itemBuilder: BuildTopicList,

                  // 控制滚动
                  scrollDirection: Axis.vertical,
                  controller: topicScrollController,
                )
              : Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                            "暂时没有话题哦!",
                            style:
                                TextStyle(color: Colors.black26, fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
        ]),
      ),
    );
  }
}
