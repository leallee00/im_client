import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quliao/pub/config.dart';
import 'package:quliao/pub/log.dart';
import 'package:time_machine/time_machine.dart';

import '../roomStruct.dart';

class RoomListPage extends StatefulWidget {
  static const name = "RoomListPage";
  @override
  _RoomListPageState createState() {
    return _RoomListPageState();
  }
}

class _RoomListPageState extends State<RoomListPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _onInitState();
  }

  @override
  Widget build(BuildContext context) {
    List<LiveRoom> roomList = <LiveRoom>[];
    int curLoc = 0;

    //  Widget divider1 = Divider(color: Colors.blue,);
//  Widget divider2 = Divider(color: Colors.green);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('直播列表', style: TextStyle(color: Colors.black54)),
      ),
      body: ListView.builder(
        itemCount: roomList.length,

        itemBuilder: (BuildContext context, int index) {
          var roomInfo = roomList[index];
          log("room info=> ${roomInfo}");
          return TextButton(
            onPressed: () {
              log("click me item ${roomInfo}");
              // lpdScreenWidthPx = MediaQuery
              //     .of(viewService.context)
              //     .size
              //     .width
              //     .toInt() * MediaQuery
              //     .of(viewService.context)
              //     .devicePixelRatio
              //     .toInt();
              // lpdScreenHeightPx = (MediaQuery
              //     .of(viewService.context)
              //     .size
              //     .height - MediaQuery
              //     .of(viewService.context)
              //     .padding
              //     .top - 56.0).toInt() * MediaQuery
              //     .of(viewService.context)
              //     .devicePixelRatio
              //     .toInt();
              // // 跳转到播放界面
              // Navigator.pushNamed(viewService.context, "PlayPage",
              //     arguments: {"roomInfo": roomInfo});
            },
            child: Card(
//          child: Container(
//            margin: EdgeInsets.all(4.0),
//            child: Text("测试一下"),
//          ),
              child: Column(
                children: [
                  Stack(
                      alignment: Alignment.center, //指定未定位或部分定位widget的对齐方式
                      children: <Widget>[
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            minWidth: double.infinity, //宽度尽可能大
                            // maxHeight: 200.0
                            minHeight: 200.0,
                            maxHeight: 200.0,
                          ),
                          child: Image.network(
                            roomInfo.coverUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          left: 0.0,
                          top: 0.0,
                          child: Container(
                            child: Text(
                              "${LiveStateStr(roomInfo.liveStatus)}",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12.0),
                            ),
                            color: Colors.grey,
                            padding: EdgeInsets.fromLTRB(10, 4, 10, 4),
                          ),
                        ),
                        Positioned(
                          left: 0.0,
                          bottom: 0.0,
                          child: Container(
                            child: Text(
                              "${roomInfo.title}",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16.0),
                            ),
//                  color: Colors.grey,
                            padding: EdgeInsets.fromLTRB(10, 4, 10, 4),
                          ),
                        ),
                      ]),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Row(
                            children: [
                              Container(
                                width: 40.0,
                                height: 40.0,
                                child: CircleAvatar(
                                  radius: 20.0,
                                  backgroundImage:
                                      NetworkImage(roomInfo.logoUrl),
                                ),
                              ),
                              Text(roomInfo.anchorName),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: Text(
                              '${Instant.fromEpochMilliseconds(roomInfo.startTime.toInt() * 1000).toString("yyyy-MM-dd HH:mm")}',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ), //("${DateTime.fromMillisecondsSinceEpoch(roomInfo.startTime.toInt()*1000)}")),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        //分割器构造器
//      separatorBuilder: (BuildContext context, int index) {
//        return index % 2 == 0 ? divider1 : divider2;
//      },
      ),
    );
  }

  void _onInitState() {
    // 请求一下列表
    var dio = Dio();
    var url =
        ConfigMgr().config!.LiveRoomHost + ConfigMgr().config!.LiveRoomListUri;
    dio.post(url, queryParameters: {"page": 1}).then((value) => {
          _onLiveRoomListUpdate({"value": value})
        });
  }

  _onLiveRoomListUpdate(roomList) {
    // 更新房间列表
    // var roomList = action.payload["value"];
    if (roomList["result"] != 0) {
      log("获取直播列表失败 ${roomList}");
      // return state;
    }

    for (var data in roomList["data"]["lists"]) {
      roomList.add(LiveRoom()..initWithMap(data));
    }

    // return newState;
  }
}

String LiveStateStr(int status) {
  switch (status) {
    case 0:
      return "创建中";
    case 1:
      return "直播中";
    case 2:
      return "未开始";
    case 3:
      return "已结束";
  }

  return "未知";
}
