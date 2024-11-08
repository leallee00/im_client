// 接收总线消息

// 更新网络状态到界面

// 记录变化日志

// 日志点击展示详细信息

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/mine/switch_point_dialog.dart';
import 'package:quliao/widgets/dialog/dialog.dart';

import '../event/event_bus.dart';
import 'models.dart';

class NetStateViewPage extends StatefulWidget {
  static const name = "NetStateViewPage";

  @override
  _NetStateViewPageState createState() => _NetStateViewPageState();
}

class _NetStateViewPageState extends State<NetStateViewPage> {
  @override
  void initState() {
    super.initState();
    netStateSub = eventBus.on<NetState>().listen((event) {
      setState(() {
        _netState = event;
      });
    });

    super.initState();
  }

  int tapCount = 0;
  DateTime? lastTapTime;

  void _handleTap() {
    DateTime now = DateTime.now();

    // 判断点击时间间隔是否在短时间内（例如1秒）
    if (lastTapTime != null &&
        now.difference(lastTapTime!).inMilliseconds <= 1000) {
      tapCount++;
      if (tapCount >= 3) {
        _showDialog();
        tapCount = 0; // 重置点击计数
      }
    } else {
      tapCount = 1;
    }

    lastTapTime = now;
  }

  Future<void> _showDialog() async {
    CustomDialog.showDialog<void>(
      context,
      barrierDismissible: false,
      builder: (context) {
        return const SwitchPointDialog();
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    netStateSub.cancel();
  }

  late StreamSubscription<NetState> netStateSub;
  NetState _netState = Client()
      .getNetState(); //NetState(NET_STATE.NET_STATE_INIT,ConnectivityResult.none,0,"");

  @override
  Widget build(BuildContext ctx) {
    // Color c =  _netState.netState== NET_STATE.NET_STATE_AUTHED? netDelayColor(_netState.netDelayTime):netColor(_netState.netState);
    return Row(
      children: [
        GestureDetector(
          onTap: () => _handleTap(),
          child: Row(
            children: [
              _netState.signalIcon(),
              Gaps.hGap2,
              Text(
                _netState.netDesc(),
                style: TextStyle(
                  color: _netState.netColor(),
                  fontSize: Dimens.font_sp12,
                  shadows: const [
                    BoxShadow(
                      color: Colors.black38,
                      offset: Offset(1, 1),
                      blurRadius: 2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // 下面这个测试版本才显示
        // Expanded(
        //   child: Offstage(
        //     // account
        //     offstage: const bool.fromEnvironment("dart.vm.product"),
        //     child: Container(
        //       padding: const EdgeInsets.only(left: 10),
        //       margin: const EdgeInsets.all(10),
        //       decoration: BoxDecoration(
        //           borderRadius: const BorderRadius.all(Radius.circular(5)),
        //           border: Border.all(
        //             color: _netState.netColor(),
        //           )
        //           //   BorderRadius.all(Radius.circular(10))
        //           ),
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Text(
        //             "[网络类型:${_netState.netType.name}][延迟:${_netState.netDelayTime}]",
        //             style: TextStyle(fontSize: 10),
        //           ),
        //           Text(
        //               "心跳:(${_netState.heartBeatRcvCount}/${_netState.heartBeatSendCount})重连次数：${_netState.reconnectTimes} \n认证成功次数:${_netState.authedTimes}",
        //               style: TextStyle(fontSize: 10)),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
