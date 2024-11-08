import 'dart:convert';

import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:quliao/db/dao/chat_list.dart';
import 'package:quliao/db/database.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/db/obox/model/conversation_model.dart';
import 'package:quliao/db/obox/model/group_model.dart';
import 'package:quliao/db/obox/model/private_msg_model.dart';
import 'package:quliao/db/obox/model/user_model.dart';
import 'package:quliao/global/controller/im_controller.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/models/user/userinfo.dart';
import 'package:quliao/modules/conversation/models/lw_conversation.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/chat_group/flyer_chat/chat_group_change_to_message.dart';
import 'package:quliao/pages/chat_private/chat.dart';
import 'package:quliao/pb/pb_msg/gate/gate.pb.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart';
import 'package:quliao/pb/pb_msg/offline_msg/offlineMsg.pb.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pb/pb_pub/service.pbenum.dart';
import 'package:quliao/pub/config.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/pub/pub-def.dart';
import 'package:http/http.dart' as http1;
import 'package:quliao/pb/pb_msg/friend/friend.pb.dart' as $pbfriend;
import 'package:quliao/utils/http/http.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/utils/safe_convert.dart';
import 'package:quliao/widgets/loading.dart';

import '../../../net/msg_handler_mgr.dart';
import '../../../pb/pb_pub/error_code.pbenum.dart';
import 'package:http/http.dart' as $http;

class ImConversationRepository {
  ImController get imController => ImController.to;

  ChatListDao? get _conversationDao => AppDatabase().getChatListDao();

  Future<String?> getLatestMsg(int groupId) async {
    final messageMap = await AppDatabase().groupMessageDao?.latestMsg(groupId);
    if (null == messageMap) {
      return null;
    }
    return _updateMsgTipsByLatestMessage(messageMap);
  }

  Future<String> _updateMsgTipsByLatestMessage(
    Map<String, dynamic> messageMap,
  ) async {
    var d = ChatGroupData();
    // 等待加载用户信息
    await d.initWithMap(messageMap);
    final map = await changeToGroupMessageMap(d);
    return map['text'] as String;
    // final String typeValue = messageMap['type'] as String;
    // if (typeValue == 'image') {
    //   return '[图片]';
    // } else if (typeValue == 'audio') {
    //   return '[语音]';
    // } else if (typeValue == 'file') {
    //   return '[文件]';
    // } else if (typeValue == 'video') {
    //   return '[视频]';
    // } else if (typeValue == 'custom') {
    //   if (null != messageMap['metadata']) {
    //     final medaData = messageMap['metadata'];
    //     if (medaData['customType'] == 'mergeForward') {
    //       return '[聊天记录]';
    //     }
    //   }
    //   return '[自定义消息]';
    // } else {
    //   return messageMap['text'].toString();
    // }
  }

  Future<List<ConversationModel>> getConversationList() async {
    return await AppDatabase().objectBox.getConversations();
    // final List<LwConversation> dataList = [];
    // final list = await _conversationDao?.list() ?? [];
    // for (final item in list) {
    //   dataList.add(LwConversation.fromJson(item));
    // }
    // return dataList;
  }

  Future<void> updateConversation(
    int conversationId, {
    required Map<String, dynamic> dataMap,
  }) async {
    await _conversationDao?.update(conversationId, dataMap: dataMap);
    final conversation = await singleConversation(
      conversationId,
    );
    // imController.conversationListener?.onConversationUpdated(
    //   conversation,
    // );
  }

  Future<ConversationModel?> insertEmpty(
    int conversationId, {
    required Map<String, dynamic> dataMap,
    CHAT_TYPE conversationType = CHAT_TYPE.PRIVATE,
  }) async {
    final conversation = await singleConversation(
      conversationId,
      conversationType: conversationType,
    );
    if (null == conversation) {
      /// 获取用户信息，更新头像和昵称
      if (conversationType == CHAT_TYPE.PRIVATE) {
        final friendInfo = FriendInfo();
        await friendInfo.LoadFriendData(conversationId);
        dataMap['avatar'] = friendInfo.userInfo.avatar;
        dataMap['name'] = friendInfo.userInfo.nickName;
        dataMap['remark'] = friendInfo.remark;
      } else {
        final groupInfo = GroupInfo();
        await groupInfo.fetchGroupData(conversationId);
        dataMap['avatar'] = groupInfo.avatar;
        dataMap['name'] = groupInfo.name;
        dataMap['remark'] = groupInfo.remark;
      }

      /// insert
      await _conversationDao?.insert(conversationId, dataMap);
      final newConversation = ConversationModel.fromJson(dataMap);
      // imController.conversationListener?.onConversationCreated(
      //   newConversation,
      // );
      return newConversation;
    }
    return conversation;
  }

  Future<LwConversation?> updateConversationGroupMsgSn(
    int conversationId, {
    required Map<String, dynamic> dataMap,
  }) async {
    final conversation = await singleConversation(
      conversationId,
      conversationType: CHAT_TYPE.GROUP,
    );

    if (null != conversation) {
      /// update
      await _conversationDao?.update(conversationId, dataMap: dataMap);
      final conversation1 = await singleConversation(
        conversationId,
        conversationType: CHAT_TYPE.GROUP,
      );

      // imController.conversationListener?.updateConversationGroupMsgSn(
      //   conversation1,
      // );
    }

    return null;
  }

  Future<ConversationModel?> insertOrUpdate(
    int conversationId, {
    required Map<String, dynamic> dataMap,
    bool mySend = false,
    CHAT_TYPE conversationType = CHAT_TYPE.PRIVATE,
  }) async {
    final conversation = await singleConversation(
      conversationId,
      conversationType: conversationType,
    );

    debugPrint(
        'insertOrUpdate ======> conversationId: $conversationId conversationType:$conversationType');

    /// 获取用户信息，更新头像和昵称
    if (conversationType == CHAT_TYPE.PRIVATE) {
      final friendInfo = FriendInfo();
      await friendInfo.LoadFriendData(conversationId);
      dataMap['avatar'] = friendInfo.userInfo.avatar;
      dataMap['name'] = friendInfo.userInfo.nickName;
      dataMap['remark'] = friendInfo.remark;
    } else {
      final groupInfo = GroupInfo();
      await groupInfo.fetchGroupData(conversationId);
      dataMap['avatar'] = groupInfo.avatar;
      dataMap['name'] = groupInfo.name;
      dataMap['remark'] = groupInfo.remark;
      dataMap['groupType'] = groupInfo.groupType;
    }

    if (null == conversation) {
      /// insert
      // await _conversationDao?.insert(conversationId, dataMap);
      final newConversation = ConversationModel.fromJson(dataMap);
      AppDatabase().objectBox.addConversation(newConversation);
      LoggerManager().debug(
          'conversation repository update newConversation groupMsgSn: ${newConversation.groupMsgSn}');
      // imController.conversationListener?.onConversationCreated(
      //   newConversation,
      // );
      return newConversation;
    } else {
      // if (conversationType == CHAT_TYPE.GROUP) {
      //   final preGroupMsgSn = conversation.groupMsgSn;
      //   int currentGroupMsgSn = 0;
      //   if (null != dataMap['groupMsgSn']) {
      //     currentGroupMsgSn = dataMap['groupMsgSn'] as int;
      //   }
      //
      //   LoggerManager().debug(
      //       'conversation repository update preGroupMsgSn: $preGroupMsgSn groupMsgSn: $currentGroupMsgSn mySend: $mySend');
      //
      //   if ((currentGroupMsgSn == 0 || currentGroupMsgSn < preGroupMsgSn) &&
      //       !mySend) {
      //     await _conversationDao?.update(conversationId, dataMap: dataMap);
      //     final conversation = await singleConversation(
      //       conversationId,
      //       conversationType: conversationType,
      //     );
      //
      //     // imController.conversationListener?.onConversationUpdated(
      //     //   conversation,
      //     // );
      //     return conversation;
      //   }
      //
      //   if (mySend &&
      //       currentGroupMsgSn != 0 &&
      //       currentGroupMsgSn < preGroupMsgSn) {
      //     return conversation;
      //   }
      //
      //   /// update
      //   await _conversationDao?.update(conversationId, dataMap: dataMap);
      //   final conversation1 = await singleConversation(
      //     conversationId,
      //     conversationType: conversationType,
      //   );
      //
      //   // imController.conversationListener?.onConversationUpdated(
      //   //   conversation1,
      //   // );
      //   return conversation1;
      // }

      /// update
      await _conversationDao?.update(conversationId, dataMap: dataMap);
      final conversation1 = await singleConversation(
        conversationId,
        conversationType: conversationType,
      );

      // imController.conversationListener?.onConversationUpdated(
      //   conversation1,
      // );
      return conversation1;
    }
  }

  Future<int?> delete(ConversationModel conversation) async {
    final result =
        await AppDatabase().objectBox.deleteConversation(conversation);
    return result ? 1 : 0;
    // return await _conversationDao?.deleteConversation(
    //   conversation.conversationId,
    // );
  }

  Future<ConversationModel?> singleConversation(
    int conversationId, {
    CHAT_TYPE conversationType = CHAT_TYPE.PRIVATE,
  }) async {
    if (conversationId <= 0) {
      return null;
    }
    return await AppDatabase().objectBox.getConversation(conversationId);
    // final conversation = await _conversationDao?.singleConversation(
    //   conversationId,
    //   conversationType: conversationType,
    // );
    // if (null != conversation) {
    //   return LwConversation.fromJson(conversation);
    // }
    // return null;
  }

  Future<int?> pin(ConversationModel conversation) async {
    final pinned = conversation.isPinned;
    if (conversation.privateChat) {
      FriendInfo friendInfo = FriendInfo();
      friendInfo.friendId = conversation.conversationId;
      final friend = $pbfriend.Friend();
      friend.top = !pinned;
      await friendInfo.UpdateField('top', !pinned, friend);
      // await AppDatabase().groupDao?.updateTop(
      //       groupId: conversation.conversationId.toInt(),
      //       top: friend.top,
      //     );
      final data =
          await AppDatabase().objectBox.getConversation(conversation.id);
      if (null != data) {
        data.top = pinned ? 0 : 1;
        AppDatabase().objectBox.addConversation(data);
      }
      return 1;
      // return _conversationDao?.updatePinnedStatus(
      //   conversationId: conversation.conversationId,
      //   top: friend.top,
      // );
    } else {
      GroupTopSetReq req = GroupTopSetReq();
      req.top = !pinned;
      PBCommData pbCommData = MakePBCommData(
        aimId: Int64(AppUserInfo().imId),
        groupId: Int64(conversation.conversationId),
        toService: Service.group,
      );

      http1.Response response = await RpcCallImOuterApi(
        '/pb_grpc_group.Group/GroupTopSet',
        req,
        pbCommData,
      ).catchError((err) {
        return http1.Response("$err", 500);
      });

      if (response.statusCode == 200) {
        final GroupTopSetRsp rsp = GroupTopSetRsp();
        rsp.mergeFromBuffer(response.bodyBytes);

        LoggerManager().debug('会话置顶 ------> ${rsp.top}');

        // if (groupInfoMap.containsKey(conversation.conversationId.toString())) {
        //   final Map<String, dynamic>? dataMap = groupInfoMap[conversation.conversationId.toString()];
        //   if (null != dataMap) {
        //     dataMap['top'] = rsp.top;
        //   }
        // }
        AppDatabase().groupDao?.updateTop(
              groupId: conversation.conversationId.toInt(),
              top: rsp.top,
            );

        final data =
            await AppDatabase().objectBox.getConversation(conversation.id);
        if (null != data) {
          data.top = rsp.top ? 1 : 0;
          AppDatabase().objectBox.addConversation(data);
        }

        final group = await AppDatabase().objectBox.getGroup(conversation.id);
        if (null != group) {
          group.top = rsp.top;
          AppDatabase().objectBox.addGroup(group);
        }

        return 1;
      }
    }
    return -1;
  }

  Future<void> clearSessionMsg(
    int sessionId, {
    int? aimId,
    bool isGroup = false,
  }) async {
    try {
      LoggerManager().error('clearSessionMsg sessionId: $sessionId');
      final req = ClearMsgOfSessionReq(
        session: Int64(sessionId),
      );
      PBCommData pbCommData;
      if (isGroup) {
        pbCommData = MakePBCommData(
          groupId: Int64(sessionId),
          toService: Service.offline_msg,
        );
      } else {
        pbCommData = MakePBCommData(
          aimId: Int64(aimId!),
          toService: Service.offline_msg,
        );
      }
      http1.Response response = await RpcCallImOuterApi(
        '/pb_grpc_offlineMsg.OfflineMsg/ClearMsgOfSession',
        req,
        pbCommData,
      );
      if (response.statusCode == 200) {
        final rsp = ClearMsgOfSessionRsp()..mergeFromBuffer(response.bodyBytes);
        LoggerManager().error('ClearMsgOfSessionRsp ===========> \n $rsp');
      } else {
        LoggerManager().error(
            'ClearMsgOfSessionRsp fail ===========> \n ${response.statusCode}');
      }
    } catch (error) {
      LoggerManager()
          .error('ClearMsgOfSessionRsp error ===========> \n $error');
    }
  }

  Future<void> delRemoteChatSession(
    int sessionId,
  ) async {
    try {
      final req = DelChatSessionsReq(
        session: Int64(sessionId),
      );
      final pbCommData = MakePBCommData(
        aimId: Int64(AppUserInfo().imId),
        toService: Service.offline_msg,
      );
      http1.Response response = await RpcCallImOuterApi(
        '/pb_grpc_offlineMsg.OfflineMsg/DelChatSessions',
        req,
        pbCommData,
      );
      if (response.statusCode == 200) {
        final rsp = DelChatSessionsRsp()..mergeFromBuffer(response.bodyBytes);
        LoggerManager().error('FetchChatSessionsRsp ===========> \n $rsp');
      }
    } catch (error) {}
  }

  Future<List<ConversationModel>> loadConversation() async {
    try {
      final req = FetchChatSessionsReq(
        page: Int64(1),
        pageSize: Int64(1000),
      );
      final pbCommData = MakePBCommData(
        aimId: Int64(AppUserInfo().imId),
        toService: Service.offline_msg,
      );

      http1.Response response = await RpcCallImOuterApi(
        '/pb_grpc_offlineMsg.OfflineMsg/FetchChatSessions',
        req,
        pbCommData,
      );

      if (response.statusCode == 200) {
        final rsp = FetchChatSessionsRsp()..mergeFromBuffer(response.bodyBytes);
        LoggerManager().error('FetchChatSessionsRsp ===========> \n $rsp');
        final dataList = <ConversationModel>[];
        for (final item in rsp.chatSessions) {
          final pbMsg = PBMessage(
            pbName: item.pbName,
            pbCommData: PBCommData.fromBuffer(item.pbCommData),
            pbData: item.pbData,
          );

          final userId =
              (AppUserInfo.instance.imId == pbMsg.pbCommData.srcId.toInt())
                  ? pbMsg.pbCommData.aimId.toInt()
                  : pbMsg.pbCommData.srcId.toInt();

          final dataMap = <String, dynamic>{
            'session': item.session.toInt(),
            'lastMsgStatus': item.lastMsgStatus.value,
            'sessionType': item.sessionType.value,
            'srcId': item.srcId.toInt(),
            'userId': userId,
            'pbName': item.pbName,
            'pbData': item.pbData,
            'createdAt': item.createdAt.toInt(),
            'updatedAt': item.updatedAt.toInt(),
            'pbCommData': item.pbCommData,
            'newMsgCount': item.newMsgCount.toInt(),
            'userSourceVersion': pbMsg.pbCommData.userSourceVersion.toInt(),
          };

          saveLatestMsg(item);

          // GetUserInfo(item.srcId.toInt());

          // final chatText = ChatText();
          // chatText.mergeFromBuffer(item.pbData);

          // LoggerManager().error(
          //   'FetchChatSessionsRsp item chatText ===========>'
          //   ' \n text: ${chatText.text} '
          //   '\n data: ${chatText.data}',
          // );

          // LoggerManager().error(
          //   'FetchChatSessionsRsp jsonMap ===========> \n $dataMap',
          // );
          final model = ConversationModel.fromJson(dataMap);
          dataList.add(model);
        }
        return dataList;
      } else {
        return [];
      }
    } catch (error) {
      LoggerManager().error('FetchChatSessionsRsp error ===========> $error');
      return [];
    }
  }

  Future<void> saveLatestMsg(
    ChatSession chatSession,
  ) async {
    final pbMsg = PBMessage(
      pbName: chatSession.pbName,
      pbCommData: PBCommData.fromBuffer(
        chatSession.pbCommData,
      ),
      pbData: chatSession.pbData,
    );

    final userId = (AppUserInfo.instance.imId == pbMsg.pbCommData.srcId.toInt())
        ? pbMsg.pbCommData.aimId.toInt()
        : pbMsg.pbCommData.srcId.toInt();

    final privateMsg = await AppDatabase().objectBox.getPrivateMsg(
          userId,
          pbMsg.pbCommData.msgSn.toInt(),
        );

    /// 是否消息的主人
    final isOwner = pbMsg.pbCommData.srcId.toInt() == AppUserInfo.instance.imId;
    var msgState = () {
      if (!isOwner) {
        /// 如果是别人发的消息则直接为已收
        return MSG_STATE.RECEIVED;
      }

      return MSG_STATE.SEND;
    }();

    if (null == privateMsg) {
      final privateMsgDataMap = <String, dynamic>{
        'userId': userId,
        'srcId': pbMsg.pbCommData.srcId.toInt(),
        'msgSn': pbMsg.pbCommData.msgSn.toInt(),
        'pbName': pbMsg.pbName,
        'pbData': pbMsg.pbData,
        'pbCommData': pbMsg.pbCommData.writeToBuffer(),
        'msgState': msgState.value,
        'createAt': DateTime.now().millisecondsSinceEpoch,
        'updateAt': chatSession.updatedAt.toInt() * 1000,
        'userSourceVersion': pbMsg.pbCommData.userSourceVersion.toInt(),
      };

      if (pbMsg.pbName == 'pb_pub.MsgRecallReq') {
        final notify = MsgRecallReq();
        notify.mergeFromBuffer(pbMsg.pbData);
        final srcUserId = notify.msgOwnerId.toInt();
        privateMsgDataMap.putIfAbsent('recallUid', () => srcUserId);
      }

      AppDatabase()
          .objectBox
          .addPrivateMsg(
            PrivateMsgModel.fromJson(privateMsgDataMap),
          )
          .then(
        (value) {
          if (value > 0) {
            LoggerManager().error(
              'saveLatestMsg 私聊消息存储成功 ======> userId: $userId msgSn: ${pbMsg.pbCommData.msgSn.toInt()}',
            );
            if (pbMsg.pbCommData.needReadReceipt) {
              if (pbMsg.pbName == pbNameMsgReceipt) {
                // 如果收到了自己发的回执，直接忽略，不是自己的就发送个end，用户删除服务端的存储
                // void
              } else {
                if (pbMsg.pbCommData.groupId.toInt() > 0) {
                  LoggerManager().debug(
                    'saveLatestMsg socket next msg send receipt status: ${MSG_STATE.RECEIVED} msgSn: ${pbMsg.pbCommData.msgSn}',
                  );

                  /// 如果是别人发的，则回个已收到
                  sendReceiptMsg(
                    pbMsg.pbCommData,
                    beginTime: Int64(0),
                    state: MSG_STATE.RECEIVED,
                  );
                }
              }
            }
          }
        },
      ).catchError(
        (error) {
          LoggerManager().error(
            '私聊消息存储失败 ======> userId: $userId msgSn: ${pbMsg.pbCommData.msgSn.toInt()} \n error: $error',
          );
        },
      );
    } else {
      if (pbMsg.pbName == 'pb_pub.MsgRecallReq') {
        final notify = MsgRecallReq();
        notify.mergeFromBuffer(pbMsg.pbData);
        final srcUserId = notify.msgOwnerId.toInt();
        privateMsg.recallUid = srcUserId;
      }
      privateMsg.userSourceVersion = pbMsg.pbCommData.userSourceVersion.toInt();
      privateMsg.updatedAt = chatSession.updatedAt.toInt() * 1000;
      AppDatabase().objectBox.addPrivateMsg(privateMsg);
      if (pbMsg.pbCommData.needReadReceipt) {
        /// 如果是别人发的，则回个已收到
        sendReceiptMsg(
          pbMsg.pbCommData,
          beginTime: Int64(0),
          state: MSG_STATE.RECEIVED,
        );
      }
    }
  }

  Future<void> getUserInfo(
    int userId, {
    Function(UserModel?)? callback,
  }) async {
    if (userId <= 0) {
      callback?.call(null);
    }
    var userModel = await AppDatabase().objectBox.getUser(userId);
    if (null != userModel) {
      callback?.call(userModel);
    }
    const JsonEncoder encoder = JsonEncoder.withIndent('  ');
    final reqUrl =
        '${ConfigMgr().config!.cfgImInterApiUrl}/GetFriendInfo?imId=$userId';
    final response = await http.get(reqUrl);
    final prettyPrint = encoder.convert(
      response.data as Map<String, dynamic>,
    );
    final dataMap = response.data as Map<String, dynamic>;
    final result = asT<int>(dataMap, 'result');
    if (result == 0) {
      userModel = UserModel.fromJson(
        dataMap['data'] as Map<String, dynamic>,
      );
      callback?.call(userModel);
      AppDatabase().objectBox.addUser(userModel);
    }

    LoggerManager().debug(
      'getUserInfo response ------> \n request url: ${response.realUri} \n $prettyPrint',
    );
  }

  Future<void> getGroupInfo(
    int groupId, {
    Function(GroupModel?)? callback,
  }) async {
    if (groupId <= 0) {
      callback?.call(null);
    }
    // LoggerManager().error('getGroupInfo --------- groupId: $groupId');
    var groupModel = await AppDatabase().objectBox.getGroup(groupId);
    // if (null != groupModel) {
    //   callback?.call(groupModel);
    // }
    try {
      final response = await RpcCallImOuterApi(
        '/pb_grpc_group.Group/GroupDetail',
        GroupDetailReq(),
        MakePBCommData(
          aimId: Int64(AppUserInfo.instance.imId),
          groupId: Int64(groupId),
          toService: Service.group,
        ),
      );
      if (response.statusCode == 200) {
        final rsp = GroupDetailRsp()..mergeFromBuffer(response.bodyBytes);
        LoggerManager().error(
          'getGroupInfo response ------> \n $rsp',
        );
        if (rsp.disbanded) {
          /// 群已解散
        } else {
          final dataMap = <String, dynamic>{
            'groupId': groupId,
            'name': rsp.name,
            'top': rsp.top,
            'inviteRoleLimit': rsp.inviteRoleLimit,
            'memberCountLimit': rsp.memberCountLimit,
            'notice': rsp.notice,
            'avatar': rsp.avatar,
            'disbanded': rsp.disbanded,
            'remark': rsp.remark,
            'memberChatBannedStatus': rsp.memberChatBannedStatus,
            'newMemberRemindClosed': rsp.newMemberRemindClosed,
            'scanCodeJoinGroupSwitchStatus': rsp.scanCodeJoinGroupSwitchStatus,
            'scanCodeJoinGroupParam': rsp.scanCodeJoinGroupParam,
            'banned': rsp.banned,
            'memberCount': rsp.memberCount,
            'noticeVersion': rsp.noticeVersion,
            'freeJoin': rsp.freeJoin,
            'groupType': rsp.groupType.value,
            'ownerId': rsp.ownerId.toInt(),
          };
          groupModel = GroupModel.fromJson(dataMap);
          callback?.call(groupModel);
          AppDatabase().objectBox.addGroup(groupModel);
        }
      }
    } catch (error) {
      LoggerManager().error(
        'getGroupInfo error ------> \n $error',
      );
    }
  }

  /// Future<void> fetchUserInfo(int userId) async {
//     var dio = Dio();
//     // 没有用户，到网上去找
//     var url =
//         "${ConfigMgr().config!.cfgImInterApiUrl}/GetFriendInfo?imId=${userId}";
//     log("url=${url}");
//     var rsp = await dio.get(url); //$http.get(uri);
//     // log(rsp.toString());
//     if (rsp.data["result"] != 0 || rsp.data["nickname"] == "") {
//       // showToast("用户不存在");
//       // throw "用户不存在";
//       return;
//     }
//     LoggerManager().debug('fetchUserInfo userId ============> ${rsp.data["data"]}');
//     log(rsp);
//     log(rsp.data["data"]);
//     initFromNetData(rsp.data["data"]);
//     log(this);
//     // 存储到db去
//     mapUserInfo[userId] = (this);
//     await dbAddUser(this);
//   }

  Future<void> setGroupProp(
    BuildContext context, {
    required int groupId,
    Function()? callback,
  }) async {
    final req = SetGroupPropReq(
      key: 'forbiddenAddFriendsToEachOther',
    );
    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo().imId),
      groupId: Int64(groupId),
      toService: Service.group,
    );
    http1.Response response = await RpcCallImOuterApi(
      '/pb_grpc_group.Group/SetGroupProperty',
      req,
      pbCommData,
    ).catchError((err) {
      return http1.Response("$err", 500);
    });
    if (response.statusCode == 200) {
      final rsp = CommRsp();
      rsp.mergeFromBuffer(response.bodyBytes);
      if (rsp.result == ErrCode.SUCCESS) {
        if (null != callback) {
          callback();
        }
      }
    } else {
      LoggerManager()
          .debug('SetGroupPropReq forbiddenAddFriendsToEachOther error');
    }
  }

  Future<bool> updateGroupAvatar(
    int groupId,
    String avatar,
  ) async {
    try {
      LoadingDialog.show();
      EditAvatarReq req = EditAvatarReq();
      req.avatar = avatar;
      $http.Response response = await RpcCallImOuterApi(
        '/pb_grpc_group.Group/EditAvatar',
        req,
        MakePBCommData(
          aimId: Int64(AppUserInfo().imId),
          groupId: Int64(groupId),
          toService: Service.group,
        ),
      ).catchError((err) {
        return $http.Response("$err", 500);
      });

      LoadingDialog.dismiss();

      if (response.statusCode == 200) {
        // 更新群组头像
        return true;
      }
      return false;
    } catch (error) {
      LoadingDialog.dismiss();
      return false;
    }
  }
}
