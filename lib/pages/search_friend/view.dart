// import 'package:fish_redux/fish_redux.dart';
// import 'package:fixnum/fixnum.dart';
// import 'package:flutter/material.dart';
// import 'package:quliao/pub/func.dart';
// import 'package:quliao/pub/log.dart';
// import 'package:quliao/models/user/myinfo.dart';
//
// import 'action.dart';
// import 'state.dart';
//
// Widget buildView(search_friendState state, Dispatch dispatch, ViewService viewService) {
//   var tctl = TextEditingController();
//   tctl.text = "30125042";
// //  var finfo = FriendInfo();
//   return Scaffold(
//     appBar: AppBar(
//       title: TextField(
//         controller: tctl,
//       ),
//         actions:[IconButton(
//           icon: Icon(Icons.search),
//           onPressed: (){
//             log("click search");
// //            finfo.imId = Int64.parseInt(tctl.text);
//             // "imId" or "appId","appUserId"
//             if (tctl.text.length == 0){
//               showToast("请输入用户id");
//               return;
//             }
//             var imId = Int64.parseInt(tctl.text);
//             if (imId < 1000){
//               showToast("用户不存在");
//               return;
//             }
//
//             dispatch(search_friendActionCreator.onSearchFriend({"imId":Int64.parseInt(tctl.text)}));
//           },
//         )],
//     ),
//     body: Container(
//       child: Column(
//         children: [
//           // id
//           Text("${state.finfo.friendId}"),
//           // name
//           Text("${state.finfo.userInfo.nickName}"),
//           // avatar
//           Text("${state.finfo.userInfo.avatar}"),
//           // add
//           TextButton(
//             onPressed: (){
//               log("add to friend list");
//               dispatch(search_friendActionCreator.onAddFriend(state.finfo));
//             },
//             child: Text("添加到好友列表"),
//           )
//         ],
//       ),
//     ),
//     // bottomNavigationBar: BottomNavigationBar(
//     //   items: <BottomNavigationBarItem>[
//     //     BottomNavigationBarItem(
//     //         icon: Icon(Icons.message), title: new Text('消息')),
//     //     BottomNavigationBarItem(
//     //         icon: Icon(Icons.contacts), title: new Text('通讯录')),
//     //     BottomNavigationBarItem(
//     //         icon: Icon(Icons.find_in_page), title: new Text('发现')),
//     //     BottomNavigationBarItem(
//     //         icon: Icon(Icons.account_box), title: new Text('我的')),
//     //   ],
//     // ),
//   );
// }
