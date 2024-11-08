// 新的朋友列表
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quliao/pages/community/communities.dart';
import 'package:quliao/pages/community/hole/recommend.dart';
import 'package:quliao/pages/community/hole/video.dart';

import 'hole/follow.dart';
import 'hole/photo.dart';

class CommunityHome extends StatefulWidget {
  static const name = "CommunityHome";
  CommunityHome({super.key});
  @override
  CommunityHomeState createState() => new CommunityHomeState();
}

enum ListType {
  follow,
  recommend,
  video,
  photo,
  action,
}

class CommunityHomeState extends State<CommunityHome> {
  @override
  void initState() {
    log("into CommunityHomeState");
  }

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Color(0x3000000),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            "广场",
            style: TextStyle(color: Colors.black),
          ),
          bottom: TabBar(
            tabs: [
              const Tab(
                // icon: Icon(Icons.directions_transit),
                child: Text("推荐"),
              ),
              const Tab(
                // icon: Icon(Icons.directions_transit),
                child: Text("关注"),
              ),
              const Tab(
                // icon: Icon(Icons.directions_transit),
                child: Text("视频"),
              ),
              const Tab(
                // icon: Icon(Icons.directions_transit),
                child: Text("图文"),
              ),
              Tab(
                // icon: Icon(Icons.directions_transit),
                child: InkWell(
                  // child: Text("圈子广场"),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("圈子广场"),
                      // Container(
                      //   width: 100,
                      //   child: Text("圈子广场"),
                      // )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return CommunitiesSquare();
                    }));
                  },
                ),
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
          children: [
            RecommendPage(),
            FollowPage(),
            VideoPage(),
            PhotoPage(),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return CommunitiesSquare();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
