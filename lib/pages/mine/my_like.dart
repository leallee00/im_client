// 圈子广场
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/community/hole/like_comments.dart';
import 'package:quliao/pages/community/hole/like_posts.dart';
import 'package:quliao/pb/pb_msg/community/community.pb.dart' as $pbCommunity;
import 'package:quliao/pb/pb_pub/service.pb.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:http/http.dart' as http;

class MyLike extends StatefulWidget {
  static const name = "MyLike";
  MyLike({super.key});
  @override
  MyLikeState createState() => new MyLikeState();
}

class GroupData {
  String name = "";
  List<$pbCommunity.Community> lstCommunity = <$pbCommunity.Community>[];
}

class MyLikeState extends State<MyLike> with SingleTickerProviderStateMixin {
  final _tabKey = ValueKey('tab');
  late TabController _innerTabController;

  void handleTabChange() {
    print(
        'Inner tab, previous: ${_innerTabController.previousIndex}, current: ${_innerTabController.index}');
    PageStorage.of(context)
        .writeState(context, _innerTabController.index, identifier: _tabKey);
  }

  @override
  void initState() {
    super.initState();

    int initialIndex =
        PageStorage.of(context).readState(context, identifier: _tabKey) ?? 0;
    _innerTabController =
        TabController(length: 2, vsync: this, initialIndex: initialIndex);
    _innerTabController.addListener(handleTabChange);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black54,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "我赞过的",
          style: TextStyle(color: Colors.black87),
        ),
        bottom: TabBar(
          controller: _innerTabController,
          tabs: const [
            Tab(
              child: Text('帖子'),
            ),
            Tab(
              child: Text('评论'),
            ),
          ],
          labelColor: Colors.lightBlue,
          unselectedLabelColor: Colors.black54,
          indicatorColor: Colors.lightBlueAccent,
          indicatorSize: TabBarIndicatorSize.label,
        ),
        toolbarHeight: 50,
      ),
      body: TabBarView(
        controller: _innerTabController,
        children: [
          LikePostsPage(),
          LikeCommentPage(),
          // Column(
          //   // mainAxisSize: MainAxisSize.max,
          //   children: [
          //     SizedBox(height: 180,),
          //     Image.asset(
          //       "images/t1.png",
          //       height: 150,
          //       width: 150,
          //       fit: BoxFit.cover,
          //     ),
          //     SizedBox(height: 10,),
          //     Text("你不赞我不赞，右友何时上推荐？", style: TextStyle(color: Colors.black26, fontSize: 12),),
          //   ],
          // ),
          // Column(
          //   // mainAxisSize: MainAxisSize.max,
          //   children: [
          //     SizedBox(height: 180,),
          //     Image.asset(
          //       "images/t1.png",
          //       height: 150,
          //       width: 150,
          //       fit: BoxFit.cover,
          //     ),
          //     SizedBox(height: 10,),
          //     Text("你不赞我不赞，右友何时上推荐？", style: TextStyle(color: Colors.black26, fontSize: 12),),
          //   ],
          // ),
        ],
      ),
    );
  }
}
