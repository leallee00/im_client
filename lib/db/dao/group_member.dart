import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:sqflite/sqflite.dart';

class GroupMemberDao {
  GroupMemberDao(Database? database) {
    _database = database;
  }

  Database? _database;

  Future<int> delete({
    required int groupId,
    required int userId,
  }) async {
    try {
      return await _database?.delete(
        tbGroupMember,
        where: 'groupId=? and friendId=?',
        whereArgs: [groupId, userId],
      ) ??
          -1;
    } catch (error) {
      return -1;
    }
  }

  Future<void> insertOrUpdate({
    required int groupId,
    required Member member,
  }) async {
    try {
      final queryResult = await query(
        groupId: groupId,
        userId: member.userId.toInt(),
      );
      if (queryResult.isEmpty) {
        insert(groupId: groupId, member: member).then((value) {
          LoggerManager().debug(
            'insert groupId: $groupId userId: ${member.username} insertResult: $value',
          );
        });
      } else {
        update(groupId: groupId, member: member).then((value) {
          LoggerManager().debug(
            'update groupId: $groupId userId: ${member.username} updateResult: $value',
          );
        });
      }
    } catch (error) {}
  }

  Future<int> insert({
    required int groupId,
    required Member member,
  }) async {
    try {
      return await _database?.insert(
        tbGroupMember,
        <String, dynamic>{
          'groupId': groupId,
          'friendId': member.userId.toInt(),
          'username': member.username,
          'role': member.role,
          'remark': member.remark,
          'avatar': member.avatar,
          'group_remark': member.remark,
          'banned': member.banned ? 1 : 0,
          'createTime': DateTime.now().toString(),
        },
      ) ??
          -1;
    } catch (error) {
      return -1;
    }
  }

  Future<int> updateMemberRole({
    required int groupId,
    required int userId,
    required int role,
  }) async {
    try {
      return await _database?.update(
        tbGroupMember,
        where: 'groupId=? and friendId=?',
        whereArgs: [groupId, userId],
        <String, dynamic>{
          'role': role,
        },
      ) ??
          -1;
    } catch (error) {
      return -1;
    }
  }

  Future<int> updateMemberRemark({
    required int groupId,
    required Member member,
  }) async {
   try {
     return await _database?.update(
       tbGroupMember,
       where: 'groupId=? and friendId=?',
       whereArgs: [groupId, member.userId.toInt()],
       <String, dynamic>{
         'remark': member.remark,
         'group_remark': member.remark,
       },
     ) ??
         -1;
   } catch (error) {
    return -1;
   }
  }

  Future<int> updateMemberBannedStatus({
    required int groupId,
    required int userId,
    bool banned = false,
  }) async {
    try {
      return await _database?.update(
        tbGroupMember,
        where: 'groupId=? and friendId=?',
        whereArgs: [groupId, userId],
        <String, dynamic>{
          'banned': banned ? 1 : 0,
        },
      ) ??
          -1;
    } catch (error) {
      return -1;
    }
  }

  Future<int> update({
    required int groupId,
    required Member member,
  }) async {
    try {
      return await _database?.update(
        tbGroupMember,
        where: 'groupId=? and friendId=?',
        whereArgs: [groupId, member.userId.toInt()],
        <String, dynamic>{
          'groupId': groupId,
          'friendId': member.userId.toInt(),
          'username': member.username,
          'role': member.role,
          'remark': member.remark,
          'avatar': member.avatar,
          'group_remark': member.remark,
          'banned': member.banned ? 1 : 0,
          'createTime': DateTime.now().toString(),
        },
      ) ??
          -1;
    } catch (error) {
      return -1;
    }
  }

  Future<Member?> singleMember({
    required int groupId,
    required int userId,
  }) async {
    try {
      final dataList = await query(groupId: groupId, userId: userId);
      if (dataList.isNotEmpty) {
        final Member member = Member();
        final Map<String, Object?> data = dataList.first;
        member.groupId = Int64(groupId);
        member.userId = Int64(userId);
        member.role = null == data['role'] ? 0 : data['role'] as int;
        member.username =
        null == data['username'] ? '' : data['username'] as String;
        member.remark = null == data['remark'] ? '' : data['remark'] as String;
        member.avatar = null == data['avatar'] ? '' : data['avatar'] as String;
        member.banned = null == data['banned'] ? false : data['banned'] == 1;
        return member;
      }
      return null;
    } catch (error) {
      return null;
    }
  }

  Future<List<Map<String, Object?>>> queryByGroupId({
    required int groupId,
  }) async {
    try {
      return await _database?.query(
        tbGroupMember,
        where: 'groupId=?',
        whereArgs: [groupId],
      ) ??
          [];
    } catch (error) {
      return [];
    }
  }

  Future<List<Map<String, Object?>>> query({
    required int groupId,
    required int userId,
  }) async {
    try {
      return await _database?.query(
        tbGroupMember,
        where: 'groupId=? and friendId=?',
        whereArgs: [groupId, userId],
      ) ??
          [];
    } catch (error) {
      return [];
    }
  }

  Future<void> create() async {
    try {
      final String sql = 'CREATE TABLE if not exists $tbGroupMember ('
          'id INTEGER PRIMARY KEY autoincrement,'
          'groupId INTEGER,'
          'friendId INTEGER,'
          'role INTEGER,'
          'username TEXT,'
          'remark TEXT,'
          'avatar TEXT,'
          'group_remark TEXT,'
          'createTime DateTime'
          ')';
      await _database?.execute(sql);
    } catch (error) {}
  }
}
