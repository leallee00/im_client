// 本地用户信息
// import 'package:basic_utils/basic_utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

// import 'package:fixnum/fixnum.dart';
// import 'package:http/http.dart' as $http;
import 'package:quliao/db/db.dart';
import 'package:quliao/models/user/myinfo.dart';

// import 'package:quliao/models/user/myinfo.dart';
// import 'package:quliao/net/socket.dart';
// import 'package:quliao/pb/pb_msg/friend/friend.pb.dart';
// import 'package:quliao/pb/pb_pub/service.pb.dart';
import 'package:quliao/pub/config.dart';
import 'package:quliao/pub/func.dart';

// import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/utils/log/manager.dart';

import '../../pb/pb_msg/user_center/userCenter.pb.dart';

class UserInfo {
  int imId = 0;
  int appId = 0;
  String appUid = "";
  String nickName = "";
  String avatar = "";
  int level = 0;
  String signName = "";
  DateTime createTime = DateTime.now();

  int sourceVersion = 0;
  bool freeAddMeFriend = false;

  // oss 缩略图 http://xxx.xx.xx?x-oss-process=image/resize,m_lfit,h_200,w_200
  // FriendPrivateMsgSet fpMsgSet = FriendPrivateMsgSet ();

  String get avatarThumb => '$avatar?x-oss-process=image/resize,w_100,h_100';

  initFromDBData(Map<String, dynamic> data) {
    appId = data["appId"] ?? 0;
    appUid = data["appUid"] ?? "";
    nickName = (data["nickName"] != null && data["nickName"] != "")
        ? data["nickName"]
        : "游客${data["imId"]}";
    imId = data["imId"];
    avatar = data["avatar"];
    level = data["level"] ?? 0;
    signName = data["signName"] ?? "暂无签名";
    createTime = DateTime.parse(data["createTime"]);
    sourceVersion = data["userSourceVersion"] ?? 0;
    // fpMsgSet.initFromDBMap(data);
  }

  initFromNetData(Map<String, dynamic> data) {
    // log("initFromNetData:${data}");
    appId = data["appId"] ?? 0;
    appUid = data["appUserId"] ?? "";
    nickName = (data["nickname"] != null && data["nickname"] != "")
        ? data["nickname"]
        : "游客${data["imId"]}";
    imId = data["imId"];
    avatar = (null != data['headerImageOriginal'] &&
            data["headerImageOriginal"] != "")
        ? data["headerImageOriginal"]
        : ConfigMgr().config!.defaultAvatar;
    level = (data["userLevel"] == null || data["userLevel"] == "")
        ? 0
        : int.parse(data["userLevel"]);
    signName = data["sign"] ?? "暂无签名";
    sourceVersion = data["userSourceVersion"] ?? 0;
    createTime =
        DateTime.parse(data["createTime"] ?? DateTime.now().toString());
  }

  @override
  String toString() {
    // TODO: implement toString
    return "{imId:$imId, appId:$appId, appUid:$appUid,nickName:$nickName,avatar:$avatar,level:$level, signName:$signName, level:${level}";
  }

  // 加载用户信息
  Future<void> LoadUserData(int userId,
      {int userSourceVersion = 0, bool isFirst = false}) async {
    // 先从db获取
    var result =
        await dbMsg?.query(tbUserInfo, where: "imId=?", whereArgs: [userId]);
    // .catchError((err){
    //   // 出错了 外面catch去
    // });
    if (!isFirst && result!.isNotEmpty) {
      // 返回结果
      // log("从数据库发现该用户${result[0]}");
      initFromDBData(result[0]);
      // log("needRefreshLocalUserInfo sourceVersion:$sourceVersion, userSourceVersion:$userSourceVersion");
      if (sourceVersion < userSourceVersion) {
        await fetchUserInfo(userId);
      }
    } else {
      await fetchUserInfo(userId);
    }
  }

  Future<void> fetchUserInfo(int userId) async {
    var dio = Dio();
    // 没有用户，到网上去找
    var url =
        "${ConfigMgr().config!.cfgImInterApiUrl}/GetFriendInfo?imId=${userId}";
    log("url=${url}");
    var rsp = await dio.get(url); //$http.get(uri);
    // log(rsp.toString());
    if (rsp.data["result"] != 0 || rsp.data["nickname"] == "") {
      // showToast("用户不存在");
      // throw "用户不存在";
      return;
    }
    LoggerManager().debug('fetchUserInfo userId ============> ${rsp.data["data"]}');
    log(rsp);
    log(rsp.data["data"]);
    initFromNetData(rsp.data["data"]);
    log(this);
    // 存储到db去
    mapUserInfo[userId] = (this);
    await dbAddUser(this);
  }
}

Map<int, UserInfo> mapUserInfo = {};

void getUserAll() async {
  var result = await dbMsg?.query(tbUserInfo) ?? [];
  for (var data in result) {
    var uinfo = UserInfo();
    await uinfo.initFromNetData(data);
  }
}

Future<UserInfo> GetUserInfo(int userId, {int userSourceVersion = 0}) async {
  if (userId == 0) {
    throw ("用户id不能为0");
  }
  if (mapUserInfo.isEmpty) {
    getUserAll();
  }

  final bool contains = mapUserInfo.containsKey(userId);

  final UserInfo? cacheUserInfo = mapUserInfo[userId];

  if (contains && (null != cacheUserInfo && userSourceVersion <= cacheUserInfo.sourceVersion)) {
    return cacheUserInfo;
  }

  var uinfo = UserInfo();
  await uinfo.LoadUserData(userId, userSourceVersion: userSourceVersion);

  return uinfo;
}

Future<UserInfo> forceFetchUserInfo(int userId) async {
  var dio = Dio();
  // 没有用户，到网上去找
  var url =
      "${ConfigMgr().config!.cfgImInterApiUrl}/GetFriendInfo?imId=$userId";
  var rsp = await dio.get(url);
  if (rsp.data["result"] != 0 || rsp.data["nickname"] == "") {
    throw "用户不存在";
  }
  var uinfo = UserInfo();
  await uinfo.initFromNetData(rsp.data["data"]);
  AppUserInfo.instance.appId = uinfo.appId;
  AppUserInfo.instance.nickName = uinfo.nickName;
  mapUserInfo[userId] = (uinfo);
  await dbAddUser(uinfo);
  return uinfo;
}
