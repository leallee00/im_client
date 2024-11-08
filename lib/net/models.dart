import 'dart:ui';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';

import '../pub/pub-def.dart';

/// 连接状态变化通知
class NetState {
  NetState(this.netState, this.netType, this.netDelayTime, this.reason);

  @override
  String toString() {
    return 'NetState{netState: $netState, netType: $netType, netDelayTime: $netDelayTime, reason: $reason, heartBeatSendCount: $heartBeatSendCount, heartBeatRcvCount: $heartBeatRcvCount, reconnectTimes: $reconnectTimes, authedTimes: $authedTimes}';
  }

  NET_STATE netState = NET_STATE.NET_STATE_INIT;
  ConnectivityResult netType = ConnectivityResult.none;
  int netDelayTime = 0;
  String reason = "";
  int heartBeatSendCount = 0;
  int heartBeatRcvCount = 0;
  int reconnectTimes = 0;
  int authedTimes = 0;

  // 网络状态与颜色的兑换
  Color netColor() {
    Color c = Colors.grey;
    switch (netState) {
      case NET_STATE.NET_STATE_INIT:
        c = Colors.grey;
        break; // 初始状态
      case NET_STATE.NET_STATE_PREPARING:
        c = Colors.orange;
        break; // 准备中
      case NET_STATE.NET_STATE_AUTHING:
        c = Colors.greenAccent;
        break; // 认证中
      case NET_STATE.NET_STATE_CLOSED:
        c = Colors.red;
        break; // 手动关闭，不希望再连接了
      case NET_STATE.NET_STATE_AUTHED:
        if (netDelayTime < 200) {
          c = Colors.greenAccent;
        } else if (netDelayTime < 500) {
          c = Colors.lightGreenAccent;
        } else if (netDelayTime < 1000) {
          c = Colors.limeAccent;
        } else if (netDelayTime < 2000) {
          c = Colors.orangeAccent;
        } else {
          c = Colors.orange;
        }
      // c = Colors.green; break; // 认证成功，意外断网或心跳超时状态转到init
    }
    return c;
  }

// 网络状态与描述的兑换
  String netDesc() {
    switch (netState) {
      case NET_STATE.NET_STATE_INIT:
        return "等待连接"; //break; // 初始状态
      case NET_STATE.NET_STATE_SWITCH:
        return "切换中"; //break; // 初始状态
      case NET_STATE.NET_STATE_PREPARING:
        return "连接准备中"; //c = Colors.orange; break; // 准备中
      case NET_STATE.NET_STATE_AUTHING:
        return "认证中"; //c = Colors.greenAccent; break; // 认证中
      case NET_STATE.NET_STATE_CLOSED:
        return "已关闭"; //c = Colors.red; break; // 手动关闭，不希望再连接了
      case NET_STATE.NET_STATE_AUTHED:
        if (netDelayTime < 200) {
          return "在线";
        } else if (netDelayTime < 500) {
          return "在线,略有延迟";
        } else if (netDelayTime < 1000) {
          return "在线,有延迟";
        } else if (netDelayTime < 2000) {
          return "在线,延迟较大";
        }

        return "在线,延迟很大，建议切换网络";
    }
    return "未知状态";
  }

  Icon signalIcon() {
    IconData iconData = Icons.signal_cellular_no_sim_outlined;
    switch (netType) {
      case ConnectivityResult.mobile:
        if (netDelayTime < 200) {
          iconData = Icons.signal_cellular_alt;
        } else if (netDelayTime < 500) {
          iconData = Icons.signal_cellular_alt_2_bar;
        } else if (netDelayTime < 1000) {
          iconData = Icons.signal_cellular_alt_1_bar;
        } else if (netDelayTime < 2000) {
          iconData = Icons.signal_cellular_0_bar;
        } else {
          iconData = Icons.signal_cellular_connected_no_internet_0_bar_sharp;
        }
        break;
      case ConnectivityResult.wifi:
        if (netDelayTime < 200) {
          iconData = Icons.wifi;
        } else if (netDelayTime < 500) {
          iconData = Icons.wifi_2_bar;
        } else if (netDelayTime < 1000) {
          iconData = Icons.wifi_1_bar;
        } else if (netDelayTime < 2000) {
          iconData = Icons.wifi_1_bar_rounded;
        } else {
          iconData = Icons.wifi_off_outlined;
        }
        break;
      default:
        iconData = Icons.signal_cellular_no_sim_outlined;
    }

    return Icon(
      iconData,
      color: netColor(),
      size: Dimens.gap_dp20,
      shadows: const [
        BoxShadow(
          color: Colors.black38,
          offset: Offset(1, 1),
          blurRadius: 2,
        ),
      ],
    );
  }
}
