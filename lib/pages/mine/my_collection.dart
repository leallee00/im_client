// 圈子广场
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quliao/pb/pb_msg/community/community.pb.dart' as $pbCommunity;

class MyCollection extends StatefulWidget {
  static const name = "MyCollection";
  MyCollection({super.key});
  @override
  MyCollectionState createState() => new MyCollectionState();
}

class GroupData {
  String name = "";
  List<$pbCommunity.Community> lstCommunity = <$pbCommunity.Community>[];
}

class MyCollectionState extends State<MyCollection>
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
  }

  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0x3000000),
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
          "我的收藏夹",
          style: TextStyle(color: Colors.black),
        ),
        // actions: [
        //   IconButton(
        //     icon: const Icon(
        //       Icons.add,
        //       color: Colors.black54,
        //     ),
        //     onPressed: () {
        //       // 打开设置
        //       //   Navigator.push(
        //       //     context, MaterialPageRoute(builder: (BuildContext context) {
        //       //       return CreateCommunity();
        //       //   }));
        //     },
        //   ),
        // ],
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
              "暂时没有收藏!",
              style: TextStyle(color: Colors.black26, fontSize: 12),
            ),
          ],
        )
      ]),
    );
  }
}
