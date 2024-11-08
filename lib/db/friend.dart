// await db.execute('CREATE TABLE if not exists $dbFriendApply ('
// 'id INTEGER,' // id
// 'userId INTEGER,'   // 用户id，客户端
// 'friendId INTEGER,' // 好友id
// 'applyId INTEGER,' // 发起者id
// 'state INTEGER,'         // 状态 0,1,2,3,4,
// 'nick TEXT,'         // 好友名称
// 'avatar TEXT,'  // 头像
// 'applyMsg TEXT,'         // 请求信息
// 'createTime DateTime,'
// 'UNIQUE(userId),'
// 'primary key (id)'
// ')').then((value) => log("create table $dbFriendApply over"));

// 主动添加好友
import 'package:basic_utils/basic_utils.dart';
import 'package:date_format/date_format.dart';
import 'package:fixnum/fixnum.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/models/Global.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/pb/pb_msg/friend/friend.pb.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:time_machine/time_machine.dart';

import '../event/event_modul.dart';

// 发起申请
Future<void> AddApplyFriend(FriendInfo finfo, String applyMsg, int reqUser,
    FRIEND_APPLY_STATE state) async {
  log("AddApplyFriend finfo:${finfo} uinfo:${finfo.userInfo}", deep: 2);
  // 看有没有
  var result = await dbMsg?.query(tbFriendApply,
      where: "friendId=${finfo.userInfo.imId.toInt()}");
  if (result!.isNotEmpty) {
    // 已经有了,更新一下
    log("添加新的，已经有了更新一下--------------${state.value}");
    dbMsg
        ?.update(
            tbFriendApply,
            {
              'applyId': reqUser, // INTEGER,' // 发起者id
              'state': state.value,
              'applyMsg': applyMsg, // TEXT,'         // 请求信息
              'createTime': formatDate(DateTime.now(),
                  [yyyy, '-', mm, '-', dd, ' ', hh, ':', nn, ':', ss]),
            },
            where: "friendId=?",
            whereArgs: [finfo.userInfo.imId])
        .then((value) => eventBus.fire(FriendApplyDbUpdateNotify()));
    return;
  }

  // 添加一个
  log("添加新的，没有插入一个--------------${state.value}");
  await dbMsg?.insert(tbFriendApply, {
    // 'userId':AppUserInfo.instance.imId,  // 用户id，客户端
    'friendId': finfo.userInfo.imId, // INTEGER,' // 好友id
    'applyId': reqUser, // INTEGER,' // 发起者id
    'state': state.value,
    'nick': finfo.userInfo.nickName, // TEXT,'         // 好友名称
    'avatar': finfo.userInfo.avatar, // TEXT,'  // 头像
    'applyMsg': applyMsg, // TEXT,'         // 请求信息
    'createTime': formatDate(
        DateTime.now(), [yyyy, '-', mm, '-', dd, ' ', hh, ':', nn, ':', ss]),
  }).then((value) {
    eventBus.fire(FriendApplyDbUpdateNotify());
  });

  if (reqUser != AppUserInfo.instance.imId) {
    AppUserInfo.instance.newFriendCount++;
  }
  // 发送一个刷新通知
}

Future<void> UpdateApplyFriendState(
    int friendId, FRIEND_APPLY_STATE state) async {
  log("更新状态--------------${state}");
  dbMsg
      ?.update(tbFriendApply, {"state": state.value},
          where: "friendId=?", whereArgs: [friendId])
      .then((value) {
    eventBus.fire(FriendApplyDbUpdateNotify());
  });
}

Future<void> AddFriendToDB(int friendId, enFriendRelation relation) async {
  dbMsg?.query(tbFriendInfo, where: "friendId=?", whereArgs: [friendId]).then(
      (value) {
    if (value.isEmpty) {
      dbMsg?.insert(tbFriendInfo, {
        // 'userId':AppUserInfo.instance.imId,// integer, '
        'friendId': friendId, // integer,'
        'friendRelation': relation.index,
      }).then((value) {
        eventBus.fire(FriendDbChangeNotify());
        LoggerManager().debug(
          'FriendDbChangeNotify friendId: $friendId',
        );
      }).catchError((e) {
        log("err :$e");
      });
    } else {
      dbMsg
          ?.update(tbFriendInfo, {"friendRelation": relation.index},
              where: "friendId=?", whereArgs: [friendId])
          .then((value) => eventBus.fire(FriendDbChangeNotify()));
    }
  }).catchError((e) {
    log("err :$e");
  });
}
