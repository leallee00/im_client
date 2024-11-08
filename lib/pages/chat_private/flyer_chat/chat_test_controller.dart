import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:get/get.dart';
import 'package:quliao/db/dao/private_msg.dart';
import 'package:quliao/db/database.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/db/obox/model/private_msg_model.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/flutter_chat_ui/flutter_chat_ui.dart';
import 'package:quliao/im/im_client.dart';
import 'package:quliao/models/msg_struct.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/modules/conversation/repository/private_chat_repository.dart';
import 'package:quliao/modules/mine/mine_page_controller.dart';
import 'package:quliao/modules/red_packet/record/red_packet_record_page.dart';
import 'package:quliao/modules/red_packet/repository/red_packet_repository.dart';
import 'package:quliao/modules/red_packet/widgets/receive_red_packet_dialog.dart';
import 'package:quliao/modules/red_packet/widgets/timeout_red_packet_dialog.dart';
import 'package:quliao/net/msg_handler_mgr.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pb/pb_msg/gate/gate.pb.dart';
import 'package:quliao/pb/pb_msg/user_center/userCenter.pb.dart'
    hide FriendInfo;
import 'package:quliao/pb/pb_msg/user_center/userCenter.pbenum.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/utils/toast/toast.dart';

import '../../../models/user/friendInfo.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

import '../../../pb/pb_msg/friend/friend.pb.dart';
import '../../../pb/pb_pub/comm.pbenum.dart';
import 'chat_private_change_to_message.dart';

class ChatTestController extends GetxController {
  static ChatTestController to(String tag) => Get.find(tag: tag);

  int page = 1;
  int offset = 0;
  int pageSize = 20;
  var loading = true.obs;

  final RxInt rxMessageCount = RxInt(0);

  var friendInfo = FriendInfo().obs;

  var isMultiSelect = false.obs;
  var multiSelectedMessageList = <types.Message>[].obs;

  final _redPacketRepository = RedPacketRepository();
  final _privateChatRepository = PrivateChatRepository();

  final PrivateMsgDao? _privateMsgDao = AppDatabase().privateMsgDao;

  void load(int target) async {
    final friendInfo = FriendInfo();
    await friendInfo.LoadFriendData(target);
    this.friendInfo.value = friendInfo;
    loadMessages(target);
  }

  /// 更新黑名单状态
  void updateBlockState(
    bool value,
  ) {
    friendInfo.value.UpdateField(
      'blocked',
      value,
      Friend()..blocked = value,
    );
  }

  void addSelectedMessage(
    types.Message message,
    bool changed,
  ) {
    if (changed) {
      multiSelectedMessageList.add(message);
    } else {
      multiSelectedMessageList.remove(message);
    }
  }

  void updateSelectStatus() {
    isMultiSelect.value = !isMultiSelect.value;
    if (!isMultiSelect.value) {
      multiSelectedMessageList.clear();
    }
  }

  void collectMessage(
    int friendId,
    types.Message message,
  ) async {
    final msgSn = int.parse(message.id);
    final value = await AppDatabase().collectionsDao?.queryByMsgSn(msgSn);
    if (null != value && value.isNotEmpty) {
      ToastUtil.show('已收藏');
    } else {
      try {
        final list = await AppDatabase().privateMsgDao?.queryByMsgSn(
                  conversationId: friendId,
                  msgSn: msgSn,
                ) ??
            [];
        if (list.isNotEmpty) {
          final dataMap = list.first;

          // <String, dynamic>{
          //       'friendId': friendId,
          //       'msgSn': pbMsg.pbCommData.msgSn.toInt(),
          //       'srcId': pbMsg.pbCommData.srcId.toInt(),
          //       'aimId': pbMsg.pbCommData.aimId.toInt(),
          //       'appId': pbMsg.pbCommData.appId.toInt(),
          //       'appUserId': pbMsg.pbCommData.appUserId,
          //       'clientType': pbMsg.pbCommData.srcClientType.value,
          //       'msgStatus': msgState.value, //MSG_STATE'
          //       'pbData': pbMsg.writeToBuffer(),
          //       // 'msgTips,':msgTips, // 简短提示
          //       'msgTime': DateTime.fromMillisecondsSinceEpoch(
          //               pbMsg.pbCommData.time.toInt() * 1000)
          //           .toString(),
          //       'createTime': DateTime.now().toString(), // 创建消息的时间
          //     }

          final value = <String, dynamic>{
            'friendId': friendId,
            'srcId': dataMap['srcId'],
            'aimId': dataMap['aimId'],
            'msgSn': dataMap['msgSn'],
            'appId': dataMap['appId'],
            'appUserId': dataMap['appUserId'],
            'clientType': dataMap['clientType'],
            'pbData': dataMap['pbData'],
            'msgTime': dataMap['msgTime'],
            'msgStatus': dataMap['msgStatus'],
            'createTime': DateTime.now().toString(),
          };

          await AppDatabase().collectionsDao?.insert(value);
          ToastUtil.show('收藏成功');
        }
      } catch (error) {
        debugPrint('error =========> $error');
      }
    }
  }

  Future<void> getRedPacketInfo(
    BuildContext context,
    int redPacketId,
    String messageId,
  ) async {
    _redPacketRepository.getRedPacketInfo(
      redPacketId,
      callback: (value) {
        // if (value.data.aimId.toInt() == AppUserInfo.instance.imId) {
        //   ReceiveRedPacketDialog.show(context);
        // }
        // final redPacketStatus = value.data.status;
        // if (redPacketStatus == RedPacketStatus.Going) {
        //   ReceiveRedPacketDialog.show(context, value.data);
        // } else if (redPacketStatus == RedPacketStatus.Overtime) {
        //   /// 超时
        //   TimeoutRedPacketDialog.show(context, value.data);
        // }

        final msgSn = int.parse(messageId);
        final isMeReceived = value.isMeReceived;
        final redPacketStatus = value.data.status;
        final redPacketId = value.data.redPacketId.toInt();
        if (isMeReceived) {
          Get.to(
            RedPacketRecordPage(redPacketId: redPacketId),
          );
        } else {
          if (redPacketStatus == RedPacketStatus.Going) {
            ReceiveRedPacketDialog.show(
              context,
              value.data,
              callback: (_) {
                Get.to(
                  RedPacketRecordPage(redPacketId: redPacketId),
                );
                value.isMeReceived = true;
                updateRedPacketMessage(msgSn, value);
                MinePageController.to.getWalletInfo();
              },
            );
          } else if (redPacketStatus == RedPacketStatus.Completed) {
            Get.to(
              RedPacketRecordPage(redPacketId: redPacketId),
            );
          } else if (redPacketStatus == RedPacketStatus.Overtime) {
            /// 超时
            Get.to(
              RedPacketRecordPage(redPacketId: redPacketId),
            );
          }
        }
        updateRedPacketMessage(msgSn, value);
      },
    );
  }

  int get friendId => friendInfo.value.friendId;

  Future<void> updateRedPacketMessage(
    int msgSn,
    RedPacketInfoRsp value,
  ) async {
    final list = await _privateMsgDao?.singleByMsgSn(friendId, msgSn) ?? [];
    if (list.isNotEmpty) {
      final messageMap = list.first;
      final privateChat = ChatPrivateData();
      await privateChat.initWithMap(messageMap);
      final pbDataMsg = privateChat.pbServiceMsg;
      final pbMessage = privateChat.pbMsg;
      if (pbDataMsg is ChatText) {
        pbDataMsg.data = value.writeToJson();
      }
      pbMessage.pbData = pbDataMsg.writeToBuffer();
      try {
        await _privateMsgDao?.updatePbData(
          friendId: friendId,
          msgSn: msgSn,
          pbDataValue: pbMessage.writeToBuffer(),
        );
      } catch (error) {
        LoggerManager().error(error.toString());
      }
      eventBus.fire(
        UpdateRedPacketState(id: '$msgSn', data: value),
      );
    }
  }

  // int get offset => (page - 1) * pageSize;
  var messageList = <types.Message>[].obs;

  Future<void> loadMore(
    int userId,
  ) async {
    page += 1;
    final preOffset = offset;
    offset += 20;

    LoggerManager().error('loadMore offset ========> $offset');

    final messages = <types.Message>[];

    final cacheMessages = await _privateChatRepository.queryLocalMessages(
      userId,
      offset: offset,
    );

    final localMessages = await mapToMessages(
      cacheMessages,
      localMessage: true,
    );

    messages.addAll(localMessages);
    loading.value = false;
    messageList.addAll(messages);

    final remoteMessages = await _privateChatRepository.queryRemoteMessages(
      getSessionId(userId),
      msgSnMessageMap,
      page: page,
    );
    final remoteMapMessage = await mapToMessages(
      remoteMessages,
      localMessage: false,
    );
    if (remoteMapMessage.isNotEmpty) {
      messageList.addAll(remoteMapMessage);
    } else {
      // page -= 1;
      // offset = preOffset;
    }

    rxMessageCount.value = messageList.length;

    LoggerManager().error('loadMore message count => $rxMessageCount');
  }

  Future<void> loadMessages(
    int userId,
  ) async {
    if (page <= 1) {
      loading.value = true;
    }
    final preOffset = offset;
    offset = (page - 1) * pageSize;
    final messages = <types.Message>[];

    if (page == 1) {
      final cacheMessages = await _privateChatRepository.queryLocalMessages(
        userId,
        offset: offset,
      );

      final localMessages = await mapToMessages(
        cacheMessages,
        localMessage: true,
      );

      messages.addAll(localMessages);
      loading.value = false;
      messageList.addAll(messages);

      final remoteMessages = await _privateChatRepository.queryRemoteMessages(
        getSessionId(userId),
        msgSnMessageMap,
      );
      final remoteMapMessage = await mapToMessages(
        remoteMessages,
        localMessage: false,
      );
      if (remoteMapMessage.isNotEmpty) {
        messageList.addAll(remoteMapMessage);
      } else {
        // page -= 1;
        // offset = preOffset;
      }
    }

    rxMessageCount.value = messageList.length;
    LoggerManager().error('loadMessages message count => $rxMessageCount');
  }

  Future<void> sendTextMessage(
    int userId,
    String text,
  ) async {
    final textMessage = await IMClient.sendTextMessage(
      userId,
      text,
    );
    if (textMessage is types.TextMessage) {
      messageList.insert(0, textMessage);
      offset += 1;
      rxMessageCount.value = messageList.length;
    }
  }

  final Map<String, types.Message> msgSnMessageMap = <String, types.Message>{};

  Future<List<types.Message>> mapToMessages(
    List<PrivateMsgModel> dataList, {
    bool localMessage = true,
  }) async {
    List<types.Message> messageList = [];
    int index = 0;

    for (var cpd in dataList) {
      index++;

      try {
        var d = ChatPrivateData();
        // 等待加载用户信息
        await d.generate(cpd);
        // LoggerManager().error('generate msgType ======> ${d.msgType}');

        final messageMap = await changeToMessageMap(d);
        types.Message message = types.Message.fromJson(messageMap);
        if (!msgSnMessageMap.containsKey(message.id)) {
          msgSnMessageMap[message.id] = message;
          if (message.status == types.Status.sending) {
            final dateTime =
                DateTime.fromMillisecondsSinceEpoch(message.createdAt!);
            final nowDateTime = DateTime.now();

            final differenceDuration = nowDateTime.difference(dateTime);
            final differenceSeconds = differenceDuration.inSeconds;
            if (differenceSeconds > 300) {
              messageMap['status'] = 'error';
              message = types.Message.fromJson(messageMap);
              // DBUpdateMsgState(d.msgSn, MSG_STATE.FAULT, EnMsgFrom.local);
            }
          }
          messageList.add(message);

          /// 已读标志
          if (d.pbMsg.pbCommData.srcId != AppUserInfo.instance.imId &&
              d.pbMsg.pbName != pbNameMsgReceipt &&
              d.msgStatus.value < MSG_STATE.READ.value) {
            sendReceiptMsg(
              d.pbMsg.pbCommData,
              state: MSG_STATE.READ,
              beginTime: Int64(),
            );
          }
        }
      } catch (e) {
        LoggerManager().error(e.toString());
        continue;
      }
    }
    return messageList;
  }
}
