import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/event/notification.dart';
import 'package:quliao/models/relation/follow.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/community/post.dart';
import 'package:quliao/pages/community/pub.dart';
import 'package:quliao/pages/community/publish_post.dart';
import 'package:quliao/pages/community/setting/community_setting_menu.dart';
import 'package:quliao/pb/pb_msg/community/community.pb.dart' as $pbCommunity;
import 'package:quliao/pb/pb_pub/service.pb.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/pub/log.dart';
import 'package:http/http.dart' as http;

import '../../pub/config.dart';
import 'cards/post_card.dart';
import 'member/add_member.dart';

class Community extends StatefulWidget {
  Community({super.key, required this.communityId});
  final int communityId;
  @override
  State<StatefulWidget> createState() {
    return _CommunityState();
  }
}

class _TableData{
  int type = 0; // 0：最新，1：最热， 2:待扩展
  String title = "";
  late List<$pbCommunity.Post> listPosts;//lstNewerPosts = List.empty(growable:true);//List<$pbCommunity.Post>();
// List<$pbCommunity.Post> lstHotPosts = List.empty(growable:true);
}

class _CommunityState extends State<Community> {

  bool isJoined = false;
  // final cd = CommunityData();
  var communityDetail = $pbCommunity.Community()
    ..avatar = ConfigMgr().config!.defaultGirlAvatar;//"http://file02.16sucai.com/d/file/2015/0408/779334da99e40adb587d0ba715eca102.jpg";

  ///图片地址
  // String imageUrl =
  //     "http://file02.16sucai.com/d/file/2015/0408/779334da99e40adb587d0ba715eca102.jpg";

  var _tabs = <_TableData>[
    _TableData()
      ..type = 0
      ..title = "最新"
      ..listPosts = List.empty(growable:true),//List<$pbCommunity.Post>();
    _TableData()
      ..type = 1
      ..title = "最热"
      ..listPosts = List.empty(growable:true),//List<$pbCommunity.Post>();
  ];

  @override
  void initState() {
    super.initState();
    // GetMapFollow();

    LoadCommunityData();

    // 加载最新帖子
    LoadCommunityPostList(widget.communityId, $pbCommunity.PostsReq_Order.New).then((value) {
      // lstPosts = value.posts;
      addCommunitiList($pbCommunity.PostsReq_Order.New, value!.posts);
      setState(() {

      });
    });

    // 加载最热帖子
    LoadCommunityPostList(widget.communityId, $pbCommunity.PostsReq_Order.Hot).then((value) {
      // lstPosts = value.posts;
      addCommunitiList($pbCommunity.PostsReq_Order.Hot, value!.posts);

      setState(() {

      });
    });

    dbCommunityIsIJoined(widget.communityId).then((value){
      isJoined = value;
      log("is joined=${value}");
      setState(() {

      });
    });
  }

  void addCommunitiList($pbCommunity.PostsReq_Order order, List<$pbCommunity.Post> posts) {
    // List<$pbCommunity.Post> lst;
    switch (order) {
      case $pbCommunity.PostsReq_Order.New:
      // posts.sort((a, b) => a.createAt.compareTo(b.createAt));
        posts.forEach((element) {
          _tabs[0].listPosts.insert(0, element);
        });
        _tabs[0].listPosts = _tabs[0].listPosts.toSet().toList();
        _tabs[0].listPosts.sort((a, b) => b.createAt.compareTo(a.createAt));
        break;
      case $pbCommunity.PostsReq_Order.Hot:
        posts.forEach((element) {
          _tabs[1].listPosts.insert(0, element);
        });

        _tabs[1].listPosts = _tabs[1].listPosts.toSet().toList();
        _tabs[1].listPosts.sort((a, b){
          // 排序规则
          var aScore = a.likes + a.comments*10;
          var bScore = b.likes + b.comments*10;
          // log("-----------------bScore=$bScore aScore=$aScore bScore.compareTo(aScore)=${bScore.compareTo(aScore)}");
          return bScore.compareTo(aScore);
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    ///页面主体脚手架
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        tooltip: "发布文章",
        backgroundColor: Colors.blue,
        child: Icon(Icons.add, color: Colors.white,size: 30,),
        onPressed: () {
          // 发布文章界面
          Navigator.push(
              context, MaterialPageRoute(builder: (BuildContext context) {
            return PublishPost(communityId: widget.communityId, canChangeId: false,);
          })).then((value){
            LoadCommunityPostList(widget.communityId, $pbCommunity.PostsReq_Order.New).then((value) {
              // lstPosts = value.posts;
              addCommunitiList($pbCommunity.PostsReq_Order.New, value!.posts);
              setState(() {

              });
            });
          });
        },
      ),
      body:

      /// 加TabBar
      DefaultTabController(
        length: _tabs.length, // This is the number of tabs.
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            // These are the slivers that show up in the "outer" scroll view.
            return <Widget>[
              SliverOverlapAbsorber(
                handle:
                NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: buildSliverAppBar(context),
              ),
            ];
          },
          body: TabBarView(
            // These are the contents of the tab views, below the tabs.
            children:
            _tabs.map((_TableData tbData) {
              //SafeArea 适配刘海屏的一个widget
              return BuildList(tbData.type);
            }).toList(),
          ),
        ),
      ),

    );
  }

  // 加载帖子
  Future<void> LoadCommunityData() async {
    var req = $pbCommunity.CommunityDetailReq();

    http.Response response = await RpcCallImOuterApi(
        "/pb_grpc_community.Community/CommunityDetail", req, MakePBCommData(
        aimId: Int64(AppUserInfo.instance.imId),
        groupId: Int64(widget.communityId),
        toService: Service.community));
    if (response.statusCode != 200) {
      // 出错了
      // 处理错误
      return;
    }

    var rsp = $pbCommunity.CommunityDetailRsp();

    rsp.mergeFromBuffer(response.bodyBytes);
    // log(rsp.community);
    communityDetail = rsp.community.clone();
    // log("get data: rsp=${rsp} contentLength=${response
    //     .contentLength} statusCode=${response
    //     .statusCode} reasonPhrase=${response.reasonPhrase}");
    if (communityDetail.avatar == "") {
      communityDetail.avatar = ConfigMgr().config!.defaultGirlAvatar;//imageUrl;
    }

    setState(() {

    });
  }

  // 构建头部
  SliverAppBar buildSliverAppBar(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.pink,
      pinned: true,
      snap: false,
      floating: true,
      // leading: Icon(Icons.home),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.alarm, color: Colors.white,),
          onPressed: (){
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (BuildContext context) {
            //   return ComunitySettingPage(communityId: widget.communityId,);
            // }));
          },),
        IconButton(icon: Icon(Icons.settings, color: Colors.white),
          onPressed: () async{
            log("打开设置页面");
            await Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) {
                return ComunitySettingMenuPage(communityDetail);
                // return CommunitySettingRule(communityDetail);
              }));
            setState(() {

            });
          },),
        IconButton(icon: Icon(Icons.search, color: Colors.white), onPressed: () {  },),
        // IconButton(icon: Icon(Icons.more_horiz, color: Colors.white),),

        PopupMenuButton<int>(
          icon: Icon(Icons.more_horiz),
          // icon: Icon(Icons.add),
          onSelected: (int value) {
            log("select menu value:$value");
            switch (value) {
              case 0:
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) {
                      return AddMember(communityDetail);
                    }));
                break;
              case 1:
                RpcCallImOuterApi(
                    "/pb_grpc_community.Community/QuitCommunity",
                    $pbCommunity.QuitCommunityReq(), MakePBCommData(
                    aimId: Int64(AppUserInfo.instance.imId),
                    groupId: Int64(widget.communityId),
                    toService: Service.community)).then((response) {
                  if (response.statusCode != 200) {
                    // 出错了
                    // 处理错误
                    log("出错了:response=${response}");
                    return;
                  }
                });

                break;
              case 2:
              // 解散

                break;
              case 3:
              default:
                break;
            }
          },
          itemBuilder: (context) {
            return <PopupMenuEntry<int>>[
              PopupMenuItem<int>(
                value: 0,
                child: Row(children: [
                  Icon(Icons.people_outline),
                  Text("邀请朋友"),
                ],),

              ),
              PopupMenuItem<int>(
                value: 2,
                child: Row(children: [
                  Icon(Icons.people_outline),
                  Text("解散圈子"),
                ],),

              ),
            ];
          },
        )

      ],
      // title: Text("这里是标题"),
      expandedHeight: 220,
      flexibleSpace: FlexibleSpaceBar(
        background:
        Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(communityDetail.avatar,),
                  fit: BoxFit.cover),
            ),
            child:
            Container(
                decoration: BoxDecoration(
                  color: Colors.black45,
                ),
                padding: EdgeInsets.fromLTRB(20, 80, 20, 20),
                child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child:
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(child: Text(communityDetail.name,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                  ),
                                ),
                                ),
                                Text(communityDetail.describe, maxLines: 3,
                                  overflow: TextOverflow.ellipsis,style: TextStyle(
                                    color: Color(0xCCFFFFFF),
                                    fontSize:  12,
                                  ),
                                ),
                                SizedBox(height: 15),
                                Row(children: [
                                  Expanded(child:
                                  Column(children: [
                                    Container(child:
                                    Row(children: [
                                      Icon(Icons.assignment_ind,color: Colors.white,),
                                      SizedBox(width: 5),
                                      Text("话事人",style: TextStyle(
                                        color: Colors.white,
                                        fontSize:  14,
                                      ),
                                      ),
                                      SizedBox(width: 5),
                                      SizedBox(width: 20,
                                        height: 20,
                                        child: CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              communityDetail.avatar),),),
                                    ],),
                                    ),
                                  ],
                                  ),
                                  ),
                                ]),
                              ])
                      ),
                      Expanded(child:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(height: 16),
                          TextButton(
                            // height: 30,
                            // color: Colors.blue,
                            // highlightColor: Colors.blue[700],
                            // colorBrightness: Brightness.dark,
                            // splashColor: Colors.grey,
                            child: Text(isJoined?"已加入":"加入",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white
                              ),
                            ),
                            // shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                            onPressed: () {
                              if(isJoined){
                                // 取消加入
                                $pbCommunity.QuitCommunityReq req = $pbCommunity.QuitCommunityReq();
                                RpcCallImOuterApi(
                                    "/pb_grpc_community.Community/QuitCommunity", req, MakePBCommData(
                                    aimId: Int64(AppUserInfo.instance.imId),
                                    groupId: Int64(widget.communityId),
                                    toService: Service.community)).then((value){
                                  if (value.statusCode != 200) {
                                    // 出错了
                                    // 处理错误
                                    return;
                                  }
                                  dbCommunityQuit(widget.communityId);
                                  isJoined = false;
                                  setState(() {

                                  });
                                });
                              }else{
                                // 加入
                                var req = $pbCommunity.JoinCommunityReq();
                                // log("\nreq: ${req}, \naimId: ${AppUserInfo.instance.imId}, \ngroupId: ${widget.communityId}");
                                RpcCallImOuterApi(
                                    "/pb_grpc_community.Community/JoinCommunity", req, MakePBCommData(
                                    aimId: Int64(AppUserInfo.instance.imId),
                                    groupId: Int64(widget.communityId),
                                    toService: Service.community)).then((value){
                                  if (value.statusCode != 200) {
                                    // 出错了
                                    // 处理错误
                                    return;
                                  }
                                  dbCommunityJoin(widget.communityId);
                                  isJoined = true;
                                  setState(() {

                                  });
                                });

                              }
                            },
                          ),
//                          OutlinedButton(
//                            child: Text(isJoined?"已加入":"加入",
//                              style: TextStyle(
//                                fontSize: 16,
//                                color: Colors.white
//                              ),
//                            ),
//                            // textColor: Colors.white,
//                            onPressed: () {
//                              if(isJoined){
//                                // 取消加入
//                                $pbCommunity.QuitCommunityReq req = $pbCommunity.QuitCommunityReq();
//                                RpcCallCommImGate(
//                                    "/pb_grpc_community.Community/QuitCommunity", req, MakePBCommData(
//                                    aimId: Int64(AppUserInfo.instance.imId),
//                                    groupId: Int64(widget.communityId),
//                                    toService: Service.community)).then((value){
//                                  if (value.statusCode != 200) {
//                                    // 出错了
//                                    // 处理错误
//                                    return;
//                                  }
//
//                                  dbCommunityQuit(widget.communityId);
//                                  isJoined = false;
//                                  setState(() {
//
//                                  });
//                                });
//
//                              }else{
//                                // 加入
//                                var req = $pbCommunity.JoinCommunityReq();
//
//                                RpcCallCommImGate(
//                                    "/pb_grpc_community.Community/JoinCommunity", req, MakePBCommData(
//                                    aimId: Int64(AppUserInfo.instance.imId),
//                                    groupId: Int64(widget.communityId),
//                                    toService: Service.community)).then((value){
//                                  if (value.statusCode != 200) {
//                                    // 出错了
//                                    // 处理错误
//                                    return;
//                                  }
//
//                                  dbCommunityJoin(widget.communityId);
//                                  isJoined = true;
//                                  setState(() {
//
//                                  });
//                                });
//
//                              }
//                            },
//                            // bo
//                            // borderSide: BorderSide(color: Colors.white),
//                            style: ButtonStyle(side: MaterialStateProperty.all(BorderSide(color: Colors.white))),
//                          ),
                        ],)),
                    ]
                )
            )
        ),
      ),
      bottom: TabBar(
        tabs: _tabs.map((_TableData tbData) => Tab( child: Text(tbData.title,
          style: TextStyle(shadows: [
            Shadow(
              offset: Offset(1.0, 1.0),
              blurRadius: 2.0,
              color: Color.fromARGB(255, 0, 0, 0),
            ),],
            fontSize: 16,
          ),
        ),
        ))
            .toList(),
      ),
    );
  }

  // 构建列表
  Widget BuildList(int type) {
    //SafeArea 适配刘海屏的一个widget
    // _TableData
    if (type >= _tabs.length) {
      log("type:$type > _tabs.length:${_tabs.length} err!!!");
      // showToast("type unknow!!!");
      return Container(child: Text("未知类型！！！"),);
    }

    var tbData = _tabs[type];
    // log("BuildList type=${type} ${tbData.listPosts}");

    return NotificationListener<NotifyFollowChange>(
      onNotification: (notification) {
        log("NotificationListener:${notification.followedUser}->${notification.follow}");
        // 数据上来了，变更关注状态
        RelationFollow.SetFollow(notification.followedUser, notification.follow).then((value){
          setState(() {

          });
        });

        return true;
      },
      child:
      SafeArea(
        top: false,
        bottom: false,
        child: Builder(
          builder: (BuildContext context) {
            return CustomScrollView(
              key: PageStorageKey<String>(tbData.title),
              slivers: <Widget>[
                SliverOverlapInjector(
                  handle:
                  NestedScrollView.sliverOverlapAbsorberHandleFor(
                      context),
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(10.0),
                  sliver:
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                        var post = tbData.listPosts[index];
                        return InkWell(
                          onTap: () {
                            // 老的喜欢数据
                            var postLikeType = RelationFollow.isFollowSync(
                                tbData.listPosts[index].userId);
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
                          child: PostCard(tbData.listPosts[index],
                              RelationFollow.isFollowSync(
                                  tbData.listPosts[index].userId)!,OptBuildType.PostSummary),
                        );
                      },
                      childCount: tbData.listPosts.length,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}