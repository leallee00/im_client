import 'package:quliao/db/db.dart';
import 'package:sqflite/sqflite.dart';
import 'package:quliao/pub/pub-def.dart';

class ChatListDao {
  ChatListDao(Database? database) {
    _database = database;
  }

  Database? _database;

  Future<int> deleteConversation(int conversationId) async {
    return await dbMsg?.delete(
          tbChatList,
          where: 'chatId=?',
          whereArgs: [conversationId],
        ) ??
        -1;
  }

  /// 查询单个会话
  Future<Map<String, Object?>?> singleConversation(
    int id, {
    CHAT_TYPE conversationType = CHAT_TYPE.PRIVATE,
  }) async {
    final dataList = await queryByConversationId(id) ?? [];
    if (dataList.isNotEmpty) {
      return dataList.single;
    }
    return null;
  }

  /// 通过会话id查询
  Future<List<Map<String, Object?>>?> queryByConversationId(
    int conversationId,
  ) async {
    return await _database?.query(
      tbChatList,
      where: "chatId=?",
      whereArgs: [conversationId],
      orderBy: "msgTime desc",
    );
  }

  Future<int?> insert(
    int conversationId,
    Map<String, dynamic> dataMap,
  ) async {
    return await _database?.insert(
      tbChatList,
      dataMap,
    );
  }

  Future<int?> update(
    int conversationId, {
    required Map<String, dynamic> dataMap,
  }) async {
    return await _database?.update(
      tbChatList,
      where: 'chatId=?',
      whereArgs: [conversationId],
      dataMap,
    );
  }

  Future<int?> insertEmpty(
    int conversationId,
    int chatType, {
    String? msgTips,
  }) async {
    return await _database?.insert(
      tbChatList,
      <String, dynamic>{
        'chatId': conversationId,
        'chatType': chatType,
        'newMsgCount': 0,
        'msgTips': msgTips ?? '',
        'msgSn': 0,
        'msgTime': DateTime.now().toString(),
        'createTime': DateTime.now().toString(),
      },
    );
  }

  Future<int> updatePinnedStatus({
    required int conversationId,
    required bool top,
  }) async {
    return await _database?.update(
          tbChatList,
          where: 'chatId=?',
          whereArgs: [conversationId],
          <String, dynamic>{'top': top},
        ) ??
        -1;
  }

  Future<List<Map<String, Object?>>> list() async {
    return await _database?.query(
          tbChatList,
          limit: 100,
          offset: 0,
          orderBy: "msgTime desc",
        ) ??
        [];
  }

  Future<int> updateMsgTips({
    required int groupId,
    required String msgTips,
  }) async {
    return await _database?.update(
          tbChatList,
          where: 'chatId=?',
          whereArgs: [groupId],
          <String, dynamic>{
            'msgTips': msgTips,
            'msgTime': DateTime.now().toString(),
          },
        ) ??
        -1;
  }

  Future<List<Map<String, Object?>>> query() async {
    return await _database?.query(
          tbChatList,
          limit: 100,
          offset: 0,
          orderBy: "msgTime desc",
        ) ??
        [];
  }

  /// 通过id和type查询
  Future<List<Map<String, Object?>>> queryById(
    int id, {
    CHAT_TYPE conversationType = CHAT_TYPE.PRIVATE,
  }) async {
    return await _database?.query(
          tbChatList,
          where: 'chatId=? and chatType=?',
          whereArgs: [id, conversationType.index],
        ) ??
        [];
  }
}
