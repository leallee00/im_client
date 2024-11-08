import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/community/community.dart';
import 'package:quliao/pages/community/create_community.dart';
import 'package:quliao/pb/pb_msg/community/community.pb.dart' as $pbCommunity;
import 'package:quliao/pb/pb_pub/service.pb.dart';
import 'package:quliao/pub/im_grpc_opt.dart';

class CommunityHall1 extends StatefulWidget {
  @override
  _CommunityHallState1 createState() => _CommunityHallState1();
}

class GroupData{
  String name = "";
  List<$pbCommunity.Community> lstCommunity = <$pbCommunity.Community>[];
}

class _CommunityHallState1 extends State<CommunityHall1>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  GroupData gdMyJoin = GroupData()..name = "我加入的";
  GroupData gdMyAdmin = GroupData()..name = "我管理的";
  GroupData gdMyRead = GroupData()..name = "我看过的";

  // List _spList = [
  //   "我加入的",
  //   "我看过的",
  //   "推荐",
  //   "最新",
  //   "生活圈",
  //   "声控",
  //   "爆笑",
  //   "游戏",
  //   "二次元",
  //   "萌宠",
  //   "科技",
  //   "爱好",
  //   "头像壁纸"
  // ];
  late TabController _tabController;
  @protected
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
    // _tabController = null;
    _tabController = TabController(
        initialIndex: 0,
        length: 3,//_spList.length,
        vsync: this); // 直接传this

    print("---->${_tabController.previousIndex}");

    if (_tabController.indexIsChanging) {
      print("---->indexch");
    }

    // 加载数据
    LoadGroupData(gdMyJoin);
  }
  Future<void> LoadGroupData(GroupData groupData) async {
    var req = $pbCommunity.UserCommunitiesReq();
    req.userId = Int64(AppUserInfo.instance.imId);
    var response = await RpcCallImOuterApi(
        "/pb_grpc_community.Community/UserCommunities", req, MakePBCommData(
        aimId: Int64(AppUserInfo.instance.imId), toService: Service.community));
    var rsp = $pbCommunity.UserCommunitiesRsp();
    rsp.mergeFromBuffer(response.bodyBytes);
    // rsp.communities.forEach((element) {
    //   groupData.lstCommunity.add(element);
    // });
    groupData.lstCommunity = rsp.communities;
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white10,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Text("圈子", style: TextStyle(color: Colors.grey),),
          actions: [
            TextButton(child: Text("创建圈子"), onPressed: () {
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (BuildContext context) {
              //   return MyCommunity();
              // }));

              Navigator.push(
                  context, MaterialPageRoute(builder: (BuildContext context) {
                return CreateCommunity();
              }));

            },),
            IconButton(icon: Icon(Icons.search), onPressed: () {  },),
          ],
        ),
        body: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 30),
                alignment: Alignment.centerLeft,
                child: TabBar(
                    controller: _tabController,
                    isScrollable: true,
                    tabs:
                    [
                      Center(
                        child: new Text(
                          gdMyJoin.name,
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                      ),
                      Center(
                        child: new Text(
                          gdMyAdmin.name,
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                      ),
                      Center(
                        child: new Text(
                          gdMyRead.name,
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                      ),
                    ]
                  // _spList.map((f) {
                  //   return Center(
                  //     child: new Text(
                  //       f,
                  //       style: TextStyle(color: Colors.black, fontSize: 22),
                  //     ),
                  //   );
                  // }).toList(),
                ),
              ),
              Expanded(
                child: TabBarView(
                    controller: _tabController,
                    children:
                    [
                      //_BuildMyJion(),
                      _BuildMyJoinGride(context, 0),
                      // Wrap();
                      // ListView.builder(itemBuilder: _BuildListMyJion,
                      //   itemCount: gdMyJoin.lstCommunity.length,),
                      ListView.builder(itemBuilder: _BuildListMyAdmin,
                        itemCount: gdMyAdmin.lstCommunity.length,),
                      ListView.builder(itemBuilder: _BuildListMyRead,
                        itemCount: gdMyRead.lstCommunity.length,),
                      // Center(
                      // child: new Text("第$f页"),
                      // ),
                    ]
                  // _spList.isEmpty
                  //     ? []
                  //     : _spList.map((f) {
                  //   return Center(
                  //     child: new Text("第$f页"),
                  //   );
                  // }).toList()),
                  // ),
                  // ]
                ),
              ),
            ]
        )
    );
  }

  Widget _BuildMyJion() {
    List<Widget> listGD = <Widget>[];
    gdMyJoin.lstCommunity.forEach((element) {
      listGD.add(TextButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
            return Community(communityId: element.id.toInt(),);
          }));
        },
        child: Container(
          margin: EdgeInsets.all(10),
          child:
          Column(children: [
            Container(
              width: 60,
              height: 60,
              // margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(element.avatar), fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Text(""),
            ),
            Text(element.name,),
          ],)
          ,),));
    });

    return Scrollbar( // 显示进度条
      child:
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(16.0),
        child: Wrap(children: listGD,),
      ),
    );
    // return Wrap(children: listGD,);
  }

  Widget _BuildListMyAdmin(BuildContext context, int index) {
    return Center(child: Text("还没有自己管理的圈子"),);
  }

  Widget _BuildListMyRead(BuildContext context, int index) {
    return Center(child: Text("还没有读过"),);
  }

  //
  Widget _BuildMyJoinGride(BuildContext context, int index){
    return ConstrainedBox(
      // height: 50,
      // width: 100,
      constraints: BoxConstraints(maxHeight: 60),
      child:
      GridView.builder(
        scrollDirection:Axis.horizontal,
        shrinkWrap: true,

      padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, //横轴三个子widget
          crossAxisSpacing: 20.0,// 设置左右组件距离
          mainAxisSpacing:20.0,  //设置上下组件距离
            // childAspectRatio: 1.0 //宽高比为1时，子widget
        ),
      // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      //     maxCrossAxisExtent: 500.0,
      //     childAspectRatio: 1.0 //宽高比为2
      // ),
        itemCount: gdMyJoin.lstCommunity.length,
      itemBuilder: (context, index){
        var element = gdMyJoin.lstCommunity[index];
          return TextButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return Community(communityId: element.id.toInt(),);
              }));
            },
            child: Container(
              margin: EdgeInsets.all(10),
              child:
              Column(children: [
                Container(
                  width: 60,
                  height: 60,
                  // margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(element.avatar), fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Text(""),
                ),
                Text(element.name,),
              ],)
              ,),);
      },
    ),
    );
  }
}