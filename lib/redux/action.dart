
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pub/pub-def.dart';

enum ActionTypes {
  ActionType_Increment,   // 测试事件
  ActionType_LogoutSuccess,
  ActionType_LoginSuccess,
  ActionType_NetMsgIn,
  ActionType_NetStateChange,
}

/// action
class MyAction{
  final ActionTypes type;
  MyAction({required this.type});
}


class LoginSuccessAction extends MyAction{
  final int imId;

  LoginSuccessAction({required this.imId}):super(type:ActionTypes.ActionType_LoginSuccess);
}

class LogoutSuccessAction extends MyAction{
  final int imId ;

  LogoutSuccessAction({required this.imId}):super(type:ActionTypes.ActionType_LogoutSuccess);
}

class OnNetMsgAction extends MyAction{
  final PBMessage pbMsg;
  OnNetMsgAction({required this.pbMsg}):super(type:ActionTypes.ActionType_NetMsgIn);
}

class OnNetStateChangeAction extends MyAction{
  final NET_STATE netState;
  OnNetStateChangeAction({required this.netState}):super(type:ActionTypes.ActionType_NetStateChange);
}
