// 新的朋友列表
// import 'package:desktop_multi_window/desktop_multi_window.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/config/images.dart';
import 'package:quliao/config/size_extension.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/global/controller/unread_message_controller.dart';

// import 'package:quliao/main.dart';
import 'package:quliao/models/relation/follow.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/models/user/userinfo.dart';
import 'package:quliao/mywedgits/badger/badger.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/auth/sign_in_screen.dart';
import 'package:quliao/pages/community/cards/post_card.dart';
import 'package:quliao/pages/community/pub.dart';

// import 'package:quliao/pages/login/signin_page.dart';
// import 'package:quliao/pages/mine/my_collection.dart';
// import 'package:quliao/pages/mine/my_comment.dart';
// import 'package:quliao/pages/mine/my_community.dart';
// import 'package:quliao/pages/mine/my_like.dart';
// import 'package:quliao/pages/mine/my_watch.dart';
import 'package:quliao/pages/mine/myinfo.dart';
import 'package:quliao/pages/mine/setup.dart';
import 'package:quliao/pages/windows/client/window_client.dart';
import 'package:quliao/pb/pb_msg/community/community.pb.dart' as $pbCommunity;
import 'package:quliao/pb/pb_pub/service.pb.dart';
import 'package:quliao/pub/custom_alert.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/widgets/rh_extended_image.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../base/scan.dart';
import '../../models/user/friendInfo.dart';
import '../../net/net_state_view.dart';
import '../../pub/func.dart';
import '../../widgets/dialog/dialog.dart';
import '../chat_index/conversation_avatar.dart';
import '../chat_private/flyer_chat/test_page.dart';
import '../func_test_list/func_test_list_page.dart';
import '../sugget/gripesugget_list.dart';
import '../windows/comm_dialog.dart';
import 'clear_info_alertview.dart';
import 'my_qrcode.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart' as $uaa;

class MineUserInfo extends StatefulWidget {
  MineUserInfo({super.key});

  @override
  MineUserInfoState createState() => new MineUserInfoState();
}

class MineUserInfoState extends State<MineUserInfo>
    with AutomaticKeepAliveClientMixin {
  String like = "0";
  String follow = "0";
  String follower = "0";

  @override
  void initState() {
    super.initState();
    loadInfo();
    eventBus.on<UserSourceVersionChanged>().listen((event) {
      setState(() {});
    });
    fetchUserInfo();
  }

  Future<void> fetchUserInfo() async {
    var req = $uaa.UserInfoReq();
    RpcCallAppGateApi(
      "/pb_grpc_commim_uaa.UAA/UserInfo",
      req,
      MakePBCommData(
        aimId: Int64(AppUserInfo.instance.imId),
        toService: Service.commim_uaa,
      ),
    ).then((value) {
      var rsp = $uaa.UserInfoRsp()..mergeFromBuffer(value.bodyBytes);
      LoggerManager().debug(
          'username: ${rsp.info.username} email: ${rsp.info.email} freeAddMeFriend: ${rsp.info.freeAddMeFriend} phone: ${rsp.info.phone}');
      AppUserInfo().freeAddMeFriend = rsp.info.freeAddMeFriend;
      AppUserInfo.instance.saveToSp();
      setState(() {});
    });
  }

  // 获取点赞关注相关信息
  Future<void> loadInfo() async {
    var req = $pbCommunity.UserInfoReq();
    req.userId = Int64(AppUserInfo.instance.imId);
    RpcCallImOuterApi(
            "/pb_grpc_community.Community/UserInfo",
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

      // 更新一下
      var rsp = $pbCommunity.UserInfoRsp();

      rsp.mergeFromBuffer(response.bodyBytes);

      like = rsp.like;
      follow = rsp.follow;
      follower = rsp.follower;
      follower = rsp.follower;

      setState(() {});
    });
  }

  double getScreenWidthPx() {
    return MediaQuery.of(context).size.width.toInt() *
        MediaQuery.of(context).devicePixelRatio;
  }

  double getScreenHeightPx() {
    return (MediaQuery.of(context).size.height).toInt() *
        MediaQuery.of(context).devicePixelRatio;
  }

  bool get _isLogin => AppUserInfo.instance.imId != 0;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final hideSign =
        GlobalController.to.systemConfig.value?.hideUserSign == true;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (_isLogin)
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: hideSign ? Dimens.gap_dp10 * 27 : Dimens.gap_dp30 * 10,
                child: Stack(
                  children: [
                    ConversationAvatar(
                      size: double.infinity,
                      url: AppUserInfo.instance.appAvatar,
                      name: (AppUserInfo.instance.nickName.isNotEmpty
                          ? AppUserInfo.instance.nickName
                          : "${AppUserInfo.instance.imId}"),
                      showName: false,
                    ),
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color(0x40000000),
                      ),
                      padding: EdgeInsets.only(
                        left: Dimens.gap_dp30,
                        top: Dimens.gap_dp10 * 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            child: ConversationAvatar(
                              size: Dimens.gap_dp10 * 7,
                              url: AppUserInfo.instance.appAvatar,
                              name: (AppUserInfo.instance.nickName.isNotEmpty
                                  ? AppUserInfo.instance.nickName
                                  : "${AppUserInfo.instance.imId}"),
                            ),
                            onTap: () async {
                              if (Dimens.isDesktop()) {
                                MyAlertDialog().show(child: MyInfo());
                                return;
                              }

                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return MyInfo();
                                  },
                                ),
                              );
                              setState(() {});
                            },
                          ),

                          /// nickname
                          if (AppUserInfo.instance.nickName.isNotEmpty)
                            Padding(
                              padding: EdgeInsets.only(top: Dimens.gap_dp10),
                              child: Text(
                                AppUserInfo.instance.nickName,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  shadows: [
                                    Shadow(
                                      color: Colors.black,
                                      blurRadius: 5,
                                    ),
                                  ],
                                ),
                              ),
                            ),

                          /// user id
                          Padding(
                            padding: EdgeInsets.only(top: Dimens.gap_dp10),
                            child: Row(
                              children: [
                                Text(
                                  "ID: ${AppUserInfo().imId.toString()}",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    shadows: [
                                      Shadow(
                                        color: Colors.black,
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                ),
                                Gaps.hGap4,

                                /// gender
                                Container(
                                  padding: EdgeInsets.all(Dimens.gap_dp2),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppUserInfo.instance.gender == 1
                                        ? Theme.of(context).colorScheme.primary
                                        : Colors.redAccent,
                                  ),
                                  alignment: Alignment.center,
                                  child: Icon(
                                    AppUserInfo.instance.gender == 1
                                        ? Icons.male
                                        : Icons.female,
                                    size: Dimens.gap_dp10,
                                    color:
                                        Theme.of(context).colorScheme.surface,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          if (AppUserInfo.instance.userName.isNotEmpty)
                            Padding(
                              padding: EdgeInsets.only(top: Dimens.gap_dp10),
                              child: Text(
                                '账号: ${AppUserInfo.instance.userName}',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  shadows: [
                                    Shadow(
                                      color: Colors.black,
                                      blurRadius: 5,
                                    ),
                                  ],
                                ),
                              ),
                            ),

                          if (!hideSign)

                            /// 个性签名
                            Padding(
                              padding: EdgeInsets.only(top: Dimens.gap_dp10),
                              child: Text(
                                AppUserInfo.instance.sign.isNotEmpty
                                    ? AppUserInfo.instance.sign
                                    : '暂无个性签名',
                                style: TextStyle(
                                  fontSize: Dimens.font_sp12,
                                  color: Theme.of(context).colorScheme.surface,
                                ),
                              ),
                            )
                        ],
                      ),
                    ),
                    Positioned(
                      child: Container(
                        padding: EdgeInsets.only(
                          left: Dimens.gap_dp20,
                          top: Dimens.gap_dp10,
                        ),
                        height: Dimens.gap_dp10 * 10,
                        child: NetStateViewPage(),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: EdgeInsets.only(
                          right: Dimens.gap_dp10,
                          top: Dimens.gap_dp40,
                        ),
                        child: IconButton(
                          onPressed: () async {
                            if (Dimens.isDesktop()) {
                              MyAlertDialog().show(child: Setup());
                              return;
                            }
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return Setup();
                                },
                              ),
                            );
                            setState(() {});
                          },
                          icon: Icon(
                            Icons.settings,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          splashRadius: Dimens.gap_dp20,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            else
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: Dimens.gap_dp30 * 10,
                child: Stack(
                  children: [
                    RHExtendedImage.asset(
                      Images.imgLogin.keyName,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: TextButton(
                        child: const Text(
                          "登录/注册",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            decoration: TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.solid,
                            decorationThickness: 1,
                          ),
                        ),
                        onPressed: () async {
                          await Navigator.of(context)
                              .pushNamed(SignInScreen.name);
                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
              ),
            // Container(
            //   width: double.infinity,
            //   height: Dimens.gap_dp1 / 2,
            //   color: Theme.of(context).dividerColor,
            // ),
            // ListTile(
            //   title: const Text("消息免打扰"),
            //   trailing: Switch(
            //     value: AppUserInfo().msgDisturb,
            //     onChanged: (value) {
            //       AppUserInfo().msgDisturb = value;
            //       AppUserInfo().saveToSp();
            //       setState(() {});
            //     },
            //   ),
            //   contentPadding: EdgeInsets.symmetric(
            //     vertical: Dimens.gap_dp2,
            //     horizontal: Dimens.gap_dp20,
            //   ),
            // ),
            // Container(
            //   width: double.infinity,
            //   height: Dimens.gap_dp1 / 2,
            //   color: Theme.of(context).dividerColor,
            //   margin: EdgeInsets.only(left: Dimens.gap_dp20),
            // ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: const Text("是否开启好友验证"),
                  trailing: Switch(
                    value: !AppUserInfo().freeAddMeFriend,
                    onChanged: (value) {
                      final freeAddMeFriend = !value;
                      var userInfo = $uaa.UserInfo()
                        ..freeAddMeFriend = freeAddMeFriend;
                      AppUserInfo.instance
                          .ModifyField(userInfo, "freeAddMeFriend")
                          .then((value) {
                        setState(() {});
                      });
                    },
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: Dimens.gap_dp2,
                    horizontal: Dimens.gap_dp20,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.w, bottom: 15),
                  child: Text(
                    AppUserInfo().freeAddMeFriend ? '已关闭好友申请验证' : '已开启好友申请验证',
                    style: const TextStyle(color: Colors.red, fontSize: 10),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: Dimens.gap_dp1 / 2,
                  color: Theme.of(context).dividerColor,
                  margin: EdgeInsets.only(left: Dimens.gap_dp20),
                ),
              ],
            ),
            ListTile(
              title: const Text("清理缓存"),
              trailing: const Icon(Icons.cleaning_services_rounded),
              onTap: () {
                CustomDialog.showDialog<void>(
                  context,
                  barrierDismissible: false,
                  builder: (context) {
                    return ClearInfoAlertView(
                      onCancel: () {
                        print('取消了');
                      },
                      callback: () async {
                        showToast("清理数据..");
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        prefs.clear();
                        AppUserInfo.instance.saveToSp();
                        resetDb().then((value) {
                          showToast("清理完成");
                          eventBus.fire(ReloadChatListData());
                          UnReadMessageController.to.clearUnReadMsgCount(
                            type: ENMsgCountType.totalMsg,
                          );
                        });
                      },
                    );
                  },
                );
              },
              contentPadding: EdgeInsets.symmetric(
                vertical: Dimens.gap_dp2,
                horizontal: Dimens.gap_dp20,
              ),
            ),
            Container(
              width: double.infinity,
              height: Dimens.gap_dp1 / 2,
              color: Theme.of(context).dividerColor,
              margin: EdgeInsets.only(left: Dimens.gap_dp20),
            ),
            ListTile(
              title: const Text("投诉建议"),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                if (Dimens.isDesktop()) {
                  MyAlertDialog().show(child: ComplaintSuggetPage());
                  return;
                }
                Navigator.pushNamed(context, ComplaintSuggetPage.name);
              },
              contentPadding: EdgeInsets.symmetric(
                vertical: Dimens.gap_dp2,
                horizontal: Dimens.gap_dp20,
              ),
            ),
            Container(
              width: double.infinity,
              height: Dimens.gap_dp1 / 2,
              color: Theme.of(context).dividerColor,
              margin: EdgeInsets.only(left: Dimens.gap_dp20),
            ),
            ListTile(
              title: const Text("我的二维码"),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                if (Dimens.isDesktop()) {
                  MyAlertDialog().show(child: MyQRCode());
                  return;
                }
                Navigator.pushNamed(context, MyQRCode.name);
              },
              contentPadding: EdgeInsets.symmetric(
                vertical: Dimens.gap_dp2,
                horizontal: Dimens.gap_dp20,
              ),
            ),
            // Container(
            //   width: double.infinity,
            //   height: Dimens.gap_dp1 / 2,
            //   color: Theme.of(context).dividerColor,
            //   margin: EdgeInsets.only(left: Dimens.gap_dp20),
            // ),
            // ListTile(
            //   title: const Text("扫码加好友"),
            //   trailing: const Icon(Icons.chevron_right),
            //   onTap: () async {
            //     if (Dimens.isDesktop()) {
            //       MyAlertDialog().show(child: ScanCodePage(title: "添加好友"));
            //       return;
            //     }
            //     var code = await Navigator.push(context,
            //         MaterialPageRoute(builder: (context) {
            //       return ScanCodePage(title: "添加好友");
            //     }));
            //   },
            //   contentPadding: EdgeInsets.symmetric(
            //     vertical: Dimens.gap_dp2,
            //     horizontal: Dimens.gap_dp20,
            //   ),
            // ),
            if (GlobalController.to.systemConfig.value?.emailLogin == true)
            ListTile(
              title: const Text("uc小秘书"),
              trailing: const Icon(Icons.chevron_right),
              onTap: () async {
                FriendInfo friendInfo = FriendInfo();
                friendInfo.LoadFriendData(
                  10001,
                ).then((value) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext ctx) {
                        return ChatPage(
                          finfo: friendInfo,
                        );
                      },
                    ),
                  );
                });
              },
              contentPadding: EdgeInsets.symmetric(
                vertical: Dimens.gap_dp2,
                horizontal: Dimens.gap_dp20,
              ),
            ),
            Offstage(
              // account
              offstage: const bool.fromEnvironment("dart.vm.product"),
              child: Column(
                children: [
                  SizedBox(
                    child: Container(
                      height: Dimens.gap_dp10,
                      color: const Color(0xFFF7F7F7),
                    ),
                  ),
                  ListTile(
                    title: const Text("测试专用->点击进入功能列表"),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {
                      // log("测试");
                      Navigator.pushNamed(context, FuncTestListPage.name);
                    },
                    contentPadding: EdgeInsets.symmetric(
                      vertical: Dimens.gap_dp2,
                      horizontal: Dimens.gap_dp20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 页面列表
  // ...
  // 帖子
  List<$pbCommunity.Post> lstPost = List<$pbCommunity.Post>.empty();
  ScrollController postScrollController = ScrollController();

  Widget BuildPostList(BuildContext context, int index) {
    return PostCard(
        lstPost[index],
        RelationFollow.isFollowSync(lstPost[index].userId)!,
        OptBuildType.PostSummary); //Container(child: Text("test"),);
  }

  // 评论
  List<$pbCommunity.Comment> lstComment =
      List<$pbCommunity.Comment>.empty(); //<$pbCommunity.Comment>();
  ScrollController commentScrollController = ScrollController();

  Widget BuildCommentList(BuildContext context, int index) {
    return Container(
      child: Text("test"),
    );
  }

  // 话题
  List<$pbCommunity.Topic> lstTopic = List<$pbCommunity.Topic>.empty();
  ScrollController topicScrollController = ScrollController();

  Widget BuildTopicList(BuildContext context, int index) {
    return Container(
      child: Text("test"),
    );
  }

  Widget TableBars() {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          primary: true,
          //为false的时候会影响leading，actions、titile组件，导致向上偏移
//           textTheme: TextTheme(//设置AppBar上面各种字体主题色
// //            title: TextStyle(color: Colors.red),
//               ),
          actionsIconTheme: IconThemeData(color: Colors.blue, opacity: 0.6),
          //设置导航右边图标的主题色，此时iconTheme对于右边图标颜色会失效
          iconTheme: IconThemeData(color: Colors.black, opacity: 0.6),
          //设置AppBar上面Icon的主题颜色
          // brightness: Brightness.dark,
          //设置导航条上面的状态栏显示字体颜色
          backgroundColor: Colors.white,
          //设置背景颜色
//          shape: CircleBorder(side: BorderSide(color: Colors.red, width: 5, style: BorderStyle.solid)),//设置appbar形状
//          automaticallyImplyLeading: true,//在leading为null的时候失效

//          bottom: PreferredSize(child: Text('data'), preferredSize: Size(30, 30)),//出现在导航条底部的按钮
          bottom: TabBar(
              onTap: (int index) {
                print('Selected......$index');
              },
              unselectedLabelColor: Colors.black87,
              //设置未选中时的字体颜色，tabs里面的字体样式优先级最高
              unselectedLabelStyle: TextStyle(fontSize: 16),
              //设置未选中时的字体样式，tabs里面的字体样式优先级最高
              labelColor: Colors.blue,
              //设置选中时的字体颜色，tabs里面的字体样式优先级最高
              labelStyle: TextStyle(fontSize: 18.0),
              //设置选中时的字体样式，tabs里面的字体样式优先级最高
              // isScrollable: true,//允许左右滚动
              indicatorColor: Colors.red,
              //选中下划线的颜色
              indicatorSize: TabBarIndicatorSize.label,
              //选中下划线的长度，label时跟文字内容长度一样，tab时跟一个Tab的长度一样
              indicatorWeight: 3.0,
              //选中下划线的高度，值越大高度越高，默认为2。0
              // indicator: BoxDecoration(),//用于设定选中状态下的展示样式
              tabs: [
                Tab(
                  // icon: Icon(Icons.directions_transit),
                  child: Text("帖子(${lstPost.length})"),
                ),
                Tab(
                  // icon: Icon(Icons.directions_transit),
                  child: Text("评论(${lstComment.length})"),
                ),
                Tab(
                  // icon: Icon(Icons.directions_transit),
                  child: Text("话题(${lstTopic.length})"),
                ),
              ]),
          // centerTitle: true,
          // title: Text('AppBar Demo'),
          toolbarHeight: 55,
          // leading: IconButton(
          //     icon: Icon(Icons.add),
          //     onPressed: (){
          //       print('add click....');
          //     }
          // ),
          // actions: <Widget>[
          //   IconButton(icon: Icon(Icons.search), onPressed: (){print('search....');}),
          //   IconButton(icon: Icon(Icons.history), onPressed: (){print('history....');}),
          // ],
        ),
        body: TabBarView(children: [
          ListView.builder(
            itemCount: lstPost.length,
            shrinkWrap: true,
            itemBuilder: BuildPostList,

            // 控制滚动
            scrollDirection: Axis.vertical,
            controller: postScrollController,
          ),

          //Icon(Icons.directions_transit),
          ListView.builder(
            itemCount: lstComment.length,
            shrinkWrap: true,
            itemBuilder: BuildCommentList,

            // 控制滚动
            scrollDirection: Axis.vertical,
            controller: commentScrollController,
          ),

          //Icon(Icons.directions_bike),
          ListView.builder(
            itemCount: lstTopic.length,
            shrinkWrap: true,
            itemBuilder: BuildTopicList,

            // 控制滚动
            scrollDirection: Axis.vertical,
            controller: topicScrollController,
          ),
        ]),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
