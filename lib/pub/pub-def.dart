import 'dart:ui';

import 'package:basic_utils/basic_utils.dart';
import 'package:flutter/material.dart';
// import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

enum NET_STATE {
  // 网络连接状态
  NET_STATE_INIT, // 初始状态
  NET_STATE_SWITCH, // 初始状态
  NET_STATE_PREPARING, // 准备中
  NET_STATE_AUTHING, // 认证中
  NET_STATE_AUTHED, // 认证成功，意外断网或心跳超时状态转到init
  NET_STATE_CLOSED, // 手动关闭，不希望再连接了
}

enum CHAT_TYPE {
  PRIVATE,
  GROUP,
}

//
// // 网络状态与颜色的兑换
// Color netColor(NET_STATE state){
//   Color c = Colors.grey;
//   switch(state){
//     case NET_STATE.NET_STATE_INIT: c = Colors.grey; break; // 初始状态
//     case NET_STATE.NET_STATE_PREPARING:c = Colors.orange; break; // 准备中
//     case NET_STATE.NET_STATE_AUTHING:c = Colors.greenAccent; break; // 认证中
//     case NET_STATE.NET_STATE_CLOSED:c = Colors.red; break; // 手动关闭，不希望再连接了
//     case NET_STATE.NET_STATE_AUTHED:c = Colors.green; break; // 认证成功，意外断网或心跳超时状态转到init
//   }
//   return c;
// }
//
// // 网络状态与描述的兑换
// String netDesc(NET_STATE state){
//   switch(state){
//     case NET_STATE.NET_STATE_INIT: return "等待连接"; //break; // 初始状态
//     case NET_STATE.NET_STATE_PREPARING: return "连接准备中";//c = Colors.orange; break; // 准备中
//     case NET_STATE.NET_STATE_AUTHING: return "认证中";//c = Colors.greenAccent; break; // 认证中
//     case NET_STATE.NET_STATE_CLOSED: return "已关闭";//c = Colors.red; break; // 手动关闭，不希望再连接了
//     case NET_STATE.NET_STATE_AUTHED: return "在线";//c = Colors.green; break; // 认证成功，意外断网或心跳超时状态转到init
//   }
//   return "未知状态";
// }
//
// // 延迟颜色兑换
// Color netDelayColor(int netDelayTime){
//   Color c = Colors.orange;
//   if (netDelayTime < 200){
//     c = Colors.green;
//   }else if (netDelayTime < 500){
//     c = Colors.lightGreen;
//   }else if (netDelayTime < 1000){
//     c = Colors.limeAccent;
//   }else if (netDelayTime < 2000){
//     c = Colors.orangeAccent;
//   }
//
//   return c;
// }

// 登录后获得的参数签名secret
String signSecret = "";

enum LOG_MODEL {
  ALL,
  PRIVATE,
  GROUP,
  LIVE,
  CALL_SCENE,
}

enum POST_LIKE_TYPE {
  None,
  Like,
  Unlike,
}

enum POST_VOTE_STATUS {
  NOT_VOTE,
  VOTED,
}
