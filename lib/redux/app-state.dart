import '../pub/pub-def.dart';

/// 登录状态
class AuthState{
  bool isLogin; /// 是否登录
  NET_STATE netState; /// 网络状态
  /// app id
  int appId;
  String appUid;

  /// imid
  int imId;

  String appToken = ""; /// app登录的token
  String imToken = "";  /// im便捷登录的token
  String uniToken = ""; /// im登录token

  AuthState({
    this.isLogin:false,
    required this.netState,
    required this.appId,
    required this.appUid,
    required this.imId,
  });

  @override
  String toString() {
    // TODO: implement toString
    return "{"
        "isLogin:false:$isLogin,"
        "netState:$netState,"
        "idId:$imId, "
        "appId:$appId, "
        "appUid:$appUid, "
        "appToken:$appToken, "
        "imToken:$imToken, "
        "uniToken:$uniToken"
        "}";
  }
}

/// 管理主页状态
class MainPageState{
  int counter;
  MainPageState({this.counter:0});

  @override
  String toString() {
    // TODO: implement toString
    return "{counter:$counter}";
  }
}

/// 应用程序状态
class AppState{
  AuthState authState;
  MainPageState mainPageState;

  AppState({required this.authState, required this.mainPageState});

  @override
  String toString() {
    return "{auth:$authState,main:$mainPageState}";
  }
}
