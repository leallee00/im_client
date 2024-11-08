// import 'dart:ffi';

// import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart' hide Page;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:jpush_flutter/jpush_flutter.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:oktoast/oktoast.dart';
import 'dart:io';
import 'package:quliao/routers.dart';
import 'package:quliao/themes/theme.dart';

import 'layout/adaptive.dart';
import 'utils/log/manager.dart';

final JPush jpush = JPush();
final GlobalKey<NavigatorState> topNavigatorkey = GlobalKey<NavigatorState>();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _initPlatformState();
    // ImController.to.init();
  }

  Future<void> _initPlatformState() async {
    jpush.addEventHandler(
      onReceiveNotification: (Map<String, dynamic> dataMap) async {
        LoggerManager().debug('jpush onReceiveNotification ---> $dataMap');
      },
      onReceiveMessage: (Map<String, dynamic> dataMap) async {
        LoggerManager().debug('jpush onReceiveMessage ---> $dataMap');
      },
      onReceiveNotificationAuthorization: (Map<String, dynamic> dataMap) async {
        LoggerManager().debug('jpush onReceiveNotificationAuthorization ---> $dataMap');
      },
      onNotifyMessageUnShow: (Map<String, dynamic> dataMap) async {
        LoggerManager().debug('jpush onNotifyMessageUnShow ---> $dataMap');
      },
      onInAppMessageShow: (Map<String, dynamic> dataMap) async {
        LoggerManager().debug('jpush onInAppMessageShow ---> $dataMap');
      },
      onInAppMessageClick: (Map<String, dynamic> dataMap) async {
        LoggerManager().debug('jpush onInAppMessageClick ---> $dataMap');
      },
      onOpenNotification: (Map<String, dynamic> dataMap) async {
        LoggerManager().debug('jpush onOpenNotification ---> $dataMap');
      },
      onConnected: (Map<String, dynamic> dataMap) async {
        LoggerManager().debug('jpush onConnected ---> $dataMap');
      },
    );
    jpush.setAuth();
    jpush.setup(
      appKey: '8ad8b7c8a05b216c08bb5d4b',
      channel: 'developer-default',
      production: false,
      debug: true,
    );
    jpush.applyPushAuthority(const NotificationSettingsIOS());
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: _designSize(context),
      useInheritedMediaQuery: true,
      builder: (_, Widget? child) {
        return OKToast(
          textPadding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 8,
          ),
          radius: 20,
          backgroundColor: Colors.black.withOpacity(0.6),
          textStyle: const TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
          child: Portal(
            child: RefreshConfiguration(
              headerBuilder: () => const ClassicHeader(
                refreshingIcon: CupertinoActivityIndicator(),
              ),
              footerBuilder: () => const ClassicFooter(
                loadingIcon: CupertinoActivityIndicator(),
                noDataText: '',
              ),
              hideFooterWhenNotFull: true,
              child: GetMaterialApp(
                navigatorKey: topNavigatorkey,
                title: "uc",
                // showPerformanceOverlay: true,
                debugShowCheckedModeBanner: false,
                // theme: ThemeData(
                //   // brightness: Brightness.light, //指定亮度主题，有白色/黑色两种可选。
                //   // primaryColor: Colors.blue[800], //这里我们选蓝色为基准色值。
                //   // // accentColor: Colors.lightBlue[100], //这里我们选浅蓝色为强调色值
                //   primarySwatch: Colors.blue,
                //   textTheme: AppTheme.textTheme,
                //   platform: TargetPlatform.iOS,
                // ),
                theme: AppTheme.light(),
                darkTheme: AppTheme.light(),
                themeMode: AppTheme.mode,
                routes: MYRouter.routersPub,
                initialRoute:
                    (Platform.isWindows || Platform.isLinux || Platform.isMacOS)
                        ? MYRouter.initialWindowsRoute
                        : MYRouter.initialRoute,
                navigatorObservers: <NavigatorObserver>[
                  FlutterSmartDialog.observer,
                ],
                onGenerateRoute: MYRouter.generateRoute,
                onUnknownRoute: MYRouter.unknownRoute,
                builder: FlutterSmartDialog.init(),
                localizationsDelegates: const [
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: const [
                  Locale('zh', 'CN'),
                ],
                // home: NavigationHomeScreen(),
              ),
            ),
          ),
        );
      },
    );
  }
}

class NoShadowScrollBehavior extends ScrollBehavior {
  Widget buildViewportChrome(
    BuildContext context,
    Widget child,
    AxisDirection axisDirection,
  ) {
    switch (getPlatform(context)) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return child;
      case TargetPlatform.android:
        return GlowingOverscrollIndicator(
          showLeading: false,
          showTrailing: false,
          axisDirection: axisDirection,
          color: Theme.of(context).colorScheme.primary,
          child: child,
        );
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return GlowingOverscrollIndicator(
          showLeading: false,
          showTrailing: false,
          axisDirection: axisDirection,
          color: Theme.of(context).colorScheme.primary,
          child: child,
        );
    }
  }
}

Size _designSize(BuildContext context) {
  Size size;
  switch (displayTypeOf(context)) {
    case DisplayType.mobile:
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
      size = const Size(375, 667);
      break;
    case DisplayType.desktop:
      SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
      size = const Size(1024, 768);
      break;
    case DisplayType.pad:
      SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);

      final mediaQuery = WidgetsBinding.instance.window;
      final width = mediaQuery.physicalSize.width;
      final height = mediaQuery.physicalSize.height;

      size = width > height ? const Size(1024, 768) : const Size(375, 667);

      break;
    default:
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
      size = const Size(375, 667);
  }

  return size;
}

// Widget createApp() {
//   var app = MaterialApp(
//     title: "来往",
//     debugShowCheckedModeBanner: false,
//     theme: ThemeData(
//       brightness: Brightness.light, //指定亮度主题，有白色/黑色两种可选。
//       primaryColor: Colors.blue[800], //这里我们选蓝色为基准色值。
//       // accentColor: Colors.lightBlue[100], //这里我们选浅蓝色为强调色值
//     ),
//     routes: MYRouter.routersPub,
//     initialRoute: MYRouter.initialRoute,
//     onGenerateRoute: MYRouter.generateRoute,
//     onUnknownRoute: MYRouter.unknownRoute,
//   );
//
//   // FlutterNativeSplash.remove();
//
//   return app;
// }
