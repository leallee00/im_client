import 'package:quliao/db/db.dart';
import 'package:quliao/pb/pb_pub/comm.pbenum.dart';
import 'package:sqflite/sqflite.dart';

class PrivateMsgDao {
  PrivateMsgDao(Database? database) {
    _database = database;
  }

  Database? _database;

  Future<List<Map<String, Object?>>> query(
    int conversationId,
  ) async {
    return await _database?.query(
          tbPrivateMsgTable,
          where: "friendId=?",
          whereArgs: [conversationId],
          orderBy: "msgTime desc",
        ) ??
        [];
  }

  Future<List<Map<String, dynamic>>?> singleByMsgSn(
    int friendId,
    int msgSn,
  ) async {
    return await _database?.query(
      tbPrivateMsgTable,
      where: 'friendId=? and msgSn=?',
      whereArgs: [friendId, msgSn],
    );
  }

  Future<List<Map<String, dynamic>>?> singleByRedPacketId(
    int friendId,
    int redPacketId,
  ) async {
    return await _database?.query(
      tbPrivateMsgTable,
      where: 'friendId=? and redPacketId=?',
      whereArgs: [friendId, redPacketId],
    );
  }

  Future<int> updatePbData({
    required int friendId,
    required int msgSn,
    required List<int> pbDataValue,
  }) async {
    return await _database?.update(
          tbPrivateMsgTable,
          where: 'friendId=? and msgSn=?',
          whereArgs: [friendId, msgSn],
          <String, dynamic>{
            'pbData': pbDataValue,
          },
        ) ??
        -1;
  }

  Future<int> updateByRedPacketId({
    required int friendId,
    required int redPacketId,
    required List<int> pbDataValue,
  }) async {
    return await _database?.update(
          tbPrivateMsgTable,
          where: 'friendId=? and redPacketId=?',
          whereArgs: [friendId, redPacketId],
          <String, dynamic>{
            'pbData': pbDataValue,
          },
        ) ??
        -1;
  }

  Future<List<Map<String, Object?>>> queryByMsgSn({
    required int conversationId,
    required int msgSn,
  }) async {
    return await _database?.query(
          tbPrivateMsgTable,
          where: 'friendId=? and msgSn=?',
          whereArgs: [conversationId, msgSn],
        ) ??
        [];
  }

  Future<int> updateMsgStatus(
    int msgSn, {
    MSG_STATE msgState = MSG_STATE.READ,
  }) async {
    final condition = 'msgSn=$msgSn';
    return await _database?.update(
          tbPrivateMsgTable,
          {
            "msgStatus": msgState.value,
          },
          where: condition,
        ) ??
        -1;
  }
}
