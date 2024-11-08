import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:lpinyin/lpinyin.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/models/user/userinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart' as $netFriend;
import 'package:quliao/pb/pb_msg/friend/friend.pb.dart' as $pbFriend;
import 'package:quliao/pb/pb_pub/service.pb.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:http/http.dart' as $http;
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/utils/toast/toast.dart';

import '../../pb/pb_pub/error_code.pbenum.dart';

class FriendPrivateMsgSet {
  int disturb = 0; // 是否免打扰
  int attention = 0; // 是否强提醒
  String backPic = ""; // 聊天背景
  int topMsg = 0; // 是否置顶
  initFromDBMap(Map<String, dynamic> mdata) {
    disturb = mdata["disturb"] ?? 0;
    attention = mdata["attention"] ?? 0;
    backPic = mdata["backPic"] ?? "";
    topMsg = mdata["topMsg"] ?? 0;
  }

  saveToDb(int friendId) {
    dbMsg?.update(
      tbFriendInfo,
      {
        "disturb": disturb,
        "attention": attention,
        "backPic": backPic,
        "topMsg": topMsg,
      },
      where: "friendId=?",
      whereArgs: [friendId],
    );
  }
}

enum enFriendRelation {
  stranger, //0:陌生人
  friend, // 1: 好友
  black, // 2: 拉黑
}

class FriendInfo {
  // int userId = 0;// integer, '
  int friendId = 0; // integer,'
  enFriendRelation friendRelation = enFriendRelation.stranger;

//////////////////////////////////
  // 好友属性
  String remark = ""; // TEXT,' // 备注
  String mobile = ""; // 好友电话
  String description = ""; // 好友描述
  String card = ""; // 好友名片 图片地址
  String sign = ""; // 个性签名
  String tags = ""; // 好友标签 简单处理, 数组元素逗号分隔, 逻辑交给客户端处理
  bool blocked = false; // 是否拉黑
  bool stared = false; // 是否加星
  bool deleted = false; // 是否删除
  int source = 0; // 来源方式
  DateTime updatedAt = DateTime.now();
  DateTime createdAt = DateTime.now();
  bool applyAnswer = false;

  int noDisturb = 0;
  int top = 0;

  // 好友设置属性
  //////////////////////////////////////////////////

  FriendPrivateMsgSet fpMsgSet = FriendPrivateMsgSet();

  // 这个放到消息列表中
  // bool topMsg = false; // 是否置顶

  UserInfo userInfo = UserInfo();

  String? nameIndex;

  String get nickname => remark.isEmpty ? userInfo.nickName : remark;

  initFromDBMap(Map<String, dynamic> mdata) {
    friendId = mdata["friendId"];
    friendRelation = enFriendRelation.values[mdata["friendRelation"] ?? 0];
    // LoggerManager().debug(
    //     'friendId =====> ${mdata["friendId"]}  remark ====> ${mdata["remark"]}');

    //////////////////////////////////
    // 好友属性
    remark = mdata["remark"] ?? ""; // 备注
    mobile = mdata["mobile"] ?? ""; // 好友电话
    description = mdata["description"] ?? ""; // 好友描述
    card = mdata["card"] ?? ""; // 好友名片 图片地址
    sign = mdata["sign"] ?? ""; // 个性签名
    tags = mdata["tags"] ?? ""; // 好友标签 简单处理, 数组元素逗号分隔, 逻辑交给客户端处理
    blocked = mdata["blocked"] == 1 ? true : false; // 是否拉黑
    stared = mdata["stared"] == 1 ? true : false; // 是否加星
    deleted = mdata["deleted"] == 1 ? true : false; // 是否删除
    source = mdata["source"] ?? 0; // 来源方式
    if (null == mdata['top']) {
      top = 0;
    } else {
      top = mdata["top"] as int;
    }
    updatedAt = DateTime.fromMicrosecondsSinceEpoch(mdata["updatedAt"] ?? 0);
    createdAt = DateTime.fromMicrosecondsSinceEpoch(mdata["createdAt"] ?? 0);
    if (null == mdata['noDisturb']) {
      noDisturb = 0;
    } else {
      noDisturb = mdata['noDisturb'] as int;
    }
    // 好友设置属性
    //////////////////////////////////////////////////
    fpMsgSet.initFromDBMap(mdata);
  }

  String toString() {
    return "friendId:$friendId"
        "friendRelation:$friendRelation"
        "remark:$remark"
        "nickName:${userInfo.nickName}"
        "sign:$sign"
        "blocked:$blocked";
  }

  // todo
  initFromApiMap1(Map<String, dynamic> mdata) {
    friendId = mdata["friendId"];
    // 这个字段是本地保存的，网上的肯定没有 state = mdata["state"]; // 当前状态 0:陌生人 1: 发出申请 2: 收到申请 3:已加好友
    friendRelation = mdata["friendRelation"]; // 初始化的时候会根据情况赋值一个
    //////////////////////////////////
    // 好友属性
    remark = mdata["remark"]; // 备注
    // 好友电话不能给，保密 mobile = mdata["mobile"]; // 好友电话
    description = mdata["description"]; // 好友描述
    card = mdata["card"]; // 好友名片 图片地址
    sign = mdata["sign"]; // 个性签名
    tags = mdata["tags"]; // 好友标签 简单处理, 数组元素逗号分隔, 逻辑交给客户端处理
    blocked = mdata["blocked"]; // 是否拉黑
    stared = mdata["stared"]; // 是否加星
    deleted = mdata["deleted"]; // 是否删除
    source = mdata["source"]; // 来源方式
    // updatedAt = DateTime.parse(mdata["updatedAt"]??"");
    // createdAt = DateTime.parse(mdata["createdAt"]??"");
    // 好友设置属性
    //////////////////////////////////////////////////
  }

  void initFromMsg1($pbFriend.FriendDetailRsp fdetailRsp) {
    initFromPBFriend1(fdetailRsp.friend);
  }

  void initFromPBFriend1($pbFriend.Friend friend) {
    friendId = friend.userId.toInt();
    friendRelation = friend.blocked
        ? enFriendRelation.black
        : enFriendRelation.friend; // 能从网上拉来数据的都不是陌生人
    //////////////////////////////////
    // 好友属性
    remark = friend.remark;
    mobile = friend.mobile; // 好友电话
    description = friend.description; // 好友描述
    card = friend.card; // 好友名片 图片地址
    sign = friend.sign; // 个性签名
    tags = friend.tags; // 好友标签 简单处理, 数组元素逗号分隔, 逻辑交给客户端处理
    blocked = friend.blocked; // 是否拉黑
    stared = friend.stared; // 是否加星
    deleted = friend.deleted; // 是否删除
    source = friend.source; // 来源方式
    top = friend.top ? 1 : 0; // 是否置顶
    updatedAt = DateTime.now();
    // 好友设置属性
    //////////////////////////////////////////////////
  }

  // @override
  // String toString() {
  //   return "";
  // }

  // 先去网上查找用户信息
  // Future<bool> LoadFriendDataByString(String friendStr) async {
  //
  //   bool needSave = false;
  //   var pbCommData = MakePBCommData(
  //       aimId: Int64(AppUserInfo.instance.imId), toService: Service.commim_uaa);
  //   $netFriend.FindUserInfoIntellReq findUserInfoIntellReq = $netFriend.FindUserInfoIntellReq();
  //   findUserInfoIntellReq.userId = friendStr;
  //   RpcCallAppGateApi("/pb_grpc_commim_uaa.UAA/FindUserInfoIntell", findUserInfoIntellReq,
  //       pbCommData)
  //       .then((value) {
  //     // _onLoginSuccess(loginReq,value);
  //     if (value.statusCode == 200) {
  //       var commRsp = CommRsp()..mergeFromBuffer(value.bodyBytes);
  //       if (commRsp.result == ErrCode.SUCCESS) {
  //         showToast("查找到了");
  //         // todo
  //         // 设置发送按钮1分钟计时，不可点
  //         return;
  //       } else {
  //         showToast("查找失败：${commRsp.result}");
  //       }
  //     } else {
  //       showToast("查找失败：${value.statusCode}");
  //     }
  //   }).catchError((err) {
  //     // 登录错误
  //     log("err:$err");
  //     showToast("发送验证码失败:$err");
  //   });
  //
  //   // 没有找到 去网上找
  //   $http.Response response = await RpcCallImOuterApi(
  //       "/pb_grpc_friend.Friend/FriendDetail",
  //       $pbFriend.FriendDetailReq(),
  //       MakePBCommData(
  //           aimId: Int64(friendImId), toService: Service.friend))
  //       .catchError((err) {
  //     // 看下错误类型
  //     // 如果没有发现好友，那么就是陌生人
  //     friendRelation = enFriendRelation.stranger; // 陌生人
  //     needSave = true;
  //     // 发现的话就是好友
  //     log("---err:${err}");
  //     return $http.Response(err.toString(), 500);
  //   });
  //   // if (response == null){
  //   //   log("获取好友:${friendImId}信息失败");
  //   //   showToast("获取好友:${friendImId}信息失败");
  //   //   return false;
  //   // }
  //   if (response.statusCode == 500) {
  //     // 业务错误
  //     // 说明没有找到
  //     friendRelation = enFriendRelation.stranger; // 陌生人
  //     needSave = true;
  //     log("在服务端没有找到好友，认为陌生人,${response.toString()}");
  //     //return null;
  //   }else if (response.statusCode == 200) {
  //     var rsp = $pbFriend.FriendDetailRsp()
  //       ..mergeFromBuffer(response.bodyBytes);
  //     initFromMsg1(rsp);
  //     needSave = true;
  //   }else{
  //     //真的错了
  //     log("系统错误->$response");
  //     showToast("系统错误:${response.statusCode}");
  //     return false;
  //   }
  //
  //   // 加载用户
  //   await userInfo.LoadUserData(friendImId);
  //   if (userInfo.imId == 0) {
  //     log("加载用户信息出错");
  //     showToast("加载用户信息出错");
  //     return false;
  //   }
  //   if (needSave) SaveToDB();
  //   return true;
  // }

  // 从db加载用户信息,如果没有就去网上查找
  Future<bool> LoadFriendData(
    int friendImId, {
    int userSourceVersion = 0,
  }) async {
    friendId = friendImId;
    if (friendImId == AppUserInfo().imId) {
      // 是自己
      // userId = friendImId;
      // friendImId = friendImId;
      friendRelation = enFriendRelation.friend;

      await userInfo.LoadUserData(friendImId);
      return true;
    }

    var result = await dbMsg
        ?.query(tbFriendInfo, where: "friendId=?", whereArgs: [friendImId]);

    bool needSave = false;
    if (result!.isNotEmpty) {
      // LoggerManager().debug('friendInfo =========> ${result.toString()}');
      // 找到了
      initFromDBMap(result[0]);

      // LoggerManager().debug('friendInfo =========> 开始加载用户信息 avatar: ${userInfo.avatar} userSourceVersion: $userSourceVersion');

      // 加载用户
      await userInfo.LoadUserData(
        friendImId,
        userSourceVersion: userSourceVersion,
      );

      // LoggerManager().debug('friendInfo =========> avatar: ${userInfo.avatar}');

      // log("get friend from db");
    } else {
      // 没有找到 去网上找
      $http.Response response = await RpcCallImOuterApi(
              "/pb_grpc_friend.Friend/FriendDetail",
              $pbFriend.FriendDetailReq(),
              MakePBCommData(
                  aimId: Int64(friendImId), toService: Service.friend))
          .catchError((err) {
        // 看下错误类型
        // 如果没有发现好友，那么就是陌生人
        friendRelation = enFriendRelation.stranger; // 陌生人
        needSave = true;
        // 发现的话就是好友
        log("---err:${err}");
        return $http.Response(err.toString(), 500);
      });
      // if (response == null){
      //   log("获取好友:${friendImId}信息失败");
      //   showToast("获取好友:${friendImId}信息失败");
      //   return false;
      // }
      if (response.statusCode == 500) {
        // 业务错误
        // 说明没有找到
        friendRelation = enFriendRelation.stranger; // 陌生人
        needSave = true;
        log("在服务端没有找到好友，认为陌生人,${response.toString()}");
        //return null;
      } else if (response.statusCode == 200) {
        var rsp = $pbFriend.FriendDetailRsp()
          ..mergeFromBuffer(response.bodyBytes);
        initFromMsg1(rsp);
        needSave = true;
      } else {
        //真的错了
        log("系统错误->$response");
        showToast("系统错误:${response.statusCode}");
        return false;
      }

      // 加载用户
      await userInfo.LoadUserData(
        friendImId,
        userSourceVersion: userSourceVersion,
      );
      if (userInfo.imId == 0) {
        log("加载用户信息出错");
        // showToast("加载用户信息出错");
        return false;
      }
      if (needSave) SaveToDB();
    }
    // log("--------11state:${state}");
    return true;
  }

  Future<void> UpdateField(
    String fieldName,
    dynamic value,
    $pbFriend.Friend friend, {
    int groupId = 0,
  }) async {
    if (fieldName == 'top') {
      dbMsg?.update(
        tbFriendInfo,
        {fieldName: value == true ? 1 : 0},
        where: "friendId = $friendId",
      );
    } else {
      dbMsg?.update(tbFriendInfo, {"${fieldName}": value},
          where: "friendId = ${friendId}");
    }

    var req = $pbFriend.UpdateFriendReq();
    req.friend = friend;
    req.keys.add(fieldName);

    RpcCallImOuterApi("/pb_grpc_friend.Friend/UpdateFriend", req,
        MakePBCommData(aimId: Int64(friendId), toService: Service.friend));

    if (fieldName == 'remark') {
      remark = friend.remark;

      eventBus.fire(
        UpdateFriendInfo(friendInfo: this, groupId: groupId),
      );
    }
  }

  Future<void> SaveToDB() async {
    log("friend ${friendId} SaveToDB ");

    // try {
    var rsp = await dbMsg?.query(tbFriendInfo, where: "friendId = ${friendId}");
    if (rsp!.isNotEmpty) {
      await dbMsg?.update(
          tbFriendInfo,
          {
            // "state":state,// 当前状态 0:陌生人 1: 发出申请 2: 收到申请 3:已加好友
            "friendRelation": friendRelation.index,

            //////////////////////////////////
            // 好友属性
            "remark": remark, // 备注
            "mobile": mobile, // 好友电话
            "description": description, // 好友描述
            "card": card, // 好友名片 图片地址
            "sign": sign, // 个性签名
            "tags": tags, // 好友标签 简单处理, 数组元素逗号分隔, 逻辑交给客户端处理
            "blocked": blocked ? 0 : 1, // 是否拉黑
            "stared": stared ? 0 : 1, // 是否加星
            "deleted": deleted ? 0 : 1, // 是否删除
            "source": source, // 来源方式
            "updatedAt": DateTime.now().microsecondsSinceEpoch,
            // 好友设置属性
            //////////////////////////////////////////////////
          },
          where: "friendId=${friendId}");
    } else {
      LoggerManager().debug('update user remark2222 =======> $remark');
      // 没有就插入
      var index = await dbMsg?.insert(tbFriendInfo, {
        "friendId": friendId,
        // "state": state, // 当前状态 0:陌生人 1: 发出申请 2: 收到申请 3:已加好友
        "friendRelation": friendRelation.index,
        //////////////////////////////////
        // 好友属性
        "remark": remark, // 备注
        "mobile": mobile, // 好友电话
        "description": description, // 好友描述
        "card": card, // 好友名片 图片地址
        "sign": sign, // 个性签名
        "tags": tags, // 好友标签 简单处理, 数组元素逗号分隔, 逻辑交给客户端处理
        "blocked": blocked ? 0 : 1, // 是否拉黑
        "stared": stared ? 0 : 1, // 是否加星
        "deleted": deleted ? 0 : 1, // 是否删除
        "source": source, // 来源方式
        "updatedAt": DateTime.now().microsecondsSinceEpoch,
        "createdAt": DateTime.now().microsecondsSinceEpoch,
      });
      log("save finfo to db index=$index");
    }
  }
}

final friendList = <FriendInfo>[];

// Future<FriendInfo>GetFriendInfoFromStr(String friendStr) async {
//   log("get friendInfo:$friendStr");
//   if (friendStr.length == 0) {
//     throw ("用户名或者邮箱不能为空");
//   }
//   var finfo = FriendInfo();
//   await finfo.LoadFriendData(friendImId);
//   return finfo;
// }

Future<FriendInfo> GetFriendInfo(int friendImId) async {
  // log("get friendImId:${friendImId}");
  if (friendImId == 0) {
    throw ("用户id不能为0");
  }

  var finfo = FriendInfo();
  // if (friendImId == AppUserInfo.instance.imId){
  //   finfo.
  // }
  await finfo.LoadFriendData(friendImId);
  return finfo;
}

Future<List<FriendInfo>> GetFriends({bool isFirst = false}) async {
  var lfinfo = <FriendInfo>[];

  if (!isFirst) {
    // db查找
    var result = await dbMsg
        ?.rawQuery(
            "select *, ${tbFriendInfo}.friendId as friendId, ${tbUserInfo}.imId as imId from ${tbFriendInfo} "
            "inner join ${tbUserInfo}"
            " on ${tbFriendInfo}.friendId=${tbUserInfo}.imId where ${tbFriendInfo}.friendRelation > 0")
        .catchError((err) {
      log("get data err $err");
      return <Map<String, Object?>>[];
    });
    for (var data in result!) {
      // log("friend in db:${data}");
      var finfo = FriendInfo()..initFromDBMap(data);
      finfo.userInfo = UserInfo()..initFromDBData(data);

      final nickname =
          finfo.remark.isEmpty ? finfo.userInfo.nickName : finfo.remark;
      finfo.nameIndex =
          PinyinHelper.getFirstWordPinyin(nickname)[0].toUpperCase();

      lfinfo.add(finfo);
    }
  }
  // 如果没有数据就到网上获取
  if (lfinfo.isEmpty) {
    // 获取好友列表
    // $http.Response response = await RpcCallAppInterface(
    $http.Response response = await RpcCallImOuterApi(
            "/pb_grpc_friend.Friend/Friends",
            $pbFriend.FriendsReq(),
            MakePBCommData(
                aimId: Int64(AppUserInfo.instance.imId),
                toService: Service.friend))
        .catchError((err) {
      log("err:${err}");
      return $http.Response(err.toString(), 500);
    });

    log("rspStr:$response");

    var rsp = $pbFriend.FriendsRsp()..mergeFromBuffer(response.bodyBytes);
    for (var finfo in rsp.friends) {
      var friendInfo = FriendInfo()..initFromPBFriend1(finfo);
      await friendInfo.userInfo
          .LoadUserData(friendInfo.friendId, isFirst: isFirst);

      final nickname = friendInfo.remark.isEmpty
          ? friendInfo.userInfo.nickName
          : finfo.remark;
      friendInfo.nameIndex =
          PinyinHelper.getFirstWordPinyin(nickname)[0].toUpperCase();

      friendInfo.SaveToDB();
      lfinfo.add(friendInfo);
    }
    log("get friends from web");
  }

  return lfinfo;
}
