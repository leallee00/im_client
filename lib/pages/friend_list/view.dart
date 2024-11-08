// import 'dart:math';
//
// import 'package:fish_redux/fish_redux.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:quliao/pages/friend/new_friend.dart';
// import 'package:quliao/pub/func.dart';
// import 'package:quliao/pub/log.dart';
// import 'package:quliao/models/user/myinfo.dart';
//
// import 'action.dart';
// import 'state.dart';
//
// Widget buildView(FriendListState state, Dispatch dispatch, ViewService viewService) {
//   // log("============buildView appuser ${AppUserInfo()}");
//   var user = AppUserInfo();
//
//   // 获取消息列表
//   ListTile ListBuilder(BuildContext context, int index) {
//     var item = state.lfInfo[index];
//     log("item->${item} uinfo:${item.userInfo}");
//     return ListTile(
//       leading: avatar(item.userInfo.avatar, 60, 60),
//       title: Text(item.userInfo.nickName),
//       subtitle: Text("${item.userInfo.nickName}"),
//       onTap: () {
//         log("item->${item}");
//         dispatch(FriendListActionCreator.onOpenPrivateChat(item));
//       },
//     );
//   }
//
//   // Widget divider1 = Divider(color: Colors.blue,);
//   // Widget divider2 = Divider(color: Colors.green);
//   return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         centerTitle: true,
//         title: Text('通讯录(${state.msgCount})', style: TextStyle(color: Colors.black54),),
//         actions: [
//           IconButton(
//               icon: Icon(Icons.person_add, color: Colors.black54,),
//             onPressed: (){
//                 // 打开添加朋友页面
//               Navigator.pushNamed(viewService.context, "AddFriend");
//             },
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             flex: 0,
//             child: TextField(
//               decoration: InputDecoration(
//                 // labelText: "群id",
//                 hintText: "",
//                 prefixIcon: Icon(Icons.search),
//               ),
//               onChanged: (value) {
//                 // 检索，更新到页面
//               },
//             ),
//           ),
//           Expanded(
//               flex: 0,
//               child: ListView(
//                 shrinkWrap: true,
//                 padding: const EdgeInsets.all(20.0),
//                 children: <Widget>[
//                   ListTile(
//                     leading: Icon(Icons.group_add, color: Colors.green,),
//                     title: Text("新的朋友"),
//                     trailing: Icon(Icons.chevron_right),
//                     // subtitle: Text("${groupname}"),
//                     onTap: () {
//                       log("新的朋友");
//                       // 切换到新的朋友页面
//                       Navigator.push(viewService.context, MaterialPageRoute(builder: (BuildContext context){
//                         return NewFriend();
//                       }));
//                     },),
//                   Divider(color: Colors.green),
//                   ListTile(
//                       leading: Icon(
//                         Icons.question_answer, color: Colors.green,),
//                       trailing: Icon(Icons.chevron_right),
//                       title: Text("群聊"), onTap: () {
//                     log("群聊");
//                     // 跳转到群列表
//                     Navigator.pushNamed(viewService.context, "GroupListPage");
//                   }),
//                   Divider(color: Colors.green),
//                 ],
//               )),
//           Expanded(
//             flex: 1,
//             child: ListView.separated(
//               itemCount: state.lfInfo.length,
//               itemBuilder: ListBuilder,
//               //分割器构造器
//               separatorBuilder: (BuildContext context, int index) {
//                 return index % 2 == 0 ? Divider(color: Colors.green) : Divider(
//                     color: Colors.blue);
//               },
//             ),
//           )
//         ],
//       )
//
//   );
// }
