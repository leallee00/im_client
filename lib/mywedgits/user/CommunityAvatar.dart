// 帖子头像
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:basic_utils/basic_utils.dart';
import 'package:desktop_multi_window/desktop_multi_window.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:quliao/models/user/userinfo.dart';
import 'package:quliao/pages/community/user_info.dart';
import 'package:quliao/pub/config.dart';
import 'package:quliao/pub/log.dart';

class AvatarPost extends StatelessWidget {
  AvatarPost(
    this.uId,
    this.avatarUrl,
    this.uName,
    this.postTimes, {
    super.key,
  });
  final String avatarUrl;
  final String uName;
  final Int64 postTimes;
  final Int64 uId;

  @override
  Widget build(BuildContext context) {
    log("========this.uId:$uId, this.avatarUrl:$avatarUrl, this.uName:$uName, this.postTimes:$postTimes",
        deep: 1);

    // return Text("yes");
    // TODO: implement build
    // throw UnimplementedError();
    // log("avataPost avatarUrl:${avatarUrl}");
    return
        // FittedBox(
        //   child:Container(
        //       width: 300,
        //       height: 40,
        //       child:
        TextButton(
      onPressed: () async {
        // 打开用户信息
        if (Platform.isWindows || Platform.isLinux) {
          final window = await DesktopMultiWindow.createWindow(jsonEncode({
            'args1': 'Sub window',
            'args2': 100,
            'args3': true,
            'bussiness': 'bussiness_test',
          }));
          window
            ..setFrame(const Offset(0, 0) & const Size(1280, 720))
            ..center()
            ..setTitle('Another window')
            ..show();
        }
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return CommunityUserInfo(uId.toInt());
        }));
      },
      child: Row(
        children: [
          Expanded(
            // flex: 1,
            child: FittedBox(
              child: Container(
                width: 20,
                height: 20,
//                    margin: EdgeInsets.all(10), //.fromLTRB(10, 0, 0, 0),
                margin: EdgeInsets.fromLTRB(5, 10, 8, 10),
                child: CircleAvatar(
                  // radius: 10.0,
                  backgroundImage: NetworkImage(avatarUrl.isEmpty
                      ? ConfigMgr().config!.defaultGirlAvatar
                      : avatarUrl),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${uName.isEmpty ? uId : uName}",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "${DateUtil.formatDate(DateUtil.getDateTimeByMs(postTimes.toInt() * 1000))}",
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ],
        //     )
        // )
      ),
    );
    // ));
  }
}
// class AvatarPost extends StatefulWidget {
//   AvatarPost(this.avatarUrl, this.uName, this.postTime, {Key key, }) : super(key: key);
//
//   final String avatarUrl;
//   final String uName;
//   final Int64 postTime;
//
//   @override
//   PostCardState createState() => new PostCardState();
// }

// class PostCardState extends State<AvatarPost> {
//   @override
//   void initState() {
//   }
//
//   Widget build(BuildContext context) {
//     return Card(
//       child: Column(
//         children: [
//           // 头部
//           Row(
//             children: [
//               Expanded(
//                 flex: 1,
//                 child: FittedBox(child: Container(
//                   width: 40,
//                   height: 40,
//                   margin: EdgeInsets.all(10), //.fromLTRB(10, 0, 0, 0),
//                   child: CircleAvatar(
//                     // radius: 10.0,
//                     backgroundImage: NetworkImage(widget.post.avatar),),
//                 ),
//                 ),
//               ),
//               Expanded(
//                 flex: 6,
//                 child: Container(
//                   margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "${widget.post.username}", style: TextStyle(fontSize: 15,),),
//                       // Text("${widget.post.uTag}", style: TextStyle(fontSize: 10,color: Colors.grey),),
//                     ],
//                   ),
//                 ),
//               ),
//               Expanded(
//                 flex: 2,
//                 child:
//                 TextButton(
//                   child:
//                   Container(
//                     height: 25,
//                     // width: 65,
//                     alignment: Alignment.center,
//                     // padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.all(Radius.circular(20)),
//                       border: Border.all(width: 1, color: Colors.blue),
//                     ),
//                     child: Text("+ 关注", style: TextStyle(color: Colors.blue),),
//                   ),
//                 ),
//               ),
//               Expanded(
//                   child: IconButton(
//                     icon: Icon(Icons.close),
//                   )
//               ),
//             ],
//           ),
//           // 内容
//           Container(
//             margin: EdgeInsets.all(20), //.fromLTRB(10, 0, 0, 0),
//             child: Text("${widget.post.content}"),
//           ),
//
//           // 如果有图片的话就给个图片
//
//           // 关联圈子
//           Row(),
//
//           // 神评
//           (widget.post.topComments != null && widget.post.topComments.length > 0) ?
//           Container(
//             margin: EdgeInsets.all(20),
//             decoration: BoxDecoration(
//               color: Colors.black12,
//               borderRadius: BorderRadius.all(Radius.circular(5)),
//             ),
//             child: Column(
//               children: [
//                 Row(children: [
//                   Expanded(
//                     flex: 8,
//                     child:
//                     Container(
//                       margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
//                       alignment: Alignment.centerLeft,
//                       child:
//
//                       Chip(
//                         avatar: Icon(Icons.insert_emoticon, color: Colors
//                             .orange,),
//                         label: Text("神评", style: TextStyle(
//                             color: Colors.white),),
//                         backgroundColor: Colors.redAccent,
//                         labelPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
//                         // padding:EdgeInsets.all(0),
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: IconButton(icon: Icon(Icons.arrow_upward),),
//                   ),
//                   Expanded(
//                     child: Container(
//                       alignment: Alignment.center,
//                       child: Text("${widget.post.topComments[0].likes}",
//                         style: TextStyle(color: Colors.blue),),
//                     )
//                     ,
//                   ),
//                   Expanded(
//                     child:
//                     // Transform.rotate(
//                     //   angle: pi, child:
//                     IconButton(icon: Icon(Icons
//                         .arrow_downward),),
//                     // ),
//                   )
//                 ],),
//                 Container(
//                   alignment: Alignment.centerLeft,
//                   margin: EdgeInsets.all(20),
//                   child: Text("${widget.post.topComments[0].content}"),
//                 )
//               ],
//             ),
//           ) : Container(),
//
//           // 评论信息
//           Row(
//             children: [
//               Expanded(
//                 child: IconButton(
//                   icon: Icon(Icons.share),
//                 ),
//               ),
//               Expanded(
//                 child: Text("${widget.post.shares}"),
//               ),
//               Expanded(
//                 child: IconButton(
//                   icon: Icon(Icons.comment),
//                 ),
//               ),
//               Expanded(
//                 child: Text("${widget.post.comments}"),
//               ),
//               Expanded(
//                 child: IconButton(icon: Icon(Icons.navigation),),
//               ),
//               Expanded(
//                 child:
//                 Container(
//                   alignment: Alignment.center,
//                   child: Text(
//                     "${widget.post.likes}", style: TextStyle(color: Colors.blue),),
//                 ),
//               ),
//               Expanded(
//                 child: Transform.rotate(
//                   angle: pi, child: IconButton(icon: Icon(Icons.navigation),),),
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }