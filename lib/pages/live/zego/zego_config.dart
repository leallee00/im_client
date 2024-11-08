import 'dart:async';
import 'package:basic_utils/basic_utils.dart';
import 'package:quliao/pub/log.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';
import 'dart:math' show Random;

// import 'package:zego_express_engine/zego_express_engine.dart'; //show ZegoScenario;

class ZegoConfig {
  static final ZegoConfig instance = ZegoConfig._internal();

  int appID = 0;
  String appSign = "";
  bool isTestEnv = true;
  // ZegoScenario scenario = ZegoScenario.General;

  bool enablePlatformView = true;
//
  String userID = "";
  String userName = "";

  String roomID = "";
  String streamID = "";

  bool isPreviewMirror = false;
  bool isPublishMirror = true;

  bool enableHardwareEncoder = true;
  String version = "";

  ZegoConfig._internal() {
    // SharedPreferences.getInstance().then((config) {
    //   this.appID = config.getInt('appID') ?? 3057750868;
    //   this.appSign = config.getString('appSign') ??
    //       '5b069fd7e8acf73bfbdf427d3aa2e9495247733873716e502634bdfc31943091';
    //   this.isTestEnv = config.getBool('isTestEnv') ?? true;
    //   // this.scenario = ZegoScenario(config.getInt('scenario')) ?? ZegoScenario.General.index;
    //   var index = config.getInt('scenario') ?? ZegoScenario.General.index;
    //   if (index >= ZegoScenario.values.length) {
    //     log("未知类型，给个普通代替");
    //     index = ZegoScenario.General.index;
    //   }
    //   this.scenario = ZegoScenario.values[index];

    //   this.enablePlatformView = config.getBool('enablePlatformView') ?? false;

    //   this.userID = config.getString('userID') ??
    //       '${Platform.operatingSystem}-${new Random()
    //           .nextInt(9999999)
    //           .toString()}';
    //   this.userName = config.getString('userName') ?? 'user-$userID';

    //   this.roomID =
    //       config.getString('roomID') ?? "imtest${Random().nextInt(100)}";
    //   this.streamID = config.getString('streamID') ?? DateTime
    //       .now()
    //       .second
    //       .toString();

    //   this.isPreviewMirror = true;
    //   this.isPublishMirror = false;

    //   this.enableHardwareEncoder = false;

    //   log("zegoConfig = ${this.roomID}");
    //   this.enablePlatformView = false;
    // });
  }

  Future<void> saveConfig() async {
    //   SharedPreferences config = await SharedPreferences.getInstance();

    //   config.setInt('appID', this.appID);
    //   config.setString('appSign', this.appSign);
    //   config.setBool('isTestEnv', this.isTestEnv);
    //   config.setInt('scenario', this.scenario.index);

    //   config.setBool('enablePlatformView', this.enablePlatformView);

    //   config.setString('userID', this.userID);
    //   config.setString('userName', this.userName);

    //   config.setString('roomID', this.roomID);
    //   config.setString('streamID', this.streamID);
  }
}
