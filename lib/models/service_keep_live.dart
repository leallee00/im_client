import 'dart:async';

import 'package:fixnum/fixnum.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/net/socket.dart';
// import 'package:quliao/pb/pb_msg/live_room/live_room.pb.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pb/pb_pub/service.pb.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/pub/pub-def.dart';

/// 业务保活
///
enum SERVICE_STATE{
  // 网络连接状态
  INIT, // 初始状态
  AUTHING,  // 认证中
  AUTHED,   // 认证成功，意外断网或心跳超时状态转到init
  CLOSED,   // 手动关闭，不希望再连接了
}

class ServiceKeepLive{
  late Timer _serviceTimer;
  late int groupId;
  late Service service;
  late HEART_BEAT_TYPE heart_beat_type;
  late StreamSubscription<EventOnNetMsg> _msgStreamSub;
  Start(){
    if (_serviceTimer == null) {
      _serviceTimer = Timer.periodic(Duration(seconds: 1), _checkService);
      log("开启业务定时器",model: LOG_MODEL.LIVE);
    }

    if (_msgStreamSub == null){
      _msgStreamSub = eventBus.on<EventOnNetMsg>().listen((event) {
        log('收到了消息 NetMsg ${event.pbMsg.pbName}',model: LOG_MODEL.LIVE);
        ProcessMsg(event.pbMsg);
      });
    }

    log("业务开启了",model: LOG_MODEL.LIVE);
  }

  Stop(){
    _setState(SERVICE_STATE.CLOSED);
    _serviceTimer.cancel();
    _msgStreamSub.cancel();
    log("业务关闭了",model: LOG_MODEL.LIVE);
  }

  void ProcessMsg(PBMessage pbMessage) {
    // liveMsgHdMgr.
    // if(pbMessage.pbName == msgNameEnterRsp){
    //   // 用户登录
    //   var msg = UserEnterLiveRsp();
    //   msg.mergeFromBuffer(pbMessage.pbData);
    //   log("登录成功 ${msg}",model: LOG_MODEL.LIVE);
    //   _setState(SERVICE_STATE.AUTHED);
    // }
    // else
      if (pbMessage.pbName == msgNameHeartBeat) {
      var msg = HeartBeat();
      msg.mergeFromBuffer(pbMessage.pbData);
      if (msg.type != heart_beat_type){
        // 不匹配，直接返回
        // log("服务类型不匹配  消息的服务类型 ${msg.type}  我的服务类型 ${heart_beat_type}",model: LOG_MODEL.LIVE);
        return;
      }
      lastRcvHeartBeatTime = DateTime.now().millisecondsSinceEpoch;
      log("收到一个自己的心跳，更新最后收到的时间",model: LOG_MODEL.LIVE);
    }
  }

  HeatBeat(){
    if (DateTime.now().millisecondsSinceEpoch - lastHeartBeatTime < Duration(seconds: 10).inMilliseconds){
      return;
    }
    
    lastHeartBeatTime = DateTime.now().millisecondsSinceEpoch;
    var hartBeatMsg = HeartBeat();
    hartBeatMsg.state = HEART_BEAT_MSG_STATE.PING;
    hartBeatMsg.type = heart_beat_type;
    Client.instance.sendMsg(hartBeatMsg, Int64(groupId), MakePBCommData()..aimId=Int64(groupId)..serviceType=service);
  }
  
  _setState(SERVICE_STATE state){
    log("业务状态从${serviceState} 转变为 ${state}",model: LOG_MODEL.LIVE);
    serviceState = state;
    stateChangeTime = DateTime.now().millisecondsSinceEpoch;
  }

  int stateChangeTime = 0;  /// 网络状态变化时间
  int lastHeartBeatTime = 0; /// 最后发送心跳时间
  int lastRcvHeartBeatTime = 0; /// 最后接收心跳时间
  
  SERVICE_STATE serviceState = SERVICE_STATE.INIT;
  dynamic _checkService(Timer timer) async {
    int interval = DateTime.now().millisecondsSinceEpoch - stateChangeTime;
    // log("_checkService ${serviceState}",model: LOG_MODEL.LIVE);

    switch (serviceState) {
      case SERVICE_STATE.INIT:
        // 发送进入房间消息
        var enterRoomMsg = EnterRoomReq();
        Client.instance.sendMsg(enterRoomMsg, Int64(groupId), MakePBCommData()..aimId=Int64(groupId)..serviceType=service);
        _setState(SERVICE_STATE.AUTHING);
        log("------------进入房间${groupId}...",model: LOG_MODEL.LIVE);
        break;
      case SERVICE_STATE.AUTHING:
        // 超时处理
        if (DateTime.now().millisecondsSinceEpoch - stateChangeTime > Duration(seconds: 10).inMilliseconds){
          log("------------进入房间超时",model: LOG_MODEL.LIVE);
          showToast("进入房间超时");
          _setState(SERVICE_STATE.INIT);
        }
        break;
      case SERVICE_STATE.AUTHED:
        // 发送心跳
        // log("发送心跳",model: LOG_MODEL.LIVE);
        HeatBeat();

        if (DateTime.now().millisecondsSinceEpoch - lastRcvHeartBeatTime > Duration(seconds: 30).inMilliseconds){
          // 业务心跳超时
          log("心跳超时，重新进入",model: LOG_MODEL.LIVE);
          _setState(SERVICE_STATE.INIT);
          showToast("心跳超时");
        }
        break;
      case SERVICE_STATE.CLOSED:
        // 手动关闭，不做任何处理
        log("业务被关闭了",model: LOG_MODEL.LIVE);
        break;
    }
  }
}


var msgNameEnterRsp = EnterRoomRsp().info_.qualifiedMessageName;
// var msgUserEnterLiveRsp = UserEnterLiveRsp().info_.qualifiedMessageName;
var msgNameHeartBeat = HeartBeat().info_.qualifiedMessageName;