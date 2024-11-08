import 'package:flutter/material.dart';
import 'package:fixnum/fixnum.dart';
import 'package:quliao/db/obox/model/group_model.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/modules/contacts/friend/add/add_friend_page.dart';
import 'package:quliao/modules/contacts/friend/new/new_friend_page.dart';
import 'package:quliao/modules/index/pages/signin/signin_page.dart';
import 'package:quliao/modules/mine/pages/feedback/feedback_page.dart';
import 'package:quliao/modules/mine/pages/qrcode/mine_qrcode_page.dart';
import 'package:quliao/pages/auth/sign_in_screen.dart';
import 'package:quliao/pages/chat_group/group_main.dart';
import 'package:quliao/pages/chat_group/group_create.dart';
import 'package:quliao/pages/chat_group/group_info.dart';
import 'package:quliao/pages/chat_index/chat_index.dart';
import 'package:quliao/pages/chat_private/call.dart';
import 'package:quliao/pages/chat_private/chat.dart';
import 'package:quliao/pages/chat_private/private.dart';
import 'package:quliao/pages/chat_group/group_list.dart';

// import 'package:quliao/pages/chat_list/chat_list_page_old.dart';
import 'package:quliao/pages/commPage/commPage.dart';
import 'package:quliao/pages/commPage/logSet.dart';
import 'package:quliao/pages/community/chose_communities.dart';
import 'package:quliao/pages/community/communities.dart';
import 'package:quliao/pages/community/friends_communities.dart';
import 'package:quliao/pages/community/home.dart';
import 'package:quliao/pages/community/member/members.dart';
import 'package:quliao/pages/dbopt/dbopt_page.dart';
import 'package:quliao/pages/friend/add_friend.dart';
import 'package:quliao/pages/friend/friend_info.dart';
import 'package:quliao/pages/friend/friend_info_set.dart';
import 'package:quliao/pages/friend/new_friend.dart';
import 'package:quliao/pages/friend/search.dart';
import 'package:quliao/pages/friend_list/friend_list_page.dart';
import 'package:quliao/pages/func_test_list/func_test_list_page.dart';
import 'package:quliao/pages/live/room_list/room_list_page.dart';
import 'package:quliao/pages/login/change_test_user.dart';
import 'package:quliao/pages/login/login_page.dart';
import 'package:quliao/pages/home/home_page.dart';
import 'package:quliao/pages/mine/my_collection.dart';
import 'package:quliao/pages/mine/my_comment.dart';
import 'package:quliao/pages/mine/my_community.dart';
import 'package:quliao/pages/mine/my_like.dart';
import 'package:quliao/pages/mine/my_qrcode.dart';
import 'package:quliao/pages/mine/my_watch.dart';
import 'package:quliao/pages/system/service_notify.dart';
import 'package:quliao/pages/windows/home/window_home.dart';
import 'package:quliao/pb/pb_msg/call_scene/call_scene.pb.dart';
import 'package:quliao/pages/sugget/gripesugget_list.dart';

import 'base/comm_err_page.dart';
import 'models/user/friendInfo.dart';
import 'net/net_state_view.dart';

class MYRouter {
  // 初始页面
  static const String initialRoute = MainPage.name;

  static const String initialWindowsRoute = WindowHomePage.name;

  // 鉴权入口，生成需要鉴权的页面入口
  static RouteFactory generateRoute = (RouteSettings settings) {
    // 在此统一鉴权，如果没有通过就跳入登录界面
    final Function pageContentBuilder = routersPub[settings.name] as Function;
    if (pageContentBuilder != null) {
      if (settings.arguments != null) {
        return MaterialPageRoute(
            builder: (context) =>
                pageContentBuilder(context, arguments: settings.arguments));
      } else {
        return MaterialPageRoute(
            builder: (context) => pageContentBuilder(context));
      }
    }

    return MaterialPageRoute(builder: (context) {
      return CommErrPage404();
    });
  };

  // 无效页面入口
  static RouteFactory unknownRoute = (RouteSettings settings) {
    return MaterialPageRoute(builder: (context) {
      return CommErrPage404();
    });
  };

  // 需要鉴权的路由都放这里
  static final Map<String, WidgetBuilder> routersNeedAuth = {
    Echo.name: (context, {arguments}) => const Echo(text: "hello world"),
  };

  // 不需要鉴权的路由, 最终会注册到app的route里面，直接打开
  static final Map<String, WidgetBuilder> routersPub = {
    SignInScreen.name: (BuildContext context) => SignInPage(),
    // SignInScreen.name: (BuildContext context) => SignInScreen(),
    DBOptPage.name: (BuildContext context) => DBOptPage(),
    RoomListPage.name: (BuildContext context) => RoomListPage(),
    MainPage.name: (BuildContext context) => MainPage(),
    WindowHomePage.name: (BuildContext context) => WindowHomePage(),
    FriendListPage.name: (BuildContext context) => FriendListPage(),
    // ChatListPage.name:(BuildContext context)=>ChatListPage(),
    NetStateViewPage.name: (BuildContext context) => NetStateViewPage(),
    LoginPage.name: (BuildContext context) => LoginPage(),
    ChangeTestUserPage.name: (BuildContext context) => ChangeTestUserPage(),
    FuncTestListPage.name: (BuildContext context) => FuncTestListPage(),
    ComplaintSuggetPage.name: (BuildContext context) => FeedbackPage(),
    MyQRCode.name: (BuildContext context) => MineQRCodePage(),
    ChatIndex.name: (BuildContext context) => ChatIndex(),
    ChatPrivate.name: (BuildContext context) => ChatPrivate(
          finfo: ModalRoute.of(context)?.settings.arguments as FriendInfo,
        ),
    ChatGroup.name: (BuildContext context) => ChatGroup(
          groupId: ModalRoute.of(context)?.settings.arguments as Int64,
        ),
    // "ChatRoom":(BuildContext context) =>ChatRoom(anchorId: ModalRoute.of(context).settings.arguments),
    LogSet.name: (BuildContext context) => LogSet(),
    CallPage.name: (BuildContext context) => CallPage(
          callType: (ModalRoute.of(context)?.settings.arguments
                  as CallPageInputParams)
              .callType,
          caller: (ModalRoute.of(context)?.settings.arguments
                  as CallPageInputParams)
              .caller,
          callee: (ModalRoute.of(context)?.settings.arguments
                  as CallPageInputParams)
              .callee,
        ),
    GroupCreate.name: (BuildContext context) => GroupCreate(
          memberList:
              ModalRoute.of(context)?.settings.arguments as List<FriendInfo>,
          groupId: 0,
        ),
    GroupInfoPage.name: (BuildContext context) => GroupInfoPage(
          ginfo: ModalRoute.of(context)?.settings.arguments as GroupModel,
        ),
    GroupListPage.name: (BuildContext context) => GroupListPage(),

    AddFriend.name: (BuildContext context) => AddFriendPage(),
    NewFriend.name: (BuildContext context) => NewFriendPage(),
    // FriendInfoV.name: (BuildContext context) => FriendInfoV(
    //     finfo: ModalRoute.of(context)?.settings.arguments as FriendInfo),
    FriendInfoSet.name: (BuildContext context) => FriendInfoSet(
        finfo: ModalRoute.of(context)?.settings.arguments as FriendInfo),
    SearchFriend.name: (BuildContext context) => SearchFriend(),

    CommunityHome.name: (BuildContext context) => CommunityHome(),
    ServiceNotifyPage.name: (BuildContext context) => ServiceNotifyPage(),
    CommunitiesSquare.name: (BuildContext context) => CommunitiesSquare(),
    ChoseCommunitiesSquare.name: (BuildContext context) =>
        ChoseCommunitiesSquare(),
    FriendsCommunities.name: (BuildContext context) => FriendsCommunities(),
    MyComment.name: (BuildContext context) => MyComment(),
    MyLike.name: (BuildContext context) => MyLike(),
    MyCollection.name: (BuildContext context) => MyCollection(),
    MyCommunity.name: (BuildContext context) => MyCommunity(),
    MyWatch.name: (BuildContext context) => MyWatch(),
    Members.name: (BuildContext context) => Members(),
  };
}
