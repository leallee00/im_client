import 'package:quliao/db/db.dart';
import 'package:sqflite/sqflite.dart';

class CollectionsDao {
  CollectionsDao(Database? database) {
    _database = database;
  }

  Database? _database;

  /// 通过会话id查询
  Future<List<Map<String, Object?>>?> queryByMsgSn(
    int msgSn,
  ) async {
    return await _database?.query(
      tbCollectionTable,
      where: "msgSn=?",
      whereArgs: [msgSn],
    );
  }

  Future<int?> insert(
    Map<String, dynamic> dataMap,
  ) async {
    return await _database?.insert(
      tbCollectionTable,
      dataMap,
    );
  }

  Future<List<Map<String, Object?>>> list() async {
    return await _database?.query(
          tbChatList,
          limit: 100,
          offset: 0,
          orderBy: "createTime desc",
        ) ??
        [];
  }

  Future<List<Map<String, Object?>>> query({
    int offset = -1,
    int pageSize = 20,
  }) async {
    return await _database?.query(
          tbCollectionTable,
          limit: pageSize,
          offset: offset == 0 ? -1 : offset,
          orderBy: "createTime desc",
        ) ??
        [];
  }

  Future<void> delete({
    required int msgSn,
  }) async {
    await _database?.delete(
      tbCollectionTable,
      where: "msgSn=?",
      whereArgs: [msgSn],
    );
  }
}
