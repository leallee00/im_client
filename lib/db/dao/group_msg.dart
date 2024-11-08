import 'package:flutter/foundation.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/pb/pb_pub/comm.pbenum.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:sqflite/sqflite.dart';

class GroupMessageDao {
  GroupMessageDao(Database? database) {
    _database = database;
  }

  Database? _database;

  Future<void> delete({
    required int groupId,
  }) async {
    dbMsg?.delete(
      tbGroupMsgTable,
      where: "groupId=?",
      whereArgs: [groupId.toInt()],
    );
  }

  Future<int> updateGroupMsgSn(
    int msgSn, {
    required int groupMsgSn,
  }) async {
    final condition = 'msgSn=$msgSn';
    return await _database?.update(
          tbGroupMsgTable,
          {
            "groupMsgSn": groupMsgSn,
          },
          where: condition,
        ) ??
        -1;
  }

  Future<int> updateMsgStatus(
    int msgSn, {
    MSG_STATE msgState = MSG_STATE.READ,
  }) async {
    final condition = 'msgSn=$msgSn';
    return await _database?.update(
          tbGroupMsgTable,
          {
            "msgStatus": msgState.value,
          },
          where: condition,
        ) ??
        -1;
  }

  Future<List<Map<String, dynamic>>?> all(
    int groupId, {
    int offset = -1,
    int pageSize = 20,
  }) async {
    return await _database?.query(
      tbGroupMsgTable,
      where: 'groupId=?',
      whereArgs: [groupId],
      orderBy: "msgTime desc",
    );
  }

  Future<List<Map<String, dynamic>>?> single(
    int groupId,
    int groupMsgSn,
  ) async {
    return await _database?.query(
      tbGroupMsgTable,
      where: 'groupId=?  and groupMsgSn=?',
      whereArgs: [groupId, groupMsgSn],
    );
  }

  Future<List<Map<String, dynamic>>?> singleByMsgSn(
    int groupId,
    int msgSn,
  ) async {
    return await _database?.query(
      tbGroupMsgTable,
      where: 'groupId=? and msgSn=?',
      whereArgs: [groupId, msgSn],
    );
  }

  Future<Map<String, dynamic>?> latestMsg(
    int groupId, {
    int offset = -1,
    int pageSize = 20,
  }) async {
    final messageList = await list(groupId) ?? [];
    if (messageList.isNotEmpty) {
      return messageList.first;
    } else {
      return null;
    }
  }

  Future<List<Map<String, dynamic>>?> list(
    int groupId, {
    int offset = -1,
    int pageSize = 20,
  }) async {
    LoggerManager().debug(
        'group msg list query groupId: $groupId offset: $offset pageSize: $pageSize');
    return await _database?.query(
      tbGroupMsgTable,
      where: 'groupId=?',
      whereArgs: [groupId],
      limit: pageSize,
      offset: offset == 0 ? -1 : offset,
      orderBy: "groupMsgSn desc",
    );
  }

  Future<void> insertOrUpdate({
    required int groupId,
    required int msgSn,
    required Map<String, dynamic> dataMap,
  }) async {
    final queryResult = await query(
      groupId: groupId,
      msgSn: msgSn,
    );
    if (queryResult.isEmpty) {
      insert(groupId: groupId, dataMap: dataMap).then((value) {
        LoggerManager().debug(
          'insert groupId: $groupId msgSn: $msgSn insertResult: $value',
        );
      });
    } else {
      // update(groupId: groupId, msgSn: msgSn, dataMap: dataMap).then((value) {
      //   LoggerManager().debug(
      //     'update groupId: $groupId msgSn: $msgSn updateResult: $value',
      //   );
      // });
    }
  }

  Future<int> insert({
    required int groupId,
    required Map<String, dynamic> dataMap,
  }) async {
    return await _database?.insert(
          tbGroupMsgTable,
          dataMap,
        ) ??
        -1;
  }

  Future<int> update({
    required int groupId,
    required int msgSn,
    required Map<String, dynamic> dataMap,
  }) async {
    return await _database?.update(
          tbGroupMsgTable,
          where: 'groupId=? and msgSn=?',
          whereArgs: [groupId, msgSn],
          <String, dynamic>{
            'pbData': dataMap['pbData'],
            'msgStatus': dataMap['msgStatus'],
          },
        ) ??
        -1;
  }

  Future<int> updatePbData({
    required int groupId,
    required int msgSn,
    required List<int> pbDataValue,
  }) async {
    return await _database?.update(
          tbGroupMsgTable,
          where: 'groupId=? and msgSn=?',
          whereArgs: [groupId, msgSn],
          <String, dynamic>{
            'pbData': pbDataValue,
          },
        ) ??
        -1;
  }

  Future<int> updateByRedPacketId({
    required int groupId,
    required int redPacketId,
    required List<int> pbDataValue,
  }) async {
    return await _database?.update(
          tbGroupMsgTable,
          where: 'groupId=? and redPacketId=?',
          whereArgs: [groupId, redPacketId],
          <String, dynamic>{
            'pbData': pbDataValue,
          },
        ) ??
        -1;
  }

  Future<List<Map<String, dynamic>>?> singleByRedPacketId(
    int groupId,
    int redPacketId,
  ) async {
    return await _database?.query(
      tbGroupMsgTable,
      where: 'groupId=? and redPacketId=?',
      whereArgs: [groupId, redPacketId],
    );
  }

  Future<List<Map<String, Object?>>> query({
    required int groupId,
    required int msgSn,
  }) async {
    return await _database?.query(
          tbGroupMsgTable,
          where: 'groupId=? and msgSn=?',
          whereArgs: [groupId, msgSn],
        ) ??
        [];
  }
}
