import 'dart:async';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart' hide Badge;
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:quliao/best_flutter_ui_templates/custom_drawer/home_drawer.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/global/global_repository.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/models.dart';
import 'package:quliao/pages/auth/sign_in_screen.dart';
import 'package:quliao/pages/chat_index/conversation_avatar.dart';
import 'package:quliao/pages/chat_index/msg_badger_widget.dart';
import 'package:quliao/pages/friend_list/friend_list_page.dart';
import 'package:quliao/pages/mine/mine_info.dart';
import 'package:quliao/pages/windows/chat/desk_chat_page.dart';
import 'package:quliao/pages/windows/chat/navigation/desk_navigation_bar.dart';
import 'package:quliao/pages/windows/chat/window_chat.dart';
import 'package:quliao/pub/log.dart';

import 'package:quliao/mywedgits/badger/badger.dart';
import 'package:flutter_oss_aliyun/flutter_oss_aliyun.dart' as $oss;
import 'package:quliao/pub/pub-def.dart';
import 'package:quliao/utils/cache.dart';
import 'package:quliao/utils/oss_utils.dart';

import '../../home/home_page.dart';

class WindowHomePage extends StatefulWidget {
  static const name = "WindowHomePage";

  const WindowHomePage({super.key});

  @override
  WindowHomePageState createState() {
    return WindowHomePageState();
  }
}

class WindowHomePageState extends State<WindowHomePage> {
  static var windowChat = const DeskChatPage();
  static FriendListPage friendList = const FriendListPage();

  final PageController _controller = PageController();

  void _onDestinationSelected(int value) {
    _controller.jumpToPage(value);
  }

  Future<void> redirectLoginPage() async {
    if (AppUserInfo().imId == 0) {
      Navigator.of(context).pushNamedAndRemoveUntil(
        SignInScreen.name,
        (Route<dynamic> route) => false,
      );
    }
  }

  @override
  void initState() {
    super.initState();
    eventBus.on<NetState>().listen((event) {
      if (event.netState == NET_STATE.NET_STATE_AUTHED) {
        if (Cache.getInstance().endpoint?.isEmpty == true) {
          OssUtils.getOssConfig();
          return;
        }
        // _getRegistrationID();
      }
    });

    // eventBus.on<ReloadChatListData>().listen((event) {
    //   if (null != event.chatId) {
    //     _onDestinationSelected(0);
    //   }
    // });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    Future.delayed(const Duration(microseconds: 100)).whenComplete(() {
      redirectLoginPage();
    });
    Future.delayed(const Duration(microseconds: 1000)).whenComplete(() {
      FlutterNativeSplash.remove();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SizedBox(
          width: Dimens.gap_dp20 * 15,
          child: MineUserInfo(),
        ),
      ),
      body: Container(
        color: const Color(0xFF36425C),
        child: Row(
          children: [
            Column(
              children: [
                Gaps.vGap20,
                Builder(
                  builder: (context) {
                    return GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: const HomeUserAvatar(),
                    );
                  },
                ),
                DeskNavigationBar(
                  onTap: (int index) {
                    _controller.jumpToPage(index);
                  },
                ),
              ],
            ),
            Expanded(
              child: PageView(
                controller: _controller,
                children: [
                  windowChat,
                  friendList,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeUserAvatar extends StatefulWidget {
  const HomeUserAvatar({super.key});

  @override
  State<StatefulWidget> createState() => _HomeUserAvatarState();
}

class _HomeUserAvatarState extends State<HomeUserAvatar> {
  @override
  void initState() {
    super.initState();
    eventBus.on<UserSourceVersionChanged>().listen((event) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return ConversationAvatar(
      size: Dimens.gap_dp40,
      url: AppUserInfo.instance.appAvatar,
      name: AppUserInfo.instance.nickName.isNotEmpty
          ? AppUserInfo.instance.nickName
          : "${AppUserInfo.instance.imId}",
      showName: true,
    );
  }
}
