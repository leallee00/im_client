import 'dart:async';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:quliao/db/obox/model/conversation_model.dart';
import 'package:quliao/modules/conversation/models/lw_conversation.dart';
import 'package:quliao/db/database.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/pages/chat_private/chat.dart';
import 'package:tuple/tuple.dart';

import '../../../event/event_bus.dart';
import '../../../event/event_modul.dart';
import '../../../pb/pb_msg/group/group.pb.dart';
import '../../../pb/pb_pub/error_code.pbenum.dart';
import '../../../pub/func.dart';
import '../../../pub/pub-def.dart';
import '../../../utils/log/manager.dart';
import '../../../widgets/empty.dart';
import 'package:quliao/models/user/userinfo.dart' as $locUinfo;

class ChatPageController extends GetxController {
  static ChatPageController get to => Get.find();

  var currentIndex = 0.obs;

  var pageList = <Tuple2<Widget, num>>[const Tuple2(Empty(), 0)].obs;

  RxList<Tuple2<int, ConversationModel>> conversations =
      <Tuple2<int, ConversationModel>>[].obs;

  RxList<Tuple2<int, Widget>> chatConversations = <Tuple2<int, Widget>>[].obs;

  late StreamSubscription<EventOnNetMsg> msgStreamSub;

  @override
  void onReady() {
    initHandleMsg();
    super.onReady();
  }

  Future<void> initHandleMsg() async {
    msgStreamSub = eventBus.on<EventOnNetMsg>().listen((event) async {
      if (event.pbMsg.errCode != ErrCode.SUCCESS.value) {
        showToast("code:${event.pbMsg.errCode} desc:${event.pbMsg.errDesc}");
        return;
      }
      if (event.pbMsg.pbName.contains("NameChangeNotify")) {
        NameChangeNotify message = NameChangeNotify()
          ..mergeFromBuffer(event.pbMsg.pbData);
        int chatId = event.pbMsg.pbCommData.aimId.toInt();
        int index =
            conversations.indexWhere((element) => element.item1 == chatId);
        if (index > -1) {
          if (!conversations[index].item2.privateChat) {
            GroupInfo dbGroupInfo = GroupInfo();
            await dbGroupInfo
                .fetchGroupData(event.pbMsg.pbCommData.groupId.toInt());
            var map =
                groupInfoMap[event.pbMsg.pbCommData.groupId.toInt().toString()];
            map!["name"] = message.name;
            groupInfoMap[event.pbMsg.pbCommData.groupId.toInt().toString()] =
                map;
          }
        }
      } else if (event.pbMsg.pbName.contains('approverApprovedNotify')) {
        approverApprovedNotify message = approverApprovedNotify()
          ..mergeFromBuffer(event.pbMsg.pbData);
        LoggerManager().debug('chat page controller ========> approverApprovedNotify');

        final applicantId = message.applicantId;
        final approverId = message.approverId;

        $locUinfo.UserInfo? srcUserInfo;
        if (approverId != 0) {
          srcUserInfo = await $locUinfo.GetUserInfo(approverId.toInt());
        }
        String? srcNickname;
        if (approverId != 0) {
          srcNickname = srcUserInfo?.nickName.isEmpty == true
              ? '$approverId'
              : srcUserInfo?.nickName;
        }

        $locUinfo.UserInfo aimUserInfo =
            await $locUinfo.GetUserInfo(applicantId.toInt());
        final String aimNickname = aimUserInfo.nickName.isEmpty
            ? '$applicantId'
            : aimUserInfo.nickName;

        String msgTips = '';

        if (message.enterGroutType == EnterGroupType.ScanCode) {
          if (applicantId == AppUserInfo().imId) {
            msgTips = '您通过扫描二维码进入群聊';
          } else {
            msgTips = '$aimNickname通过扫描二维码进入群聊';
          }
        } else {
          if (approverId == Int64(AppUserInfo().imId)) {
            msgTips = '您同意$aimNickname的入群申请';
          } else {
            if (applicantId == Int64(AppUserInfo().imId)) {
              msgTips = '$srcNickname同意您的入群申请';
            } else {
              msgTips = '$srcNickname同意$aimNickname的入群申请';
            }
          }
        }

        final groupId = event.pbMsg.pbCommData.groupId;
        final dataResult = await AppDatabase()
                .getChatListDao()
                ?.queryByConversationId(groupId.toInt()) ??
            [];
        if (dataResult.isEmpty) {
          final value = await AppDatabase().getChatListDao()?.insertEmpty(
                    groupId.toInt(),
                    CHAT_TYPE.GROUP.index,
                    msgTips: msgTips,
                  ) ??
              -1;
          if (value > 0) {
            eventBus.fire(ReloadChatListData());
          }
        } else {
          await AppDatabase().getChatListDao()?.updateMsgTips(
                    groupId: groupId.toInt(),
                    msgTips: msgTips,
                  ) ??
              -1;
          eventBus.fire(ReloadChatListData());
        }
      }
    });
  }

  @override
  void onClose() {
    msgStreamSub.cancel();

    super.onClose();
  }
}
