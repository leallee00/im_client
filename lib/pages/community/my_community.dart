// import 'package:fixnum/fixnum.dart';
// import 'package:flutter/material.dart';
// import 'package:quliao/models/Global.dart';
// import 'package:quliao/models/user/myinfo.dart';
// import 'package:quliao/net/socket.dart';
// import 'package:quliao/pages/community/create_community.dart';
// import 'package:quliao/pb/pb_msg/community/community.pb.dart';
// import 'package:quliao/pb/pb_pub/service.pb.dart';
// import 'package:quliao/pub/im_grpc_opt.dart';
// import 'package:quliao/pub/log.dart';
//
// class MyCommunity extends StatefulWidget {
//   @override
//   _MyCommunityState createState() => _MyCommunityState();
// }
//
// // class GroupData{
// //   String name = "";
// //   List<Community> lstCommunity = List<Community>();
// // }
// //
// class _MyCommunityState extends State<MyCommunity>{
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   var _scrollController = ScrollController();
//   List<Post> lsCommunityPost = [];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white10,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         automaticallyImplyLeading: false,
//         title: Text("圈子", style: TextStyle(color: Colors.grey),),
//         actions: [
//           TextButton(child: Text("创建圈子"), onPressed: () {
//             Navigator.push(
//                 context, MaterialPageRoute(builder: (BuildContext context) {
//               return CreateCommunity();
//             }));
//           },),
//           IconButton(icon: Icon(Icons.search),),
//         ],
//       ),
//       body: ListView.builder(
//         itemCount: lsCommunityPost.length+1,// 第一个给我my_community_bar
//         shrinkWrap: true,
//         itemBuilder: buildPage(),
//
//         // 控制滚动
//         scrollDirection: Axis.vertical,
//         controller: _scrollController,
//       )
//     );
//   }
//
//   // 构建页面
//   Widget buildPage(BuildContext context, int index) {
//     if (index == 0){
//       // 构建我的
//
//       return Container();
//     }
//
//     // 构建post列表
//
//   }
// }
// //     with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
// //
// //   GroupData gdMyJoin = GroupData()..name = "我加入的";
// //   GroupData gdMyAdmin = GroupData()..name = "我管理的";
// //   GroupData gdMyRead = GroupData()..name = "我看过的";
// //
// //   TabController _tabController;
// //
// //   @protected
// //   bool get wantKeepAlive => true;
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     _tabController = null;
// //     _tabController = TabController(initialIndex: 0, length: 3, vsync: this); // 直接传this
// //
// //     // print("---->${_tabController.previousIndex}");
// //
// //     if (_tabController.indexIsChanging) {
// //       print("---->indexch");
// //     }
// //
// //     // 加载数据
// //     LoadGroupData(gdMyJoin);
// //     log("in MyCommunity");
// //   }
// //
// //   Future<void> LoadGroupData(GroupData groupData) async {
// //     var req = MyCommunitiesReq();
// //     var response = await RpcCallCommImGate(
// //         "/pb_grpc_community.Community/MyCommunities", req, MakePBCommData(
// //         aimId: Int64(AppUserInfo.instance.imId), toService: Service.community));
// //     var rsp = MyCommunitiesRsp();
// //     rsp.mergeFromBuffer(response.bodyBytes);
// //     // rsp.communities.forEach((element) {
// //     //   groupData.lstCommunity.add(element);
// //     // });
// //     groupData.lstCommunity = rsp.communities;
// //     setState(() {
// //
// //     });
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.white10,
// //       appBar: AppBar(
// //         backgroundColor: Colors.white,
// //         automaticallyImplyLeading: false,
// //         title: Text("圈子", style: TextStyle(color: Colors.grey),),
// //         actions: [
// //           TextButton(child: Text("创建圈子"), onPressed: () {
// //             Navigator.push(
// //                 context, MaterialPageRoute(builder: (BuildContext context) {
// //               return CreateCommunity();
// //             }));
// //           },),
// //           IconButton(icon: Icon(Icons.search),),
// //         ],
// //       ),
// //       body: Column(
// //         children: <Widget>[
// //           Container(
// //             margin: EdgeInsets.only(top: 30),
// //             alignment: Alignment.centerLeft,
// //             child: TabBar(
// //                 controller: _tabController,
// //                 isScrollable: true,
// //                 tabs: [
// //                   Center(
// //                     child: new Text(
// //                       gdMyJoin.name,
// //                       style: TextStyle(color: Colors.black, fontSize: 22),
// //                     ),
// //                   ),
// //                   Center(
// //                     child: new Text(
// //                       gdMyAdmin.name,
// //                       style: TextStyle(color: Colors.black, fontSize: 22),
// //                     ),
// //                   ),
// //                   Center(
// //                     child: new Text(
// //                       gdMyRead.name,
// //                       style: TextStyle(color: Colors.black, fontSize: 22),
// //                     ),
// //                   ),
// //                 ]
// //               // _spList.map((f) {
// //               //   return Center(
// //               //     child: new Text(
// //               //       f.name,
// //               //       style: TextStyle(color: Colors.black, fontSize: 22),
// //               //     ),
// //               //   );
// //               // }).toList(),
// //             ),
// //           ),
// //           Expanded(
// //             child: TabBarView(
// //                 controller: _tabController,
// //                 children: [
// //                   ListView.builder(itemBuilder: _BuildListMyJion,
// //                     itemCount: gdMyJoin.lstCommunity.length,),
// //                   ListView.builder(itemBuilder: _BuildListMyAdmin,
// //                     itemCount: gdMyAdmin.lstCommunity.length,),
// //                   ListView.builder(itemBuilder: _BuildListMyRead,
// //                     itemCount: gdMyRead.lstCommunity.length,),
// //                   // Center(
// //                   // child: new Text("第$f页"),
// //                   // ),
// //                 ]
// //             ),
// //           )
// //         ]
// //         ,
// //       )
// //       ,
// //     );
// //   }
// //
// //   Widget _BuildListMyJion(BuildContext context, int index) {
// //     var gd = gdMyJoin.lstCommunity[index];
// //     return TextButton(child: Container(child:
// //       Column(children: [
// //         Container(
// //           width: 60,
// //           height: 60,
// //           margin: EdgeInsets.all(10),
// //           decoration: BoxDecoration(
// //             image: DecorationImage(image: NetworkImage(gd.avatar), fit: BoxFit.cover),
// //             borderRadius: BorderRadius.all(Radius.circular(5)),
// //           ),
// //           child: Text(""),
// //         )
// //       ],)
// //       ,),);
// //   }
// //
// //   Widget _BuildListMyAdmin(BuildContext context, int index) {
// //     return Center(child: Text("还没有自己管理的圈子"),);
// //   }
// //
// //   Widget _BuildListMyRead(BuildContext context, int index) {
// //     return Center(child: Text("还没有读过"),);
// //   }
// // }