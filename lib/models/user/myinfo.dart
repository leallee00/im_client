// import 'dart:ffi';

import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:quliao/db/database.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart' as $uaa;
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pb/pb_pub/service.pb.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/pub/pub-def.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:grpc/src/generated/google/rpc/status.pb.dart' as $grpcStatus;

class AppUserInfo {
  /////////////////////////////////////////////
  //单例方法开始
  factory AppUserInfo() => _getInstance();
  static AppUserInfo get instance => _getInstance();
  static final AppUserInfo _instance = new AppUserInfo._internal();
  AppUserInfo._internal() {
    // loadFromSp();
  }

  static AppUserInfo _getInstance() {
    // 初始化数据的机会
//     if (_instance == null) {
// //      log("create new user",deap: 2);
//       _instance = new AppUserInfo._internal();
//     }

//    log("Get user $_instance", deap: 3);

    return _instance;
  }
  //单例方法结束
  /////////////////////////////////////////////

  loadFromSp() async {
    // log("begin load from loadFromSp "); //, deap: 1);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    imId = prefs.getInt("imId") ?? 0;
    // await initDb(Int64(imId));
    if (imId == 0) {
      return;
    }
    try {
      await AppDatabase().objectBox.close();
    } catch (error) {}
    await AppDatabase().init(imId);
    appId = prefs.getInt('${imId}_appId') ?? 0;
    nickName = prefs.getString("${imId}_nickName") ?? "游客";
    userName = prefs.getString("${imId}_userName") ?? "游客";
    userSourceVersion = prefs.getInt("${imId}_userSourceVersion") ?? 0;
    appAvatar = prefs.getString("${imId}_appAvatar") ?? "";
    appUid = prefs.getString("${imId}_appUid") ?? "";
    appToken = prefs.getString("${imId}_appToken") ?? "";
    /// app登录的token
    uniToken = prefs.getString("${imId}_uniToken") ?? "";
    /// im登录token
    curMsgSN = Int64(prefs.getInt("${imId}_curMsgSN") ?? 0);
    sign = prefs.getString("${imId}_sign") ?? "";
    phone = prefs.getString("${imId}_phone") ?? "";
    email = prefs.getString("${imId}_email") ?? "";
    LoggerManager().debug('email =========> $email');
    account = prefs.getString("${imId}_account") ?? "";
    gender = prefs.getInt("${imId}_gender") ?? 0;
    level = prefs.getInt("${imId}_level") ?? 0;
    newFriendCount = prefs.getInt("${imId}_newFriendCount") ?? 0;
    var ct = prefs.getInt("${imId}_clientType") ?? 0;
    clientType = CLIENT_TYPE.valueOf(ct)!;
    if (imId > 0) {
      var netClient = Client();
      // 如果有用户就去连接网络
      if (netClient.enNetState == NET_STATE.NET_STATE_CLOSED) {
        // 加载到用户了，开启网络
        netClient.Start();
      }
    }
    msgDisturb = prefs.getBool("${imId}_msgDisturb") ?? false;
    freeAddMeFriend = prefs.getBool("${imId}_freeAddMeFriend") ?? false;
    userAddress = prefs.getString("${imId}_address") ?? "";
    // log("end load from loadFromSp: $this");
  }

  reset() {
    appId = 0;
    nickName = "";
    appAvatar = "";
    appUid = "";
    imId = 0;
    appToken = "";

    /// app登录的token
    uniToken = "";

    /// im登录token
    curMsgSN = Int64(0);
    sign = "";
    phone = "";
    email = "";
    account = "";
    gender = 0;
    level = 0;
    newFriendCount = 0;
    Client.instance.messageMap.clear();
    Client.instance.Stop();
    msgDisturb = false;
    freeAddMeFriend = false;
    userAddress = '';
    saveToSp();
  }

  clear() {
    appId = 0;
    nickName = "";
    appAvatar = "";
    appUid = "";
    imId = 0;
    appToken = "";

    /// app登录的token
    uniToken = "";

    /// im登录token
    curMsgSN = Int64(0);
    sign = "";
    phone = "";
    email = "";
    account = "";
    gender = 0;
    level = 0;
    newFriendCount = 0;
    Client.instance.messageMap.clear();
    // Client.instance.Stop();
    msgDisturb = false;
    freeAddMeFriend = false;
    userAddress = '';
    saveToSp();
  }

  saveToSp() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    log("$this");
    prefs.setInt("imId", imId.toInt());
    prefs.setInt('${imId}_appId', appId.toInt());
    prefs.setString("${imId}_nickName", nickName);
    prefs.setString("${imId}_userName", userName);
    prefs.setInt("${imId}_userSourceVersion", userSourceVersion);
    prefs.setString("${imId}_appAvatar", appAvatar);
    prefs.setString("${imId}_appUid", appUid);
    prefs.setString("${imId}_appToken", appToken);
    prefs.setString("${imId}_uniToken", uniToken);
    prefs.setInt("${imId}_curMsgSN", curMsgSN.toInt());
    prefs.setString("${imId}_sign", sign);
    prefs.setInt("${imId}_gender", gender);
    prefs.setInt("${imId}_level", level);
    prefs.setInt("${imId}_clientType", clientType.value);
    prefs.setInt("${imId}_newFriendCount", newFriendCount);
    prefs.setString("${imId}_phone", phone);
    prefs.setString("${imId}_email", email);
    prefs.setString("${imId}_account", account);
    prefs.setBool("${imId}_msgDisturb", msgDisturb);
    prefs.setBool("${imId}_freeAddMeFriend", freeAddMeFriend);
    prefs.setString("${imId}_address", userAddress);
  }

  /////////////////////////
  // 配置
  bool msgDisturb = false; // 消息免打扰
  /////////////////////////

  int newFriendCount = 0;

  int appId = 0;
  String appUid = "";
  String nickName = "";
  String appAvatar = "";
  String userName = "";
  String sign = "";
  int gender = 0;
  int level = 0;

  String phone = "";
  String email = "";
  String account = "";

  /// imid
  int imId = 0;

  /// 0 账号密码登录 1 邮箱验证码 2 手机号验证码
  int loginType = 0;

  String appToken = "";

  /// app登录的token
  String imToken = "";

  /// im便捷登录的token
  String uniToken = "";

  /// im登录token

  Int64 curMsgSN = Int64(0);

  int userSourceVersion = 0;

  /// true：别人加我为好友不需要验证 false：需要验证
  bool freeAddMeFriend = false;

  String userAddress = '';

  /// 消息sn
  CLIENT_TYPE clientType = CLIENT_TYPE.PHONE;
  DateTime createTime = DateTime.now();
  @override
  String toString() {
    // TODO: implement toString
    return "{idId:$imId, appId:$appId, appUid:$appUid,sign:$sign, gender:$gender, level:$level"
        " appToken:$appToken, imToken:$imToken, uniToken:$uniToken} curMsgSN:${curMsgSN} userSourceVersion:$userSourceVersion";
  }

  Int64 NewMsgSn() {
    //log("${DateTime.now().microsecondsSinceEpoch/1000}");
    if (curMsgSN.isZero) {
      curMsgSN = Int64(imId << 32);
      log("空sn，重新初始化");
    }
    curMsgSN++;
    SharedPreferences.getInstance()
        .then((value) => value.setInt("curMsgSN", curMsgSN.toInt()));
    // log("生成新的msgsn:${curMsgSN} snuser:${curMsgSN >> 32}  snsn:${curMsgSN-(AppUserInfo.instance.imId << 32)}", deap: 3);
    return curMsgSN;
  }

  Future<bool> ModifyField(
    $uaa.UserInfo uinfo,
    String key,
  ) async {
    uinfo.userSourceVersion = AppUserInfo.instance.userSourceVersion + 1;
    log("更新用户信息:key:${key}, uinfo:${uinfo}");
    var req = $uaa.UpdateUserInfoReq()
      ..userId = AppUserInfo.instance.appUid
      ..info = uinfo;
    req.keys.add(key);
    var state = true;
    await RpcCallAppGateApi(
            "/pb_grpc_commim_uaa.UAA/UpdateUserInfo",
            req,
            MakePBCommData(
                aimId: Int64(AppUserInfo.instance.imId),
                toService: Service.commim_uaa))
        .then((value) {
          LoggerManager().debug('status code ======> ${value.statusCode}');
          if (value.statusCode == 500) {
            var status = $grpcStatus.Status();
            status.mergeFromBuffer(value.bodyBytes);
            showToast(status.message);
            return;
          }
      var rsp = $uaa.UpdateUserInfoRsp()..mergeFromBuffer(value.bodyBytes);
      log("更新成功:${rsp}");
      // showToast("更新成功");
      switch (key) {
        case "nickname":
          AppUserInfo.instance.nickName = uinfo.nickname;
          break;
        case "gender":
          AppUserInfo.instance.gender = uinfo.gender;
          break;
        case "sign":
          AppUserInfo.instance.sign = uinfo.sign;
          break;
        case "username":
          AppUserInfo.instance.userName = uinfo.username;
          break;
        case "avatar":
          AppUserInfo.instance.appAvatar = uinfo.avatar;
          break;
        case 'freeAddMeFriend':
          AppUserInfo.instance.freeAddMeFriend = uinfo.freeAddMeFriend;
          break;
      }
      log("更新用户信息: userSourceVersion:${uinfo.userSourceVersion}");

      // AppUserInfo.instance.userSourceVersion = uinfo.userSourceVersion;
      AppUserInfo.instance.userSourceVersion = rsp.userSourceNewVersion;
      AppUserInfo.instance.saveToSp();
      eventBus.fire(UserSourceVersionChanged());
    }).catchError((err) {
      log("error:${err}");
      showToast("更新失败");
      // throw("更新失败:${err}");
      state = false;
    });

    return state;
    // // grpc方式调用
    // var channel = ClientChannel(
    //   cfgGrpcUrl,
    //   port: 11260,
    //   options: const ChannelOptions(
    //       // credentials: ChannelCredentials.insecure()
    //       credentials: ChannelCredentials(
    //           certificates:[],
    //           password:"",
    //           authority:"",
    //           // onBadCertificate:(X509Certificate certificate, String host){
    //           //   return false;
    //           // },
    //       ),
    //   ),
    // );
    //
    // final stub = UUAClient(channel);
    // stub.updateUserInfo(req,).then(
    //         (value) {
    //       log("更新成功:${value}");
    //       setState(() {
    //         Navigator.of(context).pop();
    //       });
    //     }
    // );
  }
}
