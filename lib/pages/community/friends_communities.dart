// 圈子好友页
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pb/pb_msg/community/community.pb.dart' as $pbCommunity;
import 'package:quliao/pb/pb_pub/service.pb.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:http/http.dart' as http;

import 'community.dart';
import 'create_community.dart';
import 'hole/follow.dart';
import 'hole/recommend.dart';

class FriendsCommunities extends StatefulWidget {
  static const name = "FriendsCommunities";
  FriendsCommunities({super.key}) ;
  @override
  FriendsCommunitiesState createState() => new FriendsCommunitiesState();
}

class GroupData{
  String name = "";
  List<$pbCommunity.Community> lstCommunity = <$pbCommunity.Community>[];
}

class FriendsCommunitiesState extends State<FriendsCommunities> with SingleTickerProviderStateMixin {

  GroupData recommend = GroupData()
    ..name = "推荐";

  final _tabKey = ValueKey('tab');
  late TabController _innerTabController;

  void handleTabChange() {
    print('Inner tab, previous: ${_innerTabController.previousIndex}, current: ${_innerTabController.index}');
    PageStorage.of(context).writeState(context, _innerTabController.index, identifier: _tabKey);
  }

  @override
  void initState() {
    super.initState();

    int initialIndex = PageStorage.of(context).readState(context, identifier: _tabKey)??0;
    _innerTabController = TabController(
        length: 3,
        vsync: this,
        initialIndex: initialIndex
    );
    _innerTabController.addListener(handleTabChange);
    // LoadCommunitiesSquare("");
  }

  // 加载帖子
  // ignore: non_constant_identifier_names
  Future<void> LoadCommunitiesSquare(String keyWord) async {
    var req = $pbCommunity.AllCommunitiesReq();
    req.offset = Int64(0);
    req.count = Int64(100);
    req.keyWord = keyWord;  // 搜索内容
    // req.userId = Int64(AppUserInfo.instance.imId);
    var response = await RpcCallImOuterApi(
        "/pb_grpc_community.Community/AllCommunities", req, MakePBCommData(
        // aimId: Int64(AppUserInfo.instance.imId),
        toService: Service.community));
    var rsp = $pbCommunity.AllCommunitiesRsp();
    rsp.mergeFromBuffer(response.bodyBytes);
    // rsp.communities.forEach((element) {
    //   groupData.lstCommunity.add(element);
    // });
    recommend.lstCommunity = rsp.communities;
    setState(() {

    });

  }

  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(
            controller: _innerTabController,
            tabs: <Widget>[
              Tab(child: Text('好友'),),
              Tab(child: Text('推荐'),),
              Tab(child: Text('最新'),),
            ],
            labelColor: Colors.lightBlue,
            unselectedLabelColor: Colors.black54,
            indicatorColor: Colors.lightBlueAccent,
            indicatorSize: TabBarIndicatorSize.label,
          ),
          toolbarHeight: 50,
          backgroundColor: Colors.white,
        ),
        body: TabBarView(
          controller: _innerTabController,
          children: [
            // FollowPage(),
            Column(
              // mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(height: 180,),
                Image.asset(
                  "images/t1.png",
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 10,),
                Text("您还没有好友发布动态哦~", style: TextStyle(color: Colors.black26, fontSize: 12),),
              ],
            ),

            RecommendPage(),
            RecommendPage(),
          ]
        ),
      );
  }

}
