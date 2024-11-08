// 我的帖子
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quliao/models/relation/follow.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/community/cards/post_card.dart';
import 'package:quliao/pages/community/chose_communities.dart';
import 'package:quliao/pages/community/create_community.dart';
import 'package:quliao/pages/community/pub.dart';
import 'package:quliao/pb/pb_msg/community/community.pb.dart' as $pbCommunity;
import 'package:quliao/pb/pb_pub/service.pb.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:http/http.dart' as http;
import 'package:quliao/pub/log.dart';

class MyCommunity extends StatefulWidget {
  static const name = "MyCommunity";
  MyCommunity({super.key});
  @override
  MyCommunityState createState() => new MyCommunityState();
}

class GroupData {
  String name = "";
  List<$pbCommunity.Community> lstCommunity = <$pbCommunity.Community>[];
}

class MyCommunityState extends State<MyCommunity>
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

    LoadUserPost();
  }

  Future<void> LoadUserPost({
    int offset = 0,
    int count = 20,
  }) async {
    var req = $pbCommunity.UserPostsReq();
    req.userId = Int64(AppUserInfo.instance.imId);
    req.offset = Int64(offset);
    req.count = Int64(count);
    log(req);
    RpcCallImOuterApi(
            "/pb_grpc_community.Community/UserPosts",
            req,
            MakePBCommData(
                aimId: Int64(AppUserInfo.instance.imId),
                toService: Service.community))
        .then((response) {
      if (response.statusCode != 200) {
        // 出错了
        // 处理错误
        log("query error ${response.body}");
        return;
      }

      // log("get UserPostsRsp: ${response.body}");
      // 更新一下
      var rsp = $pbCommunity.UserPostsRsp();

      rsp.mergeFromBuffer(response.bodyBytes);

      // log("get UserPostsRsp: ${rsp}");
      // log("load community post list ok");
      rsp.posts.forEach((element) {
        lstPost.add(element.clone());
      });
      lstPost = lstPost.toSet().toList();
      lstPost.sort((a, b) => a.createAt.compareTo(b.createAt));
      // log("get post len:${lstPost.length}");
      setState(() {});
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        tooltip: "发布文章",
        backgroundColor: Colors.blue,
        elevation: 0,
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
        onPressed: () {
          // 发布文章界面
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return ChoseCommunitiesSquare();
          }));
        },
      ),
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
          "我的帖子",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: lstPost.length == 0
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SizedBox(height: 180,),
                  Image.asset(
                    "images/t1.png",
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "求你发个评论吧!",
                    style: TextStyle(color: Colors.black26, fontSize: 12),
                  ),
                ],
              ),
            )
          : Column(
              children: [
                Expanded(
                    child: ListView.builder(
                        itemCount: lstPost.length,
                        itemBuilder: (BuildContext context, int index) {
                          return buildPostList(context, index);
                        }))
              ],
            ),
    );
  }

  List<$pbCommunity.Post> lstPost = <$pbCommunity.Post>[];
  ScrollController postScrollController = ScrollController();
  Widget buildPostList(BuildContext context, int index) {
    return PostCard(
        lstPost[index],
        RelationFollow.isFollowSync(lstPost[index].userId)!,
        OptBuildType.PostSummary); //Container(child: Text("test"),);
  }
}
