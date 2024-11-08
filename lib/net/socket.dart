import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:quliao/app.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/db/database.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/global/controller/im_controller.dart';
import 'package:quliao/net/comm_msg_handlers.dart';
import 'package:quliao/pb/pb_msg/gate/gate.pb.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart';
import 'package:quliao/pb/pb_msg/offline_msg/offlineMsg.pb.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pb/pb_pub/service.pb.dart';
import 'package:quliao/pub/config.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/pub/pub-def.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:protobuf/protobuf.dart';
import 'package:aes_crypt_null_safe/aes_crypt_null_safe.dart';
import 'package:quliao/utils/common_util.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:synchronized/extension.dart';
import 'package:synchronized/synchronized.dart';

import '../models/sound_effect/sound_effect.dart';
import '../models/sound_effect/type_def.dart';
import 'package:quliao/mywedgits/badger/badger.dart';
import 'models.dart';
import 'msg_handler_mgr.dart';
import 'package:quliao/pb/pb_msg/offline_msg/offlineMsg.pb.dart' as $offline;
import 'package:device_info_plus/device_info_plus.dart';

// var msgNameloginRsp = LoginRsp().info_.qualifiedMessageName;
var msgNameHeartBeat = HeartBeat().info_.qualifiedMessageName;

var lock = Lock();

// Sets a platform override for desktop to avoid exceptions. See
// https://flutter.cn/desktop#target-platform-override for more info.
// void _enablePlatformOverrideForDesktop() {
//   if (!kIsWeb && (Platform.isWindows || Platform.isLinux)) {
//     debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
//   }
// }

/// todo 维护一个发送列表，如果发送出去则删除，未发送出去则超时重发

// 管理类
class Client {
  /// //////////////////////////////////////////////////////////////////////////
  /// 单例方法 开始
  /// 单例实例
  static Client? _instance; // = Client._internal();

  /// 构造函数重定向到instance
  factory Client() => _getInstance()!;

  /// instance 重定向到_getInstance函数
  static Client get instance => _getInstance()!;

  /// 初始化数据
  Client._internal() {
    /// 初始化
    enNetState = NET_STATE.NET_STATE_INIT; //NET_STATE.NET_STATE_CLOSED;
  }

  /// 单例获取，每次调用返回同一个数据
  static Client? _getInstance() {
    if (_instance == null) {
      lock.synchronized(() {
        if (null == _instance) {
          _instance = Client._internal();

          /// 创建示例的时候初始化通用消息处理句柄
          initCommMsgHandlers();

          /// 网络类型监听
          _instance?._connectivitySubscription =
              _instance?._connectivity.onConnectivityChanged.listen(
            _instance?._updateConnectionStatus,
          );
        }
      });
    }

    return _instance;
  }

  /// 单例结束
  /// ///////////////////////////////////////////////////////////////////////////

  // 毫秒
  var stateInterval = Duration(seconds: 10);

  //socket实例,连接端口则生命周期结算，重连则新生命周期开始
  late Socket? _socket = null;

  /// 驱动网络状态检查的定时器,驱动网络状态机，生命周期与client相同
  late Timer? connectTimer = null;

  /// 消息处理管理器，收到的业务消息都交给他处理
  MsgHandlerMgr msgHandlerMgr = MsgHandlerMgr();

  /// 给socket编个号,每重连一次就生成一个编号，创建一个socket
  var _lastSocketNo = 0;

  /// 初始化为 init
  NET_STATE enNetState = NET_STATE.NET_STATE_INIT;

  /// 网络连接类型监控 wifi,mobile,none
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult>? _connectivitySubscription;
  ConnectivityResult _connectivityResult =
      ConnectivityResult.none; // wifi,mobile,none

  // 毫秒
  /// 网络状态变化时间,每次变化更新为当前时间，用于超时判断
  int stateChangeTime = 0;

  /// 最后发送心跳时间 , 当前时间-最后发心跳时间 > 10秒 触发发心跳动作
  int lastHeartBeatTime = 0;

  /// 最近一次接收到心跳的时间，从服务端收到心跳更新此时间，当前时间-最近收到心跳时间>30秒视为超时离线，进入重连逻辑
  int lastRcvHeartBeatTime = 0;

  /// 消息延迟时间,主要用心跳返回计算延迟
  int netDelayTime = 0;

  // 重连策略
  DateTime lastReconnectTime = DateTime.now();

  /// 最后重连时间
  var maxTryConnectInterval =
      Duration(seconds: 60); // 60 * Duration.millisecondsPerSecond; /// 最大重连间隔
  var minTryConnectInterval =
      Duration(seconds: 10); // 60 * Duration.millisecondsPerSecond; /// 最小重连间隔
  var curConnectInterval = Duration(seconds: 10);

  /// 记录一些统计数据
  int statHeartBeatSendCount = 0;

  /// 心跳发送次数
  int statHeartBeatRcvCount = 0;

  /// 心跳收取次数
  int statReconnectTimes = 0;

  /// 重连次数
  int statAuthedTimes = 0;

  /// 存储缓存消息
  Map<Int64, PBMessage> messageMap = <Int64, PBMessage>{};

  /// 认证成功次数

  /// 只有从网络收到的消息才走这里,读取离线解开后每个消息也走这里派发
  Future<void> onNetMsg(PBMessage pbMsg, EnMsgFrom enMsgFrom) async {
    /// 派发处理，存储消息
    if (pbMsg.pbName != "pb_pub.HeartBeat") {
      log("收到一个网络消息:${pbMsg.pbName} sn:${pbMsg.pbCommData.msgSn} snuid:${pbMsg.pbCommData.msgSn >> 32} snsn:${pbMsg.pbCommData.msgSn - (pbMsg.pbCommData.msgSn >> 32 << 32)} needReadReceipt:${pbMsg.pbCommData.needReadReceipt} groupId: ${pbMsg.pbCommData.groupId} enMsgFrom: $enMsgFrom");
      LoggerManager().debug(
          '收到一个网络消息: ${pbMsg.pbName} srcId ===> ${pbMsg.pbCommData.srcId} aimId ===> ${pbMsg.pbCommData.aimId}');
      dbSaveMsg(
        pbMsg,
        isFromNet: true,
        callback: () {
          if (enMsgFrom == EnMsgFrom.net && pbMsg.pbCommData.needReadReceipt) {
            if (pbMsg.pbName == pbNameMsgReceipt) {
              // 如果收到了自己发的回执，直接忽略，不是自己的就发送个end，用户删除服务端的存储
              // void
            } else {
              if (pbMsg.pbCommData.groupId.toInt() > 0) {
                LoggerManager().debug(
                  'socket next msg send receipt status: ${MSG_STATE.RECEIVED} msgSn: ${pbMsg.pbCommData.msgSn}',
                );

                if (pbMsg.pbCommData.srcId == AppUserInfo.instance.imId) {
                  // 如果是自己发的消息，这里收到的话应该是消息同步过来的，直接发个End回执，代表已经收到，下次不需再同步过来
                  sendReceiptMsg(
                    pbMsg.pbCommData,
                    beginTime: Int64(0),
                    state: MSG_STATE.END,
                  );

                  // 如果是别人发的，则回个已收到
                  sendReceiptMsg(
                    pbMsg.pbCommData,
                    beginTime: Int64(0),
                    state: MSG_STATE.RECEIVED,
                  );
                } else {
                  LoggerManager().debug(
                    'socket next msg send receipt status: ${MSG_STATE.RECEIVED} msgSn: ${pbMsg.pbCommData.msgSn}',
                  );
                  // 如果是别人发的，则回个已收到
                  sendReceiptMsg(
                    pbMsg.pbCommData,
                    beginTime: Int64(0),
                    state: MSG_STATE.RECEIVED,
                  );
                }
              }

              // if (pbMsg.pbCommData.srcId == AppUserInfo.instance.imId) {
              //   // 如果是自己发的消息，这里收到的话应该是消息同步过来的，直接发个End回执，代表已经收到，下次不需再同步过来
              //   sendReceiptMsg(
              //     pbMsg.pbCommData,
              //     beginTime: Int64(0),
              //     state: MSG_STATE.END,
              //   );
              // } else {
              //   LoggerManager().debug(
              //     'socket next msg send receipt status: ${MSG_STATE.RECEIVED} msgSn: ${pbMsg.pbCommData.msgSn}',
              //   );
              //   // 如果是别人发的，则回个已收到
              //   sendReceiptMsg(
              //     pbMsg.pbCommData,
              //     beginTime: Int64(0),
              //     state: MSG_STATE.RECEIVED,
              //   );
              // }
            }
          }
        },
      );
    }

    // 已经收到了，在此统一发送删除离线的消息，如果是别人发的receipt消息，需要发个END状态删除离线
    // var stat = pbMsg.pbCommData.needReadReceipt &&
    //     pbMsg.pbCommData.srcId != AppUserInfo.instance.imId;
    // if (pbMsg.pbName != "pb_pub.HeartBeat") {
    // log("${pbMsg
    //     .pbName}回执判断条件：${stat}= pbMsg.pbCommData.needReadReceipt(${pbMsg
    //     .pbCommData.needReadReceipt}) && pbMsg.pbCommData.srcId(${pbMsg
    //     .pbCommData.srcId}) != AppUserInfo.instance.imId:${AppUserInfo
    //     .instance.imId}");
    // }

    // 从网络过来的消息，自己发的也要回复一个
    // 状态为END的回执消息只会删除离线，代表已经收到了，不会转发到对方，方向发送
    // if (pbMsg.pbCommData.needReadReceipt &&
    //     pbMsg.pbCommData.srcId != AppUserInfo.instance.imId) {
    if (enMsgFrom == EnMsgFrom.net && pbMsg.pbCommData.needReadReceipt) {
      LoggerManager().debug(
          'onNextMsg net msgSn: ${pbMsg.pbCommData.msgSn} groupMsgSn: ${pbMsg.pbCommData.groupMsgSn} srcId: ${pbMsg.pbCommData.srcId} aimId: ${pbMsg.pbCommData.aimId} groupId: ${pbMsg.pbCommData.groupId}');
      try {
        // AppDatabase().groupMessageDao?.updateGroupMsgSn(
        //       pbMsg.pbCommData.msgSn.toInt(),
        //       groupMsgSn: pbMsg.pbCommData.groupMsgSn.toInt(),
        //     );
        // final conversationId = pbMsg.pbCommData.groupId.toInt();
        // ImController.to.getConversationById(conversationId).then((value) {
        //   LoggerManager()
        //       .debug('onNextMsg net conversation info: ${value?.toJson()}');
        //   if (null != value && value.msgSn == pbMsg.pbCommData.msgSn.toInt()) {
        //     final dataMap = <String, dynamic>{
        //       'groupMsgSn': pbMsg.pbCommData.groupMsgSn.toInt(),
        //     };
        //     AppDatabase().getChatListDao()?.update(
        //           conversationId,
        //           dataMap: dataMap,
        //         );
        //     ImController.to
        //         .updateConversationGroupMsgSn(conversationId, dataMap: dataMap);
        //   }
        // });
      } catch (error) {
        LoggerManager().debug('$error');
      }
      // if (pbMsg.pbName == pbNameMsgReceipt) {
      //   // 如果收到了自己发的回执，直接忽略，不是自己的就发送个end，用户删除服务端的存储
      //   // void
      // } else if (pbMsg.pbCommData.srcId == AppUserInfo.instance.imId) {
      //   // 如果是自己发的消息，这里收到的话应该是消息同步过来的，直接发个End回执，代表已经收到，下次不需再同步过来
      //   sendReceiptMsg(
      //     pbMsg.pbCommData,
      //     beginTime: Int64(0),
      //     state: MSG_STATE.END,
      //   );
      // } else {
      //   LoggerManager().debug(
      //       'socket next msg send receipt status: ${MSG_STATE.RECEIVED} msgSn: ${pbMsg.pbCommData.msgSn}');
      //   // 如果是别人发的，则回个已收到
      //   sendReceiptMsg(
      //     pbMsg.pbCommData,
      //     beginTime: Int64(0),
      //     state: MSG_STATE.RECEIVED,
      //   );
      // }
    }

    // 处理消息
    msgHandlerMgr.onMsg(pbMsg, enMsgFrom);

    // 底层处理后通知上层处理
    eventBus.fire(EventOnNetMsg(pbMsg, enMsgFrom));
  }

  /// 开启网络连接,addr为连接字符串 ip:port
  Future<Socket?> _connect(String addr) async {
    try {
      var ipport = addr.split(":");

      //建立链接
      _socket = await Socket.connect(ipport[0], int.parse(ipport[1]),
          timeout: Duration(seconds: 3));
      statReconnectTimes++;

      var curSocketNo = ++_lastSocketNo;
      logInfo(
          "-------------------------socket no:${curSocketNo} created-------------------");

      /// 缓存的网络数据，暂未处理（一般这里有数据，说明当前接收的数据不是一个完整的消息，需要等待其它数据的到来拼凑成一个完整的消息）
      /// 就是所谓的粘包分包处理空间
      Uint8List cacheData = Uint8List(0);

      // 注册监听，处理网络发来的消息
      _socket?.listen((Uint8List newData) {
        if (curSocketNo != _lastSocketNo) {
          log("=======================刚才关闭的老的socket 收消息的 socketNo:${curSocketNo}, 当前活跃的socketNo:${_lastSocketNo}=======================");
          return;
        }
        // log("-soketno(${curSocketNo})>>>>>>>>>>>>>>>>-get new data len=${newData.length} uint8len= ${cacheData.length} old datalen=${cacheData.length}");

        //拼凑当前最新未处理的网络数据,刚收到的消息拼到前次剩余的数据后面，再进行解析，粘包处理
        cacheData = Uint8List.fromList(cacheData + Uint8List.fromList(newData));

        // try {
        // 消息格式： |消息头[4字节版本信息|4字节消息长度]|消息体[数据]|
        //缓存数据长度符合最小包长度才尝试解码，分包处理
        while (cacheData.length >= headLen) {
          var byteData = cacheData.buffer.asByteData();

          //读取消息长度
          var msgLen = byteData.getInt32(msgVersionByteLen);

          //数据长度小于消息长度，说明不是完整的数据，暂不处理，等待网络发来后续数据再处理
          if (cacheData.length < msgLen + headLen) {
            log("------------------------cacheData.length:${cacheData.length} < msgLen + headLen:${msgLen + headLen}, not full msg,wait more net data...");
            return;
          }

          //分包， 取出一个完整的数据包
          Uint8List pbBody = Uint8List(0);
          if (msgLen > 0) {
            pbBody = cacheData.sublist(headLen, msgLen + headLen);
            // log("-----------------tack out one msg ${msgLen + headLen}");
          }

          //整理缓存数据，把取出数据的空间去掉
          cacheData = cacheData.sublist(headLen + msgLen, cacheData.length);
          // log("-----------------left data len ${cacheData.length}");

          // 解密网络数据包
          var pbData = cfbDecrypt(pbBody);

          // 解析msg
          var msg = PBMessage();
          msg.mergeFromBuffer(pbData);

          // 对时，以服务器时间为准
          UpdateTimeOffSet(msg.pbCommData.time);

          onNetMsg(msg, EnMsgFrom.net);

          /// 派发处理，存储消息
          // log("收到网络消息:${msg.pbCommData}");
          // if (msg.pbName != "pb_pub.HeartBeat") {
          //   log("---socket no:${curSocketNo} 收到一个网络消息:${msg.pbName}");
          //   dbSaveMsg(msg);
          // }
          //
          // // 已经收到了，在此统一发送删除离线的消息，如果是别人发的receipt消息，需要发个END状态删除离线
          // if (msg.pbCommData.needReadReceipt && msg.pbCommData.srcId != AppUserInfo.instance.imId) {
          //   sendReceiptMsg(msg.pbCommData, beginTime: Int64(0),
          //       state: MSG_STATE.END);
          // }
          //
          // // 处理消息
          // msgHandlerMgr.onMsg(msg);
          //
          // // 底层处理后通知上层处理
          // eventBus.fire(EventOnNetMsg(msg));
        }
        // } catch (e) {
        //   logError("!!!!!!!!!!!!!!!!!!!!!!!! socket no ${curSocketNo} process msg err:${e}, reset buf。。。");
        //
        //   // 网络处理出错，一切归零，从头开始
        //   cacheData = Uint8List(0);
        // }
      }, onError: (e) {
        log("!!!!!!!!!!!!!!!!!!!!!socket no:${curSocketNo} net error!!! ${e.toString()}");
        Client()._closeSocket();
        Client()._setNetState(NET_STATE.NET_STATE_INIT);
      },
          onDone: () => {
                log("######################### 网络关闭 socket no:${curSocketNo} -done handler!!")
                // _socket = null;
              },
          cancelOnError: false);

      // 处理接收到的网络消息
      base64.encoder.bind(_socket!);
      return _socket;
    } catch (e) {
      log("connect server (${addr} err:${e.toString()}");
      if (_socket != null) {
        _socket?.close();
        _socket = null;
      }
      return _socket;
    }
  }

  /// 关闭网络连接
  _closeSocket() {
    if (_socket == null) {
      log("-socketno(${_lastSocketNo}})---------------socket closed already!! ");
      return;
    }

    log("-socketno(${_lastSocketNo}})---------------close socket!! ");
    try {
      _socket?.destroy();
    } catch (e) {
      log("-socketno(${_lastSocketNo}})-!!!!!!!!!!!!!!!!!!!!!-close socket error!! ${e.toString()}");
    }
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    _connectivityResult = result;
    LoggerManager().debug("网络变化，当前网络为:$result");
    switch (result) {
      case ConnectivityResult.wifi:
      case ConnectivityResult.mobile:
        // 网络连接正常，直接发起连接
        stateChangeTime = 0;
        lastReconnectTime = DateTime.parse("2020-01-01");
        curConnectInterval = Duration(seconds: 10);
        log("网络状态良好，重置重连时间 ");
        break;
      case ConnectivityResult.none:
        log("现在没有网络，什么也做不了,真烦");
        break;
      default:
        log("没有网络状态的任何信息:(");
        break;
    }

    // eventBus.fire(EventOnNetStateChange(enNetState, enNetState, _connectivityResult,""));
    // eventBus.fire(EventNotify(NetState()));
    LoggerManager().debug('_fireNetStateEvent 111');
    _fireNetStateEvent();
  }

  void switchEndPoint() async {
    var userInfo = AppUserInfo();
    _setNetState(NET_STATE.NET_STATE_SWITCH);
    if (userInfo.imId == 0) {
      // 还没有用户信息，先不连接网络
      _setNetState(NET_STATE.NET_STATE_CLOSED);
      log("用户信息为空，关闭网络");
    }

    log("imuid--------------->${userInfo.imId} socket start ... ");

    lastReconnectTime = lastReconnectTime.add(-maxTryConnectInterval);

    connectTimer?.cancel();
    connectTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _checkNet(timer, switchEndPoint: true);
    });
  }

  Completer<void>? _syncLock;

  /// 防止异步方法并发
  Future<void> _syncCall(Future Function()? fn) async {
    // 设置同步等待
    var lastCompleter = _syncLock;
    var completer = Completer<void>();
    _syncLock = completer;
    // 等待其他同步任务完成
    await lastCompleter?.future;
    // 主任务
    await fn?.call();
    // 结束
    completer.complete();
  }

  /// 开启网络循环定时器
  void Start() async {
    await _syncCall(() async {
      // 如果有状态就直接开启
      var userInfo = AppUserInfo();
      _setNetState(NET_STATE.NET_STATE_INIT);
      if (userInfo.imId == 0) {
        // 还没有用户信息，先不连接网络
        _setNetState(NET_STATE.NET_STATE_CLOSED);
        log("用户信息为空，关闭网络");
      }

      log("imuid--------------->${userInfo.imId} socket start ... ");

      lastReconnectTime = lastReconnectTime.add(-maxTryConnectInterval);

      if (connectTimer == null) {
        connectTimer = Timer.periodic(Duration(seconds: 1), _checkNet);
      }
    });
    // await lock.synchronized(() async {
    //
    // });
    // // 网络类型监听
    // if (_connectivitySubscription == null) {
    //   _connectivitySubscription =
    //       _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
    // }
  }

  /// 关闭网络
  Future<void> Stop() async {
    // 关闭网络
    _closeSocket();

    /// 关闭timer
    connectTimer?.cancel();
    connectTimer = null;

    _setNetState(NET_STATE.NET_STATE_CLOSED);

    // 清理数据 todo 每一个socket都应该有自己的buf，不能混用
    // cacheData = Uint8List(0);
    log("socket stoped");
  }

  /// 发送网络状态通知
  Future<void> _fireNetStateEvent() async {
    eventBus.fire(NetState(enNetState, _connectivityResult, netDelayTime, "")
      ..heartBeatSendCount = statHeartBeatSendCount
      ..heartBeatRcvCount = statHeartBeatRcvCount
      ..reconnectTimes = statReconnectTimes
      ..authedTimes = statAuthedTimes);
    if (statHeartBeatSendCount - statHeartBeatRcvCount > 1) {
      log("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@不相等@@@@@@@@@@@@@@@@@ heartbeart interval:${DateTime.now().millisecondsSinceEpoch - lastRcvHeartBeatTime}");
    }
  }

  /// 获取网络状态信息
  NetState getNetState() {
    return NetState(enNetState, _connectivityResult, netDelayTime, "")
      ..heartBeatSendCount = statHeartBeatSendCount
      ..heartBeatRcvCount = statHeartBeatRcvCount
      ..reconnectTimes = statReconnectTimes
      ..authedTimes = statAuthedTimes;
  }

  /// 设置网络状态，驱动网络状态变化
  void _setNetState(NET_STATE state) {
    stateChangeTime = DateTime.now().millisecondsSinceEpoch;
    log("set net state from $enNetState to $state on time:$stateChangeTime",
        deep: 2);

    enNetState = state;
    if (state == NET_STATE.NET_STATE_AUTHED) {
      ConfigMgr().manualSwitch = false;
      lastHeartBeatTime = stateChangeTime;

      // 重置一下统计信息
      statHeartBeatRcvCount = 0;
      statHeartBeatSendCount = 0;

      /// 重置一下重连间隔数据,都认证成功了，如果意外掉线则立即重连，无需10秒等待
      curConnectInterval = Duration(seconds: 0);
    }
    LoggerManager().debug('_fireNetStateEvent 222');
    _fireNetStateEvent();
  }

  // 检查网络连接
  void _checkNet(
    Timer timer, {
    bool switchEndPoint = false,
  }) async {
//    log("check net");
    // 1秒check一次
    int interval = DateTime.now().millisecondsSinceEpoch - stateChangeTime;
    switch (enNetState) {
      case NET_STATE.NET_STATE_INIT:
        {
          if (ConfigMgr().config == null) {
            log("还没有准备好，请稍候");
            return;
          }

          // 初始状态, 获取gate
          // log("_checkNet ${enNetState}");
          if (DateTime.now().millisecondsSinceEpoch <
              lastReconnectTime.millisecondsSinceEpoch +
                  curConnectInterval.inMilliseconds) {
            return;
          }

          // 认证成功情况下会把这项设置为0，保证断线立即重连,这里重连执行时还原回来
          curConnectInterval = curConnectInterval >= minTryConnectInterval
              ? curConnectInterval
              : minTryConnectInterval;

          // 关闭网络
          _closeSocket();

          var user = AppUserInfo();
          if (user.imId == 0) {
            log("没有用户信息是登录不了的先close掉吧");
            _setNetState(NET_STATE.NET_STATE_CLOSED);
            break;
          }

          // 重连策略，每次不成功都会增加时间间隔，知道最大值
          lastReconnectTime = DateTime.now();
          curConnectInterval = curConnectInterval > maxTryConnectInterval
              ? maxTryConnectInterval
              : curConnectInterval * 2;

          _setNetState(NET_STATE.NET_STATE_PREPARING);
          log("init state do get gate allocator ${ConfigMgr().config?.cfgAllocatorUrl} queryParameters:{'userId':'${user.imId}'}");
          var rsp = await Dio().get(ConfigMgr().config!.cfgAllocatorUrl,
              queryParameters: {"userId": "${user.imId}"});
          if (rsp.statusCode != 200) {
            log("get gate error! userId=${user.imId}, rsp=${rsp} rsp.statusCode=${rsp.statusCode} rsp.data=${rsp.data}");
            _setNetState(NET_STATE.NET_STATE_INIT);
            break;
          }

          if (rsp.data["result"] != 0) {
            log("get gate error! userId=${user.imId}, result=${rsp.data['result']}");
            _setNetState(NET_STATE.NET_STATE_INIT);
            break;
          }

          log("获取gate成功 ${rsp}");

          /// 连接服务器
          var socket = await _connect(rsp.data["data"]);
          if (socket == null) {
            log("socket 连接失败");
            _setNetState(NET_STATE.NET_STATE_INIT);
            break;
          }

          _setNetState(NET_STATE.NET_STATE_AUTHING);
          sendLoginMsg();
        }
        break;
      case NET_STATE.NET_STATE_SWITCH:
        {
          // 认证成功情况下会把这项设置为0，保证断线立即重连,这里重连执行时还原回来
          curConnectInterval = curConnectInterval >= minTryConnectInterval
              ? curConnectInterval
              : minTryConnectInterval;

          // 关闭网络
          _closeSocket();

          var user = AppUserInfo();
          if (user.imId == 0) {
            log("没有用户信息是登录不了的先close掉吧");
            _setNetState(NET_STATE.NET_STATE_CLOSED);
            break;
          }

          // 重连策略，每次不成功都会增加时间间隔，知道最大值
          lastReconnectTime = DateTime.now();
          curConnectInterval = curConnectInterval > maxTryConnectInterval
              ? maxTryConnectInterval
              : curConnectInterval * 2;

          _setNetState(NET_STATE.NET_STATE_PREPARING);
          log("init state do get gate allocator ${ConfigMgr().config?.cfgAllocatorUrl} queryParameters:{'userId':'${user.imId}'}");
          var rsp = await Dio().get(ConfigMgr().config!.cfgAllocatorUrl,
              queryParameters: {"userId": "${user.imId}"});
          if (rsp.statusCode != 200) {
            log("get gate error! userId=${user.imId}, rsp=${rsp} rsp.statusCode=${rsp.statusCode} rsp.data=${rsp.data}");
            _setNetState(NET_STATE.NET_STATE_SWITCH);
            break;
          }

          if (rsp.data["result"] != 0) {
            log("get gate error! userId=${user.imId}, result=${rsp.data['result']}");
            _setNetState(NET_STATE.NET_STATE_SWITCH);
            break;
          }

          log("获取gate成功 ${rsp}");

          /// 连接服务器
          var socket = await _connect(rsp.data["data"]);
          if (socket == null) {
            log("socket 连接失败");
            _setNetState(NET_STATE.NET_STATE_SWITCH);
            break;
          }

          _setNetState(NET_STATE.NET_STATE_AUTHING);
          sendLoginMsg();
        }
        break;
      case NET_STATE.NET_STATE_PREPARING:
        {
          // 10秒超时
          if (interval > stateInterval.inMilliseconds) {
            log("还准备不好，从头再来");
            if (switchEndPoint) {
              _setNetState(NET_STATE.NET_STATE_SWITCH);
            } else {
              _setNetState(NET_STATE.NET_STATE_INIT);
            }
          }
        }
        break;
      case NET_STATE.NET_STATE_AUTHING:
        {
          // 10秒超时
          if (interval > stateInterval.inMilliseconds) {
            log("认证超时, 重新连接");
            if (switchEndPoint) {
              _setNetState(NET_STATE.NET_STATE_SWITCH);
            } else {
              _setNetState(NET_STATE.NET_STATE_INIT);
            }
          }
        }
        break;
      case NET_STATE.NET_STATE_AUTHED:
        {
          // 检查心跳
          int interval =
              DateTime.now().millisecondsSinceEpoch - lastRcvHeartBeatTime;
          if (switchEndPoint) {
            switchEndPoint = false;
          }
          if (Duration(milliseconds: interval) > Duration(seconds: 90)) {
            log("心跳超时，重新连接");
            _setNetState(NET_STATE.NET_STATE_INIT);
            break;
          }

          interval = DateTime.now().millisecondsSinceEpoch - lastHeartBeatTime;
          if (Duration(milliseconds: interval) > Duration(seconds: 10)) {
            sendHeartBeatMsg();
            lastHeartBeatTime = DateTime.now().millisecondsSinceEpoch;
          }
        }
        break;
      case NET_STATE.NET_STATE_CLOSED:
        {
          // 手动关闭，不希望再连接了
        }
        break;
      default:
        {
          log("未知的timer逻辑，关闭");
          connectTimer?.cancel();
          // connectTimer = null;
        }
        break;
    }
  }

  // 登录成功处理
  onLoginSuccess() {
    log("----------------------------------login success!");
    // 第一次心跳在10秒之后
    lastRcvHeartBeatTime = DateTime.now().millisecondsSinceEpoch;
    // 最后连接时间清零，让下次断线重连更快
    lastReconnectTime = DateTime(0);
    statAuthedTimes++;
    _setNetState(NET_STATE.NET_STATE_AUTHED);

    // 获取离线消息
    // getOfflineMsg(0, 10);
    // fetchHistoryMessage();
    fetchSysNotifyMsg();

    // 发送缓存消息
    sendCrashMessages();
  }

  // 发送心跳
  sendHeartBeatMsg() {
    var user = AppUserInfo();
    var hartBeatMsg = HeartBeat();
    hartBeatMsg.state = HEART_BEAT_MSG_STATE.PING;
    var msg = sendMsg(hartBeatMsg, Int64(user.imId), MakePBCommData());
    if (msg == null) {
      log("!!!!!!!!!!!!!!!发送心跳消息失败，不计入发送总数");
    }
    statHeartBeatSendCount++;
    LoggerManager().debug('_fireNetStateEvent 333');
    _fireNetStateEvent();
  }

  /// 心跳处理
  onHeartBeat() {
    lastRcvHeartBeatTime = DateTime.now().millisecondsSinceEpoch;
    netDelayTime = lastRcvHeartBeatTime - lastHeartBeatTime;
    Client().statHeartBeatRcvCount++;
    LoggerManager().debug('_fireNetStateEvent 444');
    _fireNetStateEvent();
  }

  /// 发送消息 false失败 true 成功
  PBMessage? sendMsg(
    GeneratedMessage pbOutMsg,
    Int64 hashKey,
    PBCommData pbCommData,
  ) {
    // log("-socketno(${_lastSocketNo})--------------will send msg ${pbOutMsg.info_.qualifiedMessageName} --");

    PBMessage pbMsg = PBMessage();
    pbMsg.hashKey = hashKey.toString();
    pbMsg.pbCommData = pbCommData;
    pbMsg.pbCommData.userSourceVersion = AppUserInfo().userSourceVersion;
    pbMsg.pbData = pbOutMsg.writeToBuffer();
    pbMsg.pbName = pbOutMsg.info_.qualifiedMessageName;
    pbMsg.pbCommData.time = GetServerTime();
    pbMsg.service = pbCommData.serviceType.name;

    if (pbOutMsg is ChatText || pbOutMsg is GroupChat) {
      if (!messageMap.containsKey(pbCommData.msgSn)) {
        messageMap[pbCommData.msgSn] = pbMsg;
        LoggerManager()
            .debug(' ---------- 开始发送消息-${pbCommData.msgSn} ---------- ');
        LoggerManager().debug(
            ' ---------- 开始发送消息 messageMap: ${messageMap.keys} ---------- ');
      }
    }

    try {
      _socket?.add(fetchSendMsgData(pbMsg));
      if (pbMsg is! HeartBeat && pbMsg is! MsgReceipt) {
        LoggerManager().debug(
          "发送消息 ${pbMsg.pbName} ${pbMsg.pbCommData.msgSn}",
        );
        if (pbOutMsg is ChatText || pbOutMsg is GroupChat) {
          dbSaveMsg(pbMsg).then(
            (value) {
              // 发个发送通知
              eventBus.fire(EventOnNetMsg(pbMsg, EnMsgFrom.local));
            },
          );
        }
      }
    } catch (e) {
      log("-socketno(${_lastSocketNo})！！！！！！！！！！！send err：pbOutMsg:${pbOutMsg}, hashKey:${hashKey}, PBCommData:${pbCommData} e:${e.toString()}");
      LoggerManager().debug(
          "消息发送失败, 加入缓存队列 ------ ${pbMsg.pbName} ${pbMsg.pbCommData.msgSn}");
      if (pbMsg is! HeartBeat && pbMsg is! MsgReceipt) {
        log("消息发送失败，开始存储到本地 ${pbMsg.pbName} ${pbMsg.pbCommData.msgSn}");
        if (pbOutMsg is ChatText || pbOutMsg is GroupChat) {
          dbSaveMsg(pbMsg).then(
            (value) {
              // 发个发送通知
              eventBus.fire(EventOnNetMsg(pbMsg, EnMsgFrom.local));
            },
          );
        }
      }
      return null;
    }

    if (pbOutMsg is ChatText || pbOutMsg is GroupChat) {
      SoundEffect().playWithType(SoundEffectType.msgSend);
    }

    if (pbMsg.pbName != msgNameHeartBeat) {
      log("--socketno(${_lastSocketNo})--发送一个msgsn:${pbCommData.msgSn} 的消息 ${pbMsg.pbName} srcId:${pbCommData.srcId} aimId:${pbCommData.aimId} groupId:${pbCommData.groupId} toservice:${pbCommData.serviceType}");
    }

    // log("-socketno(${_lastSocketNo})-<<<<<<<<<<<<<<<<<<<<<<<<<<<<<-send msg ${pbMsg.pbName}");
    return pbMsg;
  }

  /// 处理缓存消息
  void sendCrashMessages() {
    LoggerManager().debug("登录成功，处理缓存队列消息");

    for (final element in messageMap.values) {
      try {
        LoggerManager().debug('开始重新发送消息，消息id ===> ${element.pbCommData.msgSn}');
        _socket?.add(
          fetchSendMsgData(element),
        );
        eventBus.fire(EventOnNetMsg(element, EnMsgFrom.local));
      } catch (error) {
        LoggerManager().debug('尝试重新发送失败，消息id ===> ${element.pbCommData.msgSn}');
      }
    }

    // List<PBMessage> sendCrashList = crashMessages;
    // for (var crashMsg in sendCrashList) {
    //   try {
    //     _socket!.add(fetchSendMsgData(crashMsg));
    //     // 发个发送通知
    //     eventBus.fire(EventOnNetMsg(crashMsg, EnMsgFrom.local));
    //     crashMessages.remove(crashMsg);
    //   } catch (e) {
    //     log("-socketno(${_lastSocketNo})！！！！！！！！！！！send err：pbOutMsg:${crashMsg}, hashKey:${crashMsg.hashKey}, PBCommData:${crashMsg.pbCommData} e:${e.toString()}");
    //     // 捕获异常 添加到缓存队列
    //     log("发送失败 加入缓存队列2");
    //     crashMessages.add(crashMsg);
    //   }
    // }
  }
}

List<int> fetchSendMsgData(PBMessage pbMsg) {
  int version = 1;

  Uint8List body = pbMsg.writeToBuffer();
  var cryptData = cfbEncrypt(body);

  //包头部分
  var header = ByteData(headLen);
  header.setInt32(0, version);
  header.setInt32(msgVersionByteLen, cryptData.length);

  //包头+pb组合成一个完整的数据包
  var msg = cryptData.isEmpty
      ? header.buffer.asUint8List()
      : header.buffer.asUint8List() + cryptData;
  return msg;
}

/// 先适配服务端老的方式， 应该不需要每次创建crypt，这样才能发挥cfb的效果，这里先这样用
Uint8List cfbEncrypt(Uint8List data) {
  Uint8List key = Uint8List.fromList("jilub234fswftwgt".codeUnits);
  Uint8List iv = Uint8List.fromList("wefjkh3874jkl23h".codeUnits);
  var crypt = AesCrypt();
  AesMode mode = AesMode.cfb;
  crypt.aesSetKeys(key, iv);
  crypt.aesSetMode(mode);
  var padLen = 16 - (data.length % 16);
  Uint8List buf = Uint8List.fromList(data + Uint8List(padLen));
  buf = crypt.aesEncrypt(buf);
  buf = buf.sublist(0, data.length);
  return buf;
}

Uint8List cfbDecrypt(Uint8List data) {
  Uint8List key = Uint8List.fromList("jilub234fswftwgt".codeUnits);
  Uint8List iv = Uint8List.fromList("wefjkh3874jkl23h".codeUnits);
  var crypt = AesCrypt();
  AesMode mode = AesMode.cfb;
  crypt.aesSetKeys(key, iv);
  crypt.aesSetMode(mode);

  var padLen = 16 - (data.length % 16);
  Uint8List buf = Uint8List.fromList(data + Uint8List(padLen));
  buf = crypt.aesDecrypt(buf);
  buf = buf.sublist(0, data.length);

  return buf; //crypt.aesDecrypt(data);
}

/// 版本号长度 4
const int msgVersionByteLen = 4;

/** 消息长度用4个字节描述 */
const int msgBodyByteLength = 4;

/** 最小的消息长度为4个字节（即消息长度+消息号） */
const int headLen = msgVersionByteLen + msgBodyByteLength;

/// 构造头信息
PBCommData MakePBCommData(
    {Int64 aimId = Int64.ZERO,
    Int64 groupId = Int64.ZERO,
    Service toService = Service.gate}) {
  var user = AppUserInfo();
  // log("${ConfigMgr().config!.appId}");
  final pbCommData = PBCommData()
    ..msgSn = user.NewMsgSn()
    ..srcId = Int64(user.imId)
    ..aimId = aimId
    ..time = GetServerTime()
    ..groupId = groupId
    ..serviceType = toService
    ..appId = Int64(ConfigMgr().config!.appId)
    ..appUserId = AppUserInfo.instance.appUid;
  if (Dimens.isDesktop()) {
    pbCommData.srcClientType = CLIENT_TYPE.PC;
  } else {
    pbCommData.srcClientType = CLIENT_TYPE.PHONE;
  }
  return pbCommData; // 服务类型
}

/// 获取离线消息
getOfflineMsg(int beginTime, int num) {
  var user = AppUserInfo();
  var msg = ReadOfflineMsgReq();
  msg.userid = Int64(user.imId);
  msg.num = Int64(num);
  msg.time = Int64(beginTime);
  Client().sendMsg(msg, msg.userid, MakePBCommData());
}

Future<void> fetchSysNotifyMsg({
  int beginId = 0,
}) async {
  final req = $offline.FetchSysNotifyMsgListReq(
    page: Int64(beginId),
    pageSize: Int64(20),
  );
  Client().sendMsg(
    req,
    Int64(AppUserInfo().imId),
    MakePBCommData(toService: Service.offline_msg)
      ..srcClientType = AppUserInfo().clientType,
  );
}

Future<void> fetchHistoryMessage({
  int beginId = 0,
}) async {
  final fetchHistoryMsgReq = $offline.FetchNewHistoryMsgReq();
  fetchHistoryMsgReq.beginId = Int64(beginId);
  fetchHistoryMsgReq.pageSize = Int64(10);
  fetchHistoryMsgReq.orderDesc = true;
  Client().sendMsg(
    fetchHistoryMsgReq,
    Int64(AppUserInfo().imId),
    MakePBCommData(toService: Service.offline_msg)
      ..srcClientType = AppUserInfo().clientType,
  );
}

// 如果加了时间就把该时间前的消息全部删除，如果不带时间就删除当前sn的离线消息
// const Int64 v = const Int64(0)
sendReceiptMsg(PBCommData pbCommData,
    {required Int64 beginTime, MSG_STATE state = MSG_STATE.RECEIVED}) {
  var user = AppUserInfo();
  var msg = MsgReceipt();
  msg.state = state;
  msg.time = beginTime;
  var pb = MakePBCommData(
      aimId: pbCommData.srcId,
      groupId: pbCommData.groupId,
      toService: pbCommData.serviceType)
    ..msgSn = pbCommData.msgSn
    ..groupMsgSn = pbCommData.groupMsgSn
    ..needReadReceipt = true;
  var pbMsg = Client().sendMsg(msg, Int64(user.imId), pb); //..msgSn=msgSn);
  print("发送读确认 状态-> $pb");
  if (pbCommData.groupId > 0) {
    DBUpdateGroupMsgState(pbMsg, EnMsgFrom.local);
  }
}

// 错误处理
// void errorHandler(e){
//   log("net error!!! ${e.toString()}");
//   Client()._closeSocket();
//   Client()._setNetState(NET_STATE.NET_STATE_INIT);
// }

// 完成处理
// void doneHandler(){
//   log("--done handler!!");
// }

void sendLoginMsg() async {
  if (AppUserInfo().uniToken.isEmpty) {
    log("user is not bald, don't do login");
    return;
  }
  LoginReq loginMsg = LoginReq();
  var user = AppUserInfo();
  loginMsg.token = AppUserInfo().uniToken;
  loginMsg.tokenType = LOGIN_TOCKEN_TYPE.LOGIN_TOCKEN_TYPE_UNI_USER;
  final ClientInfo clientInfo = ClientInfo();
  clientInfo.modelType = MODEL_TYPE.NIL;
  clientInfo.appVersion = await CommonUtil().version();
  LoggerManager().debug('appVersion ============> ${clientInfo.appVersion}');
  clientInfo.packageName = await CommonUtil().packageName();
  clientInfo.xChannel = 'default_1';
  log("===========================>send login msg user.clientType:${user.clientType} $loginMsg");

  final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  clientInfo.modelType = MODEL_TYPE.NIL;
  clientInfo.appVersion = await CommonUtil().version();
  LoggerManager().debug('appVersion ============> ${clientInfo.appVersion}');
  clientInfo.packageName = await CommonUtil().packageName();
  clientInfo.token = "";
  if (Platform.isAndroid) {
    final AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    clientInfo.systemVersion = androidInfo.version.release;
    clientInfo.phoneModels = androidInfo.display;
    clientInfo.systemName = 'android';
    clientInfo.identifier = androidInfo.model;
  } else if (Platform.isIOS) {
    final IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;
    clientInfo.systemVersion = iosDeviceInfo.systemVersion;
    clientInfo.phoneModels = iosDeviceInfo.name;
    clientInfo.systemName = 'iOS';
    clientInfo.identifier = iosDeviceInfo.model;
  }
  loginMsg.clientInfo = clientInfo;

  Client().sendMsg(
    loginMsg,
    Int64(user.imId),
    MakePBCommData()..srcClientType = user.clientType,
  );
}
