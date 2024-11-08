import 'dart:convert';
import 'dart:io';

import 'package:desktop_multi_window/desktop_multi_window.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_notifier/local_notifier.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/pages/mine/mine_info.dart';
import 'package:quliao/pages/windows/client/window_call_method.dart';
import 'package:quliao/pub/log.dart';
import 'package:window_manager/window_manager.dart';

class WindowClient {
  static WindowClient? _instance; // = WindowClient._internal();

  factory WindowClient() => _getInstance()!;

  static WindowClient get instance => _getInstance()!;

  /// 单例获取，每次调用返回同一个数据
  static WindowClient? _getInstance() {
    _instance ??= WindowClient._internal();
    return _instance;
  }

  // 聊天状态 0无 1 私聊 2群组
  int chatType = 0;
  FriendInfo finfo = FriendInfo();
  Int64 groupId = Int64(0);

  WindowClient._internal() {
    // 初始化
    // windowManager.addListener(this);
    DesktopMultiWindow.setMethodHandler(openWindowBlock);
  }

  Future<dynamic> openWindowBlock(MethodCall call, int fromWindowId) async {
    log("call method = ${call.method} fromWindowId = ${fromWindowId} arguments = ${call.arguments}");
    BuildContext context = call.arguments["pushContext"];
    if (call.method == WindowCallMethod.pushMineUserInfo) {
      // 跳转我的页面
      // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext ctx) {
      //   return MineUserInfo();
      // }));
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (BuildContext ctx) {
        return MineUserInfo();
      }), (route) => false);
    }
    return fromWindowId;
  }

  bool isPC() {
    if (Platform.isLinux || Platform.isWindows) {
      return true;
    }
    return false;
  }

  /// 打开新窗口
  Future<void> pushOpenWindow(
      String title, String message, BuildContext context,
      {Map<String, dynamic>? arguments}) async {
    arguments = arguments ?? {};
    arguments["pushContext"] = context;

    final window = await DesktopMultiWindow.createWindow(jsonEncode({
      'args1': message,
      'args2': 100,
      'args3': true,
      'bussiness': 'bussiness_test',
    }));

    window
      ..setFrame(const Offset(0, 0) & const Size(800, 600))
      ..center()
      ..setTitle(title)
      ..show();

    final result = await DesktopMultiWindow.invokeMethod(
        window.windowId, message, arguments);
    log("result = $result， ${window.windowId}, $message, $arguments");
  }

  // @override
  // void onWindowEvent(String eventName) {
  //   log('[WindowManager] onWindowEvent: $eventName');
  // }

  void setConfigWindow() async {
    WindowManager w = WindowManager.instance;
    // 必须加上这一行。
    await w.ensureInitialized();

    WindowOptions windowOptions = const WindowOptions(
      size: Size(800, 600),
      minimumSize: Size(800, 600),
      center: true,
      backgroundColor: Colors.transparent,
    );

    w.waitUntilReadyToShow(windowOptions, () async {
      await w.setBackgroundColor(Colors.transparent);
      await w.show();
      await w.focus();
    });
  }

  Future<void> setupWindowLocalNotifier() async {
    logDebug('LocalNotification setupWindowLocalNotifier');
    await localNotifier.setup(
      appName: 'uc',
      shortcutPolicy: ShortcutPolicy.requireCreate,
    );
  }

// ignore: slash_for_doc_comments
/**
    String? identifier：用来当做通用唯一识别码
required String title：发送通知的标题，一般是软件名称
String? subtitle：发送的通知内容的标题
String? body：发送的内容的主体
bool silent = false：在发送通知时是否静音
List<LocalNotificationAction>? actions：通知中显示的按钮
    */
  void showLocalBoard(String body, String msgSN, String title,
      {String? subtitle, bool silent = true}) {
    logDebug("LocalNotification - 本地消息面板 $body  $msgSN $subtitle");
    final notification = LocalNotification(
      identifier: msgSN,
      title: title,
      body: body,
      subtitle: subtitle,
      silent: silent, //在发送通知时是否静音
    );

    notification.onShow = () {
      logDebug('LocalNotification onShow ${notification.identifier}');
    };
    notification.onClose = (closeReason) {
      // Only supported on windows, other platforms closeReason is always unknown.
      switch (closeReason) {
        case LocalNotificationCloseReason.userCanceled:
          // do something
          break;
        case LocalNotificationCloseReason.timedOut:
          // do something
          break;
        default:
      }
      logDebug('LocalNotification onClose - $closeReason');
    };
    notification.onClick = () {
      logDebug('LocalNotification onClick ${notification.identifier}');
    };
    notification.onClickAction = (actionIndex) {
      logDebug(
          'LocalNotification onClickAction ${notification.identifier} - $actionIndex');
    };
    notification.show();
    Future.delayed(const Duration(milliseconds: 500), () {
      notification.close();
    });
  }
}
