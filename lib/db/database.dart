import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:quliao/db/dao/chat_list.dart';
import 'package:quliao/db/dao/friend_info.dart';
import 'package:quliao/db/obox/object_box.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import 'dao/collections.dart';
import 'dao/group.dart';
import 'dao/group_member.dart';
import 'dao/group_msg.dart';
import 'dao/private_msg.dart';
import 'db.dart';

class AppDatabase {
  /// 数据库版本号
  static const int _schemaVersion = 35;
  static final AppDatabase _instance = AppDatabase._();

  factory AppDatabase() => _instance;

  AppDatabase._();

  Database? _dbMsg;

  Database? get dbMsg => _dbMsg;

  GroupMemberDao? _groupMemberDao;

  GroupMemberDao? get groupMemberDao =>
      null == _dbMsg ? null : _groupMemberDao ??= GroupMemberDao(dbMsg);

  GroupDao? _groupDao;

  GroupDao? get groupDao =>
      null == _dbMsg ? null : _groupDao ??= GroupDao(dbMsg);

  GroupMessageDao? _groupMessageDao;

  GroupMessageDao? get groupMessageDao =>
      null == _dbMsg ? null : _groupMessageDao ??= GroupMessageDao(dbMsg);

  ChatListDao? _chatListDao;

  ChatListDao? get chatListDao =>
      null == _dbMsg ? null : _chatListDao ??= ChatListDao(dbMsg);

  ChatListDao? getChatListDao() {
    return ChatListDao(dbMsg);
  }

  FriendInfoDao? _friendInfoDao;

  FriendInfoDao? get friendInfoDao =>
      null == _dbMsg ? null : _friendInfoDao ??= FriendInfoDao(dbMsg);

  PrivateMsgDao? _privateMsgDao;

  PrivateMsgDao? get privateMsgDao =>
      null == _dbMsg ? null : _privateMsgDao ??= PrivateMsgDao(dbMsg);

  late ObjectBox objectBox;

  CollectionsDao? _collectionsDao;

  CollectionsDao? get collectionsDao =>
      null == _dbMsg ? null : _collectionsDao ??= CollectionsDao(dbMsg);

  /// 初始化
  Future<void> init(int id) async {
    objectBox = await ObjectBox.create(id);
    if (Platform.isWindows || Platform.isLinux) {
      await _initDbDesktop(id);
    } else {
      await _initDbMobile(id);
    }
  }

  Future<void> _initDbDesktop(int id) async {
    var databaseFactory = databaseFactoryFfi;
    var databasesPath = await databaseFactoryFfi.getDatabasesPath();
    String path = '$databasesPath/data.$id.db';
    // _dbMsg?.close();
    _dbMsg = await databaseFactory.openDatabase(
      path,
      options: OpenDatabaseOptions(
        version: _schemaVersion,
        onCreate: (db, version) {
          initDBData(db, version);
        },
        onUpgrade: (db, oldVersion, newVersion) {
          LoggerManager().debug(
              'databse initDbDesktop oldVersion: $oldVersion newVersion: $newVersion');
          if (oldVersion < 3) {
            db.execute(
              'ALTER TABLE $tbGroup ADD COLUMN inviteRoleLimit INTEGER',
            );
          } else if (oldVersion < 4) {
            db.execute(
              'ALTER TABLE $tbUserInfo ADD COLUMN userSourceVersion INTEGER',
            );
          } else if (oldVersion < 5) {
            db.execute(
              'ALTER TABLE $tbGroup ADD COLUMN memberChatBannedStatus INTEGER',
            );
          } else if (oldVersion < 6) {
            db.execute(
              'ALTER TABLE $tbChatList ADD COLUMN top INTEGER',
            );
            db.execute(
              'ALTER TABLE $tbChatList ADD COLUMN remark TEXT',
            );
          } else if (oldVersion < 10) {
            db.execute(
              'ALTER TABLE $tbChatList ADD COLUMN remark TEXT',
            );
            db.execute(
              'ALTER TABLE $tbChatList ADD COLUMN top INTEGER',
            );
          } else if (oldVersion < 12) {
            db.execute(
              'ALTER TABLE $tbGroup ADD COLUMN newMemberRemindClosed INTEGER',
            );
          } else if (oldVersion < 13) {
            db.execute(
              'ALTER TABLE $tbGroup ADD COLUMN scanCodeJoinGroupSwitchStatus INTEGER',
            );
          } else if (oldVersion < 14) {
            db.execute(
              'ALTER TABLE $tbGroup ADD COLUMN scanCodeJoinGroupParam TEXT',
            );
          } else if (oldVersion < 20) {
            db.execute(
              'ALTER TABLE $tbGroup ADD COLUMN noDisturb INTEGER',
            );
            db.execute(
              'ALTER TABLE $tbChatList ADD COLUMN noDisturb INTEGER',
            );
            db.execute(
              'ALTER TABLE $tbFriendInfo ADD COLUMN noDisturb INTEGER',
            );
            db.execute(
              'ALTER TABLE $tbFriendInfo ADD COLUMN top INTEGER',
            );
          } else if (oldVersion < 21) {
            db.execute(
              'ALTER TABLE $tbGroup ADD COLUMN disbandState INTEGER',
            );
          } else if (oldVersion < 22) {
            db.execute(
              'ALTER TABLE $tbGroup ADD COLUMN banned INTEGER',
            );
          } else if (oldVersion < 23) {
            db.execute(
              'ALTER TABLE $tbGroup ADD COLUMN count INTEGER',
            );
          } else if (oldVersion < 24) {
            db.execute(
              'ALTER TABLE $tbGroupMember ADD COLUMN banned INTEGER',
            );
          } else if (oldVersion < 25) {
            db.execute(
              'ALTER TABLE $tbGroupMember ADD COLUMN noticeVersion INTEGER',
            );
          } else if (oldVersion < 26) {
            db.execute(
              'ALTER TABLE $tbChatList ADD COLUMN groupMsgSn INTEGER',
            );
          } else if (oldVersion < 27) {
            db.execute(
              'ALTER TABLE $tbGroupMsgTable ADD COLUMN type INTEGER',
            );
          } else if (oldVersion < 28) {
            db.execute(
              'ALTER TABLE $tbGroup ADD COLUMN freeJoinStatus INTEGER',
            );
          } else if (oldVersion < 29) {
            db.execute(
              'ALTER TABLE $tbGroupMsgTable ADD COLUMN recallUid INTEGER',
            );
          } else if (oldVersion < 30) {
            db.execute(
              'ALTER TABLE $tbGroup ADD COLUMN groupType INTEGER',
            );
          } else if (oldVersion < 31) {
            db.execute(
              'ALTER TABLE $tbChatList ADD COLUMN groupType INTEGER',
            );
          } else if (oldVersion < 32) {
            db.execute(
              'ALTER TABLE $tbGroup ADD COLUMN forbiddenAddFriends INTEGER',
            );
          } else if (oldVersion < 33) {
            createCollectionDb(db);
          } else if (oldVersion < 34) {
            db.execute(
              'ALTER TABLE $tbGroup ADD COLUMN redPacketId INTEGER',
            );
            db.execute(
              'ALTER TABLE $tbPrivateMsgTable ADD COLUMN redPacketId INTEGER',
            );
          } else if (oldVersion < 35) {
            db.execute(
              'ALTER TABLE $tbGroup ADD COLUMN forbiddenAddFriends INTEGER',
            );
          }
        },
      ),
    );
  }

  Future<void> _initDbMobile(int id) async {
    var databasesPath = await getDatabasesPath();
    String path = '$databasesPath/date.$id.db';
    // _dbMsg?.close();
    _dbMsg = await openDatabase(
      path,
      version: _schemaVersion,
      onCreate: (Database db, int version) async {
        initDBData(db, version);
      },
      onUpgrade: (db, oldVersion, newVersion) {
        if (oldVersion < 3) {
          db.execute(
            'ALTER TABLE $tbGroup ADD COLUMN inviteRoleLimit INTEGER',
          );
        } else if (oldVersion < 4) {
          db.execute(
            'ALTER TABLE $tbUserInfo ADD COLUMN userSourceVersion INTEGER',
          );
        } else if (oldVersion < 5) {
          db.execute(
            'ALTER TABLE $tbGroup ADD COLUMN memberChatBannedStatus INTEGER',
          );
        } else if (oldVersion < 6) {
          db.execute(
            'ALTER TABLE $tbChatList ADD COLUMN top INTEGER',
          );
          db.execute(
            'ALTER TABLE $tbChatList ADD COLUMN remark TEXT',
          );
        } else if (oldVersion < 10) {
          db.execute(
            'ALTER TABLE $tbChatList ADD COLUMN remark TEXT',
          );
          db.execute(
            'ALTER TABLE $tbChatList ADD COLUMN top INTEGER',
          );
        } else if (oldVersion < 12) {
          db.execute(
            'ALTER TABLE $tbGroup ADD COLUMN newMemberRemindClosed INTEGER',
          );
        } else if (oldVersion < 13) {
          db.execute(
            'ALTER TABLE $tbGroup ADD COLUMN scanCodeJoinGroupSwitchStatus INTEGER',
          );
        } else if (oldVersion < 14) {
          db.execute(
            'ALTER TABLE $tbGroup ADD COLUMN scanCodeJoinGroupParam TEXT',
          );
        } else if (oldVersion < 20) {
          db.execute(
            'ALTER TABLE $tbGroup ADD COLUMN noDisturb INTEGER',
          );
          db.execute(
            'ALTER TABLE $tbChatList ADD COLUMN noDisturb INTEGER',
          );
          db.execute(
            'ALTER TABLE $tbFriendInfo ADD COLUMN noDisturb INTEGER',
          );
          db.execute(
            'ALTER TABLE $tbFriendInfo ADD COLUMN top INTEGER',
          );
        } else if (oldVersion < 21) {
          db.execute(
            'ALTER TABLE $tbGroup ADD COLUMN disbandState INTEGER',
          );
        } else if (oldVersion < 22) {
          db.execute(
            'ALTER TABLE $tbGroup ADD COLUMN banned INTEGER',
          );
        } else if (oldVersion < 23) {
          db.execute(
            'ALTER TABLE $tbGroup ADD COLUMN count INTEGER',
          );
        } else if (oldVersion < 24) {
          db.execute(
            'ALTER TABLE $tbGroupMember ADD COLUMN banned INTEGER',
          );
        } else if (oldVersion < 25) {
          db.execute(
            'ALTER TABLE $tbGroupMember ADD COLUMN noticeVersion INTEGER',
          );
        } else if (oldVersion < 26) {
          db.execute(
            'ALTER TABLE $tbChatList ADD COLUMN groupMsgSn INTEGER',
          );
        } else if (oldVersion < 27) {
          db.execute(
            'ALTER TABLE $tbGroupMsgTable ADD COLUMN type INTEGER',
          );
        } else if (oldVersion < 28) {
          db.execute(
            'ALTER TABLE $tbGroup ADD COLUMN freeJoinStatus INTEGER',
          );
        } else if (oldVersion < 29) {
          db.execute(
            'ALTER TABLE $tbGroupMsgTable ADD COLUMN recallUid INTEGER',
          );
        } else if (oldVersion < 30) {
          db.execute(
            'ALTER TABLE $tbGroup ADD COLUMN groupType INTEGER',
          );
        } else if (oldVersion < 31) {
          db.execute(
            'ALTER TABLE $tbChatList ADD COLUMN groupType INTEGER',
          );
        } else if (oldVersion < 32) {
          db.execute(
            'ALTER TABLE $tbGroup ADD COLUMN forbiddenAddFriends INTEGER',
          );
        } else if (oldVersion < 33) {
          createCollectionDb(db);
        } else if (oldVersion < 34) {
          db.execute(
            'ALTER TABLE $tbGroup ADD COLUMN redPacketId INTEGER',
          );
          db.execute(
            'ALTER TABLE $tbPrivateMsgTable ADD COLUMN redPacketId INTEGER',
          );
        } else if (oldVersion < 35) {
          db.execute(
            'ALTER TABLE $tbGroup ADD COLUMN forbiddenAddFriends INTEGER',
          );
        }
      },
    );
    if (null != _dbMsg) {
      LoggerManager().debug('database 数据库初始化完成');
    }
  }

  Future<void> createCollectionDb(
    Database db,
  ) async {
    final sql = 'CREATE TABLE if not exists $tbCollectionTable ('
        'id INTEGER PRIMARY KEY autoincrement,'
        'friendId INTEGER , '
        'srcId INTEGER , '
        'aimId INTEGER , '
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
    await db.execute(sql).then(
          (value) => LoggerManager().debug(
            'create table $tbCollectionTable over',
          ),
        );
  }

  Future<void> reset() async {
    await resetDb();
  }
}
