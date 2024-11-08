// 圈子广场
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quliao/pb/pb_msg/community/community.pb.dart' as $pbCommunity;

class MyWatch extends StatefulWidget {
  static const name = "MyWatch";
  MyWatch({super.key});
  @override
  MyWatchState createState() => new MyWatchState();
}

class GroupData {
  String name = "";
  List<$pbCommunity.Community> lstCommunity = <$pbCommunity.Community>[];
}

class MyWatchState extends State<MyWatch> with SingleTickerProviderStateMixin {
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
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "我的插眼",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          // IconButton(
          //   icon: Icon(Icons.settings),
          //   onPressed: () {
          //   // 打开设置
          //   //   Navigator.push(
          //   //     context, MaterialPageRoute(builder: (BuildContext context) {
          //   //       return CreateCommunity();
          //   //   }));
          //   },
          // ),
          TextButton(
            child: Text(
              "什么是插眼?",
              style: TextStyle(color: Colors.black54, fontSize: 12),
            ),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (ctx) {
                    return SimpleDialog(
                      // contentPadding: EdgeInsets.all(20),
                      insetPadding: EdgeInsets.all(70),
                      title: Text("插眼成功"),
                      titlePadding: EdgeInsets.fromLTRB(110, 20, 20, 0),
                      backgroundColor: Colors.white,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
                          child: Text(
                            "1.插眼是最右的特色功能，方便你后续查看帖子评论的最新进展哦~",
                            style:
                                TextStyle(fontSize: 14, color: Colors.black54),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
                          child: Text(
                            "2.你可以通过点击帖子右下角的插眼图标，或者评论\"某某眼\"来对帖子进行插眼。",
                            style:
                                TextStyle(fontSize: 14, color: Colors.black54),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                          child: Text(
                            "3.你插眼的内容可以在\"我的\"->\"插眼\"栏进行查询。",
                            style:
                                TextStyle(fontSize: 14, color: Colors.black54),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                            child: TextButton(
                              // color: Colors.blue,
                              // // minWidth: 150,
                              // highlightColor: Colors.blue[700],
                              // colorBrightness: Brightness.dark,
                              // splashColor: Colors.grey,
                              child: Text("我明白啦~"),
                              // shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            )),
                      ],
                    );
                  });
            },
          )
        ],
      ),
      body: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox(height: 180,),
            Image.asset(
              "images/t1.png",
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "去给帖子插个眼吧!",
              style: TextStyle(color: Colors.black26, fontSize: 12),
            ),
          ],
        )
      ]),
    );
  }
}
