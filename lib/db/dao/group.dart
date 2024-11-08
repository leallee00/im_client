import 'package:quliao/db/db.dart';
import 'package:sqflite/sqflite.dart';

class GroupDao {
  GroupDao(Database? database) {
    _database = database;
  }

  Database? _database;

  Future<List<Map<String, Object?>>?> query({
    required int groupId,
  }) async {
    try {
      return await _database?.query(
        tbGroup,
        where: 'groupId=?',
        whereArgs: [groupId],
      );
    } catch (error) {
      return [];
    }
  }

  Future<void> delete({
    required int groupId,
  }) async {
    try {
      await _database?.delete(
        tbGroup,
        where: "groupId=?",
        whereArgs: [groupId.toInt()],
      );
    } catch (error) {}
  }

  Future<int> update({
    required int groupId,
    required Map<String, dynamic> dataMap,
  }) async {
    try {
      return await _database?.update(
        tbGroup,
        where: 'groupId=?',
        whereArgs: [groupId],
        dataMap,
      ) ??
          -1;
    } catch (error) {
      return -1;
    }
  }

  Future<int> updateRemark({
    required int groupId,
    required String remark,
  }) async {
    try {
      return await _database?.update(
        tbGroup,
        where: 'groupId=?',
        whereArgs: [groupId],
        <String, dynamic>{
          'remarks': remark,
        },
      ) ??
          -1;
    } catch (error) {
      return -1;
    }
  }

  Future<int> updateTop({
    required int groupId,
    required bool top,
  }) async {
    try {
      return await _database?.update(
        tbGroup,
        where: 'groupId=?',
        whereArgs: [groupId],
        <String, dynamic>{
          'top': top ? 1 : 0,
        },
      ) ??
          -1;
    } catch (error) {
      return -1;
    }
  }
}
