import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/community/community.dart';
import 'package:quliao/pages/community/friends_communities.dart';
import 'package:quliao/pages/community/pub.dart';
import 'package:quliao/pb/pb_msg/community/community.pb.dart' as $pbCommunity;
import 'package:quliao/pb/pb_pub/service.pbserver.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/pub/log.dart';

import 'communities.dart';
import 'create_community.dart';
import 'home.dart';

class CommunityHall extends StatefulWidget {
  @override
  _CommunityHallState createState() => _CommunityHallState();
}

class GroupData {
  String name = "";
  List<$pbCommunity.Community> lstCommunity = <$pbCommunity.Community>[];
}

class _CommunityHallState extends State<CommunityHall>
    with SingleTickerProviderStateMixin {
  GroupData gdMyJoin = GroupData()..name = "我加入的";
  GroupData gdMyAdmin = GroupData()..name = "我管理的";
  GroupData gdMyRead = GroupData()..name = "我看过的";

  late TabController _tabController; //需要定义一个Controller
  List tabs = ["话题", "好友"];

  @override
  void initState() {
    super.initState();
    // _tabController = null;
    // _tabController = TabController(
    //     initialIndex: 0,
    //     length: 3, //_spList.length,
    //     vsync: this); // 直接传this

    // print("---->${_tabController.previousIndex}");

    // if (_tabController.indexIsChanging) {
    //   print("---->indexch");
    // }
    _tabController = TabController(length: tabs.length, vsync: this);
    // 加载数据
    LoadGroupData(gdMyJoin);
    _tabController.addListener(() {});
  }

  Future<void> LoadGroupData(GroupData groupData) async {
    var req = $pbCommunity.UserCommunitiesReq();
    req.userId = Int64(AppUserInfo.instance.imId);
    var response = await RpcCallImOuterApi(
        "/pb_grpc_community.Community/UserCommunities",
        req,
        MakePBCommData(
            aimId: Int64(AppUserInfo.instance.imId),
            toService: Service.community));
    var rsp = $pbCommunity.UserCommunitiesRsp();
    rsp.mergeFromBuffer(response.bodyBytes);
    // rsp.communities.forEach((element) {
    //   groupData.lstCommunity.add(element);
    // });
    groupData.lstCommunity = rsp.communities;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //因为本路由没有使用Scaffold，为了让子级Widget(如Text)使用
    //Material Design 默认的样式风格,我们使用Material作为本路由的根。
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   tooltip: "发布文章",
      //   backgroundColor: Colors.blue,
      //   child: Icon(Icons.add, color: Colors.white,size: 30,),
      //   onPressed: () {
      //     // 发布文章界面
      //     Navigator.push(
      //         context, MaterialPageRoute(builder: (BuildContext context) {
      //       return CreateCommunity();
      //     }));
      //   },
      // ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "圈子",
          style: TextStyle(color: Colors.black),
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: tabs
              .map((e) => Tab(
                    text: e,
                  ))
              .toList(),
          labelColor: Colors.lightBlue,
          unselectedLabelColor: Colors.black54,
          indicatorColor: Colors.lightBlueAccent,
          indicatorSize: TabBarIndicatorSize.label,
        ),
        toolbarHeight: 50,
      ),
      // backgroundColor: Colors.white10,
      body: TabBarView(
        controller: _tabController,
        // children: tabs.map((e) { //创建3个Tab页
        //   return Container(
        //     alignment: Alignment.center,
        //     child: Text(e, textScaleFactor: 5),
        //   );
        // }).toList(),
        children: <Widget>[
          TestTab(),
          FriendsCommunities(),
        ],
        // children: [
        //   ListViewContnet(gdMyJoin),
        //   ListViewContnet(gdMyJoin),
        //   ListViewContnet(gdMyJoin),
        //   ListViewContnet(gdMyJoin),
        //
        // ],
      ),
    );
  }

  // @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => throw UnimplementedError();

  Widget _BuildMyJoinGrideItem(BuildContext context, int index) {
    var element = gdMyJoin.lstCommunity[index];
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return Community(
            communityId: element.id.toInt(),
          );
        }));
      },
      child: Container(
        // margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Image.network(element.avatar, fit: BoxFit.cover),
            ),

            // Container(
            //   // margin: EdgeInsets.all(5),
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //         image: NetworkImage(element.avatar), fit: BoxFit.cover),
            //     borderRadius: BorderRadius.all(Radius.circular(5)),
            //   ),
            //   child: Text(""),
            // ),
            Expanded(
              flex: 1,
              child: Text(
                element.name,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TestTab extends StatefulWidget {
  @override
  _TestTabState createState() => _TestTabState();
}

class _TestTabState extends State<TestTab> with SingleTickerProviderStateMixin {
  GroupData gdMyJoin = GroupData()..name = "我加入的";
  GroupData gdMyAdmin = GroupData()..name = "我管理的";
  GroupData gdMyRead = GroupData()..name = "我看过的";

  final _tabKey = ValueKey('tab');
  // List tabs = ["我加入的", "我管理的", "我看过的", "推荐的"];

  late TabController _innerTabController;

  void handleTabChange() {
    print(
        'Inner tab, previous: ${_innerTabController.previousIndex}, current: ${_innerTabController.index}');
    PageStorage.of(context)
        .writeState(context, _innerTabController.index, identifier: _tabKey);
  }

  // TabController _innerCommTabController;
  // void handleCommTabChange() {
  //   print('Inner tab, previous: ${_innerCommTabController.previousIndex}, current: ${_innerCommTabController.index}');
  //   PageStorage.of(context).writeState(context, _innerCommTabController.index, identifier: _tabKey);
  // }

  @override
  void initState() {
    super.initState();

    LoadGroupData(gdMyJoin);
    log(gdMyJoin);

    print('init');
    int initialIndex =
        PageStorage.of(context).readState(context, identifier: _tabKey) ?? 0;
    _innerTabController =
        TabController(length: 4, vsync: this, initialIndex: initialIndex);
    _innerTabController.addListener(handleTabChange);

    // _innerCommTabController = TabController(
    //     length: 4,
    //     vsync: this,
    //     initialIndex: initialIndex != null ? initialIndex : 0
    // );
    // _innerCommTabController.addListener(handleTabChange);
  }

  Future<void> LoadGroupData(GroupData groupData) async {
    var req = $pbCommunity.UserCommunitiesReq();
    req.userId = Int64(AppUserInfo.instance.imId);
    var response = await RpcCallImOuterApi(
        "/pb_grpc_community.Community/UserCommunities",
        req,
        MakePBCommData(
            aimId: Int64(AppUserInfo.instance.imId),
            toService: Service.community));
    var rsp = $pbCommunity.UserCommunitiesRsp();
    rsp.mergeFromBuffer(response.bodyBytes);
    // rsp.communities.forEach((element) {
    //   groupData.lstCommunity.add(element);
    // });
    groupData.lstCommunity = rsp.communities;
    setState(() {});
  }

  @override
  void dispose() {
    _innerTabController.removeListener(handleTabChange);
    _innerTabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
        backgroundColor: Color(0x3000000),
        floatingActionButton: FloatingActionButton(
          tooltip: "发布文章",
          backgroundColor: Colors.blue,
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            // 发布文章界面
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return CreateCommunity();
            }));
          },
        ),
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(
            controller: _innerTabController,
            tabs: <Widget>[
              Tab(
                child: Text('我加入的'),
              ),
              Tab(
                child: Text('我管理的'),
              ),
              Tab(
                child: Text('我看过的'),
              ),
              Tab(
                child: Text('推荐的'),
              ),
            ],
            labelColor: Colors.lightBlue,
            unselectedLabelColor: Colors.black54,
            indicatorColor: Colors.lightBlueAccent,
            indicatorSize: TabBarIndicatorSize.label,
          ),
          toolbarHeight: 50,
          backgroundColor: Colors.white,
        ),
        body: SizedBox(
            // height: 300,
            child: Column(
          children: [
            SizedBox(
              height: 150,
              child: TabBarView(
                controller: _innerTabController,
                children: [
                  CustomScrollView(
                    slivers: <Widget>[
                      SliverPadding(
                        padding: const EdgeInsets.all(5.0),
                        sliver: new SliverGrid(
                          //Grid
                          gridDelegate:
                              new SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 6, //Grid按两列显示
                            mainAxisSpacing: 5.0,
                            crossAxisSpacing: 5.0,
                            childAspectRatio: 0.8,
                          ),
                          delegate: new SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                              //创建子widget
                              return _BuildListMyRead(context, index);
                              //   new Container(
                              //   alignment: Alignment.center,
                              //   color: Colors.cyan[100 * (index % 9)],
                              //   child: new Text('grid item $index'),
                              // );
                            },
                            childCount: gdMyJoin.lstCommunity.length,
                          ),
                        ),
                      ),
                    ],
                  ),
                  CustomScrollView(
                    slivers: <Widget>[
                      SliverPadding(
                        padding: const EdgeInsets.all(5.0),
                        sliver: new SliverGrid(
                          //Grid
                          gridDelegate:
                              new SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 6, //Grid按两列显示
                            mainAxisSpacing: 5.0,
                            crossAxisSpacing: 5.0,
                            childAspectRatio: 0.8,
                          ),
                          delegate: new SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                              //创建子widget
                              return _BuildListMyRead(context, index);
                              //   new Container(
                              //   alignment: Alignment.center,
                              //   color: Colors.cyan[100 * (index % 9)],
                              //   child: new Text('grid item $index'),
                              // );
                            },
                            childCount: gdMyJoin.lstCommunity.length,
                          ),
                        ),
                      ),
                    ],
                  ),
                  CustomScrollView(
                    slivers: <Widget>[
                      SliverPadding(
                        padding: const EdgeInsets.all(5.0),
                        sliver: new SliverGrid(
                          //Grid
                          gridDelegate:
                              new SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 6, //Grid按两列显示
                            mainAxisSpacing: 5.0,
                            crossAxisSpacing: 5.0,
                            childAspectRatio: 0.8,
                          ),
                          delegate: new SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                              //创建子widget
                              return _BuildListMyRead(context, index);
                              //   new Container(
                              //   alignment: Alignment.center,
                              //   color: Colors.cyan[100 * (index % 9)],
                              //   child: new Text('grid item $index'),
                              // );
                            },
                            childCount: gdMyJoin.lstCommunity.length,
                          ),
                        ),
                      ),
                    ],
                  ),
                  CustomScrollView(
                    slivers: <Widget>[
                      SliverPadding(
                        padding: const EdgeInsets.all(5.0),
                        sliver: SliverGrid(
                          //Grid
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 6, //Grid按两列显示
                            mainAxisSpacing: 5.0,
                            crossAxisSpacing: 5.0,
                            childAspectRatio: 0.8,
                          ),
                          delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                              //创建子widget
                              return _BuildListMyRead(context, index);
                              //   new Container(
                              //   alignment: Alignment.center,
                              //   color: Colors.cyan[100 * (index % 9)],
                              //   child: new Text('grid item $index'),
                              // );
                            },
                            childCount: gdMyJoin.lstCommunity.length,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // ListView.builder(
                  //   itemBuilder: (BuildContext context, int index) {
                  //     return _BuildListMyRead(context, index);
                  //   },
                  //   itemCount: gdMyJoin.lstCommunity.length,
                  //     // key: PageStorageKey('1'),
                  //     // itemBuilder: (BuildContext context, int index) {
                  //     //   return ListTile(title: Text('child1 $index'));
                  //     // }
                  // ),
                ],
              ),
            ),
            // Expanded(
            //   child: CommunityHome(),
            // ),
          ],
        )));
  }

  Widget _BuildListMyRead(BuildContext context, int index) {
    var element = gdMyJoin.lstCommunity[index];
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return Community(
            communityId: element.id.toInt(),
          );
        }));
      },
      child: Container(
        height: 100,
        width: 50,
        // margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Image.network(element.avatar, fit: BoxFit.cover),
            ),
            Expanded(
              flex: 1,
              child: Text(
                element.name,
              ),
            ),

            // Container(
            //   // margin: EdgeInsets.all(5),
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //         image: NetworkImage(element.avatar), fit: BoxFit.cover),
            //     borderRadius: BorderRadius.all(Radius.circular(5)),
            //   ),
            //   child: Text(""),
            // ),
          ],
        ),
      ),
    );
  }
}
