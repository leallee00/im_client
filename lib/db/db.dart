// open the database
// import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';

// import 'dart:math';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:quliao/db/database.dart';
import 'package:quliao/db/obox/model/conversation_model.dart';
import 'package:quliao/db/obox/model/group_msg_model.dart';
import 'package:quliao/db/obox/model/private_msg_model.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/global/controller/im_controller.dart';
import 'package:quliao/models/Global.dart';
import 'package:quliao/models/msg_struct.dart';
import 'package:quliao/models/user/userinfo.dart';
import 'package:quliao/modules/conversation/repository/im_conversation_repository.dart';
import 'package:quliao/net/msg_handler_mgr.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/chat_private/chat.dart';
import 'package:quliao/pb/pb_msg/friend/friend.pb.dart';

// import 'package:quliao/net/socket.dart';
import 'package:quliao/pb/pb_msg/gate/gate.pb.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart';
import 'package:quliao/pb/pb_msg/offline_msg/offlineMsg.pb.dart';

// import 'package:quliao/pb/pb_msg/group/group.pb.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart' as pb_comm;
import 'package:quliao/pb/pb_pub/comm.pbserver.dart' hide UserInfo;
import 'package:quliao/pb/pb_pub/service.pbenum.dart';
import 'package:quliao/pb/pb_pub/service_notify.pb.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/pub/pub-def.dart';
import 'package:quliao/utils/cache.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

// import 'package:sqflite/sqflite.dart';
// import 'package:sqflite_common_ffi/sqflite_ffi.dart';
// import 'package:sqflite_common/sqlite_api.dart';

// import 'package:sqflite_common/sqflite_dev.dart';
// import 'package:sqflite_common/sqflite_logger.dart';
// import 'package:sqflite_common/sql.dart';
// import 'package:sqflite_common/sqlite_api.dart';
// import 'package:sqflite_common/utils/utils.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import 'package:quliao/mywedgits/badger/badger.dart';
import 'package:quliao/models/user/userinfo.dart' as $locUinfo;

// import 'package:orm/orm.dart';

int msgDbVersion = 2;

//private msg db
Database? get dbMsg => AppDatabase().dbMsg;

// 私聊
String tbPrivateMsgTable = "t_private_msg";

// 群聊
String tbGroupMsgTable = "t_group_msg";

// 群已读列表
String tbGroupMsgReadUserList = "t_group_msg_read_user_list";

// 好友信息
String tbFriendInfo = "t_friend_info";

// 用户信息表
String tbUserInfo = "t_user_info";

// 聊天列表
String tbChatList = "t_chat_list";

// 群
String tbGroup = "t_group";

//
String tbFriendApply = "t_friend_apply";

// 圈子 点赞
String tbCommunityLike = "t_community_like";

// 圈子 关注
String tbCommunityFollow = "t_community_follow";

String tbCommunityJoined = "t_community_joined";

String tbServiceNotify = "t_service_notify";

// 圈子 投票
String tbCommunityVote = "t_community_vote";

/// 群成员
String tbGroupMember = "t_group_member";
String tbGroupMemberRemark = "t_group_member_remark";

String tbCollectionTable = "t_collections";

Future<void> resetDb() async {
  log("reset db begin------");
  log("drop table $tbPrivateMsgTable");
  await dbMsg?.execute("drop table if exists $tbPrivateMsgTable");

  log("drop table $tbGroupMsgTable");
  await dbMsg?.execute("drop table if exists $tbGroupMsgTable");

  log("drop table $tbGroupMsgReadUserList");
  await dbMsg?.execute("drop table if exists $tbGroupMsgReadUserList");

  log("drop table $tbFriendInfo");
  await dbMsg?.execute("drop table if exists $tbFriendInfo");

  log("drop table $tbChatList");
  await dbMsg?.execute("drop table if exists $tbChatList");

  log("drop table $tbGroup");
  await dbMsg?.execute("drop table if exists $tbGroup");

  log("drop table $tbFriendApply");
  await dbMsg?.execute("drop table if exists $tbFriendApply");

  log("drop table $tbUserInfo");
  await dbMsg?.execute("drop table if exists $tbUserInfo");

  log("drop table $tbCommunityLike");
  await dbMsg?.execute("drop table if exists $tbCommunityLike");

  log("drop table $tbCommunityFollow");
  await dbMsg?.execute("drop table if exists $tbCommunityFollow");

  log("drop table $tbCommunityJoined");
  await dbMsg?.execute("drop table if exists $tbCommunityJoined");

  log("drop table $tbServiceNotify");
  await dbMsg?.execute("drop table if exists $tbServiceNotify");

  log("drop table $tbCommunityVote");
  await dbMsg?.execute("drop table if exists $tbCommunityVote");

  await dbMsg?.execute("drop table if exists $tbGroupMember");

  await dbMsg?.execute("drop table if exists $tbCollectionTable");

  if (dbMsg == null) {
    log("abc??????????");
  }

  if (null != dbMsg) {
    await initDBData(dbMsg!, msgDbVersion);
  }
  log("reset db end----------");
}

// Future<void> initDb(Int64 ownerId) async {
//   if (Platform.isWindows || Platform.isLinux) {
//     //Linux/Windows/DartVM Currently supported on Linux, MacOS and Windows on both Flutter and Dart VM.
//     await initDbDesktop(ownerId);
//   } else {
//     // Android iOS macOS
//     await initDbMobile(ownerId);
//   }
// }

// Future<void> initDbMobile(Int64 ownerId) async {
//   var version = 3;
//   var databasesPath = await getDatabasesPath();
//   String path = '$databasesPath/date.$ownerId.db';
//   log("initdb 初始化db $path  mobile-----");
//   dbMsg?.close();
//   dbMsg = await openDatabase(
//     path,
//     version: version,
//     onCreate: (Database db, int version) async {
//       // When creating the db, create the table
//       // await db.execute(
//       //     'CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)');
//       initDBData(db, version);
//     },
//     onUpgrade: (db, oldVersion, newVersion) {
//       LoggerManager().debug('db onUpgrade oldVersion ========> $oldVersion');
//       if (oldVersion < 2) {
//         db.execute(
//           'ALTER TABLE $tbGroupMsgTable ADD COLUMN groupMsgSn INTEGER',
//         );
//       }
//       if (oldVersion < 3) {
//         _createGroupMemberTable(db);
//       }
//     },
//   );
//
//   // var databaseFactory = DatabaseFactory;//databaseFactoryFfi;
//   // var databasesPath = databaseFactory.get//await getDatabasesPath();
//   // var databasesPath = await databaseFactoryFfi.getDatabasesPath();
//   // 每个用户都是唯一的，获取到新的用户id的时候初始化一下
//
//   // 以后用指针吧
//   // if (dbMsg. .isOpen){
//   //   dbMsg.close();
//   // }
//   // dbMsg?.close();
//   // dbMsg = await databaseFactory.openDatabase(
//   //   inMemoryDatabasePath,
//   //   options: OpenDatabaseOptions(
//   //     version: msgDbVersion,
//   //     onCreate: (db, version) {
//   //       initDBData(db, version);
//   //     },
//   //   ),
//   // );
//   // initDBData(dbMsg, 1);
//
//   // await db.execute('''
//   // CREATE TABLE Product (
//   //     id INTEGER PRIMARY KEY,
//   //     title TEXT
//   // )
//   // ''');
//   // await db.insert('Product', <String, Object?>{'title': 'Product 1'});
//   // await db.insert('Product', <String, Object?>{'title': 'Product 1'});
//
//   // var result = await db.query('Product');
//   // print(result);
//   // // prints [{id: 1, title: Product 1}, {id: 2, title: Product 1}]
//   // await db.close();
// }
//   var databaseFactory = databaseFactoryFfi;

// Future<void> initDbDesktop(Int64 ownerId) async {
//   var databaseFactory = databaseFactoryFfi;
//   // var databasesPath = await getDatabasesPath();
//   var databasesPath = await databaseFactoryFfi.getDatabasesPath();
//   // 每个用户都是唯一的，获取到新的用户id的时候初始化一下
//   // String path = '$databasesPath/${ownerId}_msg.db';
//   String path = '$databasesPath/data.$ownerId.db';
//   // 以后用指针吧
//   // if (dbMsg. .isOpen){
//   //   dbMsg.close();
//   // }
//   dbMsg?.close();
//   dbMsg = await databaseFactory.openDatabase(
//     path,
//     options: OpenDatabaseOptions(
//       version: msgDbVersion,
//       onCreate: (db, version) {
//         initDBData(db, version);
//       },
//       onUpgrade: (db, oldVersion, newVersion) {
//         if (oldVersion < 2) {
//           db.execute(
//               'ALTER TABLE $tbGroupMsgTable ADD COLUMN groupMsgSn INTEGER');
//         }
//       },
//     ),
//   );
//   log("initdb 初始化db $path desktop--- ${dbMsg?.path}");
// }

Future<void> _createGroupMemberTable(Database db) async {
  final sql = 'CREATE TABLE if not exists $tbGroupMember ('
      'id INTEGER PRIMARY KEY autoincrement,' // 自增id
      'groupId INTEGER,'
      'friendId INTEGER,'
      'role INTEGER,'
      'username TEXT,'
      'remark TEXT,'
      'avatar TEXT,'
      'group_remark TEXT,'
      'createTime DateTime'
      ')';
  await db.execute(sql);
  LoggerManager().debug('group member table create success');
}

// enum FRIEND_APPLY_STATE {
//   Init, // 初始状态
//   Request, //发起成功,等待验证,
//   Agree, // 同意,
//   Reject, // 拒绝,
//   OverTime, // 超时,
// }

// sqflite支持5种数据类型：NULL, INTEGER, REAL, TEXT, BLOB.
// bool
// 存储INTEGER类型，0为false，1为true.
//
//
// DateTime
// 存储INTEGER类型，一列数据的创建时间和更新时间，一般是比较重要的。当然还有其他的，比如一个订单的付款时间、发货时间、取消时间等很多的时间信息。如果存储TEXT类型，程序如果支持多种语言的话，还是不方便的。
//
//
// List
// 存储TEXT类型，我们可以根据特殊的分隔符，把数据组合成String存储到数据库。然后根据String的split解析成List< String >。还是有很多需要注意的，比如List的元素中一定不能包含定义的分隔符。对List的某一个Item修改比较麻烦，只能整体覆盖List。
//
// Map、json、实体类
// 存储TEXT类型，一般我使用实体类的toMap方法把实体类转换成Map, 通过jsonEncode把实体类转换成String，反过来，利用jsonDecode把String转换成Map，通过实体类的fromMap转换成实体类。
Future<void> initDBData(Database db, int version) async {
  /// When creating the db, create the table
  var sql = 'CREATE TABLE if not exists $tbPrivateMsgTable ('
      'id INTEGER PRIMARY KEY autoincrement,' // 自增id

      // 'userId INTEGER,' // 当前用户的用户id
      'friendId INTEGER,' // 好友id
      // 'chatType INTEGER,' // 聊天类型 0 私聊， 1群聊

      'msgSn INTEGER UNIQUE,' // 消息sn
      'srcId INTEGER , ' // 发送者id
      'aimId INTEGER,' // 接收者id
      'appId INTEGER,'
      'appUserId TEXT,'
      'clientType INTEGER,' // 发送消息的端类型
      'pbData Uint8List,' // 消息的pb数据
      'msgType INTEGER,' // 消息类型
      'msgStatus INTEGER,' // 消息状态 pb_pub.MSG_STATE
      'msgTime INTEGER,' // 消息本身的时间，不是收到的时间
      'createTime INTEGER' // 创建消息的时间
      ')';
  log("create table: sq1=$sql");
  await db
      .execute(sql)
      .then((value) => log("create table $tbPrivateMsgTable over"));

  db.execute("CREATE INDEX index_friendId ON $tbPrivateMsgTable (friendId)");
  db.execute(
      "CREATE INDEX index_createTime ON $tbPrivateMsgTable (createTime)");

  sql = 'CREATE TABLE if not exists $tbGroupMsgTable ('
      'id INTEGER PRIMARY KEY autoincrement,'
      // 'userId INTEGER,' // 当前用户的用户id
      'srcId INTEGER , '
      'groupId INTEGER,'
      // 'aimId INTEGER,'
      'msgSn INTEGER UNIQUE,' // 消息sn
      'appId INTEGER,'
      'groupMsgSn INTEGER,'
      'appUserId TEXT,'
      'atList UintList,'
      'clientType INTEGER,' // 发送消息的端类型
      'pbData Uint8List,' // 消息的pb数据
      'msgType INTEGER,' // 消息类型
      'type INTEGER,' // 消息类型
      'recallUid INTEGER,' // 消息类型
      'msgTime INTEGER,' // 消息本身的时间，不是收到的时间
      'msgStatus INTEGER,' // 消息状态 pb_pub.MSG_STATE // INIT:发送中 SEND:已发送 RECEIVED:部分收取,READ:部分读取，END:全部已读
      'waitReadCount INTEGER,' // 希望多少人读取
      'readCount INTEGER,' // 实际多少人读取
      'readUserList TEXT,' // 用户IMIDjsonmap[uid,readstate]

      'createTime INTEGER' // 创建消息的时间
      ')';
  await db.execute(sql);
  db.execute("CREATE INDEX index_groupId ON $tbGroupMsgTable (groupId)");
  db.execute("CREATE INDEX index_createTime ON $tbGroupMsgTable (createTime)");
  log("create table $tbGroupMsgTable over");

  sql = 'CREATE TABLE if not exists $tbGroupMsgReadUserList ('
      'id INTEGER PRIMARY KEY autoincrement,'
      'readerId INTEGER , '
      'groupId INTEGER,'
      'msgSn INTEGER,' // 消息sn
      'readStatus INTEGER,'
      'updateAt INTEGER,' // 更新消息的时间
      'UNIQUE(readerId,msgSn) ON CONFLICT REPLACE'
      ')';
  await db.execute(sql);
  log("create table $tbGroupMsgReadUserList over");

  await db
      .execute('CREATE TABLE if not exists $tbFriendInfo ('
          'friendId integer,'
          'friendRelation integer,' // enFriendRelation
          //////////////////////////////////
          // 好友属性
          'remark TEXT,' //"remark = 5;        // 好友备注
          'mobile TEXT,' //string mobile = 6;        // 好友电话
          'description TEXT,' //string description = 7;   // 好友描述
          'card TEXT,' //string card = 8;          // 好友名片 图片地址
          'sign TEXT,' //string sign = 9;          // 个性签名
          'tags TEXT,' //string tags = 10;         // 好友标签 简单处理, 数组元素逗号分隔, 逻辑交给客户端处理
          'blocked int default 0,' //bool blocked = 11;        // 是否拉黑
          'stared int default 0,' //bool stared = 12;         // 是否加星
          'deleted int default 0,' //bool deleted = 13;        // 是否删除
          'source int,' //int32 source = 15;        // 来源方式
          // 好友设置属性
          //////////////////////////////////////////////////

          //////////////////////////////////////////////////
          // 客户端个性设置
          'disturb int default 0,' // 是否免打扰
          'topMsg int default 0,' // 是否置顶
          'attention int default 0,' // 是否强提醒
          'backPic string default "",' // 聊天背景
          /////////////////////////////////////////////////////

          'noDisturb integer,'
          'top integer,'
          'updatedAt int default 0,'
          'createdAt int default 0,'
          'primary key (friendId)'
          ')')
      .then((value) => log("create table $tbFriendInfo over"));
  db.execute("CREATE INDEX index_friendId ON $tbFriendInfo (friendId)");

  await db
      .execute('CREATE TABLE if not exists $tbChatList ('
          // 'userId INTEGER,' // 当前用户的用户id
          'chatId INTEGER,' // 群聊为群id， 私聊为好友id
          'chatType INTEGER,' // 聊天类型 0 私聊， 1群聊
          'top INTEGER,' // 聊天类型 0 非置顶， 1置顶
          'avatar TEXT,' // 头像
          'name TEXT,'
          'remark TEXT,'
          // 'level INTEGER,'      //
          // 'signName TEXT,'      // 签名
          'newMsgCount INTEGER,' // 新消息条数
          'noDisturb INTEGER,' // 新消息条数
          'msgTips TEXT,' // 消息提示  文字直接展示，其他的展示[类型名]
          'msgTime DateTime,'
          'createTime DateTime,'
          'msgSn INTEGER,' // 消息sn
          'groupMsgSn INTEGER,' // 消息sn
          'groupType INTEGER,' // 消息sn
          'primary key (chatId,chatType)'
          ')')
      .then((value) => log("create table $tbChatList over"));
  await db
      .execute('CREATE TABLE if not exists $tbGroup ('
          'groupId INTEGER,' // 群id
          'ownerId INTEGER,' // 群主
          'members INTEGER,' // 群成员个数
          'name TEXT,' // 群名
          'notice TEXT,' // 群公告
          'avatar TEXT,' // 群头像
          //////////////////////////////////////////////////
          // 个性设置
          'disturb bool,' // 是否免打扰
          'top bool,' // 是否置顶
          'attention bool,' // 是否强提醒
          'needReceip bool,' // 是否需要回执
          'memberCountLimit INTEGER,' // 群成员上限
          'inviteRoleLimit INTEGER,' // 群成员上限
          'memberChatBannedStatus INTEGER,' // 群成员上限
          'newMemberRemindClosed INTEGER,' // 群成员上限
          'scanCodeJoinGroupSwitchStatus INTEGER,' // 群成员上限
          'scanCodeJoinGroupParam INTEGER,' // 群成员上限
          'noDisturb INTEGER,' // 群成员上限
          'showNick bool,' // 显示群成员昵称
          'remarks string,' // 备注
          'disbanded bool,' //是否解散
          'banned INTEGER,' //是否解散
          'forbiddenAddFriends INTEGER,' //是否解散
          'noticeVersion INTEGER,' //是否解散
          'disbandState INTEGER,' //是否解散
          'count INTEGER,' //是否解散
          'freeJoinStatus INTEGER,' //是否解散
          'groupType INTEGER,' //是否解散
          'backPic string default "",' // 背景图
          // 'saveToList'
          /////////////////////////////////////////////////////

          'createTime DateTime,'
          'primary key (groupId)'
          ')')
      .then((value) => log("create table $tbGroup over"));

  await db
      .execute('CREATE TABLE if not exists $tbFriendApply ('
          'id INTEGER,' // id
          // 'userId INTEGER,' // 用户id，客户端
          'friendId INTEGER,' // 好友id
          'applyId INTEGER,' // 发起者id
          'state INTEGER,' // FriendApplyState
          'nick TEXT,' // 好友名称
          'avatar TEXT,' // 头像
          'applyMsg TEXT,' // 请求信息
          'createTime DateTime,'
          'UNIQUE(friendId),'
          'primary key (id)'
          ')')
      .then((value) => log("create table $tbFriendApply over"));

  await db
      .execute('CREATE TABLE if not exists $tbUserInfo ('
          'id INTEGER,' // id
          'appId INTEGER,'
          'appUid TEXT,'
          'nickName TEXT,'
          'imId INTEGER,' // 用户id，客户端
          'avatar TEXT,' // 头像
          'level INTEGER,'
          'userSourceVersion INTEGER,'
          'signName TEXT,' // 签名

          //////////////////////////////////////////////////
          // 个性设置

          /////////////////////////////////////////////////////

          'createTime DateTime,'
          'UNIQUE(imId),'
          'UNIQUE(appId,appUid),'
          'primary key (id)'
          ')')
      .then((value) => log("create table $tbUserInfo over"));

  await db
      .execute('CREATE TABLE if not exists $tbCommunityLike ('
          'id INTEGER,' // id
          'likeId TEXT,' // 点赞id
          'likeType INTEGER,' // 点赞类型  0.默认 1.赞 2.踩
          'imId INTEGER,' // 用户id，客户端
          'createTime DateTime,'
          'UNIQUE(likeId),'
          'primary key (id)'
          ')')
      .then((value) => log("create table $tbCommunityLike over"));

  await db
      .execute('CREATE TABLE if not exists $tbCommunityVote ('
          'id INTEGER,' // id
          'voteId TEXT,' // 投票id
          'voteStatus INTEGER,' // 投票状态  0.未投票 1.已投票
          'optionId INTEGER,' // 已投选项
          'imId INTEGER,' // 用户id，客户端
          'createTime DateTime,'
          'UNIQUE(voteId),'
          'primary key (id)'
          ')')
      .then((value) => log("create table $tbCommunityVote over"));

  await db
      .execute('CREATE TABLE if not exists $tbCommunityFollow ('
          'id INTEGER,' // id
          'userId INTEGER,' // 被关注方id
          'isFollow INTEGER,' // 是否关注
          'createTime DateTime,'
          'UNIQUE(userId),'
          'primary key (id)'
          ')')
      .then((value) => log("create table $tbCommunityFollow over"));

  //tbCommunityJoined
  await db
      .execute('CREATE TABLE if not exists $tbCommunityJoined ('
          'communityId INTEGER,' // id
          'userId INTEGER,' //
          'primary key (communityId, userId)'
          ')')
      .then((value) => log("create table $tbCommunityJoined over"));

  await db
      .execute('CREATE TABLE if not exists $tbServiceNotify ('
          'id INTEGER  PRIMARY KEY autoincrement,' // id
          'messageType INTEGER,' //
          'messageBody TEXT,'
          'msgTime DateTime,'
          'createTime DateTime,'
          'readStatus INTEGER default 0' // 0 未读，1,已读
          ')')
      .then((value) => log("create table $tbServiceNotify over"));

  final String tbGroupMemberSql = 'CREATE TABLE if not exists $tbGroupMember ('
      'id INTEGER PRIMARY KEY autoincrement,'
      'groupId INTEGER,'
      'friendId INTEGER,'
      'role INTEGER,'
      'username TEXT,'
      'remark TEXT,'
      'avatar TEXT,'
      'banned INTEGER,'
      'group_remark TEXT,'
      'createTime DateTime'
      ')';
  await db.execute(tbGroupMemberSql);

  final tbCollectionsSql = 'CREATE TABLE if not exists $tbCollectionTable ('
      'id INTEGER PRIMARY KEY autoincrement,'
      'srcId INTEGER , '
      'aimId INTEGER , '
      'friendId INTEGER , '
      'groupId INTEGER,'
      'msgSn INTEGER UNIQUE,' // 消息sn
      'appId INTEGER,'
      'groupMsgSn INTEGER,'
      'appUserId TEXT,'
      'atList UintList,'
      'clientType INTEGER,' // 发送消息的端类型
      'pbData Uint8List,' // 消息的pb数据
      'msgType INTEGER,' // 消息类型
      'type INTEGER,' // 消息类型
      'recallUid INTEGER,' // 消息类型
      'msgTime INTEGER,' // 消息本身的时间，不是收到的时间
      'msgStatus INTEGER,' // 消息状态 pb_pub.MSG_STATE // INIT:发送中 SEND:已发送 RECEIVED:部分收取,READ:部分读取，END:全部已读
      'waitReadCount INTEGER,' // 希望多少人读取
      'readCount INTEGER,' // 实际多少人读取
      'readUserList TEXT,' // 用户IMIDjsonmap[uid,readstate]

      'createTime INTEGER' // 创建消息的时间
      ')';
  await db.execute(tbCollectionsSql);
}

Future<void> dbSaveServiceNodifyMsg(pb_comm.PBMessage pbMsg) async {
  var pbServiceNodify = ServiceNotify();
  pbServiceNodify.mergeFromBuffer(pbMsg.pbData);
  log("************ service nodity ->${pbServiceNodify}");

  var index = await dbMsg?.insert(tbServiceNotify, <String, dynamic>{
    'messageType': pbServiceNodify.messageType,
    'messageBody': pbServiceNodify.messageBody,
    'msgSn': pbMsg.pbCommData.msgSn.toInt(),
    'srcId': pbMsg.pbCommData.srcId.toInt(),
    'aimId': pbMsg.pbCommData.aimId.toInt(),
    'appId': pbMsg.pbCommData.appId.toInt(),
    'appUserId': pbMsg.pbCommData.appUserId,
    'clientType': pbMsg.pbCommData.srcClientType.value,
    'msgTime': DateTime.fromMillisecondsSinceEpoch(
            pbMsg.pbCommData.time.toInt() * 1000)
        .toString(), // DateUtils.. pbMsg.pbCommData.time.toInt(),
    'createTime': DateTime.now().toString(), // 创建消息的时间
  });

  if (index! > 0) {
    // 未读条数+1
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var systemMsgCount =
        prefs.getInt('${AppUserInfo.instance.imId}_newServiceNotify') ?? 0;
    prefs.setInt(
        '${AppUserInfo.instance.imId}_newServiceNotify', systemMsgCount);
  }

  return;
}

// 获取未读条数
Future<int> GetNewServiceNotifyCount() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getInt('${AppUserInfo.instance.imId}_newServiceNotify') ?? 0;
}

Future<bool> dbCommunityIsIJoined(int communityId) async {
  var result = await dbMsg?.query(tbCommunityJoined,
      where: "communityId=? and userId=?",
      whereArgs: [
        communityId,
        AppUserInfo.instance.imId
      ]).catchError((exception) {
    if (exception is DatabaseException) {
      if (exception.isNoSuchTableError()) {
        initDBData(dbMsg!, 1);
      }
    }
    return <Map<String, Object?>>[];
  });
  if (result != null && result.isEmpty) {
    return false;
  }

  return true;
}

Future<void> dbCommunityJoin(int communityId) async {
  log("insert");
  dbMsg?.insert(tbCommunityJoined, {
    "communityId": "${communityId}",
    "userId": "${AppUserInfo.instance.imId}"
  }).catchError((exception) {
    if (exception is DatabaseException) {
      if (exception.isNoSuchTableError()) {
        log("insert ${tbCommunityJoined} with {communityId:${communityId},userId:${AppUserInfo.instance.imId} error! err=${exception} ");
        initDBData(dbMsg!, 1);
      } else if (exception.isDuplicateColumnError()) {
        // 没事
      }
    }
    return 0;
  });
}

// 离开
Future<void> dbCommunityQuit(int communityId) async {
  dbMsg?.delete(tbCommunityJoined,
      where: "communityId=? and userId=?",
      whereArgs: [communityId, AppUserInfo.instance.imId]).catchError((err) {
    log("delete from ${tbCommunityJoined} with {communityId:${communityId},userId:${AppUserInfo.instance.imId} error! err=${err} ");
    initDBData(dbMsg!, 1);
    return 0;
  });
}

int getSessionIdFromData(pb_comm.PBCommData data) {
  if (data.groupId > 0) {
    // 群消息，session就是群id
    return data.groupId.toInt();
  }

  // 如果是私聊则小在前排列后进行组合
  if (data.srcId < data.aimId) {
    return (data.srcId.toInt() << 32) + data.aimId.toInt();
  }

  return (data.aimId.toInt() << 32) + data.srcId.toInt();
}

int getSessionId(int target) {
  if (target < AppUserInfo().imId) {
    return (target << 32) + AppUserInfo().imId;
  }
  return (AppUserInfo().imId << 32) + target;
}

// 私聊消息入库
// var pbMsgChatTextName = ChatText().info_.qualifiedMessageName;

/// isMySend : 是否本客户端发送出去的 多端登录的话进行区分
Future<int?> dbSaveMsg(
  pb_comm.PBMessage pbMsg, {
  bool isFromNet = false,
  bool flushed = true,
  Function()? callback,
}) async {
  if (!Global.pbMsgCreator.needSave(pbMsg.pbName)) {
    // log("msg ${pbMsg.pbName} 不需要保存");
    return 0;
  }

  if (pbMsg is pb_comm.MsgReceipt) {
    // log("MsgReceipt 不需保存！！！");
    return 0;
  }

  // log("----------------------need save msg ${pbMsg.pbName} ==============================");
  int friendId = 0;
  int? index = 0;

  // 是否消息的主人，
  bool isOwner = pbMsg.pbCommData.srcId.toInt() == AppUserInfo.instance.imId;
  // var msgState = isOwner?pb_comm.MSG_STATE.INIT:pb_comm.MSG_STATE.RECEIVED;
  var msgState = () {
    if (!isOwner) {
      // 如果是别人发的消息则直接为已收
      return pb_comm.MSG_STATE.RECEIVED;
    }

    if (isFromNet) {
      // 如果是从网络上过来的，那肯定是已发送
      return pb_comm.MSG_STATE.SEND;
    }

    // 如果是不是网络过来的，也就是自己发出的，则初始化为Init，这个状态经过一段时间后则显示为发送失败
    return pb_comm.MSG_STATE.INIT;
  }();

  var msgTime =
      DateTime.fromMillisecondsSinceEpoch(pbMsg.pbCommData.time.toInt() * 1000)
          .toString();

  LoggerManager().error(
    '收到新消息 pbMsg.pbName =======》${pbMsg.pbName} 消息时间：${pbMsg.pbCommData.time.toInt()}',
  );

  // 如果是私聊
  if (pbMsgChatTextName == pbMsg.pbName || pbMsg.pbCommData.groupId <= 0) {
    /// sessionId 信息
    final sessionId = getSessionIdFromData(pbMsg.pbCommData);

    LoggerManager().debug('私聊新消息 pbMsg.pbName =======》 ${pbMsg.pbName}');

    // if (pbMsg.pbCommData.groupId == 0){

    // log("================insert chat pbmsg to db ${pbMsg.pbCommData.msgSn}");
    // try {
    // var pbCT = ChatText();
    // pbCT.mergeFromBuffer(pbMsg.pbData);
    // bool screenshot = false;
    // if (pbMsg.pbName == 'pb_pub.TakeScreenShotNotify') {
    //   if (Cache.getInstance().systemConfig?.notifyScreenShort == false) {
    //     return 0;
    //   } else {
    //     screenshot = true;
    //   }
    // }

    friendId = (AppUserInfo.instance.imId == pbMsg.pbCommData.srcId.toInt())
        ? pbMsg.pbCommData.aimId.toInt()
        : pbMsg.pbCommData.srcId.toInt();
    // log("************ friendId:${friendId} = AppUserInfo.instance.imId:${AppUserInfo.instance.imId}==pbMsg.pbCommData.srcId:${pbMsg.pbCommData.srcId}?pbMsg.pbCommData.aimId:${pbMsg.pbCommData.aimId}:pbMsg.pbCommData.srcId:${pbMsg.pbCommData.srcId};");
    // LoggerManager().debug(
    //     "************存 chat text ->${pbCT.text} sn:${pbMsg.pbCommData.msgSn} isMeSend:${IsMeSendReceipt(pbMsg.pbCommData.srcId)} pbname:${pbMsg.pbName}");
    // var msgState = isOwner?pb_comm.MSG_STATE.INIT:pb_comm.MSG_STATE.RECEIVED;
    // var result = await dbMsg?.query(
    //   tbPrivateMsgTable,
    //   where: "msgSn=${pbMsg.pbCommData.msgSn.toInt()}",
    // );
    // if (result!.isNotEmpty) {
    // 查到了结果，代表有数据，直接返回
    // log("find one data with seem sn:${pbMsg.pbCommData.msgSn}, 不再重复插入 返回");

    // log("*见鬼了 存 chat text ->${pbCT.text} sn:${pbMsg.pbCommData.msgSn} isMeSend:${IsMeSendReceipt(pbMsg.pbCommData.srcId)} pbname:${pbMsg.pbName} 找到相同sn消息不再重复插入 返回");
    // log("${result.length} ${result.first}", deep: 2);

    // 多次收到就不正常了，如果是别人发的，无论如何都发个回执
    // if (!isOwner){
    //   sendReceiptMsg(pbMsg.pbCommData, beginTime: Int64(0),
    //       state: msgState);
    // }

    // return 0;
    // }

    final privateMsg = await AppDatabase().objectBox.getPrivateMsg(
          friendId,
          pbMsg.pbCommData.msgSn.toInt(),
        );

    if (null == privateMsg) {
      final privateMsgDataMap = <String, dynamic>{
        'userId': friendId,
        'srcId': pbMsg.pbCommData.srcId.toInt(),
        'msgSn': pbMsg.pbCommData.msgSn.toInt(),
        'pbName': pbMsg.pbName,
        'pbData': pbMsg.pbData,
        'pbCommData': pbMsg.pbCommData.writeToBuffer(),
        'msgState': msgState.value,
        'createAt': DateTime.now().millisecondsSinceEpoch,
        'updatedAt': pbMsg.pbCommData.time.toInt() * 1000,
      };

      privateMsgDataMap.putIfAbsent(
        'userSourceVersion',
            () => pbMsg.pbCommData.userSourceVersion.toInt(),
      );

      AppDatabase()
          .objectBox
          .addPrivateMsg(
            PrivateMsgModel.fromJson(privateMsgDataMap),
          )
          .then(
        (value) {
          if (value > 0) {
            callback?.call();
            LoggerManager().error(
              '私聊消息存储成功 ======> userId: $friendId msgSn: ${pbMsg.pbCommData.msgSn.toInt()} update at: ${pbMsg.pbCommData.time.toInt()}',
            );
          }
        },
      ).catchError(
        (error) {
          LoggerManager().error(
            '私聊消息存储失败 ======> userId: $friendId msgSn: ${pbMsg.pbCommData.msgSn.toInt()} \n error: $error',
          );
        },
      );
    } else {
      privateMsg.userSourceVersion =
          pbMsg.pbCommData.userSourceVersion.toInt();
      privateMsg.msgState = msgState.value;
      AppDatabase().objectBox.addPrivateMsg(privateMsg).then(
        (value) {
          if (value > 0) {
            callback?.call();
            LoggerManager().error(
              '私聊消息更新成功 ======> userId: $friendId msgSn: ${pbMsg.pbCommData.msgSn.toInt()}',
            );
          }
        },
      ).catchError(
        (error) {
          LoggerManager().error(
            '私聊消息更新失败 ======> userId: $friendId msgSn: ${pbMsg.pbCommData.msgSn.toInt()} \n error: $error',
          );
        },
      );
    }

    // final privateDataMap = <String, dynamic>{
    //   'friendId': friendId,
    //   'msgSn': pbMsg.pbCommData.msgSn.toInt(),
    //   'srcId': pbMsg.pbCommData.srcId.toInt(),
    //   'aimId': pbMsg.pbCommData.aimId.toInt(),
    //   'appId': pbMsg.pbCommData.appId.toInt(),
    //   'appUserId': pbMsg.pbCommData.appUserId,
    //   'clientType': pbMsg.pbCommData.srcClientType.value,
    //   'msgStatus': msgState.value, //MSG_STATE'
    //   'pbData': pbMsg.writeToBuffer(),
    //   // 'msgTips,':msgTips, // 简短提示
    //   'msgTime': DateTime.fromMillisecondsSinceEpoch(
    //           pbMsg.pbCommData.time.toInt() * 1000)
    //       .toString(),
    //   'createTime': DateTime.now().toString(), // 创建消息的时间
    // };

    // await dbMsg?.transaction((txn) async {
    //   txn.batch().insert(tbPrivateMsgTable, privateDataMap);
    //   try {
    //     await txn.batch().commit(continueOnError: true);
    //   } catch (error) {
    //     LoggerManager().error(
    //       'save data to tbPrivateMsgTable error ======> $error',
    //     );
    //   }
    // });

    // try {
    //   index =
    //       await dbMsg?.insert(tbPrivateMsgTable, privateDataMap).then((value) {
    //     callback?.call();
    //     log(" then-------------- save pbmsg to db index=$value, 保存的内容是：${pbCT.text}");
    //     return value;
    //   });
    // } catch (e) {
    //   log("异常消息：$pbMsg");
    //   log(deep: 2, "异常信息：$e");
    // }

    // log("**********************save pbmsg to db index=$index, 保存的内容是：${pbCT.text}");

    // 保存完成就代表已经收了，发个已收回执
    // if (!isOwner){
    //   sendReceiptMsg(pbMsg.pbCommData, beginTime: Int64(0),
    //       state: msgState);
    // }

    // final chatPrivateData = ChatPrivateData();
    // chatPrivateData.initWithPBMessage(pbMsg, screenshot: screenshot);
    //
    // final chatTextType = TextChatType.valueOf(chatPrivateData.msgType)!;
    //
    // String msgTips = GetMsgTips(chatTextType, text: pbCT.text);
    //
    // if (screenshot) {
    //   final srcId = chatPrivateData.pbMsg.pbCommData.srcId.toInt();
    //   if (srcId == AppUserInfo().imId) {
    //     msgTips = '您在聊天中截屏了';
    //   } else {
    //     $locUinfo.UserInfo userInfo = await $locUinfo.GetUserInfo(srcId);
    //     final String srcNickname =
    //         userInfo.nickName.isEmpty ? '${userInfo.appId}' : userInfo.nickName;
    //     msgTips = '$srcNickname在聊天中截屏了';
    //   }
    // }

    // 生成提示信息
    // 先看下有没有
    // result = await dbMsg?.query(tbChatList,
    //     where: "chatId=? and chatType=?",
    //     whereArgs: [friendId, CHAT_TYPE.PRIVATE.index]);
    // log(" result = ${result}");

    final conversation = await AppDatabase().objectBox.getConversation(
          sessionId,
        );

    final dataMap = <String, dynamic>{
      'session': sessionId,
      'lastMsgStatus': msgState.value,
      'sessionType': CHAT_SESSION_TYPE.CHAT_SESSION_TYPE_PRIVATE_CHAT.value,
      'srcId': pbMsg.pbCommData.srcId.toInt(),
      'msgSn': pbMsg.pbCommData.msgSn.toInt(),
      'userSourceVersion': pbMsg.pbCommData.userSourceVersion,
      // 'pbName': pbMsg.pbName,
      // 'pbData': pbMsg.pbData,
      // 'pbCommData': pbMsg.pbCommData.writeToBuffer(),
      'updatedAt': pbMsg.pbCommData.time.toInt() * 1000,
    };

    if (null == conversation) {
      dataMap.putIfAbsent('pbName', () => pbMsg.pbName);
      dataMap.putIfAbsent('pbData', () => pbMsg.pbData);
      dataMap.putIfAbsent('pbCommData', () => pbMsg.pbCommData.writeToBuffer());
      if (GlobalController.to.currentConversationId.value != sessionId) {
        dataMap.putIfAbsent('newMsgCount', () => 1);
      } else {
        dataMap.putIfAbsent('newMsgCount', () => 0);
      }
      dataMap.putIfAbsent('userId', () => friendId);
    } else {
      conversation.userSourceVersion = pbMsg.pbCommData.userSourceVersion;
      conversation.pbName = pbMsg.pbName;
      conversation.pbData = pbMsg.pbData as Uint8List;
      conversation.pbCommData = pbMsg.pbCommData.writeToBuffer();
      conversation.updatedAt = pbMsg.pbCommData.time.toInt() * 1000;
      conversation.srcId = pbMsg.pbCommData.srcId.toInt();
      conversation.msgSn = pbMsg.pbCommData.msgSn.toInt();
      if (GlobalController.to.currentConversationId.value != sessionId) {
        if (!isOwner && isFromNet) {
          conversation.newMsgCount = (conversation.newMsgCount ?? 0) + 1;
        }
      }
    }

    if (null != conversation) {
      AppDatabase().objectBox.addConversation(conversation);
      ImController.to.conversationListener?.onConversationUpdated(
        conversation,
      );
    } else {
      final newConversation = ConversationModel.fromJson(dataMap);
      AppDatabase().objectBox.addConversation(newConversation);
      ImController.to.conversationListener?.onConversationCreated(
        newConversation,
      );
    }

    LoggerManager().error('sessionId =============> $sessionId');

    // if ((result ?? []).isEmpty) {
    //   log("还没有聊天过，插入一个 friendId:${friendId} chatType:${CHAT_TYPE.PRIVATE} 私聊 msgTime=${msgTime}");

    // try {
    // final dataMap = <String, dynamic>{
    //   'chatId': friendId,
    //   'chatType': CHAT_TYPE.PRIVATE.index,
    //   'msgTips': msgTips,
    //   'msgSn': pbMsg.pbCommData.msgSn.toInt(),
    //   'groupMsgSn': pbMsg.pbCommData.groupMsgSn.toInt(),
    //   'msgTime': DateTime.fromMillisecondsSinceEpoch(
    //           pbMsg.pbCommData.time.toInt() * 1000)
    //       .toString(),
    //   'createTime': DateTime.now().toString(),
    // };
    // await ImController.to.insertOrUpdate(friendId, dataMap: dataMap);
    // await dbMsg?.insert(tbChatList, <String, dynamic>{
    //   // 'userId': AppUserInfo.instance.imId,
    //   'chatId': friendId,
    //   'chatType': CHAT_TYPE.PRIVATE.index,
    //   'newMsgCount': isOwner ? 0 : 1,
    //   // 新消息条数
    //   'msgTips': msgTips,
    //   'msgSn': pbMsg.pbCommData.msgSn.toInt(),
    //   // 简短提示
    //   'msgTime': msgTime,
    //   // DateTime.fromMillisecondsSinceEpoch(
    //   //         pbMsg.pbCommData.time.toInt() * 1000)
    //   //     .toString(),
    //   // DateUtils.. pbMsg.pbCommData.time.toInt(),
    //   'createTime': DateTime.now().toString(),
    //   // 创建消息的时间
    // });
    // } catch (error) {
    // log("插入失败，请稍后重试 ${error}");
    // }
    // } else {
    // log("已经有一个私聊场景了，更新一下就好 myid:${AppUserInfo.instance.imId} friendId:${friendId} type:${CHAT_TYPE.PRIVATE.index} result=${result} groupMsgSn=${pbMsg.pbCommData.groupMsgSn.toInt()}");
    // final dataMap = <String, dynamic>{
    //   'msgTips': msgTips,
    //   'msgSn': pbMsg.pbCommData.msgSn.toInt(),
    //   'groupMsgSn': pbMsg.pbCommData.groupMsgSn.toInt(),
    //   'msgTime': DateTime.fromMillisecondsSinceEpoch(
    //           pbMsg.pbCommData.time.toInt() * 1000)
    //       .toString(),
    // };
    // await ImController.to.insertOrUpdate(
    //   friendId,
    //   dataMap: dataMap,
    //   mySend: pbMsg.pbCommData.srcId.toInt() == AppUserInfo().imId,
    // );
    // await dbMsg?.rawUpdate(
    //   "update ${tbChatList} set newMsgCount = newMsgCount + ${isOwner ? 0 : 1}, msgTips=?, msgTime=? where chatId=? and chatType=?",
    //   [
    //     msgTips,
    //     msgTime,
    //     // DateTime.fromMillisecondsSinceEpoch(
    //     //         pbMsg.pbCommData.time.toInt() * 1000)
    //     //     .toString(),
    //     // DateTime.now().toString(),
    //     friendId,
    //     CHAT_TYPE.PRIVATE.index
    //   ],
    // );
    // }
  } else {
    LoggerManager().debug('群聊新消息 pbMsg.pbName =======》 ${pbMsg.pbName}');

    // if (pbMsg.pbName == 'pb_pub.TakeScreenShotNotify') {
    //   if (Cache.getInstance().systemConfig?.notifyScreenShort == false) {
    //     return 0;
    //   }
    // }

    if (pbMsg.pbName == 'pb_msg_group.GroupDisbandedNotify') {
      callback?.call();
      return 0;
    } else if (pbMsg.pbName == 'pb_msg_group.CreateGroupNotify') {
      callback?.call();
    }

    // 群消息
    // if (pbMsg.pbName == "pb_msg_group.QuitNotify") {
    //   // 这个消息如果是自己的话就不需要保存
    //   if (pbMsg.pbCommData.srcId == AppUserInfo.instance.imId) {
    //     return 0;
    //   }
    // } else if (pbMsg.pbName == 'pb_msg_group.GroupDisbandedNotify') {
    //   if (pbMsg.pbCommData.srcId == AppUserInfo.instance.imId) {
    //     return 0;
    //   }
    // }
    // if (pbMsg.pbName == 'pb_msg_group.EditRemarkRsp' ||
    //     pbMsg.pbName == 'pb_msg_group.RemarkChangeNotify' ||
    //     pbMsg.pbName == 'pb_msg_group.ClearHisMsgReq' ||
    //     pbMsg.pbName == 'pb_pub.MsgRecallRsp' ||
    //     pbMsg.pbName == 'pb_pub.MsgRecallReq' ||
    //     pbMsg.pbName == 'pb_msg_group.CreateGroupNotify') {
    //   return 0;
    // }

    // log("add group msg:${pbMsg.pbName}");
    // 如果是群聊
    // log("=============insert group pbmsg to db with pbMessage name: ${pbMsg.pbName} msg sn ${pbMsg.pbCommData.msgSn}, 群id:${pbMsg.pbCommData.groupId}");
    // try {
    var groupId = pbMsg.pbCommData.groupId;
    try {
      // var result = await dbMsg?.query(tbGroupMsgTable,
      //     where: "msgSn=${pbMsg.pbCommData.msgSn.toInt()}");
      // if (result!.isNotEmpty) {
      //   // 查到了结果，代表有数据，直接返回
      //   log("find one data with same sn:${pbMsg.pbCommData.msgSn}, 群消息不再重复插入 返回");
      //   // 多次收到就不正常了，如果是别人发的，无论如何都发个回执
      //   // if (!isOwner){
      //   //   sendReceiptMsg(pbMsg.pbCommData, beginTime: Int64(0),
      //   //       state: msgState);
      //   // }
      //   if ((pbMsg.pbCommData.serviceType == Service.gate ||
      //           pbMsg.pbCommData.serviceType == Service.group) &&
      //       pbMsg.pbName != "pb_pub.HeartBeat") {
      //     if (flushed) {
      //       eventBus.fire(ReloadChatListData());
      //     }
      //   }
      //   return 0;
      // }
      // else{
      //   // log("find  one data with sn:${pbMsg.pbCommData.msgSn}, 但是没有找到");
      // }

      // final chatGroupData = ChatGroupData();
      // chatGroupData.initPBMessage(pbMsg);
      //
      // String msgTips = '';
      // if (chatGroupData.pbDataMsg is GroupChat) {
      //   final groupChat = chatGroupData.pbDataMsg as GroupChat;
      //   msgTips = GetMsgTips(groupChat.chatType, text: groupChat.text);
      // } else if (chatGroupData.pbDataMsg is approverApprovedNotify) {
      //   msgTips = await tipsFromGropMsg(pbMsg, false);
      // } else {
      //   msgTips = '';
      // }

      LoggerManager().debug(
        '群消息开始存储 groupId: $groupId pbName: ${pbMsg.pbName} pbData: ${pbMsg.pbData} msgSn: ${pbMsg.pbCommData.msgSn} userSourceVersion: ${pbMsg.pbCommData.userSourceVersion}',
      );

      final groupMsg = await AppDatabase().objectBox.getGroupMsg(
            groupId.toInt(),
            pbMsg.pbCommData.msgSn.toInt(),
          );

      if (null == groupMsg) {
        final groupMsgDataMap = <String, dynamic>{
          'groupId': groupId.toInt(),
          'userId': friendId,
          'srcId': pbMsg.pbCommData.srcId.toInt(),
          'pbName': pbMsg.pbName,
          'pbData': pbMsg.pbData,
          'pbCommData': pbMsg.pbCommData.writeToBuffer(),
          'msgState': msgState.value,
          'msgSn': pbMsg.pbCommData.msgSn.toInt(),
          'groupMsgSn': pbMsg.pbCommData.groupMsgSn.toInt(),
          'createAt': DateTime.now().millisecondsSinceEpoch,
          'updatedAt': pbMsg.pbCommData.time.toInt() * 1000,
        };
        groupMsgDataMap.putIfAbsent(
          'userSourceVersion',
              () => pbMsg.pbCommData.userSourceVersion.toInt(),
        );
        AppDatabase()
            .objectBox
            .addGroupMsg(GroupMsgModel.fromJson(groupMsgDataMap))
            .then(
          (value) async {
            if (value > 0) {
              LoggerManager().error(
                '群消息存储成功 =========> $value groupId: ${groupId.toInt()} groupMsgSn: ${pbMsg.pbCommData.groupMsgSn.toInt()} msgSn: ${pbMsg.pbCommData.msgSn.toInt()}',
              );
              callback?.call();
            }
          },
        ).onError(
          (error, _) {
            LoggerManager().error(
                '群消息存储失败 =========> groupId: ${groupId.toInt()} msgSn: ${pbMsg.pbCommData.msgSn.toInt()} groupMsgSn: ${pbMsg.pbCommData.groupMsgSn.toInt()} \n $error');
          },
        );
      } else {
        groupMsg.userSourceVersion =
            pbMsg.pbCommData.userSourceVersion.toInt();
        groupMsg.msgState = msgState.value;
        if (pbMsg.pbCommData.groupMsgSn.toInt() > 0) {
          groupMsg.groupMsgSn = pbMsg.pbCommData.groupMsgSn.toInt();
        }
        AppDatabase().objectBox.addGroupMsg(groupMsg).then(
          (value) async {
            if (value > 0) {
              LoggerManager().error(
                '群消息更新成功 =========> $value groupId: ${groupId.toInt()} msgSn: ${pbMsg.pbCommData.msgSn.toInt()} groupMsgSn: ${pbMsg.pbCommData.groupMsgSn.toInt()}',
              );
              callback?.call();
            }
          },
        ).onError(
          (error, _) {
            LoggerManager().error(
                '群消息更新失败 =========> groupId: ${groupId.toInt()} msgSn: ${pbMsg.pbCommData.msgSn.toInt()} groupMsgSn: ${pbMsg.pbCommData.groupMsgSn.toInt()} \n $error');
          },
        );
      }

      // index = await dbMsg?.insert(tbGroupMsgTable, <String, dynamic>{
      //   // 'userId': AppUserInfo.instance.imId,
      //   'srcId': pbMsg.pbCommData.srcId.toInt(),
      //   'groupId': pbMsg.pbCommData.groupId.toInt(),
      //   'msgSn': pbMsg.pbCommData.msgSn.toInt(),
      //   'appId': pbMsg.pbCommData.appId.toInt(),
      //   'appUserId': pbMsg.pbCommData.appUserId,
      //   'groupMsgSn': pbMsg.pbCommData.groupMsgSn.toInt(),
      //   //'atList UintList,'
      //   'clientType': pbMsg.pbCommData.srcClientType.value,
      //   'pbData': pbMsg.writeToBuffer(),
      //   //'msgType INTEGER,' // 消息类型
      //   'msgTime': msgTime,
      //   // DateTime.fromMillisecondsSinceEpoch(
      //   //         pbMsg.pbCommData.time.toInt() * 1000)
      //   //     .toString(),
      //   'msgStatus': msgState.value, //INTEGER,'
      //   // 'waitReadCount INTEGER,' // 希望多少人读取
      //   //     'readCount INTEGER,' // 实际多少人读取
      //   //     'readUserList TEXT,' // 用户IMIDjsonmap[uid,readstate]
      //   // 本条数据创建时间
      //   'createTime': DateTime.now().toString(),
      //   // 创建消息的时间
      // }).then((value) {
      //   LoggerManager().error(
      //     "save pbmsg to db index=$index value=$value with msg sn ${pbMsg.pbCommData.msgSn} msgName:${pbMsg.pbName}, 群id:${pbMsg.pbCommData.groupId}",
      //   );
      //   callback?.call();
      //   return value;
      // });

      /// 存完发个已读回执
      // if (!isOwner){
      //   sendReceiptMsg(pbMsg.pbCommData, beginTime: Int64(0),
      //       state: msgState);
      // }
    } catch (err) {
      log("-------insert error:$err");
    }
    // log("=============成功 insert group pbmsg to db with msg sn ${pbMsg.pbCommData
    //     .msgSn}, 群id:${pbMsg.pbCommData.groupId}");
    // String tips = await tipsFromGropMsg(pbMsg, isOwner);
    // String msgTips = GetMsgTips(pb_comm.TextChatType.TEXT, ); //pbCT.chatType, pbCT.text);

    // 生成提示信息
    // 先看下有没有
    // var result = await dbMsg?.query(tbChatList,
    //     columns: ["chatId"],
    //     where: "chatId=? and chatType=?",
    //     whereArgs: [
    //       // AppUserInfo.instance.imId,
    //       groupId.toInt(),
    //       // Config.chatTypeGroup
    //       CHAT_TYPE.GROUP.index
    //     ]);
    // log(" result = ${result}");

    final sessionId = groupId.toInt();

    final conversation = await AppDatabase().objectBox.getConversation(
          sessionId,
        );

    final dataMap = <String, dynamic>{
      'session': sessionId,
      'lastMsgStatus': msgState.value,
      'sessionType': CHAT_SESSION_TYPE.CHAT_SESSION_TYPE_GROUP_CHAT.value,
      'srcId': pbMsg.pbCommData.srcId.toInt(),
      'userId': pbMsg.pbCommData.srcId.toInt(),
      'pbName': pbMsg.pbName,
      'pbData': pbMsg.pbData,
      'pbCommData': pbMsg.pbCommData.writeToBuffer(),
      'msgSn': pbMsg.pbCommData.msgSn.toInt(),
      'groupMsgSn': pbMsg.pbCommData.groupMsgSn.toInt(),
      'groupId': sessionId,
      'userSourceVersion': pbMsg.pbCommData.userSourceVersion,
    };

    if (null == conversation) {
      LoggerManager().debug(
        '会话不存在 groupId: $groupId pbName: ${pbMsg.pbName} pbData: ${pbMsg.pbData} msgSn: ${pbMsg.pbCommData.msgSn}',
      );
      if (GlobalController.to.currentConversationId.value != sessionId) {
        dataMap.putIfAbsent('newMsgCount', () => 1);
      } else {
        dataMap.putIfAbsent('newMsgCount', () => 0);
      }
      dataMap.putIfAbsent(
        'updatedAt',
        () => pbMsg.pbCommData.time.toInt() * 1000,
      );
    } else {
      LoggerManager().debug(
        '会话更新 groupId: $groupId pbName: ${pbMsg.pbName} pbData: ${pbMsg.pbData} msgSn: ${pbMsg.pbCommData.msgSn}',
      );
      conversation.userSourceVersion = pbMsg.pbCommData.userSourceVersion;
      conversation.pbName = pbMsg.pbName;
      conversation.pbData = pbMsg.pbData as Uint8List;
      conversation.pbCommData = pbMsg.pbCommData.writeToBuffer();
      conversation.updatedAt = pbMsg.pbCommData.time.toInt() * 1000;
      conversation.srcId = pbMsg.pbCommData.srcId.toInt();
      conversation.msgSn = pbMsg.pbCommData.msgSn.toInt();
      conversation.groupMsgSn = pbMsg.pbCommData.groupMsgSn.toInt();
      if (GlobalController.to.currentConversationId.value != sessionId) {
        if (!isOwner && isFromNet) {
          conversation.newMsgCount = (conversation.newMsgCount ?? 0) + 1;
        }
      }
    }

    if (null != conversation) {
      AppDatabase().objectBox.addConversation(conversation);
      ImController.to.conversationListener?.onConversationUpdated(
        conversation,
      );
    } else {
      final newConversation = ConversationModel.fromJson(dataMap);
      AppDatabase().objectBox.addConversation(newConversation);
      ImController.to.conversationListener?.onConversationCreated(
        newConversation,
      );
    }

    // if ((result ?? []).isEmpty) {
    // log("还没有聊天过，插入一个 ${groupId} 聊天信息");
    // try {
    //   final dataMap = <String, dynamic>{
    //     'chatId': groupId.toInt(),
    //     'msgSn': pbMsg.pbCommData.msgSn.toInt(),
    //     'groupMsgSn': pbMsg.pbCommData.groupMsgSn.toInt(),
    //     'chatType': CHAT_TYPE.GROUP.index,
    //     'newMsgCount': 1,
    //     'msgTips': tips,
    //     'msgTime': DateTime.fromMillisecondsSinceEpoch(
    //             pbMsg.pbCommData.time.toInt() * 1000)
    //         .toString(),
    //     'createTime': DateTime.now().toString(),
    //   };
    //   await ImController.to.insertOrUpdate(
    //     groupId.toInt(),
    //     dataMap: dataMap,
    //     conversationType: CHAT_TYPE.GROUP,
    //   );
    // await dbMsg?.insert(tbChatList, <String, dynamic>{
    //   // 'userId': AppUserInfo.instance.imId,
    //   'chatId': groupId.toInt(),
    //   'msgSn': pbMsg.pbCommData.msgSn.toInt(),
    //   'chatType': CHAT_TYPE.GROUP.index,
    //   'newMsgCount': 1, // 新消息条数
    //   'msgTips': tips, // 简短提示
    //   'msgTime': msgTime,
    //   // DateTime.fromMillisecondsSinceEpoch(pbMsg.pbCommData.time.toInt())
    //   //     .toString(),
    //   'createTime': DateTime.now().toString(),
    // });
    // } catch (error) {
    //   log("插入失败，请稍后重试 ${error}");
    // }
    // } else {
    // log("已经有一个群聊场景了，更新一下就好 ${groupId} result=${result} groupMsgSn=${pbMsg.pbCommData.groupMsgSn.toInt()}");
    // final dataMap = <String, dynamic>{
    //   'msgTips': tips,
    //   'msgSn': pbMsg.pbCommData.msgSn.toInt(),
    //   'groupMsgSn': pbMsg.pbCommData.groupMsgSn.toInt(),
    //   'msgTime': DateTime.fromMillisecondsSinceEpoch(
    //           pbMsg.pbCommData.time.toInt() * 1000)
    //       .toString(),
    // };
    // await ImController.to.insertOrUpdate(
    //   groupId.toInt(),
    //   dataMap: dataMap,
    //   conversationType: CHAT_TYPE.GROUP,
    //   mySend: pbMsg.pbCommData.srcId.toInt() == AppUserInfo().imId,
    // );
    // await dbMsg?.rawUpdate(
    //   "update ${tbChatList} set newMsgCount = newMsgCount + 1, msgTips=?, msgTime=? where chatId=? and chatType=?",
    //   [
    //     tips,
    //     msgTime,
    //     // DateTime.fromMillisecondsSinceEpoch(pbMsg.pbCommData.time.toInt())
    //     //     .toString(),
    //     // DateTime.now().toString(),
    //     // AppUserInfo.instance.imId,
    //     groupId.toInt(),
    //     CHAT_TYPE.GROUP.index
    //   ],
    // );
    // }
    // if ((pbMsg.pbCommData.serviceType == Service.gate ||
    //         pbMsg.pbCommData.serviceType == Service.group) &&
    //     pbMsg.pbName != "pb_pub.HeartBeat") {
    //   if (flushed) {
    //     eventBus.fire(ReloadChatListData());
    //   }
    // }
  }

  //
  // log("=============获取一个不需保存的消息 ${pbMsg.pbCommData.msgSn} ${pbMsg.pbName}");
  if (flushed) {
    eventBus.fire(ReloadChatListData());
  }
  return index;
}

Future<void> dbDeleteGroupMsg(int chatId, String msgSn) async {
  await dbMsg?.delete(
    tbGroupMsgTable,
    where: "groupId=$chatId and msgSn=$msgSn",
  );
}

Future<void> dbDelChat(
  int chatId,
  CHAT_TYPE chatType, {
  bool delMsgList = false,
}) async {
  try {
    if (chatType == CHAT_TYPE.PRIVATE) {
      AppDatabase()
          .objectBox
          .deletePrivateUserHistoryMsg(chatId)
          .then((result) async {
        LoggerManager().error('chat message delete result: $result');
        eventBus.fire(
          ClearHistoryMessage(chatId: chatId, chatType: chatType),
        );
        final sessionId = getSessionId(chatId);
        final chatSession =
            await AppDatabase().objectBox.getConversation(sessionId);
        if (null != chatSession) {
          chatSession.pbName = '';
          chatSession.newMsgCount = 0;
          AppDatabase().objectBox.addConversation(chatSession);
          ImController.to.conversationListener
              ?.onConversationUpdated(chatSession);
        }
      });
      // await dbMsg?.delete(
      //   tbPrivateMsgTable,
      //   where: "friendId=?",
      //   whereArgs: [chatId],
      // ).then(
      //   (value) {
      //     eventBus.fire(
      //       ClearHistoryMessage(chatId: chatId, chatType: chatType),
      //     );
      //   },
      // );
    } else {
      AppDatabase()
          .objectBox
          .deletePrivateUserHistoryMsg(chatId)
          .then((result) async {
        eventBus.fire(
          ClearHistoryMessage(chatId: chatId, chatType: chatType),
        );
      });
      await dbMsg?.delete(
        tbGroupMsgTable,
        where: "groupId=?",
        whereArgs: [chatId],
      ).then(
        (value) async {
          eventBus.fire(
            ClearHistoryMessage(chatId: chatId, chatType: chatType),
          );
          final chatSession =
              await AppDatabase().objectBox.getConversation(chatId);
          if (null != chatSession) {
            chatSession.pbName = '';
            chatSession.newMsgCount = 0;
            AppDatabase().objectBox.addConversation(chatSession);
            ImController.to.conversationListener
                ?.onConversationUpdated(chatSession);
          }
        },
      );
    }

    // if (delMsgList) {
    //   await dbMsg?.delete(
    //     tbChatList,
    //     where: "chatId=? and chatType=?",
    //     whereArgs: [
    //       // AppUserInfo.instance.imId,
    //       chatId,
    //       chatType.index
    //     ],
    //   );
    // }
  } catch (e) {
    log("delet error:${e}");
  }
}

// 删除好友
Future<void> dbDelFriend(int friendId) async {
  log("del friend ${friendId}");
  try {
    await dbMsg
        ?.delete(tbFriendInfo, where: "friendId=?", whereArgs: [friendId]);
    await dbMsg
        ?.delete(tbFriendApply, where: "friendId=?", whereArgs: [friendId]);
    // await dbMsg
    //     ?.delete(tbPrivateMsgTable, where: "friendId=?", whereArgs: [friendId]);
    // await dbMsg?.delete(
    //   tbChatList,
    //   where: "chatId=? and chatType=?",
    //   whereArgs: [
    //     // AppUserInfo.instance.imId,
    //     friendId,
    //     CHAT_TYPE.PRIVATE.index
    //   ],
    // );
  } catch (e) {
    log("delet error:${e}");
  }
}

void DBClearNewMsgCount(int chatId, CHAT_TYPE chatType) {
  dbMsg?.rawUpdate(
    "update ${tbChatList} set newMsgCount = 0 where chatId=? and chatType=?",
    [chatId, chatType.index],
  );
}

void DBUpdateMsgState(Int64 msgSn, pb_comm.MSG_STATE state, EnMsgFrom enMsgFrom,
    {pb_comm.PBMessage? pbMessage}) {
  log("update state ${msgSn}, ${state}", deep: 2);
  AppDatabase().objectBox.getPrivateMsgByMsgSn(msgSn.toInt()).then((value) {
    if (null != value) {
      value.msgState = state.value;
      AppDatabase().objectBox.addPrivateMsg(value);
      if (null != pbMessage) {
        eventBus.fire(EventOnNetMsg(pbMessage, enMsgFrom));
      }
    }
  });
  // dbMsg
  //     ?.update(tbPrivateMsgTable, {"msgStatus": state.value},
  //         where: "msgSn=${msgSn.toInt()} and msgStatus < ${state.value}")
  //     .then((value) => {
  //           if (pbMessage != null)
  //             {
  //               // 通知消息更新
  //               eventBus.fire(EventOnNetMsg(pbMessage, enMsgFrom))
  //               // eventBus.fire(EventOnDBUpdate(pbMessage))
  //             }
  //         });
//where: "msgSn=$msgSn"
//   dbMsg.query(tbPrivateMsgTable,where: "msgSn=${msgSn.toInt()}").then((value) => {
//     if (value.length >0){
//       log("db $msgSn ${value[0]['msgSn']}")
//     }
//   });
}

bool IsMeSendReceipt(Int64 userId) {
  return userId.toInt() == AppUserInfo.instance.imId;
}

void DBUpdateFriendGroupMsgState(Int64 msgSn, pb_comm.MSG_STATE state) {
  dbMsg
      ?.update(tbGroupMsgTable, {"msgStatus": state.value},
          where: "msgSn=${msgSn.toInt()} ")
      .then((value) {
    log("===>DBUpdateFriendGroupMsgState result $value");
  });
}

void updateGroupMsgState1(
  int groupId,
  Int64 msgSn,
  pb_comm.MSG_STATE state,
  EnMsgFrom enMsgFrom, {
  Int64? groupMsgSn,
  pb_comm.PBMessage? pbMessage,
}) async {
  final groupMsg = await AppDatabase().objectBox.getGroupMsg(
        groupId,
        msgSn.toInt(),
      );
  if (null != groupMsg) {
    groupMsg.msgState = state.value;
    if (null != groupMsgSn) {
      groupMsg.groupMsgSn = groupMsgSn.toInt();
    }
    AppDatabase().objectBox.addGroupMsg(groupMsg);
    if (null != pbMessage) {
      eventBus.fire(
        EventOnNetMsg(pbMessage, enMsgFrom),
      );
    }
  }
}

void updateGroupMsgState(
    Int64 msgSn, pb_comm.MSG_STATE state, EnMsgFrom enMsgFrom,
    {pb_comm.PBMessage? pbMessage}) {
  log("update state ${msgSn}, ${state}", deep: 2);
  dbMsg
      ?.update(
          tbGroupMsgTable,
          {
            // 自己发的直接更新为消息状态即可
            "msgStatus": state.value
          },
          where: "msgSn=$msgSn and msgStatus < ${state.value} ")
      .then(( //and msgStatus < ${msgReceipt.state.value}
          value) {
    log("===>updateGroupMsgState 自己发的 result $value sn:$msgSn 消息状态:${state.name}");
    if (pbMessage != null) {
      // 通知消息更新
      log("===>updateGroupMsgState 同步更新 自己发的 result $value sn:$msgSn 消息状态:${state.name}");
      eventBus.fire(EventOnNetMsg(pbMessage, enMsgFrom));
      // eventBus.fire(EventOnDBUpdate(pbMessage))
    }
  });
//where: "msgSn=$msgSn"
//   dbMsg.query(tbPrivateMsgTable,where: "msgSn=${msgSn.toInt()}").then((value) => {
//     if (value.length >0){
//       log("db $msgSn ${value[0]['msgSn']}")
//     }
//   });
}

// pbMessage, 返回成功失败
bool DBUpdateGroupMsgState(pb_comm.PBMessage? pbMsg, EnMsgFrom enMsgFrom,
    {bool needFire = false}) {
  //(pb_comm.PBCommData pcd, pb_comm.MsgReceipt msgReceipt)//, {pb_comm.PBMessage? pbMessage,bool forceUpdate = false}) {
  if (pbMsg == null) {
    log("pbmsg is null!!!!!!!!!!!!");
    return false;
  }
  pb_comm.MsgReceipt msgReceipt = pb_comm.MsgReceipt();
  msgReceipt.mergeFromBuffer(pbMsg.pbData);
  var statStr = pbMsg.pbCommData.exp[pb_comm.PCD_EXP_KEY.GROUP_MSG_STATUS.name];
  if (null == statStr || statStr.isEmpty) {
    return false;
  }
  // pb_comm.MSG_STATE stat..v = pb_comm.MSG_STATE(int.parse(statStr))
  log("DBUpdateGroupMsgState 回执:sn:${pbMsg.pbCommData.msgSn} 消息状态:${statStr} 读取状态:${msgReceipt.state} 是否自己发的:${IsMeSendReceipt(pbMsg.pbCommData.srcId)} needFire:$needFire");
  if (IsMeSendReceipt(pbMsg.pbCommData.srcId)) {
    //自己的话直接更新即可,不需要更新细节了,receipt状态就是消息状态
    // 如果是自己发的，且是end，则不需要更新，只是删除消息而已，没有其他作用

    if (msgReceipt.state == pb_comm.MSG_STATE.END) {
      log("自己发的 是end，不更新");
      return true;
    }

    log("自己发的， 更新消息状态");
    dbMsg
        ?.update(
            tbGroupMsgTable,
            {
              // 自己发的直接更新为消息状态即可
              "msgStatus": msgReceipt.state.value
            },
            where:
                "msgSn=${pbMsg.pbCommData.msgSn.toInt()} and msgStatus < ${msgReceipt.state.value} ")
        .then(( //and msgStatus < ${msgReceipt.state.value}
            value) {
      log("===>DBUpdateGroupMsgState 自己发的 result $value sn:${pbMsg.pbCommData.msgSn} 消息状态:${statStr} 读取状态:${msgReceipt.state} needFire:$needFire");
      if (needFire) {
        eventBus.fire(EventOnNetMsg(pbMsg, enMsgFrom));
      }
    });

    // dbMsg.query(tbGroupMsgTable, where: "msgSn=${msgReceipt.relateMsgSn}").then((value){
    //   log("===aft DBUpdateGroupMsgState data  $value");
    // });

    return true;
  }

  // 别人读自己的
  // pb_comm.MSG_STATE? msgState ;
  // var statStr = pbMsg?.pbCommData.exp[pb_comm.PCD_EXP_KEY.GROUP_MSG_STATUS.name];
  // log("statStr:${statStr}");
  pb_comm.MSG_STATE? msgState = pb_comm.MSG_STATE.valueOf(int.parse(statStr!));
  // 如果没有附加状态
  if (statStr == "") {
    log("err ,没有给状态，怎么更新？");
    return false;
  }
  log("别人发的回执:sn:${pbMsg.pbCommData.msgSn} 消息状态:${msgState} 读取状态:${msgReceipt.state}");
  dbMsg
      ?.update(
          tbGroupMsgTable,
          {
            // 别人发的，更新为主消息状态
            "msgStatus": msgState?.value
          },
          where:
              "msgSn=${pbMsg.pbCommData.msgSn.toInt()} and msgStatus < ${msgState!.value}")
      .then((value) => {
            log("===DBUpdateGroupMsgState 别人发的 result $value sn:${pbMsg.pbCommData.msgSn} 消息状态:${statStr} 读取状态:${msgReceipt.state}")
          });
  // 查看一下更新后的结果
  dbMsg
      ?.query(tbGroupMsgTable, where: "msgSn=${pbMsg.pbCommData.msgSn.toInt()}")
      .then((value) {
    if (value.isNotEmpty) {
      var stat = pb_comm.MSG_STATE
          .valueOf(int.parse(value[0]["msgStatus"].toString()));
      log("更新后的结果:${value[0]["msgSn"]},${stat}");
    }
  });
  // 如果是别人读自己的消息，需要继续添加已读用户列表
  dbMsg
      ?.query(tbGroupMsgReadUserList,
          where:
              "msgSn=${pbMsg.pbCommData.msgSn.toInt()} and readerId=${pbMsg.pbCommData.srcId.toInt()}")
      .then((value) {
    if (value.isEmpty) {
      // 没有更新，新加一个
      dbMsg?.insert(tbGroupMsgReadUserList, {
        // "ownerId": AppUserInfo.instance.imId,
        "readerId": pbMsg.pbCommData.srcId.toInt(),
        "groupId": pbMsg.pbCommData.groupId.toInt(),
        "msgSn": pbMsg.pbCommData.msgSn.toInt(),
        // INTEGER UNIQUE,' // 消息sn
        "readStatus": msgReceipt.state.value,
        // INTEGER,'
        "updateAt": DateTime.now().microsecondsSinceEpoch / 1000
        //' // 创建消息的时间
      }).then((value) {
        log("===insert tbGroupMsgReadUserList result $value sn:${pbMsg.pbCommData.msgSn} 消息状态:${msgState} 读取状态:${msgReceipt.state}");
      });
    } else {
      // 更新一下
      dbMsg
          ?.update(
              tbGroupMsgReadUserList, {"readStatus": msgReceipt.state.value},
              where:
                  "msgSn=${pbMsg.pbCommData.msgSn.toInt()} and readerId=${pbMsg.pbCommData.srcId.toInt()}")
          .then((value) {
        log("===update tbGroupMsgReadUserList result $value sn:${pbMsg.pbCommData.msgSn} 消息状态:${msgState} 读取状态:${msgReceipt.state} 更新条数:$value");
      });
    }
  });

  if (needFire) {
    // 通知消息更新
    eventBus.fire(EventOnNetMsg(pbMsg, enMsgFrom));
  }

  return true;
}

String GetMsgTips(pb_comm.TextChatType chatType, {String text = ""}) {
  // 获取tips
  String msgTips = "";
  switch (chatType) {
    case pb_comm.TextChatType.TEXT:
      msgTips = text;
      break;
    case pb_comm.TextChatType.PIC:
      msgTips = "[图片]";
      break;
    case pb_comm.TextChatType.VIDEO:
      msgTips = "[视频]";
      break;
    case pb_comm.TextChatType.AUDIO:
      msgTips = "[语音]";
      break;
    case pb_comm.TextChatType.GIFT:
      msgTips = "[礼物]";
      break;
    case pb_comm.TextChatType.PACT:
      msgTips = "[包裹]";
      break;
    case pb_comm.TextChatType.VIDEO_INVITE:
      msgTips = "[视频邀请]";
      break;
    case pb_comm.TextChatType.CUSTOMIZE:
      msgTips = "[自定义消息]";
      break;
    case pb_comm.TextChatType.FILE:
      msgTips = "[文件]";
      break;
    default:
      msgTips = "[未知类型消息]";
      log("未知的私聊消息类型 ${chatType}");
  }
  return msgTips;
}

// Future<bool> dbAddFriend(FriendInfo finfo)async{
//   log("insert friend to db $finfo");
//   if(finfo.userId == AppUserInfo.instance.imId){
//     showToast("这好像是你自己哦!!");
//     return false;
//   }
//   // try {
//     var rsp = await dbMsg?.query(tbFriendInfo, where: "userId = ${finfo.userId} and friendId = ${finfo.friendId}");
//     if (rsp.length > 0) {
//       // 已经有了就更新
//       // finfo.avatar = finfo.avatar ?? rsp[0]["avatar"];
//       // finfo.nick = finfo.nick ?? rsp[0]["nick"];
//
//       // userId = Int64(mdata["userId"]);//Int64.ZERO;// integer, '
//       // friendId = Int64(mdata["userId"]);//Int64.ZERO;// integer,'
//       // remarks = mdata["userId"];//"";// TEXT,' // 备注
//       // label = mdata["userId"];//""; //TEXT,' // 标签
//       // phone = mdata["userId"];//"";// TEXT,'
//       // describe = mdata["userId"];//"";// TEXT,'
//       // photos = mdata["userId"];//"";// TEXT,'
//
//       await dbMsg?.update(tbFriendInfo,
//           {
//             "remarks": finfo.remarks,
//             "label": finfo.label,
//             "phone": finfo.phone,
//             "describe": finfo.describe,
//             "photos": finfo.photos,
//           },
//           where: "userId = ${finfo.userId} and friendId=${finfo.friendId}");
//     } else {
//       // 没有就插入
//       var index = await dbMsg?.insert(
//           tbFriendInfo,
//           {
//             "userId":finfo.userId,
//             "friendId":finfo.friendId,
//             "remarks": finfo.remarks,
//             "label": finfo.label,
//             "phone": finfo.phone,
//             "describe": finfo.describe,
//             "photos": finfo.photos,
//           }
//           );
//       log("save finfo to db index=$index");
//     }
//
//     // 触发一下用户的加入
//     GetUserInfo(finfo.friendId);
//
//     showToast("添加好友成功");
//     return true;
//   // }catch(e){
//   //   log("db option err :$e");
//   // }
//   // return false;
// }

Future<int> GetTotalNewMsgCount() async {
  // if (!dbMsg?.isOpen){
  //   return 0;
  // }
  if (AppUserInfo().imId == 0) {
    return 0;
  }
  var result = await dbMsg?.rawQuery(
      "select sum(newMsgCount) as nc from ${tbChatList} where chatType=?",
      [CHAT_TYPE.PRIVATE.index]).catchError((err) {
    log(err);
    return <Map<String, Object?>>[];
  }).catchError((e) {
    log("select error:${e}");
    return <Map<String, Object?>>[];
  });

  if (result == null || result.isEmpty) {
    return 0;
  }
  // if (result!.isEmpty){
  //   return 0;
  // }

  log("读取消息总数:${result});// :aa ->${result[0]["nc"] ?? 0}", deep: 4);

  var count = result[0]["nc"] == null ? 0 : result[0]["nc"] as int;
  return count;
}

// 'id INTEGER,' // id
// 'appId INTEGER,'
// 'appUserId TEXT,'
// 'appNickName TEXT,'
// 'userId INTEGER,'   // 用户id，客户端
// 'nick TEXT,'         // 好友名称
// 'avatar TEXT,'  // 头像
// 'createTime DateTime,'
// 'UNIQUE(userId),'
// 'primary key (id)'

Future<bool> dbAddUser(UserInfo uinfo) async {
  log(uinfo);
  var result =
      await dbMsg?.query(tbUserInfo, where: "imId=?", whereArgs: [uinfo.imId]);
  log("dbAddUser:${result}");
  if (null == result) {
    return false;
  }
  if (result.isNotEmpty) {
    // 有一个了，更新一下
    await dbMsg?.update(
        tbUserInfo,
        {
          "appId": uinfo.appId,
          "appUid": uinfo.appUid,
          "nickName": uinfo.nickName,
          "avatar": uinfo.avatar,
          "level": uinfo.level,
          "signName": uinfo.signName,
          "userSourceVersion": uinfo.sourceVersion,
        },
        where: "imId=?",
        whereArgs: [uinfo.imId]);
  } else {
    // 没有就插入一条
    await dbMsg?.insert(tbUserInfo, {
      "appId": uinfo.appId,
      "appUid": uinfo.appUid,
      "nickName": uinfo.nickName,
      "imId": uinfo.imId,
      "avatar": uinfo.avatar,
      "level": uinfo.level,
      "signName": uinfo.signName,
      "userSourceVersion": uinfo.sourceVersion,
      "createTime": DateTime.now().toString()
    });
  }
  return true;
}

class FriendApply {
  late int id;

  // late int userId;
  late int friendId;
  late int applyId;
  late FRIEND_APPLY_STATE applyState;
  late String nick;
  late String avatar;
  late String applyMsg;
  late DateTime createTime;

  void initWithDbData(Map<String, dynamic> data) {
    id = data["id"]; //id INTEGER,' // id
    // userId = data['userId']; // INTEGER,'   // 用户id，客户端
    friendId = data['friendId']; // INTEGER,' // 好友id
    applyId = data['applyId']; // INTEGER,' // 发起者id
    applyState = FRIEND_APPLY_STATE
        .values[data['state'] ?? 0]; // INTEGER,'         // FriendApplyState
    log("state=${applyState}");
    nick = data['nick'] ?? ""; // TEXT,'         // 好友名称
    avatar = data['avatar'] ?? ""; // TEXT,'  // 头像
    applyMsg = data['applyMsg'] ?? ""; // TEXT,'         // 请求信息
    if (data['createTime'] == null || data['createTime'] == "") {
      createTime = DateTime.now();
    } else {
      log(data['createTime']);
      createTime = DateTime.parse(data['createTime']); // DateTime,'
    }
  }
}

Future<List<FriendApply>> GetApplyList() async {
  var flist = <FriendApply>[];
  var values = await dbMsg?.query(tbFriendApply, orderBy: "createTime desc");
  for (var value in values!) {
    log("apply friend:${value}");
    flist.add(FriendApply()..initWithDbData(value));
  }
  return flist;
}

Future<bool> dbAddCommunityLike(String likeId, POST_LIKE_TYPE likeType) async {
  var result = await dbMsg?.query(tbCommunityLike,
      where: "likeId=?", whereArgs: [likeId]).catchError((e) {
    // initDb(Int64(AppUserInfo().imId));
    return <Map<String, Object?>>[];
  });
  if (result!.isNotEmpty) {
    // 有一个了，更新一下
    await dbMsg?.update(
        tbCommunityLike,
        {
          "likeId": likeId,
          "likeType": likeType.index,
          "imId": 0,
        },
        where: "likeId=?",
        whereArgs: [likeId]);
  } else {
    // 没有就插入一条
    await dbMsg?.insert(
      tbCommunityLike,
      {
        "likeId": likeId,
        "likeType": likeType.index,
        "imId": 0,
      },
    );
  }

  log("dbAddCommunityLike with key:${likeId} likeType:${likeType}");

  return true;
}

Future<bool> dbVoteCommunityVote(String voteId, Int64 optionId) async {
  var result = await dbMsg?.query(tbCommunityVote,
      where: "voteId=?", whereArgs: [voteId]).catchError((e) {
    // initDb(Int64(AppUserInfo().imId));
    return <Map<String, Object?>>[];
  });
  if (result!.isNotEmpty) {
    // 有一个了，更新一下
    await dbMsg?.update(
        tbCommunityVote,
        {
          "voteId": voteId,
          "voteStatus": 1,
          "optionId": optionId,
          "imId": 0,
        },
        where: "voteId=?",
        whereArgs: [voteId]);
  } else {
    // 没有就插入一条
    await dbMsg?.insert(
      tbCommunityVote,
      {
        "voteId": voteId,
        "voteStatus": 1,
        "optionId": optionId.toInt(),
        "imId": 0,
      },
    );
  }

  log("dbAddCommunityVote with key:${voteId} voteStatus:${0}");

  return true;
}

class VoteOption {
  late POST_VOTE_STATUS status;
  late Int64 optionId;

  void initWithDbData(Map<String, dynamic> data) {
    status = POST_VOTE_STATUS.values[data['voteStatus']];
    optionId = Int64(data['optionId']);
  }
}

// 获取投票状态
Future<VoteOption> dbGetCommunityVote(String voteId) async {
  var values = await dbMsg?.query(tbCommunityVote,
      where: "voteId=?", whereArgs: [voteId]).catchError((e) {
    if (e is DatabaseException) {
      if (e.isNoSuchTableError()) {
        initDBData(dbMsg!, msgDbVersion);
      }
    }

    return <Map<String, Object?>>[];
  });
  // log("dbGetCommunityLike with key:${likeId} return values:${values}");
  if (values!.isNotEmpty) {
    return VoteOption()..initWithDbData(values[0]);
    //   VoteOption(
    //   status: POST_VOTE_STATUS.values[values[0]['voteStatus']],
    //   optionId: values[0]['optionId'],
    // );
  }

  return VoteOption()
    ..status = POST_VOTE_STATUS.NOT_VOTE
    ..optionId = Int64(0);
}

// 获取喜欢类型
Future<POST_LIKE_TYPE> dbGetCommunityLike(String likeId) async {
  var values = await dbMsg?.query(tbCommunityLike,
      where: "likeId=?", whereArgs: [likeId]).catchError((e) {
    if (e is DatabaseException) {
      if (e.isNoSuchTableError()) {
        initDBData(dbMsg!, msgDbVersion);
      }
    }
    return <Map<String, Object?>>[];
  });
  // log("dbGetCommunityLike with key:${likeId} return values:${values}");
  if (values!.isNotEmpty) {
    var index = values[0]['likeType'];
    return POST_LIKE_TYPE.values[index as int];
  }

  return POST_LIKE_TYPE.None;
}

Future<bool> dbFollowSet(Int64 userIdIn, bool isFollow) async {
  int userId = userIdIn.toInt();
  var result = await dbMsg
      ?.query(tbCommunityFollow, where: "userId=?", whereArgs: [userId]);
  if (result!.isNotEmpty) {
    // 有一个了，更新一下
    await dbMsg?.update(
        tbCommunityFollow, {"userId": userId, "isFollow": isFollow ? 1 : 0},
        where: "userId=?", whereArgs: [userId]);
  } else {
    // 没有就插入一条
    await dbMsg?.insert(
      tbCommunityFollow,
      {"userId": userId, "isFollow": isFollow ? 1 : 0},
    );
  }
  return true;
}

// Future<Map<int, bool>> GetCommunityFollow()async{
//   var communityFollow = Map<int, bool>();
//   var values = await dbMsg?.query(tbCommunityFollow);
//   for (var value in values){
//     log("GetCommunityFollow:${value}");
//     communityFollow[value['userId']] = value['isFollow'] == 1;
//   }
//   return communityFollow;
// }

Future<bool> dbIsFollowed(Int64 targetUserId) async {
  var values = await dbMsg?.query(tbCommunityFollow,
      where: "userId=?", whereArgs: [targetUserId.toInt()]);
  for (var value in values!) {
    log("GetCommunityFollow:${value}");
    // communityFollow[value['userId']] = value['isFollow'] == 1;
    return value['isFollow'] == 1;
  }
  return false;
}
