import 'dart:async';

import 'package:get/get.dart';
import 'package:quliao/db/database.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/global/controller/im_controller.dart';
import 'package:quliao/models/Global.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/modules/conversation/models/lw_conversation.dart';
import 'package:quliao/mywedgits/badger/badger.dart';
import 'package:quliao/pages/chat_private/chat.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pub/pub-def.dart';
import 'package:quliao/utils/log/manager.dart';

class UnReadMessageController extends GetxController {
  static UnReadMessageController get to => Get.find();

  final RxInt rxUnReadMsgCount = RxInt(0);

  static const List<String> msgList = [
    pbGroupChat,
    pbChatText,
    redPacket,
  ];
  static const String pbGroupChat = 'pb_msg_group.GroupChat';
  static const String pbChatText = 'pb_msg_gate.ChatText';
  static const String redPacket = 'pb_msg_userCenter.RedPacketNotify';

  StreamSubscription<EventOnNetMsg>? _newMessageStream;
  final GlobalController _globalController = GlobalController.to;

  final StreamController<UnReadMessageCount> _unReadMessageCountController =
      StreamController.broadcast();

  int get _userId => AppUserInfo().imId;

  int get currentConversationId =>
      _globalController.currentConversationId.value;

  Stream<UnReadMessageCount> get unReadMsgCountEventHandler =>
      _unReadMessageCountController.stream;

  final Map<int, PBCommData> unreadMsgMap = <int, PBCommData>{};
  final Map<int, PBCommData> unreadGroupMsgMap = <int, PBCommData>{};

  @override
  void onInit() {
    super.onInit();
    _newMessageStream = eventBus.on<EventOnNetMsg>().listen((event) async {
      final pbCommData = event.pbMsg.pbCommData;
      final srcId = pbCommData.srcId.toInt();
      final aimId = pbCommData.aimId.toInt();
      final groupId = pbCommData.groupId.toInt();
      if (event.pbMsg.pbName != 'pb_pub.HeartBeat') {
        // LoggerManager().error(
        //   'UnReadMessageController pbName: ${event.pbMsg.pbName} userId: $_userId currentConversationId: $currentConversationId srcId: $srcId aimId: $aimId groupId: $groupId from: ${event.enMsgFrom}',
        // );
      }
      if (event.pbMsg.pbName.isEmpty) {
        return;
      }
      if (!msgList.contains(event.pbMsg.pbName)) {
        return;
      }
      // LoggerManager().debug(
      //   'UnReadMessageController pbName: ${event.pbMsg.pbName} userId: $_userId currentConversationId: $currentConversationId srcId: $srcId aimId: $aimId groupId: $groupId from: ${event.enMsgFrom}',
      // );
      if (msgList.contains(pbChatText) || msgList.contains(pbGroupChat)) {
        if (srcId == aimId) {
          return;
        }
      } else {
        if (srcId == AppUserInfo.instance.imId) {
          return;
        }
      }
      if (currentConversationId == -1) {
        /// 说明当前无选中会话
        if (groupId == 0) {
          /// 说明是私聊
          /// 再判断是否是接收消息方
          /// 如果是，则增加未读消息数量
          /// 如果不是，则忽略
          final messageLeft = _userId == aimId;
          if (messageLeft) {
            increaseUnReadMsgCount(pbCommData, srcId);
          }
        } else {
          /// 说明是群聊
          /// 再判断是否是接收消息方
          /// 如果是，则增加未读消息数量
          /// 如果不是，则忽略
          final messageLeft = _userId != srcId;
          if (messageLeft) {
            increaseUnReadMsgCount(pbCommData, groupId);
          }
        }
      } else {
        if (groupId == 0) {
          /// 说明是私聊
          /// 如果是接收方
          /// 判断发送消息人的id和当前会话的id是否相等
          /// 如果相等，则说明是在当前会话
          /// 那么收到消息后，直接清除未读消息数量
          /// 反之，则增加未读消息数量即可
          final messageLeft = _userId == aimId;
          if (messageLeft) {
            if (currentConversationId == srcId) {
              clearUnReadMsgCount(conversationId: srcId);
            } else {
              increaseUnReadMsgCount(pbCommData, srcId);
            }
          } else {
            clearUnReadMsgCount(conversationId: aimId);
          }
        } else {
          /// 说明是群聊
          if (currentConversationId == groupId) {
            /// 说明是当前群聊
            clearUnReadMsgCount(
              conversationId: groupId,
              conversationType: CHAT_TYPE.GROUP,
            );
          } else {
            /// 如果不是当前群聊，则增加未读消息数量
            increaseUnReadMsgCount(pbCommData, groupId);
          }
        }
      }
    });
  }

  String _key(int conversationId) => '${_userId}_${conversationId}_';

  String get keyApply => '${_userId}_new_friend_apply';

  String get keyTotal => '${_userId}_total_msg_count';

  /// 未读数量递增
  void increaseUnReadMsgCount(
    PBCommData pbCommData,
    int conversationId, {
    int msgCount = 1,
    bool groupOffline = false,
  }) async {
    if (groupOffline) {
      if (unreadGroupMsgMap.containsKey(pbCommData.msgSn.toInt())) {
        return;
      }
      if (GlobalController.to.groupIdLatestMsgSnMap.values
          .contains(pbCommData.msgSn.toInt())) {
        unreadGroupMsgMap[pbCommData.msgSn.toInt()] = pbCommData;
        msgCount = msgCount - 1;
        if (msgCount <= 0) {
          return;
        }
      }
    } else {
      if (unreadMsgMap.containsKey(pbCommData.msgSn.toInt())) {
        return;
      }
    }
    unreadMsgMap[pbCommData.msgSn.toInt()] = pbCommData;
    final key = _key(conversationId);
    int unReadMsgCount = (Global.prefs.getInt(key) ?? 0) + msgCount;
    Global.prefs.setInt(key, unReadMsgCount).then((_) {
      // LoggerManager().debug(
      //   'UnReadMessageController increaseUnReadMsgCount $key unReadMsgCount: $unReadMsgCount',
      // );
      final unReadMessageCount = UnReadMessageCount(
        conversationId: conversationId,
        count: unReadMsgCount,
      );
      _unReadMessageCountController.add(unReadMessageCount);
    });
    if (pbCommData.groupId.toInt() > 0) {
      /// 说明是群聊
      final groupInfo = GroupInfo();
      await groupInfo.fetchGroupData(conversationId);
      if (groupInfo.noDisturb == 1) {
        /// 开启了免打扰
        msgCount = 0;
      }
    } else {
      /// 说明是私聊
      final friendInfo = FriendInfo();
      await friendInfo.LoadFriendData(conversationId);
      if (friendInfo.noDisturb == 1) {
        /// 开启了免打扰
        msgCount = 0;
      }
    }
    int totalUnReadMsgCount = (Global.prefs.getInt(keyTotal) ?? 0) + msgCount;
    Global.prefs.setInt(keyTotal, totalUnReadMsgCount).then((_) {
      final unReadMessageCount = UnReadMessageCount(
        count: totalUnReadMsgCount,
        type: ENMsgCountType.totalMsg,
      );
      _unReadMessageCountController.add(unReadMessageCount);
    });
  }

  /// 清除消息未读数量
  void clearUnReadMsgCount({
    int conversationId = -1,
    ENMsgCountType type = ENMsgCountType.msgCount,
    CHAT_TYPE conversationType = CHAT_TYPE.PRIVATE,
  }) async {
    if (conversationId > 0) {
      final conversation = await AppDatabase().objectBox.getConversation(
        conversationId,
      );
      if (null != conversation) {
        conversation.newMsgCount = 0;
        AppDatabase().objectBox.addConversation(conversation);
        ImController.to.conversationListener?.onConversationUpdated(
          conversation,
        );
      }
    }

    if (type == ENMsgCountType.msgCount) {
      // final key = _key(conversationId);
      // int unReadMsgCount = Global.prefs.getInt(key) ?? 0;
      // Global.prefs.setInt(key, 0).then((_) {
      //   // LoggerManager().debug(
      //   //   'UnReadMessageController clearUnReadMsgCount $key',
      //   // );
      //   final unReadMessageCount = UnReadMessageCount(
      //     conversationId: conversationId,
      //     count: 0,
      //   );
      //   _unReadMessageCountController.add(unReadMessageCount);
      // });
      //
      // if (conversationType == CHAT_TYPE.GROUP) {
      //   /// 说明是群聊
      //   final groupInfo = GroupInfo();
      //   await groupInfo.fetchGroupData(conversationId);
      //   if (groupInfo.noDisturb == 1) {
      //     /// 开启了免打扰
      //     unReadMsgCount = 0;
      //   }
      // } else {
      //   /// 说明是私聊
      //   final friendInfo = FriendInfo();
      //   await friendInfo.LoadFriendData(conversationId);
      //   if (friendInfo.noDisturb == 1) {
      //     /// 开启了免打扰
      //     unReadMsgCount = 0;
      //   }
      // }
      //
      // int totalUnReadMsgCount =
      //     (Global.prefs.getInt(keyTotal) ?? 0) - unReadMsgCount;
      // if (totalUnReadMsgCount < 0) {
      //   totalUnReadMsgCount = 0;
      // }
      // Global.prefs.setInt(keyTotal, totalUnReadMsgCount).then((_) {
      //   final unReadMessageCount = UnReadMessageCount(
      //     count: totalUnReadMsgCount,
      //     type: ENMsgCountType.totalMsg,
      //   );
      //   _unReadMessageCountController.add(unReadMessageCount);
      // });
    } else if (type == ENMsgCountType.friendList) {
      Global.prefs.setInt(keyApply, 0).then((_) {
        // LoggerManager().debug(
        //   'UnReadMessageController clearUnReadMsgCount $keyApply',
        // );
        const unReadMessageCount = UnReadMessageCount(
          count: 0,
          type: ENMsgCountType.friendList,
        );
        _unReadMessageCountController.add(unReadMessageCount);
      });
    }
  }

  void increaseNewFriendApplyCount() {
    int unReadMsgCount = (Global.prefs.getInt(keyApply) ?? 0) + 1;
    Global.prefs.setInt(keyApply, unReadMsgCount).then((_) {
      // LoggerManager().debug(
      //   'UnReadMessageController increaseUnReadMsgCount $keyApply unReadMsgCount: $unReadMsgCount',
      // );
      final unReadMessageCount = UnReadMessageCount(
        count: unReadMsgCount,
        type: ENMsgCountType.friendList,
      );
      _unReadMessageCountController.add(unReadMessageCount);
    });
  }

  void getTotalUnReadMsgCount() async {
    try {
      int totalUnReadMsgCount = 0;
      final dataList = await AppDatabase().getChatListDao()?.query() ?? [];
      for (final item in dataList) {
        final conversation = LwConversation.fromJson(item);
        final conversationId = conversation.conversationId;
        if (conversation.noDisturb) {
          continue;
        }
        final unreadMsgCount = Global.prefs.getInt(_key(conversationId)) ?? 0;
        totalUnReadMsgCount += unreadMsgCount;
        // LoggerManager().debug(
        //   'UnReadMessageController getTotalUnReadMsgCount conversationId: $conversationId unreadMsgCount: $unreadMsgCount',
        // );
      }
      Global.prefs.setInt(keyTotal, totalUnReadMsgCount).then((_) {
        // LoggerManager().debug(
        //   'UnReadMessageController setTotalUnReadMsgCount $keyTotal totalCount: $totalUnReadMsgCount',
        // );
        final unReadMessageCount = UnReadMessageCount(
          count: totalUnReadMsgCount,
          type: ENMsgCountType.totalMsg,
        );
        _unReadMessageCountController.add(unReadMessageCount);
      });
      // LoggerManager().debug(
      //   'UnReadMessageController getTotalUnReadMsgCount $keyTotal totalCount: $totalUnReadMsgCount',
      // );
    } catch (error) {
      LoggerManager().debug('getTotalUnReadMsgCount error ======> $error');
    }
  }

  @override
  void dispose() {
    _newMessageStream?.cancel();
    super.dispose();
  }
}

class UnReadMessageCount {
  const UnReadMessageCount({
    this.count,
    this.conversationId,
    this.type = ENMsgCountType.msgCount,
  });

  final int? count;
  final int? conversationId;
  final ENMsgCountType type;
}
