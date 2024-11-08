import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:quliao/db/obox/model/conversation_model.dart';
import 'package:quliao/db/obox/model/group_model.dart';
import 'package:quliao/db/obox/model/group_msg_model.dart';
import 'package:quliao/db/obox/model/private_msg_model.dart';
import 'package:quliao/db/obox/model/user_model.dart';
import 'package:quliao/models/user/myinfo.dart';

import 'objectbox.g.dart';

class ObjectBox {
  /// The Store of this app.
  late final Store _store;

  late final Box<UserModel> _userBox;
  late final Box<GroupModel> _groupBox;
  late final Box<PrivateMsgModel> _privateMsgBox;
  late final Box<GroupMsgModel> _groupMsgBox;
  late final Box<ConversationModel> _conversationBox;

  ObjectBox._create(this._store) {
    _userBox = Box<UserModel>(_store);
    _groupBox = Box<GroupModel>(_store);
    _privateMsgBox = Box<PrivateMsgModel>(_store);
    _groupMsgBox = Box<GroupMsgModel>(_store);
    _conversationBox = Box<ConversationModel>(_store);
  }

  /// Create an instance of ObjectBox to use throughout the app.
  static Future<ObjectBox> create(
    int id,
  ) async {
    // Note: setting a unique directory is recommended if running on desktop
    // platforms. If none is specified, the default directory is created in the
    // users documents directory, which will not be unique between apps.
    // On mobile this is typically fine, as each app has its own directory
    // structure.

    // Note: set macosApplicationGroup for sandboxed macOS applications, see the
    // info boxes at https://docs.objectbox.io/getting-started for details.

    // Future<Store> openStore() {...} is defined in the generated objectbox.g.dart
    final store = await openStore(
      directory: p.join(
        (await getApplicationDocumentsDirectory()).path,
        'box_$id',
      ),
    );
    return ObjectBox._create(store);
  }

  Future<void> close() async {
    if (AppUserInfo().imId > 0 && !_store.isClosed()) {
      _store.close();
    }
  }

  Future<void> addConversation(
    ConversationModel model,
  ) async {
    await _conversationBox.putAsync(model);
  }

  Future<void> addConversations(
    List<ConversationModel> models,
  ) async {
    await _conversationBox.putManyAsync(models);
  }

  Future<List<ConversationModel>> getConversations() async {
    return await _conversationBox.getAllAsync();
  }

  Future<ConversationModel?> getConversation(
    int sessionId,
  ) async {
    return _conversationBox.get(sessionId);
  }

  Future<bool> deleteConversation(ConversationModel model) async {
    if (model.privateChat) {
      deletePrivateUserHistoryMsg(model.userId);
    } else {
      deleteGroupHistoryMsg(model.conversationId);
    }
    return _conversationBox.remove(model.id);
  }

  Future<void> addUser(
    UserModel model,
  ) async {
    await _userBox.putAsync(model);
  }

  Future<void> addUsers(
    List<UserModel> models,
  ) async {
    await _userBox.putManyAsync(models);
  }

  Future<List<UserModel>> getUsers() async {
    return await _userBox.getAllAsync();
  }

  Future<UserModel?> getUser(
    int imId,
  ) async {
    return _userBox.get(imId);
  }

  Future<int> deletePrivateUserHistoryMsg(
    int userId,
  ) async {
    final dataList = await getPrivateMsgs(userId);
    final idList = dataList.map((e) => e.id).toList();
    return await _privateMsgBox.removeManyAsync(idList);
  }

  Future<int> deleteGroupHistoryMsg(
    int groupId,
  ) async {
    final dataList = await getGroupMsgListByGroupId(groupId);
    final idList = dataList.map((e) => e.id).toList();
    return await _groupMsgBox.removeManyAsync(idList);
  }

  Future<int> addPrivateMsg(
    PrivateMsgModel model,
  ) async {
    return await _privateMsgBox.putAsync(model);
  }

  Future<void> addPrivateMsgs(
    List<PrivateMsgModel> models,
  ) async {
    await _privateMsgBox.putManyAsync(models);
  }

  Future<List<PrivateMsgModel>> getPrivateMsgList(
    int userId, {
    int page = 0,
    int limit = 20,
  }) async {
    final query = _privateMsgBox
        .query(PrivateMsgModel_.userId.equals(userId))
        .order(
          PrivateMsgModel_.updatedAt,
          flags: Order.descending,
        )
        .build();
    query.offset = page;
    query.limit = limit;
    final dataList = await query.findAsync();
    query.close();
    return dataList;
  }

  Future<PrivateMsgModel?> getPrivateMsg(
    int userId,
    int msgSn,
  ) async {
    final query = _privateMsgBox
        .query(
          PrivateMsgModel_.userId.equals(userId).and(
                PrivateMsgModel_.msgSn.equals(msgSn),
              ),
        )
        .build();
    final result = await query.findFirstAsync();
    query.close();
    return result;
  }

  Future<PrivateMsgModel?> getPrivateMsgByMsgSn(
    int msgSn,
  ) async {
    final query =
        _privateMsgBox.query(PrivateMsgModel_.msgSn.equals(msgSn)).build();
    final result = await query.findFirstAsync();
    query.close();
    return result;
  }

  Future<List<PrivateMsgModel>> getPrivateMsgs(
    int userId,
  ) async {
    final query =
        _privateMsgBox.query(PrivateMsgModel_.userId.equals(userId)).build();
    final dataList = await query.findAsync();
    query.close();
    return dataList;
  }

  Future<List<GroupMsgModel>> getGroupMsgListByGroupId(
    int groupId,
  ) async {
    final query =
        _groupMsgBox.query(GroupMsgModel_.groupId.equals(groupId)).build();
    final dataList = await query.findAsync();
    query.close();
    return dataList;
  }

  Future<int> addGroupMsg(
    GroupMsgModel model,
  ) async {
    return await _groupMsgBox.putAsync(model);
  }

  Future<void> addGroupMsgs(
    List<GroupMsgModel> models,
  ) async {
    await _store.runInTransaction(
      TxMode.write,
      () {
        _groupMsgBox.putMany(models);
      },
    );
  }

  Future<GroupMsgModel?> getGroupMsg(
    int groupId,
    int msgSn,
  ) async {
    final query = _groupMsgBox
        .query(
          GroupMsgModel_.groupId.equals(groupId).and(
                GroupMsgModel_.msgSn.equals(msgSn),
              ),
        )
        .build();
    final result = await query.findFirstAsync();
    query.close();
    return result;
  }

  Future<List<GroupMsgModel>> getGroupMsgs(
    int groupId,
  ) async {
    final query = _groupMsgBox
        .query(GroupMsgModel_.groupId.equals(groupId))
        .order(
          GroupMsgModel_.groupMsgSn,
          flags: Order.descending,
        )
        .build();
    final dataList = await query.findAsync();
    query.close();
    return dataList;
  }

  Future<List<GroupMsgModel>> getGroupMsgList(
    int groupId, {
    int page = 0,
    int limit = 20,
  }) async {
    final query = _groupMsgBox
        .query(GroupMsgModel_.groupId.equals(groupId))
        .order(
          GroupMsgModel_.groupMsgSn,
          flags: Order.descending,
        )
        .build();
    query.offset = page;
    query.limit = limit;
    final dataList = await query.findAsync();
    query.close();
    return dataList;
  }

  Future<void> addGroup(
    GroupModel model,
  ) async {
    await _groupBox.putAsync(model);
  }

  Future<void> addGroups(
    List<GroupModel> models,
  ) async {
    await _groupBox.putManyAsync(models);
  }

  Future<List<GroupModel>> getGroups() async {
    return await _groupBox.getAllAsync();
  }

  Future<GroupModel?> getGroup(
    int groupId,
  ) async {
    return _groupBox.get(groupId);
  }

  Future<void> deleteGroup(
    GroupModel model,
  ) async {
    _groupBox.remove(model.id);
  }
}
