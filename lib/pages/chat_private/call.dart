// 打电话界面
import 'dart:async';
import 'dart:math';
import 'dart:typed_data';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/models/Global.dart';
import 'package:quliao/net/msg_handler_mgr.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/live/zego/zego_config.dart';
import 'package:quliao/pb/pb_msg/call_scene/call_scene.pb.dart';
import 'package:quliao/pb/pb_msg/call_scene/call_scene.pbenum.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pb/pb_pub/error_code.pbserver.dart';
import 'package:quliao/pb/pb_pub/service.pb.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/pub/pub-def.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:protobuf/protobuf.dart';
// import 'package:zego_express_engine/zego_express_engine.dart';
// import 'package:zego_permission/zego_permission.dart';

class CallPageInputParams {
  CallPageInputParams(this.callType, this.caller, this.callee);
  final CALL_TYPE callType;
  final Int64 caller; // 主叫
  final Int64 callee; // 被叫
}

// 摄像头权限
class Authorization {
  final bool camera;
  final bool microphone;
  Authorization(this.camera, this.microphone);
}

// 拨打页面
class CallPage extends StatefulWidget {
  static String name = "CallPage";
  final CALL_TYPE callType;
  final Int64 caller; // 主叫
  final Int64 callee; // 被叫
  const CallPage(
      {super.key,
      required this.callType,
      required this.caller,
      required this.callee});

  @override
  _CallPageState createState() => new _CallPageState();
}

// 拨打页面状态
class _CallPageState extends State<CallPage> {
  ////////////////////////////////////
  // 即构使用
  String _version = "";
  bool zegoEngineReady = false;

  // 预览自己
  int? _previewViewID = -1;
  late Widget? _previewViewWidget;
  // late ZegoCanvas _previewCanvas;

  // 播放对方
  int? _friendViewID = -1;
  late Widget? _friendWidget;
  // late ZegoCanvas _friendCanvas;

  // 视频房间id, 以主叫为主
  late String roomId;

  // 自己和对方的流id
  late String myStreamID;
  late String? aimStreamID;

  // 屏幕宽度和高度
  late int screenWidthPx;
  late int screenHeightPx;

  // 即构使用
  ////////////////////////////////////

  //////////////////////////////////////
  // 场景维护
  CALL_SCENE_STATE sceneState = CALL_SCENE_STATE.CALL_SCENE_STATE_INIT;
  //////////////////////////////////////

  // 启动一个定时器处理超时事件
  late Timer connectTimer;
  String tips = "";
  late bool iIsCaller; // 自己是否主叫

  // 消息处理器
  late StreamSubscription<EventOnNetMsg> msgStreamSub;
  var msgHandlerMgr = MsgHandlerMgr();
  // 变量定义
  //////////////////////////////////////////////////////////////////

  // 初始化
  @override
  void initState() {
    super.initState();

    // 判断消息callreq是否可以调起call界面
    Global.isInCallScene = true;

    iIsCaller = widget.caller == AppUserInfo.instance.imId;
    roomId = "callScene-${widget.caller}"; // 以主叫信息创建房间id

    if (iIsCaller) {
      myStreamID = "callScene-${widget.caller}";
    } else {
      myStreamID = "callScene-${widget.callee}";
    }

    log("info -> iIsCaller:${iIsCaller} roomId：${roomId} myStreamID:${myStreamID} ");

    // 处理网络消息
    HandleMsg();

    log("当前状态：${sceneState}");

    // 开启定时器进行流程驱动
    connectTimer = Timer.periodic(Duration(seconds: 1), _checkState);
  }

  @override
  void dispose() {
    super.dispose();

    if (sceneState != CALL_SCENE_STATE.CALL_SCENE_STATE_CALL_END) {
      // 如果还没有结束，先发个挂断消息
      handup();
    }

    Global.isInCallScene = false;

    CleanScene();

    // 停止定时器
    if (connectTimer != null) {
      connectTimer.cancel();
    }

    // 取消消息处理
    msgStreamSub.cancel();
  }

  // 消息处理句柄
  void HandleMsg() {
    // 注册消息回调
    msgStreamSub = eventBus.on<EventOnNetMsg>().listen((event) {
      // log("获得一个消息:${event.pbMsg.pbName}");
      if (event.pbMsg.errCode != ErrCode.SUCCESS.value) {
        // log("获得一个错误消息:${event.pbMsg.errCode}");
        // 有错误的话就结束流程
        tips = "通话错误，错误号:${event.pbMsg.errCode}";
        SetSceneState(CALL_SCENE_STATE.CALL_SCENE_STATE_CALL_END);
      }

      msgHandlerMgr.onMsg(event.pbMsg,event.enMsgFrom);
    });

    // 注册消息处理句柄
    msgHandlerMgr.RegMsgHandler(HeartBeat(),
        (GeneratedMessage msg, PBMessage pbMessage,EnMsgFrom enMsgFrom) {
      if (msg is HeartBeat) {
        /// 设置状态
        if (msg.type == HEART_BEAT_TYPE.CALL_SCENE) {
          // 重置时间
          log("-----------4-11 心跳返回, 更新最后获得心跳时间 ", model: LOG_MODEL.CALL_SCENE);
          lastRcvHeartBeatTime = DateTime.now();
        }
      }
      return true;
    });
    // DialRsp
    msgHandlerMgr.RegMsgHandler(DialRsp(),
        (GeneratedMessage msg, PBMessage pbMessage,EnMsgFrom enMsgFrom) {
      log("拨打返回, ", model: LOG_MODEL.CALL_SCENE);
      // 拨打出去了，开始响铃
      if (msg is DialRsp) {
        log("dial rsp:${msg}");
        if (msg.result != ErrCode.SUCCESS) {
          showToast("拨打失败,result:${msg.result} code:${msg.code}");
          log("-----------2-2 拨打失败 caller:${widget.caller} callee ${widget.callee}");
          SetSceneState(CALL_SCENE_STATE.CALL_SCENE_STATE_CALL_END);
        } else {
          // 推流
          // ZegoExpressEngine.instance.startPublishingStream(myStreamID);
          log("-----------2-2 拨打成功，等待对方接听，开始推流 caller:${widget.caller} callee ${widget.callee}");
          if (widget.caller == AppUserInfo.instance.imId) {
            // 主叫发个消息, 告诉服务器开启房间
            var msg = WaitForCalleeAnswerNotifyToServer()
              ..calleeId = widget.callee
              ..yXChatId = widget.callee;
            Client.instance.sendMsg(
                msg,
                widget.callee,
                MakePBCommData(
                    aimId: widget.callee, toService: Service.call_scene));
          }
        }
      }
      return true;
    });
    msgHandlerMgr.RegMsgHandler(DialReq(),
        (GeneratedMessage msg, PBMessage pbMessage,EnMsgFrom enMsgFrom) {
      log("------------ 2-2 有人拨打我的电话", model: LOG_MODEL.CALL_SCENE);
      // 弹起响铃页面,等待接听,展示对方用户,这个消息放到全局监听一个，随处都可以弹出本页面
      // 如果状态为结束，则重置界面， 如果正在通话中则提示有人给你打电话，并返回忙碌
      return true;
    });
    msgHandlerMgr.RegMsgHandler(AnswerCallRsp(),
        (GeneratedMessage msg, PBMessage pbMessage,EnMsgFrom enMsgFrom) {
      log("------------ 2-4 应答返回", model: LOG_MODEL.CALL_SCENE);
      if (msg is AnswerCallReq) {
        log("应答返回 ${msg}", model: LOG_MODEL.CALL_SCENE);
      }
      return true;
    });
    msgHandlerMgr.RegMsgHandler(AnswerCallReq(),
        (GeneratedMessage msg, PBMessage pbMessage,EnMsgFrom enMsgFrom) {
      log("------------ 3-0 对方给了应答，根据应答结果响应 ${msg}",
          model: LOG_MODEL.CALL_SCENE);
      if (msg is AnswerCallReq) {
        switch (msg.answer) {
          case ANSWER_OF_CALL.REFUSE: // = 0;  //拒绝通话
            SetSceneState(CALL_SCENE_STATE.CALL_SCENE_STATE_CALL_END);
            log("-------------3-1 对方拒绝通话，结束");
            CleanScene();
            break;
          case ANSWER_OF_CALL.AGREE: //  = 1;  //同意通话
            log("-------------3-2 对方同意通话,过渡到通话中，结束");
            SetSceneState(CALL_SCENE_STATE.CALL_SCENE_STATE_ONLINE);
            break;
        }
      }
      return true;
    });
    msgHandlerMgr.RegMsgHandler(AnswerCallRsp(),
        (GeneratedMessage msg, PBMessage pbMessage,EnMsgFrom enMsgFrom) {
      // 如果失败的话就结束掉
      if (msg is AnswerCallRsp) {
        if (msg.result != ErrCode.SUCCESS) {
          log("------------ 2-5接听电话错误 result:${msg.result} code:${msg.code}");
          tips = "------------ 2-5接听电话错误 result:${msg.result} code:${msg.code}";
          SetSceneState(CALL_SCENE_STATE.CALL_SCENE_STATE_CALL_END);
        }
      }
      return true;
    });
    msgHandlerMgr.RegMsgHandler(HangUpRsp(),
        (GeneratedMessage msg, PBMessage pbMessage,EnMsgFrom enMsgFrom) {
      log("挂断反馈 ${msg}", model: LOG_MODEL.CALL_SCENE);

      tips = "对方已挂断";
      log("------------- 5-1 对方挂断通话,通话结束");
      CleanScene();
      SetSceneState(CALL_SCENE_STATE.CALL_SCENE_STATE_CALL_END);
      return true;
    });
    msgHandlerMgr.RegMsgHandler(CallOverNotify(),
        (GeneratedMessage msg, PBMessage pbMessage,EnMsgFrom enMsgFrom) {
      log("通话结束 ${msg}", model: LOG_MODEL.CALL_SCENE);
      log("-------------5-2 服务端通知结束通话,通话结束");
      // 设置结算数据
      if (msg is CallOverNotify) {
        // 展示页面
        SetSceneState(CALL_SCENE_STATE.CALL_SCENE_STATE_CALL_END);
      }
      return true;
    });

    msgHandlerMgr.RegMsgHandler(CallSceneStateChangeNotify(), (msg, pbMessage,EnMsgFrom enMsgFrom) {
      log("场景变化通知:${msg}");
      // 状态变化通知
      if (msg is CallSceneStateChangeNotify) {
        switch (msg.newState) {
          case CALL_SCENE_STATE.CALL_SCENE_STATE_ONLINE:
            log("-------------3-1 服务端通知，通话中 old state:${sceneState} new:${msg.newState}");
            break;
          case CALL_SCENE_STATE.CALL_SCENE_STATE_CALL_END:
            log("-------------5-0 服务端状态变化通知 old state:${sceneState} new:${msg.newState}");
            break;
          default:
            log(" 服务端状态变化通知 old state:${sceneState} new:${msg.newState}");
        }
        // if(msg.newState == CALL_SCENE_STATE.CALL_SCENE_STATE_ONLINE){
        //   log("-------------3-1 服务端通知，通话中 old state:${sceneState} new:${msg.newState}");
        // }
        // 如果是end，设置状态
        // log("-------------4-1 服务端状态变化通知 old state:${sceneState} new:${msg.newState}");
      }
      return true;
    });
    msgHandlerMgr.RegMsgHandler(SceneRecoverNotify(),
        (GeneratedMessage msg, PBMessage pbMessage,EnMsgFrom enMsgFrom) {
      log("-------------17场景恢复 ${pbMessage.pbName}:${msg}",
          model: LOG_MODEL.CALL_SCENE);
      // 场景恢复通知，初始化一下场景
      return true;
    });
    msgHandlerMgr.RegMsgHandler(WealthChangeNotify(),
        (GeneratedMessage msg, PBMessage pbMessage,EnMsgFrom enMsgFrom) {
      log("-------------4-1财富变更通知:${msg}");
      // 更新财富值
      if (msg is WealthChangeNotify) {
        // 展示财富
      }
      return true;
    });
  }

  // 初始化即构
  Future<void> InitZego() async {
    // var version = await ZegoExpressEngine.getVersion();
    // print('[SDK Version] $version');
    // setState(() {
    //   log("刷新窗口");
    //   _version = version;
    // });

    // await ZegoExpressEngine.createEngine(
    //     ZegoConfig.instance.appID,
    //     ZegoConfig.instance.appSign,
    //     ZegoConfig.instance.isTestEnv,
    //     ZegoScenario.Live,
    //     enablePlatformView: ZegoConfig.instance.enablePlatformView);

    // 引擎准备好了
    zegoEngineReady = true;

    // 鉴权
    // Authorization authorization = await checkAuthorization();

    // 设置回调
    // setZegoCallback();

    log("zego engine ready!");
    // If the permission object is null
    // It means that there is no need to dynamically check permissions under the current operating system
    // (such as Android 6.0 or lower systems)
    // if (authorization == null) {
    //   await _loginRoom();
    //   return;
    // }

    // if (!authorization.camera || !authorization.microphone) {
    //   // The authorization is not allowed, the pop-up window prompts the user to open the permission
    //   showSettingsLink();
    // } else {
    //   // Authorization is complete, allowing login room
    //   await _loginRoom();
    // }
  }

  void showSettingsLink() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Tips'),
            content: Text(
                'Please go to the settings page to open the camera/microphone permissions'),
            actions: <Widget>[
              TextButton(
                child: Text('Settings'),
                onPressed: () {
                  Navigator.of(context).pop();
                  // ZegoPermission.openAppSettings();
                },
              ),
              TextButton(
                child: Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

  void SetSceneState(CALL_SCENE_STATE state) {
    log("场景状态从${sceneState} 变为 ${state}", deep: 2);
    sceneState = state;
    stateChangeTime = DateTime.now();
    setState(() {
      // 更新下页面
    });
  }

  ///////////////////////////////////////
  // 流程驱动使用
  var stateChangeTime = DateTime.now(); // 状态变化时间
  var callingWaitInterval = Duration(seconds: 60); // 拨打中超时时间
  var lastSendHeartBeatTime = DateTime(0); // 最后发送心跳时间
  var lastRcvHeartBeatTime = DateTime.now(); // 最后接收心跳时间
  var heartBeatTimeInterval = Duration(seconds: 10); // 心跳间隔
  var timeCount = 0; // 轮休次数
  // 流程驱动使用
  ///////////////////////////////////////////
  void _checkState(Timer timer) async {
    if (++timeCount % 30 == 0) {
      log("定时器: timer:${timer}");
    }
    switch (sceneState) {
      case CALL_SCENE_STATE.CALL_SCENE_STATE_INIT:
        // 这个时候发生一个通话请求
        if (iIsCaller) {
          InitZego().then((value) {
            // 我是主叫 发送通话请求,登录即构房间完成后再发送消息，因为自己服务器返回消息后才推流,推流要登录即构房间成功后才行
            DialReq dr = DialReq();
            dr.calleeId = widget.callee;
            dr.callType = widget.callType; // 通话类型
            dr.chatCoinType = 0; // 0: 默认, 1:聊币版本

            var msg = Client.instance.sendMsg(
                dr,
                widget.callee,
                MakePBCommData(
                    aimId: widget.callee, toService: Service.call_scene));
            log("----------2-1 发送消息:DialReq");
          }); // 主叫直接初始化,用于预览自己的视频，被叫接听的时候初始化
        }

        SetSceneState(CALL_SCENE_STATE.CALL_SCENE_STATE_CALLING);
        break;
      case CALL_SCENE_STATE.CALL_SCENE_STATE_CALLING:
        heartBeat();

        // 这里判断是否超时
        if (DateTime.now().difference(stateChangeTime).inSeconds >
            callingWaitInterval.inSeconds) {
          if (iIsCaller) {
            // 超时
            log("对方无应答 caller:${widget.caller} callee:${widget.callee}");
            showToast("对方无应答");
            tips = "无人接听";
          } else {
            tips = "来电未接听";
          }
          SetSceneState(CALL_SCENE_STATE.CALL_SCENE_STATE_CALL_END);
        }
        break;
      case CALL_SCENE_STATE.CALL_SCENE_STATE_ONLINE:
        // 这里判断是否超时
        if (DateTime.now().difference(lastRcvHeartBeatTime).inSeconds >
            callingWaitInterval.inSeconds) {
          tips = "网络不佳，结束通话";
          log("------------4-7 心跳超时，结束通话");
          SetSceneState(CALL_SCENE_STATE.CALL_SCENE_STATE_CALL_END);
        } else {
          heartBeat();
        }
        break;
      case CALL_SCENE_STATE.CALL_SCENE_STATE_CALL_END:
        // 场景结束，清理战场
        timer.cancel();
        CleanScene();
        break;
    }
  }

  void heartBeat() {
    // 没有超时，看下有没有到发送心跳时间
    if (DateTime.now().difference(lastSendHeartBeatTime).inSeconds >
        heartBeatTimeInterval.inSeconds) {
      HeartBeat hb = HeartBeat();
      hb.type = HEART_BEAT_TYPE.CALL_SCENE;
      hb.state = HEART_BEAT_MSG_STATE.PING;
      Client.instance.sendMsg(hb, widget.callee,
          MakePBCommData(aimId: widget.callee, toService: Service.call_scene));
      lastSendHeartBeatTime = DateTime.now();
      log("-----------4-10 发送场景保活心跳");
    }
  }

  void startPreview(int viewID) {
    // Set the preview canvas
    // _previewCanvas = ZegoCanvas.view(viewID);

    // // Start preview
    // ZegoExpressEngine.instance.startPreview(canvas: _previewCanvas);
  }

  // void onPlayViewCreated (int viewID){
  //   _previewViewID = viewID;
  //   log("---------1-3 Platform 预览窗口创建好了，更新页面展示 view id=${_previewViewID}");
  //   startPreview(viewID);
  // }

  Future<void> _loginRoom() async {
    //////////////////////////////////////////////////////////////
    // 这里的userid不能是数字，见鬼了
    ZegoConfig.instance.userID = "cs-${AppUserInfo.instance.imId}";
    ZegoConfig.instance.userName = ZegoConfig.instance.userID;
    // ZegoUser user =
    //     ZegoUser(ZegoConfig.instance.userID, ZegoConfig.instance.userName);
    // //
    // /////////////////////////////////////////////////

    // await ZegoExpressEngine.instance.loginRoom(roomId, user);
    // log("--------- 1-1 登录到房间成功 roomid:${roomId} zegouser:${user.userID} ${user.userName}");

    if (ZegoConfig.instance.enablePlatformView) {
      // 先set state 把 _previewViewWidget 展现到界面上，start preview才会回调，这里要特别注意
      setState(() {
        // _previewViewWidget =
        //     ZegoExpressEngine.instance.createPlatformView((viewID) {
        //       _previewViewID = viewID;
        //       log("---------1-3 Platform 预览窗口创建好了，更新页面展示 view id=${_previewViewID}");
        //       startPreview(viewID);
        //     });
      });
    } else {
      log("窗口尺寸为:getScreenWidthPx():${getScreenWidthPx()}, getScreenHeightPx():${getScreenHeightPx()}");
      // ZegoExpressEngine.instance.createTextureRenderer(getScreenWidthPx(), getScreenHeightPx()).then((textureID) {
      //   _previewViewID = textureID;
      //   setState(() {
      //     _previewViewWidget = Texture(textureId: textureID);
      //   });
      //   log("---------1-3 texture 预览窗口创建好了，更新页面展示 view id=${_previewViewID}");
      //   startPreview(textureID);
      // });
    }

    log("---------1-2 create new preview widget start preview ");
    ZegoConfig.instance.roomID = roomId;
    ZegoConfig.instance.saveConfig();
  }

  int getScreenWidthPx() {
    return screenWidthPx = MediaQuery.of(context).size.width.toInt() *
        MediaQuery.of(context).devicePixelRatio.toInt();
  }

  int getScreenHeightPx() {
    // return screenHeightPx = (MediaQuery
    //     .of(context)
    //     .size
    //     .height - MediaQuery
    //     .of(context)
    //     .padding
    //     .top - 56.0).toInt() * MediaQuery
    //     .of(context)
    //     .devicePixelRatio
    //     .toInt();

    return screenHeightPx = (MediaQuery.of(context).size.height).toInt() *
        MediaQuery.of(context).devicePixelRatio.toInt();
  }

  // Apply permission 鉴权
  // Future<Authorization> checkAuthorization() async {
  // List<Permission> statusList = await ZegoPermission.getPermissions(
  //     <PermissionType>[PermissionType.Camera, PermissionType.MicroPhone]);

  // if (statusList == null)
  //   return null;

  // PermissionStatus cameraStatus, micStatus;
  // for (var permission in statusList) {
  //   if (permission.permissionType == PermissionType.Camera)
  //     cameraStatus = permission.permissionStatus;
  //   if (permission.permissionType == PermissionType.MicroPhone)
  //     micStatus = permission.permissionStatus;
  // }
  //
  // bool camReqResult = true,
  //     micReqResult = true;
  // if (cameraStatus != PermissionStatus.granted ||
  //     micStatus != PermissionStatus.granted) {
  //   if (cameraStatus != PermissionStatus.granted) {
  //     camReqResult = await ZegoPermission.requestPermission(
  //         PermissionType.Camera);
  //   }
  //
  //   if (micStatus != PermissionStatus.granted) {
  //     micReqResult = await ZegoPermission.requestPermission(
  //         PermissionType.MicroPhone);
  //   }
  // }

  //   return Authorization(camReqResult, micReqResult);
  // }

  // 清理场景
  void CleanScene() async {
    if (!zegoEngineReady) {
      // 没有引擎，不需clean
      log("-------------6-1没有引擎创建，无须释放");
      return;
    }

    // // 停止预览
    // if (_previewViewID != null) {
    //   await ZegoExpressEngine.instance.stopPreview();
    //   destroyPlatformView(_previewViewID!);

    //   log("-------------6-2 关闭预览页面 _previewViewID=${_previewViewID}");
    //   _previewViewID = null;
    // }

    // // 停止播放
    // if (aimStreamID != null) {
    //   await ZegoExpressEngine.instance.stopPlayingStream(aimStreamID!);
    //   aimStreamID = null;
    //   log("-------------6-3 停止播放对方的流 aimStreamID=${aimStreamID}");
    //   if (_friendViewID != null) {
    //     destroyPlatformView(_friendViewID!);
    //     log("-------------6-4 关闭对方页面 _previewViewID=${_previewViewID}");
    //     _friendViewID = null;
    //   }
    // }

    // // 退出房间
    // await ZegoExpressEngine.instance.logoutRoom(roomId);
    // log("-------------6-5 退出即构房间 roomId=${roomId}");

    // // 释放引擎
    // await ZegoExpressEngine.destroyEngine();
    // log("-------------6-6 释放即构引擎 ");
    zegoEngineReady = false;
  }

  void destroyPlatformView(int viewID) {
    // if (ZegoConfig.instance.enablePlatformView) {
    //   // Destroy play platform view
    //   ZegoExpressEngine.instance.destroyPlatformView(viewID);
    // } else {
    //   // Destroy play texture renderer
    //   ZegoExpressEngine.instance.destroyTextureRenderer(viewID);
    // }
  }

  // 防误触
  late DateTime _lastPressedAt; //上次点击时间

  @override
  Widget build(BuildContext context) {
    log("build!!!");
    Widget wb = Container(
      child: Text("对不起，不支持此通话类型"),
    );
    log("当前通话类型:${widget.callType}");
    switch (widget.callType) {
      case CALL_TYPE.CALL_TYPE_VIDEO:
        // 构建视频界面
        wb = buildVideoWidget(context);
        break;
      case CALL_TYPE.CALL_TYPE_VOICE:
        // 构建音频页面
        // wb = buildVoiceWidget(context);
        break;
    }

    return WillPopScope(
        onWillPop: () async {
          // 如果通话结束则直接返回
          if (sceneState == CALL_SCENE_STATE.CALL_SCENE_STATE_CALL_END) {
            return true;
          }
          if (_lastPressedAt == null ||
              DateTime.now().difference(_lastPressedAt) >
                  Duration(seconds: 1)) {
            //两次点击间隔超过1秒则重新计时
            _lastPressedAt = DateTime.now();
            log("误触");
            return false;
          }
          log("真的想退出");
          return true;
        },
        child: Scaffold(body: wb));
  }

  // 创建视频页面
  Widget buildVideoWidget(BuildContext context) {
    try {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BuildWithState(),
        ],
      );
    } catch (e) {
      log(" have a error:${e}");
    }

    return Container(
      child: Text("..."),
    );
  }

  double _myMiniPreviewTop = 40; //距顶部的偏移
  double _myMiniPreviewLeft = 20; //距左边的偏移

  Widget BuildWithState() {
    var sw = MediaQuery.of(context).size.width;
    var sh = MediaQuery.of(context).size.height;
    // var sw = getScreenWidthPx();
    // var sh = getScreenHeightPx();
    log("构建视频页面，当前通话状态: state.value:${sceneState}, 宽:${sw} 高:${sh}");
    var myPreviewWidth = sw * 0.3;
    var myPreviewHeight = sh * 0.3;
    switch (sceneState) {
      case CALL_SCENE_STATE.CALL_SCENE_STATE_INIT:
      case CALL_SCENE_STATE.CALL_SCENE_STATE_CALLING:
        return Stack(
          children: <Widget>[
            // 预览窗口
            Container(
              width: sw,
              height: sh,
              child: _previewViewWidget,
            ),
            Positioned(
              top: 50,
              child: Container(
                // color: Colors.purpleAccent,
                width: sw,
                child: Column(
                  children: [
                    avatar("", 100, 100),
                    Text("名称"),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 100,
              width: sw,
              child: Text(tips),
            ),
            Positioned(
              bottom: 50,
              width: sw,
              child: iIsCaller
                  ? IconButton(
                      icon: Icon(
                        Icons.call_end,
                        size: 60,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        // 挂断
                        // HangUpReq hur = HangUpReq()
                        //   ..userId = AppUserInfo.instance.imId
                        //   ..sceneId = widget.callee;
                        // Client.instance.sendMsg(hur, widget.callee, MakePBCommData(aimId: widget.caller, toService: Service.call_scene));
                        handup();
                        log("----------2-3 操作 主动挂断");
                        CleanScene();
                        tips = "主动挂断";
                        SetSceneState(
                            CALL_SCENE_STATE.CALL_SCENE_STATE_CALL_END);

                        // setState(() {
                        //   log("刷新窗口");
                        // });
                      },
                    )
                  : // 我是被叫
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.call_end,
                            size: 60,
                            color: Colors.red,
                          ),
                          onPressed: () {
                            //
                            var acr = AnswerCallReq()
                              ..answer = ANSWER_OF_CALL.REFUSE;
                            Client.instance.sendMsg(
                                acr,
                                widget.callee,
                                MakePBCommData(
                                    aimId: widget.caller,
                                    toService: Service.call_scene));

                            CleanScene();
                            tips = "您已拒绝接听";
                            SetSceneState(
                                CALL_SCENE_STATE.CALL_SCENE_STATE_CALL_END);

                            log("---------------2-3 拒绝接听");
                            // setState(() {
                            //   log("刷新窗口");
                            // });
                          },
                        ),
                        IconButton(
                          icon: Transform.rotate(
                            angle: pi,
                            child: Icon(
                              Icons.call,
                              size: 60,
                              color: Colors.green,
                            ),
                          ),
                          onPressed: () {
                            var acr = AnswerCallReq()
                              ..answer = ANSWER_OF_CALL.AGREE;
                            Client.instance.sendMsg(
                                acr,
                                widget.callee,
                                MakePBCommData(
                                    aimId: widget.caller,
                                    toService: Service.call_scene));

                            // 初始化即构
                            InitZego().then((value) {
                              // 推流
                              // ZegoExpressEngine.instance.startPublishingStream(
                              //     myStreamID);
                            });
                            log("---------------2-3 接听推流");

                            tips = "";
                            SetSceneState(
                                CALL_SCENE_STATE.CALL_SCENE_STATE_ONLINE);

                            // setState(() {
                            //   log("刷新窗口");
                            // });
                          },
                        )
                      ],
                    ),
            ),
            // _isPublishing
            //     ? showPublishingToolPage()
            //     : showPreviewToolPage(),
          ],
        );
      case CALL_SCENE_STATE.CALL_SCENE_STATE_ONLINE:
        return Stack(
          children: [
            // 对方的窗口
            Container(
              width: sw,
              height: sh,
              child: _friendWidget == null
                  ? Container(
                      child: Text("这是对方的视频窗口"),
                    )
                  : _friendWidget,
            ),
            Positioned(
              bottom: 100,
              width: sw,
              child: Text(tips),
            ),

            Positioned(
                bottom: 50,
                width: sw,
                child: IconButton(
                  icon: Icon(
                    Icons.call_end,
                    size: 60,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    // // 挂断
                    // HangUpReq hur = HangUpReq()
                    //   ..userId = AppUserInfo.instance.imId
                    //   ..sceneId = widget.callee;
                    // Client.instance.sendMsg(hur, widget.callee, MakePBCommData(aimId: widget.caller, toService: Service.call_scene));
                    handup();
                    log("---------------33 接听中挂断");
                    CleanScene();
                    tips = "主动挂断";
                    SetSceneState(CALL_SCENE_STATE.CALL_SCENE_STATE_CALL_END);

                    // setState(() {
                    //   log("刷新窗口");
                    // });
                  },
                )),

            // 自己的窗口
            Positioned(
              right: _myMiniPreviewLeft,
              top: _myMiniPreviewTop, //sw / 10,
              child: GestureDetector(
                // onTap: () => updateText("Tap"),//点击
                // onDoubleTap: () => updateText("DoubleTap"), //双击
                // onLongPress: () => updateText("LongPress"), //长按
                //手指滑动时会触发此回调
                onPanUpdate: (DragUpdateDetails e) {
                  //用户手指滑动时，更新偏移，重新构建
                  setState(() {
                    _myMiniPreviewTop += e.delta.dy;
                    _myMiniPreviewLeft -= e.delta.dx;
                  });
                  log("pos->(top:${_myMiniPreviewTop},left:${_myMiniPreviewLeft})");
                },
                onPanEnd: (DragEndDetails e) {
                  //打印滑动结束时在x、y轴上的速度
                  // print(e.velocity);
                  if (_myMiniPreviewLeft < 0) {
                    _myMiniPreviewLeft = 0;
                  } else if (_myMiniPreviewLeft > (sw - myPreviewWidth)) {
                    _myMiniPreviewLeft = sw - myPreviewWidth;
                  }

                  if (_myMiniPreviewTop < 0) {
                    _myMiniPreviewTop = 0;
                  } else if (_myMiniPreviewTop > (sh - myPreviewHeight)) {
                    _myMiniPreviewTop = sh - myPreviewHeight;
                  }
                  setState(() {});
                  log("------------矫正----------");
                },
                child: ClipRect(
                  //将溢出部分剪裁
                  child: Align(
                    // alignment: Alignment.topLeft,
                    // widthFactor: .5, //宽度设为原来宽度一半
                    heightFactor: (sh - (sh - sw)) / sh,
                    child: Container(
                      width: myPreviewWidth,
                      height: myPreviewHeight,
                      child: _previewViewWidget == null
                          ? Text("这里是自己的预览窗口")
                          : _previewViewWidget,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      case CALL_SCENE_STATE.CALL_SCENE_STATE_CALL_END:
        return Container(
          child: Column(
            children: [
              Text("结算条目"),
              TextButton(
                onPressed: () {
                  // 返回
                  Navigator.pop(context);
                },
                child: Text("确定"),
              )
            ],
          ),
        );
      default:
        return Container(
          child: TextButton(
            onPressed: () => {Navigator.pop(context)},
            child: Text("无效状态，返回"),
          ),
        );
    }
  }

  // 挂断
  void handup() {
    HangUpReq hur = HangUpReq()
      ..userId = Int64(AppUserInfo.instance.imId)
      ..sceneId = widget.callee;
    Client.instance.sendMsg(
        hur,
        widget.callee,
        MakePBCommData(
            aimId: iIsCaller ? widget.callee : widget.caller,
            toService: Service.call_scene));
  }

//   // 创建音频页面
//   Widget buildVoiceWidget(BuildContext context) {
//     return Container(child: Text("我是语音通话窗口"),);
//   }

//   void setZegoCallback(){
//     ZegoExpressEngine.onEngineStateUpdate = (ZegoEngineState state){
//       log("zego call back onEngineStateUpdate state:${state}");
//       if (state == ZegoEngineState.Start){

//       }else{

//       }
//     };

//     ZegoExpressEngine.onRoomStateUpdate = (String roomID, ZegoRoomState state, int errorCode, Map<String, dynamic> extendedData){
//       log("zego call back onRoomStateUpdate state:${state} roomid:${roomID} errcode:${errorCode} extendedData:${extendedData}");
//     };

//     ZegoExpressEngine.onRoomUserUpdate = (String roomID, ZegoUpdateType updateType, List<ZegoUser> userList){
//       log("zego call back onRoomUserUpdate roomID:${roomID}, ZegoUpdateType:${ZegoUpdateType} updateType:${updateType}, List<ZegoUser> userList:${userList}");
//     };

//     ZegoExpressEngine.onRoomOnlineUserCountUpdate = (String roomID, int count){
//       log("zego call back onRoomOnlineUserCountUpdate roomID:${roomID}, int count:${count}");
//     };

//     void startPlayingStream(int viewID, String streamID) {
//       setState(() {
//         log("刷新窗口");
//         // Set the play canvas
//         _friendCanvas = ZegoCanvas.view(viewID);

//         // Start playing stream
//         ZegoExpressEngine.instance.startPlayingStream(streamID, canvas: _friendCanvas);
//         log("-----------4-8 开始渲染 streamId=${streamID}");
//       });
//     }

//     void playFriendStream(String streamId){
//       log("-----------4-5 playFriendStream streamId=${streamId}");
//       if (ZegoConfig.instance.enablePlatformView) {
//         log("-----------4-6 enablePlatformView streamId=${streamId}");
//         setState(() {
//           // Create a PlatformView Widget
//           log("-----------4-6-000 enablePlatformView streamId=${streamId}");
//           // _friendWidget = ZegoExpressEngine.instance.createPlatformView((viewID) {
//           //   _friendViewID = viewID;
//           //   log("-----------4-6-111 enablePlatformView streamId=${streamId}");
//           //   // Start playing stream using platform view
//           //   startPlayingStream(viewID, streamId);
//           //
//           //   log(
//           //       "---------4-7 playFriendStream PlatformView 播放好友流 streamId:${streamId} _friendViewID=${_friendViewID}");
//           // });
//           log("-----------4-6-2222 enablePlatformView _friendWidget=${_friendWidget}");
//         });
//       } else {
//         log("-----------4-6 playFriendStream texture");
//         // ZegoExpressEngine.instance.createTextureRenderer(getScreenWidthPx(), getScreenHeightPx()).then((textureID) {
//         //   _friendViewID = textureID;
//         //   setState(() {
//         //     log("刷新窗口");
//         //     // Create a Texture Widget
//         //     _friendWidget = Texture(textureId: textureID);
//         //   });
//         //
//         //   // Start playing stream using texture renderer
//         //   log("---------4-7 创建texture播放窗口成功  播放好友流 streamId:${streamId} _friendViewID=${_friendViewID}");
//         //   startPlayingStream(textureID, streamId);
//         // });
//       }
//     }

//     // 流变更
//     ZegoExpressEngine.onRoomStreamUpdate = (String roomID, ZegoUpdateType updateType, List<ZegoStream> streamList, Map<String, dynamic> extendedData) {
//       log("zego call back onRoomStreamUpdate roomID:${roomID}, ZegoUpdateType updateType:${updateType}, List<ZegoStream> streamList:${streamList} extended:${extendedData}");
//       // if (streamList.length > 0) {
//       //   var stream = streamList[0];
//       // }

//       streamList.forEach((ZegoStream element) {
//         log("-----------4-3 zego call back stream :${element.streamID} user:${element.user}");
//       });

//       var stream = streamList[0];
//       switch(updateType){
//         case ZegoUpdateType.Add:
//           aimStreamID = stream.streamID;

//           log("------------4-4 播放对方视频流 stream :${aimStreamID} ");

//           // 增加播放
//           // playFriendStream(aimStreamID);
//           break;
//         case ZegoUpdateType.Delete:
//           // 关闭播放
//           if (aimStreamID == stream.streamID) {
//             log("----------------4-4 删除对方视频流 stream :${aimStreamID} ");
//             ZegoExpressEngine.instance.stopPlayingStream(aimStreamID!);
//             destroyPlatformView(_friendViewID!);
//             _friendWidget = null;
//             aimStreamID = null;

//           }
//           break;
//       }
//     };

//     ZegoExpressEngine.onRoomStreamExtraInfoUpdate = (String roomID, List<ZegoStream> streamList){
//       log("zego call back onRoomStreamExtraInfoUpdate roomID:${roomID}, List<ZegoStream> streamList:${streamList}");
//     };
//     ZegoExpressEngine.onRoomExtraInfoUpdate = (String roomID, List<ZegoRoomExtraInfo> roomExtraInfoList){
//       log("zego call back onRoomExtraInfoUpdate roomID:${roomID}, List<ZegoRoomExtraInfo> roomExtraInfoList:${roomExtraInfoList}");
//     };

//     ZegoExpressEngine.onPublisherCapturedAudioFirstFrame = (){
//       log("zego call back onPublisherCapturedAudioFirstFrame");
//     };

//     ZegoExpressEngine.onPublisherCapturedVideoFirstFrame = (ZegoPublishChannel channel) {
//       log("zego call back onPublisherCapturedVideoFirstFrame channel:${channel}");
//     };

//     ZegoExpressEngine.onPublisherRelayCDNStateUpdate = (String streamID, List<ZegoStreamRelayCDNInfo> infoList){
//       log("zego call back onPublisherRelayCDNStateUpdate streamID:${streamID}, List<ZegoStreamRelayCDNInfo> infoList:${infoList}");
//     };

//     ZegoExpressEngine.onPlayerStateUpdate = (String streamID, ZegoPlayerState state, int errorCode, Map<String, dynamic> extendedData){
//       log("zego call back onPlayerStateUpdate String streamID:${streamID}, ZegoPlayerState state:${state}, int errorCode:${errorCode}, Map<String, dynamic> extendedData:${extendedData}");
//     };

//     // ZegoExpressEngine.onPlayerQualityUpdate =(String streamID, ZegoPlayStreamQuality quality){
//     //   log("zego call back onPlayerQualityUpdate String streamID:${streamID}, ZegoPlayStreamQuality quality:${quality}");
//     // };

//     ZegoExpressEngine.onPlayerMediaEvent = (String streamID, ZegoPlayerMediaEvent event) {
//       log("zego call back onPlayerMediaEvent String streamID:${streamID}, ZegoPlayerMediaEvent event:${event}");
//     };

//     /// The callback triggered when the first audio frame is received.
//     ///
//     /// After the [startPlayingStream] function is called successfully, the SDK will receive this callback notification when it collects the first frame of audio data.
//     ///
//     /// - [streamID] Stream ID
//     ZegoExpressEngine.onPlayerRecvAudioFirstFrame=(String streamID){
//       log("zego call back onPlayerRecvAudioFirstFrame streamID:${streamID}");
//     };

//     /// The callback triggered when the first video frame is received.
//     ///
//     /// After the [startPlayingStream] function is called successfully, the SDK will receive this callback notification when it collects the first frame of video  data.
//     ///
//     /// - [streamID] Stream ID
//     ZegoExpressEngine.onPlayerRecvVideoFirstFrame = (String streamID) {
//       log("zego call back onPlayerRecvVideoFirstFrame streamID:${streamID}");
//     };

//     /// The callback triggered when the first video frame is rendered.
//     ///
//     /// After the [startPlayingStream] function is called successfully, the SDK will receive this callback notification when it rendered the first frame of video  data.
//     /// Developer can use this callback to count time consuming that take the first frame time or update the UI for playing stream.
//     ///
//     /// - [streamID] Stream ID
//     ZegoExpressEngine.onPlayerRenderVideoFirstFrame=(String streamID) {
//       log("zego call back onPlayerRenderVideoFirstFrame streamID:${streamID}");
//     };

//     /// The callback triggered when the stream playback resolution changes.
//     ///
//     /// If there is a change in the video resolution of the playing stream, the callback will be triggered, and the user can adjust the display for that stream dynamically.
//     /// If the publishing stream end triggers the internal stream flow control of SDK due to a network problem, the encoding resolution of the streaming end may be dynamically reduced, and this callback will also be received at this time.
//     /// If the stream is only audio data, the callback will not be received.
//     /// This callback will be triggered when the played audio and video stream is actually rendered to the set UI play canvas. You can use this callback notification to update or switch UI components that actually play the stream.
//     ///
//     /// - [streamID] Stream ID
//     /// - [width] Video decoding resolution width
//     /// - [height] Video decoding resolution height
//     ZegoExpressEngine.onPlayerVideoSizeChanged=(String streamID, int width, int height) {
//       log("zego call back onPlayerVideoSizeChanged String streamID:${streamID}, int width:${width}, int height:${height}");
//     };

//     /// The callback triggered when Supplemental Enhancement Information is received.
//     ///
//     /// After the remote stream is successfully played, when the remote stream sends SEI (such as directly calling [sendSEI], audio mixing with SEI data, and sending custom video capture encoded data with SEI, etc.), the local end will receive this callback.
//     ///
//     /// - [streamID] Stream ID
//     /// - [data] SEI content
//     ZegoExpressEngine.onPlayerRecvSEI=(String streamID, Uint8List data){
//       log("zego call back onPlayerRecvSEI");
//     };

//     /// The callback triggered when the state of relayed streaming of the mixed stream to CDN changes.
//     ///
//     /// In the general case of the ZEGO audio and video cloud mixing stream task, the output stream is published to the CDN using the rtmp protocol, and changes in the state during the publish will be notified from this callback api.
//     ///
//     /// - [taskID] Mix stream task ID
//     /// - [infoList] List of information that the current CDN is being mixed
//     ZegoExpressEngine.onMixerRelayCDNStateUpdate=(String taskID, List<ZegoStreamRelayCDNInfo> infoList){
//       log("zego call back onMixerRelayCDNStateUpdate");
//     };

//     /// The callback triggered when the sound level of any input stream changes in the stream mixing process.
//     ///
//     /// You can use this callback to show the effect of the anchors sound level when the audience plays the mixed stream. So audience can notice which anchor is speaking.
//     ///
//     /// - [soundLevels] Sound level hash map, key is the soundLevelID of every single stream in this mixer stream, value is the sound level value of that single stream, value ranging from 0.0 to 100.0
//     ZegoExpressEngine.onMixerSoundLevelUpdate=(Map<int, double> soundLevels){
//       log("zego call back onMixerSoundLevelUpdate");
//     };

//     /// The callback triggered when there is a change to audio devices (i.e. new device added or existing device deleted).
//     ///
//     /// This callback is triggered when an audio device is added or removed from the system. By listening to this callback, users can update the sound collection or output using a specific device when necessary.
//     ///
//     /// - [updateType] Update type (add/delete)
//     /// - [deviceType] Audio device type
//     /// - [deviceInfo] Audio device information
//     ///  编译不过，先关闭
// //    ZegoExpressEngine.onAudioDeviceStateChanged=(ZegoUpdateType updateType, ZegoAudioDeviceType deviceType, List<ZegoDeviceInfo> deviceInfo) {
// //      log("zego call back onAudioDeviceStateChanged");
// //    };

//     /// The callback triggered when there is a change to video devices (i.e. new device added or existing device deleted).
//     ///
//     /// This callback is triggered when a video device is added or removed from the system. By listening to this callback, users can update the video capture using a specific device when necessary.
//     ///
//     /// - [updateType] Update type (add/delete)
//     /// - [deviceInfo] Audio device information
//     /// ///  编译不过，先关闭
// //    ZegoExpressEngine.onVideoDeviceStateChanged=(ZegoUpdateType updateType, List<ZegoDeviceInfo> deviceInfo) {
// //      log("zego call back onVideoDeviceStateChanged=(ZegoUpdateType updateType:${updateType}, List<ZegoDeviceInfo> deviceInfo:${deviceInfo}");
// //    };

//     /// The callback triggered every 100ms to report the sound level of the locally captured audio.
//     ///
//     /// Callback notification period is 100 ms'. To trigger this callback function, the [startSoundLevelMonitor] function must be called to start the sound level monitor and you must be in a state where it is publishing the audio and video stream or be in [startPreview] state.
//     ///
//     /// - [soundLevel] Locally captured sound level value, ranging from 0.0 to 100.0
//     ZegoExpressEngine.onCapturedSoundLevelUpdate=(double soundLevel) {
//       log("zego call back onCapturedSoundLevelUpdate soundLevel:${soundLevel}");
//     };

//     /// The callback triggered every 100ms to report the sound level of the remote stream.
//     ///
//     /// Callback notification period is 100 ms'. To trigger this callback function, the [startSoundLevelMonitor] function must be called to start the sound level monitor and you must be in a state where it is playing the audio and video stream.
//     ///
//     /// - [soundLevels] Remote sound level hash map, key is the streamID, value is the sound level value of the corresponding streamID, value ranging from 0.0 to 100.0
//     ZegoExpressEngine.onRemoteSoundLevelUpdate=(Map<String, double> soundLevels) {
//       log("zego call back onRemoteSoundLevelUpdate soundLevels:${soundLevels}");
//     };

//     /// The callback triggered every 100ms to report the audio spectrum of the locally captured audio.
//     ///
//     /// Callback notification period is 100 ms'. To trigger this callback function, the [startAudioSpectrumMonitor] function must be called to start the audio spectrum monitor and you must be in a state where it is publishing the audio and video stream or be in [startPreview] state.
//     ///
//     /// - [audioSpectrum] Locally captured audio spectrum value list. Spectrum value range is [0-2^30]
//     ZegoExpressEngine.onCapturedAudioSpectrumUpdate=(List<double> audioSpectrum) {
//       log("zego call back");
//     };

//     /// The callback triggered every 100ms to report the audio spectrum of the remote stream.
//     ///
//     /// Callback notification period is 100 ms'. To trigger this callback function, the [startAudioSpectrumMonitor] function must be called to start the audio spectrum monitor and you must be in a state where it is playing the audio and video stream.
//     ///
//     /// - [audioSpectrums] Remote audio spectrum hash map, key is the streamID, value is the audio spectrum list of the corresponding streamID. Spectrum value range is [0-2^30]
//     ZegoExpressEngine.onRemoteAudioSpectrumUpdate=(Map<String, List<double>> audioSpectrums) {
//       log("zego call back onRemoteAudioSpectrumUpdate ");
//     };

//     /// The callback triggered when a device exception occurs.
//     ///
//     /// This callback is triggered when an exception occurs when reading or writing the audio and video device.
//     ///
//     /// - [errorCode] The error code corresponding to the status change of the playing stream. Please refer to the Error Codes https://doc-en.zego.im/en/308.html for details
//     /// - [deviceName] device name
//     // ZegoExpressEngine.onDeviceError=(int errorCode, String deviceName) {
//     //   log("zego call back onDeviceError int errorCode:${errorCode}, String deviceName:${deviceName}");
//     // };

//     /// The callback triggered when the state of the remote camera changes.
//     ///
//     /// When the state of the remote camera device changes, such as switching the camera, by monitoring this callback, it is possible to obtain an event related to the far-end camera, which can be used to prompt the user that the video may be abnormal.
//     /// Developers of 1v1 education scenarios or education small class scenarios and similar scenarios can use this callback notification to determine whether the camera device of the remote publishing stream device is working normally, and preliminary understand the cause of the device problem according to the corresponding state.
//     ///
//     /// - [streamID] Stream ID
//     /// - [state] Remote camera status
//     ZegoExpressEngine.onRemoteCameraStateUpdate=(String streamID, ZegoRemoteDeviceState state) {
//       log("zego call back onRemoteCameraStateUpdate String streamID:${streamID}, ZegoRemoteDeviceState state:${state}");
//     };

//     /// The callback triggered when the state of the remote microphone changes.
//     ///
//     /// When the state of the remote microphone device is changed, such as switching a microphone, etc., by listening to the callback, it is possible to obtain an event related to the remote microphone, which can be used to prompt the user that the audio may be abnormal.
//     /// Developers of 1v1 education scenarios or education small class scenarios and similar scenarios can use this callback notification to determine whether the microphone device of the remote publishing stream device is working normally, and preliminary understand the cause of the device problem according to the corresponding state.
//     ///
//     /// - [streamID] Stream ID
//     /// - [state] Remote microphone status
//     ZegoExpressEngine.onRemoteMicStateUpdate=(String streamID, ZegoRemoteDeviceState state) {
//       log("zego call back onRemoteMicStateUpdate String streamID:${streamID}, ZegoRemoteDeviceState state:${state}");
//     };

//     /// The callback triggered when Broadcast Messages are received.
//     ///
//     /// Note that only broadcast messages sent by other users can be notified through this callback, and broadcast messages sent by users themselves will not be notified through this callback.
//     ///
//     /// - [roomID] Room ID
//     /// - [messageList] list of received messages.
//     ZegoExpressEngine.onIMRecvBroadcastMessage=(String roomID, List<ZegoBroadcastMessageInfo> messageList) {
//       log("zego call back");
//     };

//     /// The callback triggered when Barrage Messages are received.
//     ///
//     /// Note that only barrage messages sent by other users can be notified through this callback, and barrage messages sent by users themselves will not be notified through this callback.
//     ///
//     /// - [roomID] Room ID
//     /// - [messageList] list of received messages.
//     ZegoExpressEngine.onIMRecvBarrageMessage=(String roomID, List<ZegoBarrageMessageInfo> messageList) {
//       log("zego call back");
//     };

//     /// The callback triggered when a Custom Command is received.
//     ///
//     /// Note that only custom command sent by other users can be notified through this callback, and custom command sent by users themselves will not be notified through this callback.
//     ///
//     /// - [roomID] Room ID
//     /// - [fromUser] Sender of the command
//     /// - [command] Command content received
//     ZegoExpressEngine.onIMRecvCustomCommand=(String roomID, ZegoUser fromUser, String command) {
//       log("zego call back");
//     };

//     /// The callback triggered when the state of the media player changes.
//     ///
//     /// - [mediaPlayer] Callback player object
//     /// - [state] Media player status
//     /// - [errorCode] Error code, please refer to the Error Codes https://doc-en.zego.im/en/308.html for details
//     ZegoExpressEngine.onMediaPlayerStateUpdate=(ZegoMediaPlayer mediaPlayer, ZegoMediaPlayerState state, int errorCode) {
//       log("zego call back");
//     };

//     /// The callback triggered when the network status of the media player changes.
//     ///
//     /// - [mediaPlayer] Callback player object
//     /// - [networkEvent] Network status event
//     ZegoExpressEngine.onMediaPlayerNetworkEvent=(ZegoMediaPlayer mediaPlayer, ZegoMediaPlayerNetworkEvent networkEvent) {
//       log("zego call back onMediaPlayerNetworkEvent");
//     };

//     /// The callback to report the current playback progress of the media player.
//     ///
//     /// - [mediaPlayer] Callback player object
//     /// - [millisecond] Progress in milliseconds
//     ZegoExpressEngine.onMediaPlayerPlayingProgress=(ZegoMediaPlayer mediaPlayer, int millisecond) {
//       log("zego call back onMediaPlayerPlayingProgress");
//     };

//     /// Audio effect playback state callback
//     ///
//     /// This callback is triggered when the playback state of a audio effect of the audio effect player changes.
//     ///
//     /// - [audioEffectPlayer] Audio effect player instance that triggers this callback
//     /// - [audioEffectID] The ID of the audio effect resource that triggered this callback
//     /// - [state] The playback state of the audio effect
//     /// - [errorCode] Error code, please refer to the Error Codes https://doc-en.zego.im/en/308.html for details
//     ZegoExpressEngine.onAudioEffectPlayStateUpdate=(ZegoAudioEffectPlayer audioEffectPlayer, int audioEffectID, ZegoAudioEffectPlayState state, int errorCode){
//       log("zego call back onAudioEffectPlayStateUpdate ");
//     };

//     /// The callback triggered when the state of data recording (to a file) changes.
//     ///
//     /// - [state] File recording status, according to which you should determine the state of the file recording or the prompt of the UI.
//     /// - [errorCode] Error code, please refer to the Error Codes https://doc-en.zego.im/en/308.html for details
//     /// - [config] Record config
//     /// - [channel] Publishing stream channel
//     ZegoExpressEngine.onCapturedDataRecordStateUpdate=(ZegoDataRecordState state, int errorCode, ZegoDataRecordConfig config, ZegoPublishChannel channel) {
//       log("zego call back");
//     };

//     /// The callback to report the current recording progress.
//     ///
//     /// - [progress] File recording progress, which allows developers to hint at the UI, etc.
//     /// - [config] Record config
//     /// - [channel] Publishing stream channel
//     ZegoExpressEngine.onCapturedDataRecordProgressUpdate=(ZegoDataRecordProgress progress, ZegoDataRecordConfig config, ZegoPublishChannel channel) {
//       log("zego call back ");
//     };

//     // Set the publisher state callback
//     ZegoExpressEngine.onPublisherStateUpdate = (String streamID, ZegoPublisherState state, int errorCode, Map<String, dynamic> extendedData) {
//       log("--------------11-11 zego call back onPublisherStateUpdate streamID:${streamID}, ZegoPublisherState state:${state}, int errorCode:${errorCode}, Map<String, dynamic> extendedData:${extendedData}");
//       if (errorCode == 0) {
//         setState(() {
//           log("刷新窗口");
//           // _isPublishing = true;
//           // _title = 'Publishing';
//         });

//         ZegoConfig.instance.streamID = streamID;
//         ZegoConfig.instance.saveConfig();

//       } else {
//         print('Publish error: $errorCode');
//       }
//     };

//     // // Set the publisher quality callback
//     // ZegoExpressEngine.onPublisherQualityUpdate = (String streamID, ZegoPublishStreamQuality quality) {
//     //   log("--------------11-11 zego call back onPublisherQualityUpdate String streamID:${streamID}, ZegoPublishStreamQuality quality:${quality}");
//     //   // setState(() {
//     //   //   log("刷新窗口");
//     //   //   // _publishCaptureFPS = quality.videoCaptureFPS;
//     //   //   // _publishEncodeFPS = quality.videoEncodeFPS;
//     //   //   // _publishSendFPS = quality.videoSendFPS;
//     //   //   // _publishVideoBitrate = quality.videoKBPS;
//     //   //   // _publishAudioBitrate = quality.audioKBPS;
//     //   //   // _isHardwareEncode = quality.isHardwareEncode;
//     //   //   //
//     //   //   // switch (quality.level) {
//     //   //   //   case ZegoStreamQualityLevel.Excellent:
//     //   //   //     _networkQuality = '☀️';
//     //   //   //     break;
//     //   //   //   case ZegoStreamQualityLevel.Good:
//     //   //   //     _networkQuality = '⛅️️';
//     //   //   //     break;
//     //   //   //   case ZegoStreamQualityLevel.Medium:
//     //   //   //     _networkQuality = '☁️';
//     //   //   //     break;
//     //   //   //   case ZegoStreamQualityLevel.Bad:
//     //   //   //     _networkQuality = '🌧';
//     //   //   //     break;
//     //   //   //   case ZegoStreamQualityLevel.Die:
//     //   //   //     _networkQuality = '❌';
//     //   //   //     break;
//     //   //   //   default:
//     //   //   //     break;
//     //   //   // }
//     //   // });
//     // };

//     // Set the publisher video size changed callback
//     ZegoExpressEngine.onPublisherVideoSizeChanged = (int width, int height, ZegoPublishChannel channel) {
//       log("--------------11-11  zego call back onPublisherVideoSizeChanged int width:${width}, int height:${height}, ZegoPublishChannel channel:${channel}");
//       setState(() {
//         log("刷新窗口");
//         // _publishWidth = width;
//         // _publishHeight = height;
//       });
//     };
//   }
}
