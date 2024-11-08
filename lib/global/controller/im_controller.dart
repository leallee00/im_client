import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:quliao/db/database.dart';
import 'package:fixnum/fixnum.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/db/obox/model/conversation_model.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/im/im_client.dart';
import 'package:quliao/models/msg_struct.dart';
import 'package:quliao/models/sound_effect/sound_effect.dart';
import 'package:quliao/models/sound_effect/type_def.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/modules/contacts/contacts_page_controller.dart';
import 'package:quliao/modules/conversation/enum/im_conversation_listener.dart';
import 'package:quliao/modules/conversation/models/lw_conversation.dart';
import 'package:quliao/modules/conversation/repository/im_conversation_repository.dart';
import 'package:quliao/pages/chat_private/chat.dart';
import 'package:quliao/pb/pb_msg/gate/gate.pb.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart';
import 'package:quliao/pages/chat_group/controller/group_list_controller.dart';
import 'package:quliao/pb/pb_msg/user_center/userCenter.pb.dart'
    hide FriendInfo;
import 'package:quliao/pb/pb_pub/error_code.pbenum.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/pub-def.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/utils/toast/toast.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

import '../../models/user/friendInfo.dart';
import '../../pb/pb_msg/friend/friend.pb.dart';
import '../../pb/pb_msg/offline_msg/offlineMsg.pbenum.dart';
import '../../pb/pb_pub/comm.pb.dart';

class ImController extends GetxController {
  static ImController get to => Get.find();
  final ImConversationRepository _repository = ImConversationRepository();

  IMConversationListener? _conversationListener;

  IMConversationListener? get conversationListener => _conversationListener;

  final RxString _currentPlayedMsgId = ''.obs;

  RxString get currentAudioMsgId => _currentPlayedMsgId;

  final Map<String, int> redPacketId = {};

  set currentPlayedMsgId(String value) {
    _currentPlayedMsgId.value = value;
  }

  @override
  void onInit() {
    super.onInit();
    eventBus.on<EventOnNetMsg>().listen((event) async {
      if (event.pbMsg.pbName.trim() != 'pb_pub.HeartBeat') {
        LoggerManager().debug(
          'imController event.pbMsg.pbName ==========> ${event.pbMsg.pbName}',
        );
      }
      if (event.pbMsg.pbName.trim() == 'pb_pub.CommRsp') {
        final commRsp = CommRsp()..mergeFromBuffer(event.pbMsg.pbData);
        int errorCode = commRsp.result.value;
        final statusCode = commRsp.status.code;
        if (statusCode > errorCode) {
          errorCode = statusCode;
        }
        LoggerManager().debug(
          'imController commRsp error code: $errorCode msg: ${commRsp.status.message}',
        );
        final codeMsgMap = GlobalController.to.errorSource.value?.codeMsgMap;
        if (null != codeMsgMap && errorCode != 0) {
          final errorMessage = codeMsgMap[errorCode];
          if (null != errorMessage && codeMsgMap.isNotEmpty) {
            ToastUtil.show(errorMessage);
          }
        }
      } else if (event.pbMsg.pbName.trim() ==
          'pb_msg_group.CreateGroupNotify') {
        final groupId = event.pbMsg.pbCommData.groupId.toInt();
        final msgSn = event.pbMsg.pbCommData.msgSn.toInt();
        final groupMsgSn = event.pbMsg.pbCommData.groupMsgSn.toInt();
        LoggerManager().debug(
            'imController time ===========> ${event.pbMsg.pbCommData.time.toInt()}');
        if (Get.isRegistered<GroupListController>()) {
          GroupListController.to.HandleMsg();
        } else {
          Get.put(GroupListController());
        }
        final conversation = await getConversationById(groupId);
        if (null == conversation) {
          final dataMap = <String, dynamic>{
            'session': groupId,
            'lastMsgStatus': MSG_STATE.SEND.value,
            'sessionType': CHAT_SESSION_TYPE.CHAT_SESSION_TYPE_GROUP_CHAT.value,
            'srcId': AppUserInfo().imId,
            'pbName': event.pbMsg.pbName,
            'pbData': event.pbMsg.pbData,
            'userId': AppUserInfo().imId,
            'pbCommData': event.pbMsg.pbCommData.writeToBuffer(),
            'newMsgCount': 1,
            'updatedAt': DateTime.now().millisecondsSinceEpoch,
          };
          final conversation = ConversationModel.fromJson(dataMap);
          AppDatabase().objectBox.addConversation(conversation);
          conversationListener?.onConversationCreated(conversation);
          // final dataMap = <String, dynamic>{
          //   'chatId': groupId.toInt(),
          //   'msgSn': msgSn,
          //   'groupMsgSn': groupMsgSn,
          //   'chatType': CHAT_TYPE.GROUP.index,
          //   'newMsgCount': 0,
          //   'msgTips': '',
          //   'msgTime': DateTime.fromMillisecondsSinceEpoch(
          //     event.pbMsg.pbCommData.time.toInt() * 1000,
          //   ).toString(),
          //   'createTime': DateTime.fromMillisecondsSinceEpoch(
          //     event.pbMsg.pbCommData.time.toInt() * 1000,
          //   ).toString(),
          // };
          // await ImController.to.insertOrUpdate(
          //   groupId.toInt(),
          //   dataMap: dataMap,
          //   conversationType: CHAT_TYPE.GROUP,
          // );
        }
      } else if (event.pbMsg.pbName.trim() == 'pb_pub.MsgReceipt') {
        final groupId = event.pbMsg.pbCommData.groupId.toInt();
        final msgReceipt = MsgReceipt()..mergeFromBuffer(event.pbMsg.pbData);
        final msgState = msgReceipt.state;
        LoggerManager().error(
          'imController groupId: $groupId msgSn: ${event.pbMsg.pbCommData.msgSn} groupMsgSn: ${event.pbMsg.pbCommData.groupMsgSn} name: ${msgState.name} msgState: ${msgState.value}',
        );
        Future.delayed(const Duration(seconds: 1), () {
          updateGroupMsgState1(
            groupId,
            event.pbMsg.pbCommData.msgSn,
            msgState,
            EnMsgFrom.local,
            groupMsgSn: event.pbMsg.pbCommData.groupMsgSn,
          );
          // AppDatabase()
          //     .groupMessageDao
          //     ?.query(
          //       groupId: groupId,
          //       msgSn: event.pbMsg.pbCommData.msgSn.toInt(),
          //     )
          //     .then((value) {
          //   if (value.isNotEmpty) {
          //     updateGroupMsgState(
          //       event.pbMsg.pbCommData.msgSn,
          //       msgState,
          //       EnMsgFrom.local,
          //     );
          //   }
          // });
        });
      } else if (event.pbMsg.pbName.trim() ==
          'pb_msg_userCenter.RedPacketNotify') {
        LoggerManager().debug(
          'RedPacketNotify --- groupId: ${event.pbMsg.pbCommData.groupId} groupMsgSn: ${event.pbMsg.pbCommData.groupMsgSn}',
        );
        final redPacketNotify = RedPacketNotify()
          ..mergeFromBuffer(event.pbMsg.pbData);
        LoggerManager().error(
          'RedPacketNotify --- pbCommData: ${event.pbMsg.pbCommData} redPacketNotify: ${redPacketNotify.toString()}',
        );
        SoundEffect().playWithType(SoundEffectType.msgReceived);
        final redPacketInfo = redPacketNotify.info;
        final msgSn = '${event.pbMsg.pbCommData.msgSn}';
        if (redPacketId.containsKey(msgSn)) {
          return;
        } else {
          redPacketId[msgSn] = redPacketInfo.redPacketId.toInt();
        }
        final rsp = RedPacketInfoRsp(
          data: redPacketNotify.info,
        );
        if (redPacketInfo.grantScene == GrantScene.GroupChat) {
          final groupText = IMClient.buildMessageContent(
            redPacketInfo.aimId.toInt(),
            '',
            data: rsp,
            groupId: event.pbMsg.pbCommData.groupId,
            conversationType: CHAT_TYPE.GROUP,
            messageType: types.MessageType.custom,
          );
          final pbCommData = IMClient.buildPBCommData(
            redPacketInfo.aimId.toInt(),
            CHAT_TYPE.GROUP,
            groupId: event.pbMsg.pbCommData.groupId,
            msgSn: msgSn,
          );
          if (redPacketInfo.grantUserId != Int64(AppUserInfo.instance.imId)) {
            pbCommData.srcId = redPacketInfo.grantUserId;
          }
          pbCommData.groupMsgSn = event.pbMsg.pbCommData.groupMsgSn;

          PBMessage pbMsg = PBMessage();
          pbMsg.hashKey = '${event.pbMsg.pbCommData.groupId}';
          pbMsg.pbCommData = pbCommData;
          pbMsg.pbCommData.userSourceVersion = AppUserInfo().userSourceVersion;
          pbMsg.pbData = groupText.writeToBuffer();
          pbMsg.pbName = groupText.info_.qualifiedMessageName;
          pbMsg.pbCommData.time = GetServerTime();
          pbMsg.service = pbCommData.serviceType.name;

          // dbSaveMsg(
          //   pbMsg,
          //   state: MSG_STATE.READ,
          //   redPacketId: redPacketInfo.redPacketId.toInt(),
          // ).then(
          //   (value) async {
          //     types.User? user;
          //     if (redPacketInfo.grantUserId !=
          //         Int64(AppUserInfo.instance.imId)) {
          //       user = await getTarget(redPacketInfo.grantUserId.toInt());
          //     }
          //     eventBus.fire(
          //       NotifyRedPacket(
          //         message: IMClient.buildMessage(
          //           redPacketInfo.aimId.toInt(),
          //           '',
          //           msgSn,
          //           data: rsp,
          //           targetUser: user,
          //           messageType: types.MessageType.custom,
          //           groupId: redPacketInfo.aimId,
          //           conversationType: CHAT_TYPE.GROUP,
          //         ),
          //         conversationId: redPacketInfo.aimId.toInt(),
          //       ),
          //     );
          //   },
          // );
        } else {
          final chatText = IMClient.buildMessageContent(
            redPacketInfo.aimId.toInt(),
            '',
            data: rsp,
            conversationType: CHAT_TYPE.PRIVATE,
            messageType: types.MessageType.custom,
          );
          final pbCommData = IMClient.buildPBCommData(
            redPacketInfo.aimId.toInt(),
            CHAT_TYPE.PRIVATE,
            msgSn: msgSn,
          );

          PBMessage pbMsg = PBMessage();
          pbMsg.hashKey = redPacketInfo.aimId.toString();
          pbMsg.pbCommData = pbCommData;
          pbMsg.pbCommData.userSourceVersion = AppUserInfo().userSourceVersion;
          pbMsg.pbData = chatText.writeToBuffer();
          pbMsg.pbName = chatText.info_.qualifiedMessageName;
          pbMsg.pbCommData.time = GetServerTime();
          pbMsg.service = pbCommData.serviceType.name;

          if (redPacketInfo.grantUserId != Int64(AppUserInfo.instance.imId)) {
            pbCommData.srcId = redPacketInfo.grantUserId;
          }

          // dbSaveMsg(
          //   pbMsg,
          //   state: MSG_STATE.READ,
          //   redPacketId: redPacketInfo.redPacketId.toInt(),
          // ).then(
          //   (value) async {
          //     types.User? user;
          //     if (redPacketInfo.grantUserId !=
          //         Int64(AppUserInfo.instance.imId)) {
          //       user = await getTarget(redPacketInfo.grantUserId.toInt());
          //     }
          //     final srcId = event.pbMsg.pbCommData.srcId.toInt();
          //     int conversationId = event.pbMsg.pbCommData.srcId.toInt();
          //     if (srcId == AppUserInfo.instance.imId) {
          //       conversationId = event.pbMsg.pbCommData.aimId.toInt();
          //     }
          //     eventBus.fire(
          //       NotifyRedPacket(
          //         message: IMClient.buildMessage(
          //           redPacketInfo.aimId.toInt(),
          //           '',
          //           msgSn,
          //           data: rsp,
          //           targetUser: user,
          //           conversationType: CHAT_TYPE.PRIVATE,
          //           messageType: types.MessageType.custom,
          //         ),
          //         conversationId: conversationId,
          //       ),
          //     );
          //   },
          // );
        }
      } else if (event.pbMsg.pbName.trim() == 'pb_msg_friend.ApplyAnswerRsp') {
        final isRegistered = Get.isRegistered<ContactsPageController>(
          tag: 'contacts_page',
        );
        if (isRegistered) {
          ContactsPageController.to.loadData();
        }
      } else if (event.pbMsg.pbName.trim() ==
          'pb_msg_userCenter.RedPacketReceivedNotify') {
        final redPacketNotify = RedPacketReceivedNotify()
          ..mergeFromBuffer(event.pbMsg.pbData);
        LoggerManager().debug(
          'RedPacketReceivedNotify --- groupId: ${event.pbMsg.pbCommData.groupId} groupMsgSn: ${event.pbMsg.pbCommData.groupMsgSn} \n notify: $redPacketNotify',
        );
        final groupId = event.pbMsg.pbCommData.groupId.toInt();
        if (groupId > 0) {
          final mapList =
              await AppDatabase().groupMessageDao?.singleByRedPacketId(
                        groupId,
                        redPacketNotify.redPacketId.toInt(),
                      ) ??
                  [];
          if (mapList.isNotEmpty) {
            RedPacketInfoRsp? rsp;

            final groupChat = ChatGroupData();
            await groupChat.initWithMap(mapList.first);
            final pbDataMsg = groupChat.pbDataMsg;
            final pbMessage = groupChat.pbHeadMsg;
            if (pbDataMsg is GroupChat) {
              // pbDataMsg.data = value.writeToJson();
              LoggerManager().error(
                'RedPacketReceivedNotify pbDataMsg ========> ${pbDataMsg.data}',
              );
              rsp = RedPacketInfoRsp.fromJson(pbDataMsg.data);
              rsp.data.status = RedPacketStatus.Completed;
              pbDataMsg.data = rsp.writeToJson();
            }
            pbMessage.pbData = pbDataMsg.writeToBuffer();
            try {
              await AppDatabase().groupMessageDao?.updateByRedPacketId(
                    groupId: groupId,
                    redPacketId: redPacketNotify.redPacketId.toInt(),
                    pbDataValue: pbMessage.writeToBuffer(),
                  );
              if (null != rsp) {
                eventBus.fire(
                  UpdateRedPacketState(id: '${groupChat.msgSn}', data: rsp),
                );
              }
            } catch (error) {
              LoggerManager().error(error.toString());
            }
          }
        } else {
          final mapList =
              await AppDatabase().privateMsgDao?.singleByRedPacketId(
                        event.pbMsg.pbCommData.srcId.toInt(),
                        redPacketNotify.redPacketId.toInt(),
                      ) ??
                  [];
          if (mapList.isNotEmpty) {
            RedPacketInfoRsp? rsp;

            final messageMap = mapList.first;
            final privateChat = ChatPrivateData();
            await privateChat.initWithMap(messageMap);
            final pbDataMsg = privateChat.pbServiceMsg;
            final pbMessage = privateChat.pbMsg;
            if (pbDataMsg is ChatText) {
              // pbDataMsg.data = value.writeToJson();
              LoggerManager().error(
                'RedPacketReceivedNotify pbDataMsg ========> ${pbDataMsg.data}',
              );
              rsp = RedPacketInfoRsp.fromJson(pbDataMsg.data);
              rsp.data.status = RedPacketStatus.Completed;
              pbDataMsg.data = rsp.writeToJson();
            }
            pbMessage.pbData = pbDataMsg.writeToBuffer();
            try {
              await AppDatabase().privateMsgDao?.updateByRedPacketId(
                    friendId: event.pbMsg.pbCommData.srcId.toInt(),
                    redPacketId: redPacketNotify.redPacketId.toInt(),
                    pbDataValue: pbMessage.writeToBuffer(),
                  );
              if (null != rsp) {
                eventBus.fire(
                  UpdateRedPacketState(id: '${privateChat.msgSn}', data: rsp),
                );
              }
            } catch (error) {
              LoggerManager().error(error.toString());
            }
          }
        }
      } else if (event.pbMsg.pbName == 'pb_msg_friend.DeleteFriendReq') {
        final notify = DeleteFriendReq()..mergeFromBuffer(event.pbMsg.pbData);
        dbDelFriend(event.pbMsg.pbCommData.srcId.toInt());
      }
    });
  }

  Future<types.User> getTarget(
    int targetId,
  ) async {
    final friendInfo = FriendInfo();
    await friendInfo.LoadFriendData(targetId);
    return types.User(
      id: '$targetId',
      firstName: friendInfo.userInfo.nickName,
      imageUrl:
          "${friendInfo.userInfo.avatar}?x-oss-process=image/resize,m_fill,h_100,w_100",
    );
  }

  // Future<void> init(
  //   ImConversationRepository? repository,
  // ) async {
  //   _repository = repository;
  // }

  Future<void> updateLatestMsg(
    int conversationId,
  ) async {
    final conversation = await getConversationById(conversationId);
    if (null != conversation) {
      final msgTips = await _repository.getLatestMsg(conversationId);
      LoggerManager().debug('imController msgTips =======> $msgTips');
      if (null != msgTips && msgTips.isNotEmpty) {
        _repository.updateConversation(
          conversationId,
          dataMap: <String, dynamic>{
            'msgTips': msgTips,
          },
        );
      }
    }
  }

  Future<void> addConversationListener(IMConversationListener? listener) async {
    _conversationListener = listener;
  }

  Future<void> selectConversation(
    int conversationId,
  ) async {
    _conversationListener?.onConversationSelected(
      conversationId,
    );
  }

  Future<ConversationModel?> getConversationById(
    int conversationId,
  ) async {
    return await _repository.singleConversation(conversationId);
  }

  Future<void> updateConversationName(
    int conversationId,
    String name,
  ) async {
    final conversation = await getConversationById(conversationId);
    if (null != conversation) {
      _repository.updateConversation(
        conversationId,
        dataMap: <String, dynamic>{
          'name': name,
        },
      );
    }
  }

  Future<void> updateConversationMsgTips(
    int conversationId,
    String msgTips,
  ) async {
    final conversation = await getConversationById(conversationId);
    if (null != conversation) {
      _repository.updateConversation(
        conversationId,
        dataMap: <String, dynamic>{
          'msgTips': msgTips,
          'msgTime': DateTime.now().toString(),
        },
      );
    }
  }

  Future<void> updateConversationPinnedStatus(
    int conversationId,
    int top,
  ) async {
    final conversation = await getConversationById(conversationId);
    if (null != conversation) {
      conversation.top = top;
      AppDatabase().objectBox.addConversation(conversation);
      ImController.to.conversationListener?.onConversationUpdated(
        conversation,
      );
      // _repository.updateConversation(
      //   conversationId,
      //   dataMap: <String, dynamic>{
      //     'top': top,
      //   },
      // );
    }
  }

  Future<void> updateConversationDisturbStatus(
    int conversationId,
    int noDisturb,
  ) async {
    final conversation = await getConversationById(conversationId);
    if (null != conversation) {
      _repository.updateConversation(
        conversationId,
        dataMap: <String, dynamic>{
          'noDisturb': noDisturb,
        },
      );
    }
  }

  Future<void> updateConversationRemark(
    int conversationId,
    String remark,
  ) async {
    final conversation = await getConversationById(conversationId);
    if (null != conversation) {
      _repository.updateConversation(
        conversationId,
        dataMap: <String, dynamic>{
          'remark': remark,
        },
      );
    }
  }

  Future<ConversationModel?> insertEmpty(
    int conversationId, {
    required Map<String, dynamic> dataMap,
    CHAT_TYPE conversationType = CHAT_TYPE.PRIVATE,
  }) async {
    return _repository.insertEmpty(
      conversationId,
      dataMap: dataMap,
      conversationType: conversationType,
    );
  }

  Future<LwConversation?> updateConversationGroupMsgSn(
    int conversationId, {
    required Map<String, dynamic> dataMap,
  }) async {
    return _repository.updateConversationGroupMsgSn(
      conversationId,
      dataMap: dataMap,
    );
  }

  Future<ConversationModel?> insertOrUpdate(
    int conversationId, {
    required Map<String, dynamic> dataMap,
    bool mySend = false,
    CHAT_TYPE conversationType = CHAT_TYPE.PRIVATE,
  }) async {
    return _repository.insertOrUpdate(
      conversationId,
      dataMap: dataMap,
      mySend: mySend,
      conversationType: conversationType,
    );
  }

  Future<void> delete(ConversationModel conversation) async {
    await _repository.delete(conversation);
    _conversationListener?.onConversationDeleted(
      conversation.conversationId,
    );
  }

  Future<int> pin(ConversationModel conversation) async {
    final result = await _repository.pin(conversation) ?? -1;
    conversation.top = conversation.isPinned ? 0 : 1;
    if (result > 0) {
      _conversationListener?.onConversationUpdated(
        conversation,
      );
    }
    return result;
  }
}
