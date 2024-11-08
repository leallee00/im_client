import 'dart:async';
import 'dart:io';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart' hide Badge;
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:quliao/app.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/global/global_repository.dart';
import 'package:quliao/global/models/system_config.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/modules/contacts/contacts_page.dart';
import 'package:quliao/modules/contacts/contacts_page_controller.dart';
import 'package:quliao/modules/mine/mine_page.dart';
import 'package:quliao/modules/mine/mine_page_controller.dart';
import 'package:quliao/net/models.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/chat_index/chat_index.dart';
import 'package:quliao/pages/chat_index/msg_badger_widget.dart';
import 'package:quliao/pages/friend_list/friend_list_page.dart';
import 'package:quliao/pages/home/notification_dialog.dart';
import 'package:quliao/pages/home/update_dialog.dart';
import 'package:quliao/pages/mine/mine_info.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pb/pb_pub/comm.pbenum.dart';
import 'package:quliao/pb/pb_pub/service.pbenum.dart';
import 'package:quliao/pub/config.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/pub/log.dart';

import 'package:quliao/mywedgits/badger/badger.dart';
import 'package:quliao/pub/pub-def.dart';
import 'package:quliao/utils/cache.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/utils/oss_utils.dart';
import 'package:quliao/utils/permission.dart';
import 'package:quliao/utils/toast/toast.dart';
import 'package:quliao/widgets/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:quliao/widgets/dialog/dialog.dart';
import 'package:quliao/widgets/keep_alive_widget.dart';
import 'package:r_upgrade/r_upgrade.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:upgrader/upgrader.dart';
import '../auth/sign_in_screen.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart' as $uaa;

var toMainPage = 0.obs;

class MainPage extends StatefulWidget {
  static const name = "MainPage";

  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  final PageController _pageController = PageController();

  bool showFriendApplyBadge = false;

  late StreamSubscription<FriendApplyBus> applyStreamSub;

  final GlobalKey<FriendListPageStateState> friendListPageKey =
      GlobalKey<FriendListPageStateState>();

  Upgrader? upgrader;
  AppcastConfiguration? appCastConfiguration;

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
    applyStreamSub = eventBus.on<FriendApplyBus>().listen((event) {
      log("收到好友消息申请 ${event.showBadge}");
      setState(() {
        showFriendApplyBadge = event.showBadge;
      });
    });

    eventBus.on<NetState>().listen((event) {
      if (event.netState == NET_STATE.NET_STATE_AUTHED) {
        if (Cache.getInstance().endpoint?.isEmpty == true) {
          OssUtils.getOssConfig();
        }
        // _getRegistrationID();
      }
    });
    ever(toMainPage, (callback) {
      Get.until((route) => route.settings.name == MainPage.name);
      selectedIndex = 0;
    });
    _getSystemConfig();

    eventBus.on<NetState>().listen((event) async {
      LoggerManager().debug(
          'home page net state changed ========> ${event.toString()} manualSwitch: ${ConfigMgr().manualSwitch}');
      if (event.netState == NET_STATE.NET_STATE_INIT &&
          !ConfigMgr().manualSwitch) {
        await ConfigMgr().forceFetch();
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (AppUserInfo().imId != 0) {
        GlobalController.to.getContacts();
        _checkAppUpdate();
        _checkNewErrorInfo();
        _checkNotificationEnabled();
      }
    });
  }

  Future<void> _checkNewErrorInfo() async {
    await GlobalRepository().checkNewErrorInfo();
  }

  Future<void> _getSystemConfig() async {
    // if (AppUserInfo.instance.appId == 0) {
    //   return;
    // }
    try {
      final SystemConfig? systemConfig =
          await GlobalRepository().getSystemConfig(
        AppUserInfo.instance.appId,
      );
      if (systemConfig != null) {
        Cache.applyWith(systemConfig: systemConfig);
        GlobalController.to.systemConfig.value = systemConfig;
      } else {
        Cache.applyWith(systemConfig: SystemConfig());
        GlobalController.to.systemConfig.value = SystemConfig();
      }
    } catch (error) {
      LoggerManager().debug('error ======> $error');
    }
  }

  Future<void> _checkNotificationEnabled() async {
    final notificationEnabled = await jpush.isNotificationEnabled();
    if (!notificationEnabled) {
      // ignore: use_build_context_synchronously
      CustomDialog.showDialog<void>(
        context,
        barrierDismissible: false,
        builder: (context) {
          return const OpenNotificationDialog();
        },
      );
    }
  }

  @override
  void dispose() {
    log("home page 释放 applyStreamSub");
    applyStreamSub.cancel();
    super.dispose();
  }

  Future<void> _checkAppUpdate() async {
    final packageInfo = await PackageInfo.fromPlatform();
    final buildNumber = Int64(int.parse(packageInfo.buildNumber));
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final forceClearCacheBuildNumber = prefs.getInt('force_clear_cache') ?? 0;
    LoggerManager().debug('是否需要清理缓存 ------> $forceClearCacheBuildNumber');
    if (forceClearCacheBuildNumber >= buildNumber.toInt()) {
      LoggerManager().debug('--------- 开始清理缓存数据 ---------');
      await prefs.clear();
      await resetDb();
      AppUserInfo.instance.saveToSp();
      eventBus.fire(ReloadChatListData());
      LoggerManager().debug('--------- 缓存数据清理完成 ---------');
    }

    final checkAppUpdateReq = CheckVersionReq();
    checkAppUpdateReq.version = buildNumber;
    if (Platform.isAndroid) {
      checkAppUpdateReq.clientRunEnv = CLIENT_RUN_ENV_TYPE.ANDROID;
    } else if (Platform.isIOS) {
      checkAppUpdateReq.clientRunEnv = CLIENT_RUN_ENV_TYPE.IOS;
    } else if (Platform.isWindows) {
      checkAppUpdateReq.clientRunEnv = CLIENT_RUN_ENV_TYPE.WINDOWS;
    } else if (Platform.isMacOS) {
      checkAppUpdateReq.clientRunEnv = CLIENT_RUN_ENV_TYPE.MAKOS;
    } else if (Platform.isLinux) {
      checkAppUpdateReq.clientRunEnv = CLIENT_RUN_ENV_TYPE.LINUX;
    }
    var pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.commim_uaa,
    );
    if (Platform.isWindows || Platform.isMacOS) {
      pbCommData.srcClientType = CLIENT_TYPE.PC;
    } else {
      pbCommData.srcClientType = CLIENT_TYPE.PHONE;
    }
    RpcCallAppGateApi(
      "/pb_grpc_commim_uaa.UAA/CheckVersion",
      checkAppUpdateReq,
      pbCommData,
    ).then((value) async {
      var rsp = $uaa.CheckVersionRsp()..mergeFromBuffer(value.bodyBytes);
      LoggerManager().debug(
        'version info ===> latestVersion: ${rsp.latestVersion} '
        '--- needForcedUpdate: ${rsp.needForcedUpdate} '
        '--- needCleanCatchData: ${rsp.needCleanCatchData} '
        '--- 下载连接: ${rsp.url} '
        '--- 个更新内容: ${rsp.versionDesc}',
      );
      if (rsp.latestVersion > buildNumber) {
        if (rsp.needCleanCatchData) {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setInt('force_clear_cache', rsp.latestVersion.toInt());
        }
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          appCastConfiguration = AppcastConfiguration(
              url: rsp.url,
              supportedOS: ['android', 'ios', 'windows', 'macos', 'linux']);
          setState(() {
            upgrader = Upgrader(
                debugLogging: true,
                appcastConfig: appCastConfiguration,
                dialogStyle: UpgradeDialogStyle.material,
                debugDisplayAlways: true,
                canDismissDialog: !rsp.needForcedUpdate,
                showIgnore: !rsp.needForcedUpdate,
                showLater: !rsp.needForcedUpdate,
                minAppVersion:
                    '${rsp.needForcedUpdate ? rsp.latestVersion : 100}',
                messages: MyUpgraderMessages(
                  updateContent: rsp.versionDesc,
                  forceClearCache: rsp.needCleanCatchData,
                ),
                onUpdate: () {
                  if (Platform.isIOS) {
                    RUpgrade.upgradeFromAppStore(rsp.url);
                  } else if (Platform.isAndroid) {
                    _downloadApk(rsp);
                  }
                  return false;
                });
          });
          upgrader?.initialize();
          upgrader?.checkVersion(context: context);
        });
      }
    }).catchError((err) {
      LoggerManager().debug('check app update error ---> $err');
    });
  }

  Future<void> _downloadApk(CheckVersionRsp versionRsp) async {
    if (await _hasStoragePermission()) {
      if (context.mounted) {
        CustomDialog.showDialog<void>(
          context,
          barrierDismissible: !versionRsp.needForcedUpdate,
          builder: (context) {
            return DownloadApkDialog(
              versionRsp: versionRsp,
            );
          },
        );
      }
    }
  }

  Future<bool> _hasStoragePermission() async {
    return PermissionUtil.requestStoragePermission();
    // PermissionStatus status = await Permission.storage.status;
    // if (!status.isGranted) {
    //   status = await Permission.storage.request();
    //   return status.isGranted;
    // } else {
    //   return true;
    // }
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
    // if (AppUserInfo().imId != 0) {
    //   _checkAppUpdate();
    //   _checkNotificationEnabled();
    // }
  }

  @override
  Widget build(BuildContext context) {
    // log("主页state的消息数${state.newMsgCount}");
    Widget makeMsgIcon(bool actived) {
      return Stack(
        children: [
          Align(
            child: actived
                ? Icon(Icons.message,
                    color: Theme.of(context).colorScheme.primary,
                    size: Dimens.gap_dp22)
                : Icon(Icons.message, size: Dimens.gap_dp22),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: MsgBadgerWidget(
              key: Key('${AppUserInfo().imId}_totalMsg'),
              type: ENMsgCountType.totalMsg,
            ),
          ),
        ],
      );
    }

    // 防误触
    DateTime _lastPressedAt = DateTime(0); //上次点击时间
    final bottomItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: SizedBox(
          width: Dimens.gap_dp30,
          height: Dimens.gap_dp30,
          child: makeMsgIcon(false),
        ),
        activeIcon: SizedBox(
          width: Dimens.gap_dp30,
          height: Dimens.gap_dp30,
          child: makeMsgIcon(true),
        ),
        backgroundColor: Colors.white54,
        label: '消息',
      ),
      BottomNavigationBarItem(
        icon: Stack(
          children: [
            SizedBox(
              width: Dimens.gap_dp30,
              height: Dimens.gap_dp30,
              child: Icon(Icons.contacts, size: Dimens.gap_dp22),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: MsgBadgerWidget(
                key: Key('${AppUserInfo().imId}_friendList'),
                type: ENMsgCountType.friendList,
              ),
            ),
          ],
        ),
        activeIcon: Stack(
          children: [
            SizedBox(
              width: Dimens.gap_dp30,
              height: Dimens.gap_dp30,
              child: Icon(
                Icons.contacts,
                color: Theme.of(context).colorScheme.primary,
                size: Dimens.gap_dp22,
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: MsgBadgerWidget(
                key: Key('${AppUserInfo().imId}_friendList'),
                type: ENMsgCountType.friendList,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white54,
        label: '通讯录',
      ),
      BottomNavigationBarItem(
        icon: SizedBox(
          width: Dimens.gap_dp30,
          height: Dimens.gap_dp30,
          child: Icon(
            Icons.person,
            size: Dimens.gap_dp22,
          ),
        ),
        activeIcon: SizedBox(
          width: Dimens.gap_dp30,
          height: Dimens.gap_dp30,
          child: Icon(
            Icons.person,
            color: Theme.of(context).colorScheme.primary,
            size: Dimens.gap_dp22,
          ),
        ),
        backgroundColor: Colors.white54,
        label: '我',
      ),
    ];

    return WillPopScope(
      onWillPop: () async {
        if (DateTime.now().difference(_lastPressedAt) > Duration(seconds: 1)) {
          //两次点击间隔超过1秒则重新计时
          _lastPressedAt = DateTime.now();
          log("误触");
          return false;
        }
        log("真的想退出");
        return true;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: UpgradeAlert(
          upgrader: upgrader,
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  controller: _pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    ChatIndex(),
                    // FriendListPage(key: friendListPageKey),
                    const KeepAliveWidget(
                      child: ContactsPage(),
                    ),
                    const KeepAliveWidget(
                      child: MinePage(),
                    ),
                  ],
                ),
              ),
              CustomBottomNavigationBar(
                onTap: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                  _pageController.jumpToPage(index);
                  if (index == 1) {
                    final isRegistered =
                        Get.isRegistered<ContactsPageController>(
                      tag: 'contacts_page',
                    );
                    if (isRegistered) {
                      ContactsPageController.to.loadData();
                    }
                  } else if (index == 2) {
                    final isRegistered = Get.isRegistered<MinePageController>(
                      tag: 'mine_page',
                    );
                    if (isRegistered) {
                      // MinePageController.to.getWalletInfo();
                    }
                  }
                },
              ),
            ],
          ),
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   items: bottomItems,
        //   type: BottomNavigationBarType.fixed,
        //   currentIndex: selectedIndex,
        //   elevation: 2,
        //   backgroundColor: Theme.of(context).colorScheme.surface,
        //   selectedLabelStyle: TextStyle(
        //     color: Theme.of(context).colorScheme.primary,
        //   ),
        //   onTap: (index) {
        //     if (index == 1) {
        //       friendListPageKey.currentState?.updataListData(isFirst: true);
        //     }
        //
        //     setState(() {
        //       selectedIndex = index;
        //     });
        //
        //     _pageController.jumpToPage(index);
        //   },
        // ),
      ),
    );
  }
}
