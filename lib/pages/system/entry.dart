import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/view.dart';

class ServiceNotifyBar extends StatefulWidget {
  ServiceNotifyBar({super.key});
  @override
  ServiceNotifyBarState createState() => new ServiceNotifyBarState();
}

class ServiceNotifyBarState extends State<ServiceNotifyBar> {
  int newMsgCount = 0;

  @override
  void initState() {
    GetNewServiceNotifyCount().then((value) {
      newMsgCount = value;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: TextButton(
        onPressed: () {
          //
          Navigator.pushNamed(context, "ServiceNotifyPage");
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
                flex: 0,
                child: Stack(
                  children: [
                    const Icon(
                      Icons.record_voice_over,
                      size: 40,
                      color: Colors.teal,
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Offstage(
                        offstage: newMsgCount == 0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(17.5),
                          ),
                          padding: EdgeInsets.all(5.0),
                          height: 25,
                          child: Text(
                            "${newMsgCount}",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            Expanded(
              flex: 1,
              child: Container(
                height: 54,
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              officialTag(),
                              Container(
                                margin: const EdgeInsets.only(left: 4),
                                child: const Text(
                                  "系统通知",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 0,
                          child: Text(
                            GetChatTime(DateTime.now()),
                            style:
                                TextStyle(color: Colors.black38, fontSize: 12),
                          ), //Text(item.chatItem.msgTime.toString())
                        )
                      ],
                    ),
                    Text(
                      "一个系统消息",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//
// Widget CreateSystemMsgBar(BuildContext context,int newMsgCount){
//   return TextButton(
//       onPressed: () {
//         //
//         Navigator.pushNamed(context, "SystemMsg");
//       },
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         mainAxisSize: MainAxisSize.max,
//         children: [
//           Expanded(
//               flex: 0,
//               child: Stack(
//                 children: [
//                   SizedBox(width: 60,height: 60,child: Icon(Icons.supervisor_account_outlined, size: 60,color: Colors.teal,)),
//                   Positioned(
//                     right: 0,
//                     top: 0,
//                     child: Offstage(
//                       offstage: newMsgCount == 0,
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color: Colors.red,
//                           borderRadius: BorderRadius.circular(17.5),
//                         ),
//                         padding: EdgeInsets.all(5.0),
//                         height: 25,
//                         child: Text("${newMsgCount}",
//                           style: TextStyle(color: Colors.white),),
//                       ),
//                     ),
//                   ),
//                 ],
//               )
//           ),
//           Expanded(
//             flex: 1,
//             child: Container(
//               height: 64,
//               padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     mainAxisSize: MainAxisSize.max,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Expanded(
//                         flex: 1,
//                         child: Row(children: [OfficialTag(),Text("系统通知", style: TextStyle(color: Colors.black),)],) ,
//                       ),
//                       Expanded(
//                         flex: 0,
//                         child: Text(GetChatTime(DateTime.now()), style: TextStyle(color: Colors.black),), //Text(item.chatItem.msgTime.toString())
//                       )
//                     ],
//                   ),
//                   Text("一个系统消息", style: TextStyle(color: Colors.grey),),
//                 ],
//               ),
//             ),
//           ),
//
//         ],
//       )
//   );
// }