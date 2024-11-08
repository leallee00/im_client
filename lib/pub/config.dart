import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/global/models/end_point_config.dart';
import 'package:quliao/utils/http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:quliao/pb/pb_pub/service.pb.dart';
import '../models/user/myinfo.dart';
import '../net/socket.dart';
import '../pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import '../pb/pb_pub/comm.pb.dart';
import 'im_grpc_opt.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart' as $uaa;

var isTest = false;

class Config {
  String cfgAllocatorUrl = '';
  String urlUploadFile = '';
  String defaultGirlAvatar =
      "https://jiaoyousources.oss-cn-shenzhen.aliyuncs.com/im_chat_images/9504e77e-04b4-4831-87d2-fc482d4a3575.jpg";
  String defaultAvatar = "images/default_avatar.jpg";
  String cfgImInterApiUrl = ''; // 对内api地址，服务端使用，放在客户端只有测试才用
  String cfgImOutApiUrl = ''; // api_http im对外api地址，第三方和客户端使用
  String cfgAppGateApiHost = ''; // 通用IM后端提供的接口，用户信息和历史信息列表等非实时业务使用
  String cfgGrpcUrl = '';

  /// 参数签名secret,登录前使用，登录后用signSecret签名
  String initSecret = "9C168BCA26AFA2E404761A2FE43BF567";
  ENV_TYPE envType = ENV_TYPE.PROD_ALY;
  int appId = 10100;
  String secret =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjowLCJpbV91c2VyX2lkIjozMDM3MDIxOSwiYXBwX2lkIjoxMDEwMCwiYXBwX3VzZXJfaWQiOiIyMzgiLCJleHAiOjE3NTkzODYxNjIsImlhdCI6MTY3Mjk4NjE2MiwiaXNzIjoiWXpJTSIsImJ1c2luZXNzX2lkIjowfQ.oHTd-EPQjjnDf22hyRFLo5RNxmx_77BriVjE9eVJdfY";
  String LiveRoomHost = "https://119.23.70.232"; // 测试环境
  String LiveRoomListUri = "/Live/GetLiveList"; //data:{"page":1}

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cfgAllocatorUrl'] = cfgAllocatorUrl;
    map['urlUploadFile'] = urlUploadFile;
    map['defaultGirlAvatar'] = defaultGirlAvatar;
    map['defaultAvatar'] = defaultAvatar;
    map['cfgImInterApiUrl'] = cfgImInterApiUrl;
    map['cfgImOutApiUrl'] = cfgImOutApiUrl;
    map['cfgAppGateApiHost'] = cfgAppGateApiHost;
    map['cfgGrpcUrl'] = cfgGrpcUrl;
    map['initSecret'] = initSecret;
    map['appId'] = appId;
    map['secret'] = secret;
    map['LiveRoomHost'] = LiveRoomHost;
    map['LiveRoomListUri'] = LiveRoomListUri;
    return map;
  }
}

enum ENV_TYPE {
  DEV,
  PROD,
  PROD_AWS,
  PROD_ALY,
  COMM_IM_DEV,
  COMM_IM_DEV_PROXY, // 通过代理连接
}

// 网络管理
class ConfigMgr {
  /// //////////////////////////////////////////////////////////////////////////
  /// 单例方法 开始
  /// 单例实例
  static ConfigMgr? _instance;

  /// 构造函数重定向到instance
  factory ConfigMgr() => _getInstance()!;

  /// instance 重定向到_getInstance函数
  static ConfigMgr get instance => _getInstance()!;

  /// 初始化数据
  ConfigMgr._internal() {
    log("@@@@@@@@@@@@@@@@@@@@ _internal ");
    // loadFromSp(); // 到global里面，启动前初始化
  }

  /// 单例获取，每次调用返回同一个数据
  static ConfigMgr? _getInstance() {
    _instance ??= ConfigMgr._internal();
    return _instance;
  }

  /// 单例结束
  /// ///////////////////////////////////////////////////////////////////////////

  loadFromSp() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey("config_test")) {
      Map map = json.decode(prefs.getString("config_test").toString());
      config = Config();
      config?.cfgAllocatorUrl = map["cfgAllocatorUrl"];
      config?.urlUploadFile = map["urlUploadFile"];
      config?.cfgImInterApiUrl = map["cfgImInterApiUrl"];
      config?.cfgImOutApiUrl = map["cfgImOutApiUrl"];
      config?.cfgAppGateApiHost = map["cfgAppGateApiHost"];
      config?.cfgGrpcUrl = map["cfgGrpcUrl"];

      /// 参数签名secret,登录前使用，登录后用signSecret签名
      config?.initSecret =
          map["initSecret"] ?? "9C168BCA26AFA2E404761A2FE43BF567";
      config?.appId = map["appId"];
      config?.secret = map["secret"];
    } else {
      ENV_TYPE env = (prefs.getInt("config.env") == null
          ? ENV_TYPE.COMM_IM_DEV
          : ENV_TYPE.values[prefs.getInt("config.env")!]);
      log("---get sp env:${prefs.getInt("config.env")}  env=${env}");
      log("++++++++++++++++++++++++++use env :${env}");
      // SetEnv(env);
    }
    await ConfigMgr().getFastIpTest();
  }

  Future<ImEndPoint?> _getFastImEndPoint(List<ImEndPoint> list) async {
    ImEndPoint? imEndPointResult;

    imEndPointResult = await Future.any(() {
      var endPointList = <Future<ImEndPoint?>>[];
      for (final item in list) {
        endPointList.add(fetchData(item, url: item.cfgAppGateApiHost));
      }
      return endPointList;
    }());
    if (null != imEndPointResult) {
      if (imEndPointResult.score == -1) {
        list.removeWhere((element) => element.name == imEndPointResult!.name);
        imEndPointResult = await _getFastImEndPoint(list);
      }
    }
    return imEndPointResult;
    // int failedTime = 0;
    // for (final imEndPoint in list) {
    //   try {
    //     var rsp = await RpcCallAppGateNotApi(
    //       imEndPoint.cfgAppGateApiHost,
    //       "/pb_grpc_commim_uaa.UAA/CheckDelay",
    //       CheckDelayReq(),
    //       MakePBCommData(
    //         aimId: Int64(AppUserInfo.instance.imId),
    //         toService: Service.commim_uaa,
    //       ),
    //     );
    //     if (rsp.statusCode == 200) {
    //       imEndPointResult ??= imEndPoint;
    //     } else {
    //       failedTime++;
    //       if (failedTime == list.length) {
    //         return null;
    //       }
    //     }
    //   } catch (error) {
    //     failedTime++;
    //     if (failedTime == list.length) {
    //       return null;
    //     }
    //   }
    // }
    // return imEndPointResult;
  }

  Future<ImEndPoint?> _fetchEndPoint() async {
    try {
      var value = await RpcCallAppGateApi(
        "/pb_grpc_commim_uaa.UAA/FetchEndPoint",
        FetchEndPointReq(),
        PBCommData(),
      );
      var rsp = $uaa.FetchEndPointRsp()..mergeFromBuffer(value.bodyBytes);
      final endPointConfigList = <EndPointConfig>[];
      for (final item in rsp.endPoints) {
        final endPointConfig = EndPointConfig.fromImEndPoint(item);
        endPointConfigList.add(endPointConfig);
      }

      final configList = jsonEncode(endPointConfigList);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString("config_list", configList);

      ImEndPoint? imEndPoint = await _getFastImEndPoint(rsp.endPoints);
      return imEndPoint;
    } catch (error) {
      return null;
    }
  }

  Future<void> forceFetch() async {
    ImEndPoint? imEndPoint;
    imEndPoint = await _getFastImEndPoint(GlobalController.to.imEndPointList);
    if (null == imEndPoint) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final configListJson = prefs.getString("config_list");
      if (null != configListJson) {
        final configList = jsonDecode(configListJson);
        imEndPoint = await _getFastImEndPoint(configList);
      }
    }
    if (null != imEndPoint) {
      _saveConfigInfo(imEndPoint);
      _fetchEndPoint();
    }
    config = Config();
    if (null == imEndPoint) {
      return;
    }

    _saveConfigInfo(imEndPoint);
  }

  getFastIpTest() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final isFirst = null == prefs.getString("config_test") ||
        prefs.getString("config_test")!.isEmpty;
    ImEndPoint? imEndPoint;
    if (!isFirst) {
      final configListJson = prefs.getString("config_list");
      if (null != configListJson && configListJson.isNotEmpty) {
        final list = jsonDecode(configListJson);
        final configList = <EndPointConfig>[];
        for (final item in list) {
          configList.add(EndPointConfig.fromJson(item as Map<String, dynamic>));
        }
        final endPointList = <ImEndPoint>[];
        for (final item in configList) {
          endPointList.add(item.toImEndPoint(item));
        }
        imEndPoint = await _getFastImEndPoint(endPointList);
      } else {
        imEndPoint =
            await _getFastImEndPoint(GlobalController.to.imEndPointList);
      }
      _fetchEndPoint();
      // if (null == imEndPoint) {
      //   SharedPreferences prefs = await SharedPreferences.getInstance();
      //   final configListJson = prefs.getString("config_list");
      //   if (null != configListJson) {
      //     final configList = jsonDecode(configListJson);
      //     LoggerManager().debug('config getFastIpTest configList ======> $configList');
      //   }
      // }
    } else {
      imEndPoint = await _getFastImEndPoint(GlobalController.to.imEndPointList);
      if (null != imEndPoint) {
        _saveConfigInfo(imEndPoint);
        _fetchEndPoint();
      }
    }

    config = Config();
    if (null == imEndPoint) {
      return;
    }

    _saveConfigInfo(imEndPoint);
  }

  Future<void> _saveConfigInfo(ImEndPoint imEndPoint) async {
    config ??= Config();
    config?.cfgAllocatorUrl =
        "${imEndPoint.cfgAllocatorUrl}/Allocater/GetTcpGate";
    config?.urlUploadFile = imEndPoint.urlUploadFile;
    config?.cfgImInterApiUrl = imEndPoint.cfgImInterApiUrl;
    config?.cfgImOutApiUrl = imEndPoint.cfgImOutApiUrl;
    config?.cfgAppGateApiHost = imEndPoint.cfgAppGateApiHost;
    config?.cfgGrpcUrl = imEndPoint.cfgGrpcUrl;

    /// 参数签名secret,登录前使用，登录后用signSecret签名
    config?.initSecret = "9C168BCA26AFA2E404761A2FE43BF567";
    config?.appId = 5000;
    config?.secret =
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjowLCJpbV91c2VyX2lkIjowLCJhcHBfaWQiOjgwMDAsImFwcF91c2VyX2lkIjoiIiwiZXhwIjoxNzAwMTM5NTEzLCJpYXQiOjE2MDAxMzk1MTMsImlzcyI6Ill6SU0ifQ.2_3iuV9mHel8_O4ZNPybmzpg12EA2XnvFmqrAN63_qU";
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("config_test", json.encode(config));
  }

  Future<ImEndPoint?> fetchData(
    ImEndPoint links, {
    String url = '',
  }) async {
    try {
      var rsp = await RpcCallAppGateNotApi(
        links.cfgAppGateApiHost,
        "/pb_grpc_commim_uaa.UAA/CheckDelay",
        CheckDelayReq(),
        MakePBCommData(
          aimId: Int64(AppUserInfo.instance.imId),
          toService: Service.commim_uaa,
        ),
      );
    } catch (error) {
      links.score = -1;
      debugPrint('fetchData links: $links error: $error');
    }
    return links;
  }

  saveToSp() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt("config.env", config!.envType.index);
    log("--- sp set config.env=${config!.envType.index}");
  }

  /// 配置
  Config? config = Config();
  bool manualSwitch = false;
}
