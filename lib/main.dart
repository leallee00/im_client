import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart' hide Storage;
import 'package:media_kit/media_kit.dart';
import 'package:path/path.dart';
import 'package:quliao/app.dart';
import 'package:quliao/delegate.dart';
import 'package:quliao/modules/conversation/bloc/im_conversation_bloc.dart';
import 'package:quliao/modules/conversation/repository/im_conversation_repository.dart';
import 'package:quliao/pages/windows/client/window_client.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/utils/log/manager.dart';

// import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:social_media_recorder/provider/sound_record_notifier.dart';
import 'dependencies.dart';
import 'models/Global.dart';
import 'dart:io';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:dart_vlc/dart_vlc.dart';

import 'utils/storage/index.dart';
import 'windows_adapter.dart';
// import 'package:sentry_flutter/sentry_flutter.dart';

// Sets a platform override for desktop to avoid exceptions. See
// https://flutter.cn/desktop#target-platform-override for more info.
void _enablePlatformOverrideForDesktop() {
  if (!kIsWeb && (Platform.isWindows || Platform.isLinux)) {
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  }
}

void main() async {
  sqfliteFfiInit();

  _enablePlatformOverrideForDesktop();

  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //   statusBarColor: Colors.transparent,
  //   statusBarIconBrightness: Brightness.dark,
  //   statusBarBrightness:
  //       !kIsWeb && Platform.isAndroid ? Brightness.dark : Brightness.light,
  //   systemNavigationBarColor: Colors.white,
  //   systemNavigationBarDividerColor: Colors.transparent,
  //   systemNavigationBarIconBrightness: Brightness.dark,
  // ));

  WidgetsFlutterBinding.ensureInitialized();

  if (!kIsWeb && Platform.isAndroid) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );
  }

  if (Platform.isAndroid) {
    if (Platform.isAndroid) {
      var swAvailable = await AndroidWebViewFeature.isFeatureSupported(
        AndroidWebViewFeature.SERVICE_WORKER_BASIC_USAGE,
      );
      var swInterceptAvailable = await AndroidWebViewFeature.isFeatureSupported(
        AndroidWebViewFeature.SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST,
      );

      if (swAvailable && swInterceptAvailable) {
        final serviceWorkerController =
            AndroidServiceWorkerController.instance();

        await serviceWorkerController.setServiceWorkerClient(
          AndroidServiceWorkerClient(
            shouldInterceptRequest: (request) async {
              return null;
            },
          ),
        );
      }
    }
  }

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  if (Platform.isWindows || Platform.isMacOS) {
    MediaKit.ensureInitialized();
  }

  // WidgetsFlutterBinding.ensureInitialized();
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  SocialMediaFilePath.init();

  Bloc.observer = RhObserver();

  await Storage.instance.init();

  await LoggerManager().initLogger();

  if (WindowClient.instance.isPC()) {
    DartVLC.initialize();
    WindowClient.instance.setConfigWindow();

    WindowClient.instance.setupWindowLocalNotifier();
  }
  SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]).then(
    (_) {
      // runZonedGuarded(() async {
      //   await SentryFlutter.init((options) {
      //     options.dsn =
      //         'https://a9bf1fbfaf369d5e63fc4e0c61d72977@o4506011992195072.ingest.sentry.io/4506012070313984';
      //     options.tracesSampleRate = 1.0;
      //   });
      //
      // }, (error, stack) async {
      //   await Sentry.captureException(error, stackTrace: stack);
      // });
      Global.init().then((e) {
        runApp(
          MultiRepositoryProvider(
            providers: buildRepositories(),
            child: MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => ImConversationBloc(),
                ),
              ],
              child: const MyApp(),
            ),
          ),
        );
        // WindowsAdapter.setSize();
      });
    },
  );
}
