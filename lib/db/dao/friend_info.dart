import 'package:quliao/db/db.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:sqflite/sqflite.dart';

class FriendInfoDao {
  FriendInfoDao(Database? database) {
    _database = database;
  }

  Database? _database;

  Future<int> update({
    required int userId,
    required Map<String, dynamic> dataMap,
  }) async {
    try {
      return await _database?.update(
        tbFriendInfo,
        where: 'friendId=?',
        whereArgs: [userId],
        dataMap,
      ) ??
          -1;
    } catch (error) {
      return -1;
    }
  }

  Future<bool> isFriend({
    required int userId,
  }) async {
    try {
      final dataMapList = await query(userId: userId);
      if (dataMapList.isEmpty) {
        return false;
      } else {
        final dataMap = dataMapList.first;
        if (dataMap.containsKey('friendRelation')) {
          if (dataMap['friendRelation'] == enFriendRelation.friend) {
            return true;
          }
        }
        return false;
      }
    } catch (error) {
      return false;
    }
  }

  Future<List<Map<String, Object?>>> query({
    required int userId,
  }) async {
    try {
      return await _database?.query(
        tbFriendInfo,
        where: 'friendId=?',
        whereArgs: [userId],
      ) ??
          [];
    } catch (error) {
      return [];
    }
  }
}
