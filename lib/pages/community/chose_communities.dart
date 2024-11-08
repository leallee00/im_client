// 圈子列表
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/community/publish_post.dart';
import 'package:quliao/pages/mine/my_community.dart';
import 'package:quliao/pb/pb_msg/community/community.pb.dart' as $pbCommunity;
import 'package:quliao/pb/pb_pub/service.pb.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:http/http.dart' as http;

import 'community.dart';
import 'create_community.dart';

class ChoseCommunitiesSquare extends StatefulWidget {
  static const name = "ChoseCommunitiesSquare";
  const ChoseCommunitiesSquare({super.key});
  @override
  ChoseCommunitiesSquareState createState() => ChoseCommunitiesSquareState();
}

class GroupData {
  String name = "";
  List<$pbCommunity.Community> lstCommunity = <$pbCommunity.Community>[];
}

class ChoseCommunitiesSquareState extends State<ChoseCommunitiesSquare>
    with SingleTickerProviderStateMixin {
  GroupData recommend = GroupData()..name = "推荐";

  final _tabKey = ValueKey('tab');
  late TabController _innerTabController;

  void handleTabChange() {
    print(
        'Inner tab, previous: ${_innerTabController.previousIndex}, current: ${_innerTabController.index}');
    PageStorage.of(context)
        ?.writeState(context, _innerTabController.index, identifier: _tabKey);
  }

  @override
  void initState() {
    super.initState();

    int initialIndex =
        PageStorage.of(context).readState(context, identifier: _tabKey) ?? 0;
    _innerTabController = TabController(
        length: 4,
        vsync: this,
        initialIndex: initialIndex != null ? initialIndex : 0);
    _innerTabController.addListener(handleTabChange);
    LoadCommunitiesSquare("");
  }

  // 加载帖子
  // ignore: non_constant_identifier_names
  Future<void> LoadCommunitiesSquare(String keyWord) async {
    var req = $pbCommunity.AllCommunitiesReq();
    req.offset = Int64(0);
    req.count = Int64(100);
    req.keyWord = keyWord; // 搜索内容
    // req.userId = Int64(AppUserInfo.instance.imId);
    var response = await RpcCallImOuterApi(
        "/pb_grpc_community.Community/AllCommunities",
        req,
        MakePBCommData(
            // aimId: Int64(AppUserInfo.instance.imId),
            toService: Service.community));
    var rsp = $pbCommunity.AllCommunitiesRsp();
    rsp.mergeFromBuffer(response.bodyBytes);
    // rsp.communities.forEach((element) {
    //   groupData.lstCommunity.add(element);
    // });
    recommend.lstCommunity = rsp.communities;
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.black,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return MyCommunity();
              }));
            },
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            "选择圈子",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.add,
                color: Colors.black54,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return CreateCommunity();
                }));
              },
            ),
          ],
        ),
        body: Column(children: [
          Expanded(
            flex: 0,
            child: TextField(
              decoration: const InputDecoration(
                hintText: "搜索你要找的圈子",
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (value) {
                // 检索，更新到页面
                LoadCommunitiesSquare(value);
              },
            ),
          ),
          Expanded(
            child: Scaffold(
              appBar: AppBar(
                elevation: 0,
                bottom: TabBar(
                  controller: _innerTabController,
                  tabs: const <Widget>[
                    Tab(
                      child: Text('推荐'),
                    ),
                    Tab(
                      child: Text('影视'),
                    ),
                    Tab(
                      child: Text('游戏'),
                    ),
                    Tab(
                      child: Text('生活'),
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
              body: TabBarView(controller: _innerTabController, children: [
                ListView.builder(
                    itemCount: recommend.lstCommunity.length,
                    itemBuilder: (BuildContext context, int index) {
                      return _BuildListCommunities(context, index);
                    }),
                ListView.builder(
                    itemCount: recommend.lstCommunity.length,
                    itemBuilder: (BuildContext context, int index) {
                      return _BuildListCommunities(context, index);
                    }),
                ListView.builder(
                    itemCount: recommend.lstCommunity.length,
                    itemBuilder: (BuildContext context, int index) {
                      return _BuildListCommunities(context, index);
                    }),
                ListView.builder(
                    itemCount: recommend.lstCommunity.length,
                    itemBuilder: (BuildContext context, int index) {
                      return _BuildListCommunities(context, index);
                    }),
              ]),
            ),
          )
        ]));
  }

  Widget _BuildListCommunities(BuildContext context, int index) {
    var element = recommend.lstCommunity[index];
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return PublishPost(
            communityId: element.id.toInt(),
            canChangeId: true,
          );
        }));
      },
      child: Container(
        height: 60,
        // width: 50,
        padding: EdgeInsets.fromLTRB(10, 10, 5, 5),
        // margin: EdgeInsets.all(10),
        child: Row(
          children: [
            // Expanded(
            //   flex: 1,
            //   child: Image.network(element.avatar, fit: BoxFit.cover,),
            // ),
            // Expanded(
            //   flex: 1,
            //   child:  Text(element.name,),
            // ),
            Container(
              width: 50,
              height: 50,
              child: Image.network(
                element.avatar,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Container(
              child: Text(
                element.name,
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
