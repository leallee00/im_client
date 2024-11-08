import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'dart:ui';
import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';
import 'package:desktop_drop/desktop_drop.dart';
import 'package:extended_image/extended_image.dart' hide Client;
import 'package:file_selector/file_selector.dart';
import 'package:contextual_menu/contextual_menu.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' hide VideoMessage;
import 'package:get/get.dart';
import 'package:image_painter/image_painter.dart';
import 'package:photo_view/photo_view.dart';
import 'package:protobuf/protobuf.dart';
import 'package:quliao/config/config.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/db/database.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/db/obox/model/group_model.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/flutter_chat_ui/flutter_chat_ui.dart' as chatUI;
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:http/http.dart' as http;
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quliao/flutter_chat_ui/src/models/emoji_enlargement_behavior.dart';
import 'package:quliao/flutter_chat_ui/src/models/item_model.dart';
import 'package:quliao/flutter_chat_ui/src/models/preview_image.dart';
import 'package:quliao/flutter_chat_ui/src/models/preview_video.dart';
import 'package:quliao/flutter_chat_ui/src/widgets/image_gallery.dart';
import 'package:quliao/flutter_chat_ui/src/widgets/message/video_message.dart';
import 'package:quliao/flutter_chat_ui/src/widgets/message/video_message.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/global/controller/im_controller.dart';
import 'package:quliao/global/controller/unread_message_controller.dart';
import 'package:quliao/im/im_client.dart';
import 'package:quliao/im/im_message_storage.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/models/user/userinfo.dart';
import 'package:quliao/modules/contacts/label/contacts/select_contact_page.dart';
import 'package:quliao/modules/conversation/pages/chat/editor/image_editor_page.dart';
import 'package:quliao/modules/red_packet/group/group_chat_red_packet_page.dart';
import 'package:quliao/net/msg_handler_mgr.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/chat_group/chat_group_member.dart';
import 'package:quliao/pages/chat_group/flyer_chat/chat_group_change_to_message.dart';
import 'package:quliao/pages/chat_index/DeskVoiceMessage.dart';
import 'package:quliao/pages/chat_index/UserNameWidget.dart';
import 'package:quliao/pages/chat_index/avatar_long_pressed_dialog.dart';
import 'package:quliao/pages/chat_index/chat_index.dart';
import 'package:quliao/pages/chat_index/conversation_avatar.dart';
import 'package:quliao/pages/chat_index/conversation_controller.dart';
import 'package:quliao/pages/chat_index/custom_message.dart';
import 'package:quliao/pages/chat_index/forward_message_bottom_bar.dart';
import 'package:quliao/pages/chat_index/group_name_widget.dart';
import 'package:quliao/pages/chat_index/media_preview.dart';
import 'package:quliao/pages/chat_index/pc_preview_video.dart';
import 'package:quliao/pages/chat_index/preview_video.dart';
import 'package:quliao/pages/chat_private/chat.dart';
import 'package:quliao/pages/chat_private/chat_events.dart';
import 'package:quliao/pages/chat_private/image_message_widget.dart';
import 'package:quliao/pages/windows/chat/chat_page_controller.dart';
import 'package:quliao/pages/windows/chat/drop_send_file.dart';
import 'package:quliao/pages/windows/chat/length_map.dart';
import 'package:quliao/pages/windows/chat/message_bottom_bar.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart';
import 'package:quliao/pb/pb_msg/msg_pusher/msgPusher.pb.dart';
import 'package:quliao/pb/pb_msg/user_center/userCenter.pb.dart'
    hide FriendInfo;
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pb/pb_pub/error_code.pbenum.dart';
import 'package:quliao/pub/custom_alert.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/pub/pub-def.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/utils/permission.dart';
import 'package:quliao/utils/screen_shot.dart';
import 'package:quliao/widgets/desktop.dart';
import 'package:quliao/widgets/dialog/manager.dart';
import 'package:quliao/widgets/empty.dart';
import 'package:quliao/pb/pb_pub/service.pb.dart';

import 'package:quliao/mywedgits/badger/badger.dart';
import 'package:quliao/widgets/loading.dart';
import 'package:quliao/widgets/rh_extended_image.dart';
import 'package:screenshot_callback/screenshot_callback.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:just_audio/just_audio.dart' as jsAudio;
import 'package:uuid/uuid.dart';
import 'package:wechat_camera_picker/wechat_camera_picker.dart';

import '../../../pub/im_grpc_opt.dart';
import '../../../widgets/app_bar.dart';
import '../../windows/comm_dialog.dart';
import '../controller/chat_group_controller.dart';
import '../group_apply.dart';
import '../group_info.dart';
import 'package:quliao/models/user/userinfo.dart' as $locUinfo;
import 'package:path/path.dart' as path;

import '../group_notice_widget.dart';
import 'package:quliao/pages/friend/friend_info.dart' as ffi;

// ignore: must_be_immutable
class ChatGroupPage extends StatefulWidget {
  ChatGroupPage({
    super.key,
    required this.groupId,
    this.enableBack = true,
    this.name,
  });

  Int64 groupId;
  bool enableBack;
  String? name;

  @override
  State<ChatGroupPage> createState() => _ChatGroupPageState();
}

class _ChatGroupPageState extends State<ChatGroupPage>
    with AutomaticKeepAliveClientMixin {
  List<types.Message> _messages = [];

  MemberDetailRsp mineMemberInfo = MemberDetailRsp();

  late StreamSubscription<EventOnNetMsg> msgStreamSub;
  late StreamSubscription<ClearHistoryMessage> clearHistoryMsgStreamSub;
  late StreamSubscription<SendDropFiles> sendDropFilesStreamSub;

  var msgHandlerMgr = MsgHandlerMgr();
  var pbNameMsgReceipt = MsgReceipt().info_.qualifiedMessageName;
  List handlerList = [
    GroupChat(),
    GroupDetailRsp(),
    InviteReq(),
    InviteAnswerReq(),
    MembersRsp(),
    MemberDetailRsp(),
    MsgReceipt(),
    NameChangeNotify(),
    GroupEmoticon(),
    GroupMedia(),
    GroupGift(),
    QuitRsp(),
    GroupDisbandedNotify(),
    QuitNotify(),
    NoticeChangeNotify(),
    AddAdminsNotify(),
    RemoveAdminsNotify(),
    RemarkChangeNotify(),
    GroupBannedNotify(),
    GroupUnbannedNotify(),
    BanMemberNotify(),
    UnbanMemberNotify(),
    GroupTransferNotify(),
    AvatarChangeNotify(),
    MsgRecallRsp(),
    MemberChatBannedStatusChangeNotify(),
    GroupDetailRsp(),
    InviteeAgreedNotify(),
    InviteesAgreedNotify(),
    KickoutNotify(),
    approverApprovedNotify(),
    TakeScreenShotNotify(),
    ApplyRsp(),
    ApplyAnswerRsp(),
  ];

  PBCommData getPbCommData() {
    return MakePBCommData(
        aimId: widget.groupId,
        groupId: widget.groupId,
        toService: Service.group);
  }

  bool _loading = true;
  List<ChatGroupMember> _members = [];
  Map<int, String> nameIdMap = {};
  List<String> atNameList = [];
  Map<String, int> atNameIdMap = {};
  Map<int, Member> memberMap = {};

  late ChatGroupController c;
  final AutoScrollController _scrollController = AutoScrollController();
  final ValueNotifier<bool> _showBottomBtnNotifier = ValueNotifier(false);

  final FocusNode _focusNode = FocusNode();
  final TextEditingController _editingController = TextEditingController();

  bool hasAdminRights = false;

  GroupDetailRsp groupDetailRsp = GroupDetailRsp();
  ConversationController? _conversationController;
  List<types.Message> unreadAtMessageList = [];

  final ScreenshotCallback screenshotCallback = ScreenshotCallback();

  late List<ItemModelData> menuItems;
  final CustomPopupMenuController _controller = CustomPopupMenuController();

  @override
  void initState() {
    super.initState();

    groupDetailRsp.groupId = widget.groupId;
    groupDetailRsp.name = widget.name ?? '';
    c = Get.put(ChatGroupController(), tag: widget.groupId.toString());
    if (!Get.isRegistered<ConversationController>(
        tag: 'conversation_${widget.groupId.toInt()}')) {
      final controller = ConversationController();
      _conversationController = controller;
      Get.put(controller, tag: 'conversation_${widget.groupId.toInt()}');
    } else {
      _conversationController =
          ConversationController.to(widget.groupId.toInt());
    }
    if (Platform.isAndroid || Platform.isIOS) {
      PermissionUtil().requestPhotoPermission();
      UnReadMessageController.to.clearUnReadMsgCount(
        conversationId: widget.groupId.toInt(),
        conversationType: CHAT_TYPE.GROUP,
      );
    }
    c.messageList.clear();
    c.msgSnMessageMap.clear();
    c.init(widget.groupId, widget.name ?? "");
    c.multiSelectedMessageList.clear();

    if (null != _conversationController) {
      ever(_conversationController!.unreadAtMessageList, (callback) {
        unreadAtMessageList = _conversationController!.unreadAtMessageList;
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          if (mounted) {
            setState(() {});
          }
        });
      });
    }

    ever(c.loading, (callback) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        if (mounted) {
          setState(() {});
        }
      });
    });

    ever(c.messageList, (callback) {
      _messages = c.messageList;
      for (final item in _messages) {
        // if (!c.msgSnMessageMap.containsKey(item.id)) {
        //   c.msgSnMessageMap[item.id] = item;
        // }
      }
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        if (mounted) {
          setState(() {});
        }
      });
    });

    ever(c.multiSelectedMessageList, (callback) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        if (mounted) {
          setState(() {});
        }
      });
    });

    ever(c.groupInfo, (callback) {
      // LoggerManager().debug(
      //     'groupInfo changed =======> name: ${c.groupInfo.value.name} remark: ${c.groupInfo.value.remark}');

      if (callback.ownerId == AppUserInfo().imId) {
        menuItems = [
          ItemModelData('群设置', Icons.settings, 0),
          ItemModelData('解散群', Icons.exit_to_app, 1),
        ];
      } else {
        menuItems = [
          ItemModelData('群设置', Icons.settings, 0),
          ItemModelData('退出群', Icons.exit_to_app, 1),
        ];
      }

      groupDetailRsp.name = c.groupInfo.value.name ?? '';
      groupDetailRsp.remark = c.groupInfo.value.remark ?? '';
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        if (mounted) {
          setState(() {});
        }
      });
    });

    ever(c.isMultiSelect, (callback) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        if (mounted) {
          setState(() {});
        }
      });
    });

    ever(c.repliedMessage, (callback) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        if (mounted) {
          setState(() {});
        }
      });
    });

    ever(c.applyListsSize, (callback) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        if (mounted) {
          setState(() {});
        }
      });
    });

    ever(c.showGroupNotice, (callback) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        if (mounted) {
          setState(() {});
        }
      });
    });

    fetchMineMember();
    _initHandleMsg();
    clearHistoryMsgStreamSub =
        eventBus.on<ClearHistoryMessage>().listen((event) {
      if (Int64(event.chatId) == widget.groupId) {
        _messages.clear();
        if (mounted) {
          setState(() {});
        }
      }
    });

    sendDropFilesStreamSub = eventBus.on<SendDropFiles>().listen((event) {
      if (event.conversationId == widget.groupId.toInt()) {
        _sendDropFiles(event.files);
      }
    });
    if (Platform.isWindows || Platform.isMacOS) {
      _scrollController.addListener(() {
        if (_scrollController.offset >= 500 &&
            _showBottomBtnNotifier.value == false) {
          _showBottomBtnNotifier.value = true;
        } else if (_scrollController.offset < 500 &&
            _showBottomBtnNotifier.value == true) {
          _showBottomBtnNotifier.value = false;
        }
      });
    }

    eventBus.on<ForwardMessage>().listen((event) {
      if (event.conversationId == widget.groupId.toInt()) {
        int index = _messages.indexWhere(
          (element) => element.id == event.message.id,
        );
        if (index == -1) {
          _addMessage(event.message);
        }
      }
    });

    screenshotCallback.addListener(() {
      if (GlobalController.to.systemConfig.value?.notifyScreenShort == true) {
        final screenshotMessage = TakeScreenShotNotify();
        final groupId = widget.groupId;
        Client.instance.sendMsg(
          screenshotMessage,
          groupId,
          MakePBCommData(
            groupId: groupId,
            toService: Service.group,
          ),
        );
      }
    });

    eventBus.on<UpdateGroupChatBackground>().listen((event) {
      final groupId = event.data.id;
      if (groupId == widget.groupId) {
        c.groupInfo.value.backPic = event.data.imageUrl;
      }
    });
    eventBus.on<DelGroupChatBackground>().listen((event) {
      final groupId = Int64(event.groupId);
      if (groupId == widget.groupId) {
        c.groupInfo.value.backPic = '';
      }
    });
    eventBus.on<NotifyRedPacket>().listen((event) {
      if (event.conversationId == widget.groupId.toInt()) {
        int index = _messages.indexWhere(
          (element) => element.id == event.message.id,
        );
        if (index == -1) {
          _addMessage(event.message);
        }
      }
    });
  }

  Future<void> _sendDropFiles(List<XFile> files) async {
    for (final element in files) {
      final size = await element.length();
      sendFileMsg(
        AppUserInfo().imId,
        file: PlatformFile(
          name: element.name,
          size: size,
          path: element.path,
        ),
        isGroupChat: true,
        groupId: widget.groupId,
        callback: (types.FileMessage fileMessage) {
          _hideChatMenuPanel();
          _addMessage(fileMessage);
        },
        onStatusChanged: (String msgSn, types.Status status) {
          _updateMessageStatus(msgSn, status);
        },
      );
    }
  }

  @override
  void dispose() {
    log("dispose msgStreamSub cancel");
    UnReadMessageController.to.clearUnReadMsgCount(
      conversationId: widget.groupId.toInt(),
      conversationType: CHAT_TYPE.GROUP,
    );
    _focusNode.unfocus();
    _editingController.dispose();
    msgStreamSub.cancel();
    if (Platform.isAndroid || Platform.isIOS) {
      GlobalController.to.updateCurrentConversation(-1);
    }
    for (var element in handlerList) {
      msgHandlerMgr.removeMsgHandler(element);
    }
    sendDropFilesStreamSub.cancel();
    c.page = 1;
    c.lastGroupMsgSn = null;
    c.firstGroupMsgSn = null;
    c.offlineGroupMsgSn = null;
    c.msgSnMessageMap.clear();
    c.messageList.clear();
    c.isMultiSelect.value = false;
    screenshotCallback.dispose();
    eventBus.fire(EventMsgCountClear()..imId = widget.groupId.toInt());
    super.dispose();
  }

  Future<void> _asyncUserInfo(ChatGroupMember member) async {
    $locUinfo.GetUserInfo(
      member.data.userId.toInt(),
    ).then((userInfo) {
      member.data.avatar = userInfo.avatar;
      member.data.username = userInfo.nickName;
      if (mounted) {
        GetFriendInfo(
          member.data.userId.toInt(),
        ).then((friendInfo) async {
          if (mounted) {
            if (friendInfo.friendRelation == enFriendRelation.friend) {
              member.data.remark = friendInfo.remark;
            }
            member.atName = member.data.username.isEmpty
                ? '游客${member.data.userId}'
                : member.data.username;
            LoggerManager().debug(
                'group async user info ==== remark: ${member.data.remark}');
            nameIdMap[member.data.userId.toInt()] = '@${member.atName}';
            await AppDatabase().groupMemberDao?.insertOrUpdate(
                  groupId: widget.groupId.toInt(),
                  member: member.data,
                );
          }
        });
      }
    });
  }

  Future<void> _initHandleMsg() async {
    // 获取群成员
    // 打开列表的时候再获取

    // 获取本地群消息
    DBClearNewMsgCount(widget.groupId.toInt(), CHAT_TYPE.GROUP);

    // 获取群离线

    // 注册消息回调
    msgStreamSub = eventBus.on<EventOnNetMsg>().listen((event) async {
      log("获得群消息 ${event.pbMsg.pbName} ${event.pbMsg.pbCommData.msgSn} ${event.pbMsg.pbCommData.srcId}->${event.pbMsg.pbCommData.aimId}->${event.pbMsg.pbCommData.groupId} 派发处理");
      if (event.pbMsg.pbName.isEmpty) {
        return;
      }
      if (event.pbMsg.pbName == 'pb_pub.TakeScreenShotNotify') {
        if (GlobalController.to.systemConfig.value?.notifyScreenShort ==
            false) {
          return;
        }
      }
      if (event.pbMsg.pbName == 'pb_pub.MsgRecallRsp') {
        event.pbMsg.pbCommData.groupId = event.pbMsg.pbCommData.groupId;
      } else if (event.pbMsg.pbName == 'pb_pub.MsgRecallReq') {
        event.pbMsg.pbCommData.groupId = event.pbMsg.pbCommData.groupId;
      }
      if (event.pbMsg.pbCommData.groupId != widget.groupId) {
        // 不是我的消息， 直接返回
        return;
      }

      // 清理新消息数量
      // msgCountSpSet(widget.groupId.toInt(), ENMsgCountType.privateMsgCount, 0);

      // log("获得一个消息:${event.pbMsg.pbName} groupid:${event.pbMsg.pbCommData.groupId} msgsn:${event.pbMsg.pbCommData.msgSn} is me send:${event.pbMsg.pbCommData.srcId==AppUserInfo().imId} ");
      if (event.pbMsg.errCode != ErrCode.SUCCESS.value) {
        LoggerManager().debug(
            'error ====== code: ${event.pbMsg.errCode} \n desc: ${event.pbMsg.errDesc}');
        showToast(event.pbMsg.errDesc);

        /// todo 暂时只能延时 1s
        Future.delayed(const Duration(milliseconds: 1000), () {
          for (var i = 0; i < _messages.length; i++) {
            var element = _messages[i];
            if (element.id == "${event.pbMsg.pbCommData.msgSn.toInt()}") {
              dbDeleteGroupMsg(widget.groupId.toInt(), element.id)
                  .then((value) {
                _messages.removeAt(i);
                setState(() {});
              });
              break;
            }
          }
        });
        return;
      }

      // log("------------------get one group msg:${event.pbMsg.pbName}");

      // ShowMsgList();
      //
      // 更新未读条数Config.chatTypePrivate
      DBClearNewMsgCount(widget.groupId.toInt(), CHAT_TYPE.GROUP);

      if (event.pbMsg.pbName == 'pb_msg_group.BanMemberNotify') {
        BanMemberNotify notify = BanMemberNotify()
          ..mergeFromBuffer(event.pbMsg.pbData);
        if (notify.memberId.toInt() == AppUserInfo().imId) {
          c.groupInfo.value.banned = true;
          mineMemberInfo.banned = true;
        }
        if (event.pbMsg.pbCommData.srcId == AppUserInfo().imId) {
          c
              .getMemberDetails(widget.groupId.toInt(), notify.memberId.toInt())
              .then((value) {
            if (null != value) {
              showToast(
                "您将${(value.username.isNotEmpty ? value.username : "${value.userId}")}设置封禁",
              );
            }
          });
        }
      } else if (event.pbMsg.pbName == 'pb_msg_group.UnbanMemberNotify') {
        UnbanMemberNotify notify = UnbanMemberNotify()
          ..mergeFromBuffer(event.pbMsg.pbData);
        if (notify.memberId.toInt() == AppUserInfo().imId) {
          c.groupInfo.value.banned = false;
          mineMemberInfo.banned = false;
        }
        if (event.pbMsg.pbCommData.srcId == AppUserInfo().imId) {
          c
              .getMemberDetails(widget.groupId.toInt(), notify.memberId.toInt())
              .then((value) {
            if (null != value) {
              showToast(
                "已移除${(value.username.isNotEmpty ? value.username : "${value.userId}")}封禁",
              );
            }
          });
        }
      } else if (event.pbMsg.pbName == 'pb_msg_group.ApplyAnswerRsp') {
        if (hasAdminRights) {
          c.fetchGroupApplyLists();
        }
      } else if (event.pbMsg.pbName == 'pb_msg_group.ApplyRsp') {
        if (hasAdminRights) {
          c.fetchGroupApplyLists();
        }
      } else if (event.pbMsg.pbName == 'pb_msg_group.ApplyReq') {
        if (hasAdminRights) {
          c.fetchGroupApplyLists();
        }
      } else if (event.pbMsg.pbName == 'pb_msg_group.QuitRsp') {
        msgStreamSub.cancel();
        for (var element in handlerList) {
          msgHandlerMgr.removeMsgHandler(element);
        }
      } else if (event.pbMsg.pbName == 'pb_pub.MsgRecallRsp') {
        LoggerManager().error('群聊页面开始处理撤回消息');
        MsgRecallRsp msgRecallRsp = MsgRecallRsp()
          ..mergeFromBuffer(event.pbMsg.pbData);
        LoggerManager().error(
          'MsgRecallRsp msgSn: ${msgRecallRsp.msgSn} --- msgOwnerId: ${msgRecallRsp.msgOwnerId} --- srcId: ${event.pbMsg.pbCommData.srcId} --- aimId: ${event.pbMsg.pbCommData.aimId}',
        );

        final Int64 msgSn = event.pbMsg.pbCommData.msgSn;

        final String condition = 'msgSn=${msgRecallRsp.msgSn}';

        final groupMsg = await AppDatabase().objectBox.getGroupMsg(
              widget.groupId.toInt(),
              msgSn.toInt(),
            );
        if (null != groupMsg) {
          /// 更新撤回人的uid
          groupMsg.recallUid = event.pbMsg.pbCommData.srcId.toInt();
          AppDatabase().objectBox.addGroupMsg(groupMsg).then(
            (value) async {
              if (value > 0) {
                LoggerManager().error(
                  'MsgRecallRsp 群消息更新成功 =========> groupId: ${widget.groupId.toInt()} $value msgSn: ${msgSn.toInt()}',
                );
              }
            },
          ).onError(
            (error, _) {
              LoggerManager().error(
                  'MsgRecallRsp 群消息更新失败 =========> groupId: ${widget.groupId.toInt()} \n $error');
            },
          );
        }

        for (var i = 0; i < _messages.length; i++) {
          var element = _messages[i];
          if (element.id == '${msgRecallRsp.msgSn}') {
            final changeMessageMap = await groupMessageChangeType(
              widget.groupId.toInt(),
              element,
              MsgReceipt(
                state: _statusToState(element.status ?? types.Status.sent),
              ),
              types.MessageType.system,
              event.pbMsg.pbCommData.srcId,
            );
            types.Message changeMessage =
                types.Message.fromJson(changeMessageMap);
            _messages.removeAt(i);
            _messages.insert(i, changeMessage);
            setState(() {});
            break;
          }
        }

        return;
      } else if (event.pbMsg.pbName == 'pb_pub.MsgRecallReq') {
        LoggerManager().debug('群聊页面开始处理撤回消息 MsgRecallReq');
        MsgRecallReq msgRecallRsp = MsgRecallReq()
          ..mergeFromBuffer(event.pbMsg.pbData);
        LoggerManager().debug(
            'MsgRecallReq msgSn: ${msgRecallRsp.msgSn} --- msgOwnerId: ${msgRecallRsp.msgOwnerId}');

        final String condition = 'msgSn=${msgRecallRsp.msgSn}';
        final groupMsg = await AppDatabase().objectBox.getGroupMsg(
              widget.groupId.toInt(),
              msgRecallRsp.msgSn.toInt(),
            );
        if (null != groupMsg) {
          /// 更新撤回人的uid
          groupMsg.recallUid = event.pbMsg.pbCommData.srcId.toInt();
          AppDatabase().objectBox.addGroupMsg(groupMsg).then(
            (value) async {
              if (value > 0) {
                LoggerManager().error(
                  'MsgRecallReq 群消息更新成功 =========> groupId: ${widget.groupId.toInt()} $value msgSn: ${msgRecallRsp.msgSn.toInt()}',
                );
              }
            },
          ).onError(
            (error, _) {
              LoggerManager().error(
                  'MsgRecallReq 群消息更新失败 =========> groupId: ${widget.groupId.toInt()} \n $error');
            },
          );
        }

        for (var i = 0; i < _messages.length; i++) {
          var element = _messages[i];
          if (element.id == '${msgRecallRsp.msgSn}') {
            final changeMessageMap = await groupMessageChangeType(
              widget.groupId.toInt(),
              element,
              MsgReceipt(
                state: _statusToState(element.status ?? types.Status.sent),
              ),
              types.MessageType.system,
              event.pbMsg.pbCommData.srcId,
            );
            types.Message changeMessage =
                types.Message.fromJson(changeMessageMap);
            _messages.removeAt(i);
            _messages.insert(i, changeMessage);
            setState(() {});
            break;
          }
        }
        return;
      }

      var result = msgHandlerMgr.onMsg(event.pbMsg, event.enMsgFrom);

      // 已读标志
      if (event.pbMsg.pbName != pbNameMsgReceipt &&
          result == true &&
          event.pbMsg.pbCommData.srcId != AppUserInfo.instance.imId) {
        log(" 回执状态: ${MSG_STATE.READ} 为消息 sn:${event.pbMsg.pbCommData.msgSn} groupMsgSn:${event.pbMsg.pbCommData.groupMsgSn} name:${event.pbMsg.pbName} :srcId：${event.pbMsg.pbCommData.srcId} myId:${AppUserInfo.instance.imId} 发送的回执 ");

        /// 暂时这样处理
        // Future.delayed(const Duration(seconds: 1), () {
        //   AppDatabase()
        //       .groupMessageDao
        //       ?.query(
        //         groupId: widget.groupId.toInt(),
        //         msgSn: event.pbMsg.pbCommData.msgSn.toInt(),
        //       )
        //       .then((value) {
        //     if (value.isNotEmpty) {
        //       final msgStatus =
        //           MSG_STATE.valueOf((value.first['msgStatus'] as int?) ?? 0)!;
        //       if (msgStatus.value < MSG_STATE.READ.value) {
        //         updateGroupMsgState1(
        //           widget.groupId.toInt(),
        //           event.pbMsg.pbCommData.msgSn,
        //           MSG_STATE.READ,
        //           EnMsgFrom.local,
        //         );
        //         sendReceiptMsg(
        //           event.pbMsg.pbCommData,
        //           state: MSG_STATE.READ,
        //           beginTime: Int64(),
        //         );
        //       }
        //     }
        //   });
        // });

        // 更新数据
        // DBUpdateFriendGroupMsgState(event.pbMsg.pbCommData.msgSn, MSG_STATE.READ);
      }
    });

    // 发送初始化消息
    // 获取群信息， 请求服务器
    Client.instance.sendMsg(GroupDetailReq(), widget.groupId, getPbCommData());
    final membersReq = MembersReq(page: 1, pageSize: 500);
    Client.instance.sendMsg(
        membersReq,
        widget.groupId,
        MakePBCommData(
            aimId: widget.groupId,
            groupId: widget.groupId,
            toService: Service.group));

    // 注册消息处理句柄
    for (var handler in handlerList) {
      msgHandlerMgr.RegMsgHandler(handler,
          (GeneratedMessage msg, PBMessage pbMessage, EnMsgFrom enMsgFrom) {
        log("pbMessage.pbName = ${pbMessage.pbName}");
        if (msg is GroupDisbandedNotify) {
          c.groupInfo.value.disbanded = true;
          _createLocalMsg(pbMessage, msg);
        } else if (msg is approverApprovedNotify) {
          // c.groupInfo.value.count = msg.memberCount;
          _createLocalMsg(pbMessage, msg);
          _fetchGroupMemberUserInfo(
            msg.applicantId.toInt(),
          );
        } else if (msg is KickoutNotify) {
          LoggerManager()
              .debug('KickoutNotify memberId =====> ${msg.memberId}');
          // c.groupInfo.value.count = msg.memberCount;
          _createLocalMsg(pbMessage, msg);
        } else if (msg is AddAdminsNotify) {
          final contains = msg.memberIds.contains(Int64(AppUserInfo().imId));
          if (contains) {
            hasAdminRights = contains;
            GroupModel info = c.groupInfo.value;
            info.memberChatBannedStatus = 1;
            c.groupInfo.value = info;

            AppDatabase().objectBox.addGroup(info);

            // AppDatabase().groupDao?.update(
            //   groupId: info.groupId.toInt(),
            //   dataMap: <String, dynamic>{
            //     'memberChatBannedStatus': info.memberChatBannedStatus,
            //   },
            // );
            setState(() {});
          }
          _createLocalMsg(pbMessage, msg);
          for (final item in msg.memberIds) {
            AppDatabase().groupMemberDao?.updateMemberRole(
                  groupId: widget.groupId.toInt(),
                  userId: item.toInt(),
                  role: 1,
                );
            eventBus.fire(UpdateGroupUserRole(
              groupId: widget.groupId.toInt(),
              userId: item.toInt(),
              role: 1,
            ));
          }
        } else if (msg is RemoveAdminsNotify) {
          final isRemoved = msg.memberIds.contains(Int64(AppUserInfo().imId));
          LoggerManager().debug(
              'imId ======> ${AppUserInfo().imId} memberIds ========> ${msg.memberIds}');
          if (isRemoved) {
            hasAdminRights = false;
            setState(() {});
            Client.instance
                .sendMsg(GroupDetailReq(), widget.groupId, getPbCommData());
          }
          _createLocalMsg(pbMessage, msg);
          for (final item in msg.memberIds) {
            AppDatabase().groupMemberDao?.updateMemberRole(
                  groupId: widget.groupId.toInt(),
                  userId: item.toInt(),
                  role: 0,
                );
            eventBus.fire(UpdateGroupUserRole(
              groupId: widget.groupId.toInt(),
              userId: item.toInt(),
              role: 0,
            ));
          }
        } else if (msg is InviteeAgreedNotify) {
          // c.groupInfo.value.count = msg.memberCount;
          _createLocalMsg(pbMessage, msg);
          _fetchGroupMemberUserInfo(
            msg.inviteeId.toInt(),
          );
        } else if (msg is InviteesAgreedNotify) {
          // c.groupInfo.value.count = msg.memberCount;
          _createLocalMsg(pbMessage, msg);
          for (final userId in msg.inviteeIds) {
            _fetchGroupMemberUserInfo(userId.toInt());
          }
        } else if (msg is TakeScreenShotNotify) {
          _createLocalMsg(pbMessage, msg);
        } else if (msg is MemberChatBannedStatusChangeNotify) {
          final aimId = pbMessage.pbCommData.aimId;
          int bannedStatus = msg.bannedStatus;

          if (aimId != AppUserInfo().imId) {
            GroupModel info = c.groupInfo.value;
            info.memberChatBannedStatus = bannedStatus;
            c.groupInfo.value = info;

            AppDatabase().objectBox.addGroup(info);

            // AppDatabase().groupDao?.update(
            //   groupId: info.groupId.toInt(),
            //   dataMap: <String, dynamic>{
            //     'memberChatBannedStatus': info.memberChatBannedStatus,
            //   },
            // );

            setState(() {});
          }

          _createLocalMsg(pbMessage, msg);

          // if (isOwner) {
          //   if (aimId == AppUserInfo().imId) {
          //     /// 群主本人操作
          //     if (bannedStatus > 0) {
          //       c.bannedTips.value = '您设置了群禁言';
          //     } else {
          //       c.bannedTips.value = '';
          //     }
          //   } else {
          //     $locUinfo.GetUserInfo(aimId.toInt()).then((value) {
          //     $locUinfo.GetUserInfo(aimId.toInt()).then((value) {
          //       final String nickname =
          //           value.nickName.isEmpty ? '${value.appId}' : value.nickName;
          //       if (bannedStatus > 0) {
          //         c.bannedTips.value = '$nickname设置了群禁言';
          //       } else {
          //         c.bannedTips.value = '';
          //       }
          //     });
          //   }
          // }
        } else if (pbMessage.pbName == 'pb_msg_group.RemarkChangeNotify') {
        } else if (pbMessage.pbName == 'pb_pub.MsgRecallRsp') {
          LoggerManager().debug('群聊页面开始处理撤回消息');
          MsgRecallRsp msgRecallRsp = MsgRecallRsp()
            ..mergeFromBuffer(pbMessage.pbData);
          LoggerManager().debug(
              'msgSn: ${msgRecallRsp.msgSn} --- msgOwnerId: ${msgRecallRsp.msgOwnerId}');
        } else if (pbMessage.pbName.contains("NoticeChangeNotify")) {
          NoticeChangeNotify message = NoticeChangeNotify()
            ..mergeFromBuffer(pbMessage.pbData);
          final newestNotice = message.notice;
          if (message.noticeVersion != c.groupInfo.value.noticeVersion) {
            c.groupInfo.value.notice = newestNotice;
            c.groupInfo.value.noticeVersion = message.noticeVersion;
            c.showGroupNotice.value = true;
            AppDatabase().groupDao?.update(
              groupId: widget.groupId.toInt(),
              dataMap: <String, dynamic>{
                'notice': message.notice,
                'noticeVersion': message.noticeVersion,
              },
            );
          }
        } else if (pbMessage.pbName.contains("GroupDetailRsp")) {
          GroupDetailRsp message = GroupDetailRsp()
            ..mergeFromBuffer(pbMessage.pbData);
          // 把消息加入消息列表
          c.groupInfo.value.name = message.name;
          // c.groupInfo.value.count = message.memberCount;
          if (message.noticeVersion != c.groupInfo.value.noticeVersion) {
            c.showGroupNotice.value = true;
          }
          c.groupInfo.value.notice = message.notice;
          c.groupInfo.value.noticeVersion = message.noticeVersion;
          c.groupInfo.value.ownerId = message.ownerId.toInt();
          c.groupInfo.value.disbanded = message.disbanded;
          c.groupInfo.value.memberChatBannedStatus =
              message.memberChatBannedStatus;

          AppDatabase().objectBox.addGroup(c.groupInfo.value);

          // AppDatabase().groupDao?.update(
          //   groupId: widget.groupId.toInt(),
          //   dataMap: <String, dynamic>{
          //     'name': message.name,
          //     'count': message.memberCount,
          //     'memberChatBannedStatus': message.memberChatBannedStatus,
          //   },
          // );
          ImController.to.updateConversationName(
            widget.groupId.toInt(),
            message.name,
          );
          setState(() {});
        } else if (pbMessage.pbName.contains("MembersRsp")) {
          MembersRsp membersRsp = MembersRsp()
            ..mergeFromBuffer(pbMessage.pbData);
          _members.clear();
          for (final element in membersRsp.members) {
            if (!memberMap.containsKey(element.userId.toInt())) {
              memberMap[element.userId.toInt()] = element;
            }
            final isSelf = element.userId == AppUserInfo().imId;
            if (isSelf) {
              hasAdminRights = element.role >= 1;
              AppDatabase().groupMemberDao?.insertOrUpdate(
                    groupId: widget.groupId.toInt(),
                    member: element,
                  );
            }
          }
          final memberList = membersRsp.members.map((e) {
            final groupMember = ChatGroupMember(data: e, atName: e.username);
            nameIdMap[groupMember.data.userId.toInt()] =
                '@${groupMember.atName}';
            return groupMember;
          }).toList();
          _members.addAll(memberList);

          for (var element in _members) {
            if (context.mounted) {
              _asyncUserInfo(element);
            }
          }
          // 把消息加入消息列表
          setState(() {});
        } else if (pbMessage.pbName.contains("GroupTransferNotify")) {
          GroupTransferNotify message = GroupTransferNotify()
            ..mergeFromBuffer(pbMessage.pbData);
          final preOwnerId = c.groupInfo.value.ownerId;
          c.groupInfo.value.ownerId = message.ownerId.toInt();
          if (message.ownerId.toInt() == AppUserInfo().imId) {
            showToast("你已成为群主");
            setState(() {});
          }
          _addMsgToList(pbMessage);
          AppDatabase().groupDao?.update(
            groupId: widget.groupId.toInt(),
            dataMap: <String, dynamic>{
              'ownerId': message.ownerId,
            },
          );
          AppDatabase().groupMemberDao?.updateMemberRole(
                groupId: widget.groupId.toInt(),
                userId: message.ownerId.toInt(),
                role: 2,
              );
          AppDatabase().groupMemberDao?.updateMemberRole(
                groupId: widget.groupId.toInt(),
                userId: preOwnerId.toInt(),
                role: 1,
              );
          eventBus.fire(UpdateGroupUserRole(
            groupId: widget.groupId.toInt(),
            userId: message.ownerId.toInt(),
            role: 2,
          ));
          eventBus.fire(UpdateGroupUserRole(
            groupId: widget.groupId.toInt(),
            userId: preOwnerId.toInt(),
            role: 1,
          ));
        } else if (pbMessage.pbName.contains("MsgReceipt")) {
          MsgReceipt message = MsgReceipt()..mergeFromBuffer(pbMessage.pbData);
          final msgReceiptMap = pbMessage.pbCommData.exp;

          if (isMySendMsg(pbMessage.pbCommData.srcId)) {
            Future.delayed(
              const Duration(seconds: 1),
              () {
                updateGroupMsgState1(
                  widget.groupId.toInt(),
                  pbMessage.pbCommData.msgSn,
                  MSG_STATE.SEND,
                  EnMsgFrom.local,
                  groupMsgSn: pbMessage.pbCommData.groupMsgSn,
                );
              },
            );
            LoggerManager().debug(
                '-----自己的回执消息----- MsgReceipt state ===> ${message.state.name}');
            // 自己的回执消息，不改变
            for (var i = 0; i < _messages.length; i++) {
              var element = _messages[i];
              log(" ${element.status} ${element.id} ${pbMessage.pbCommData.msgSn.toInt()}");
              if (element.id == "${pbMessage.pbCommData.msgSn.toInt()}" &&
                  element.status != Status.seen) {
                message.state = MSG_STATE.SEND;
                types.Message changeMessage = types.Message.fromJson(
                    groupMessageChangeStatu(element, message));
                _messages.removeAt(i);
                _messages.insert(i, changeMessage);
                log("更新本地列表显示 ${changeMessage.status}");
                setState(() {});
                break;
              }
            }
            return false;
          }

          /// todo lstMsg
          // for (var item in c.groupInfo.value.lstMsg) {
          //   if (item.pbHeadMsg.pbCommData.msgSn == pbMessage.pbCommData.msgSn) {
          //     if (item.msgStatus.value < message.state.value) {
          //       if (isMySendMsg(pbMessage.pbCommData.srcId)) {
          //         log("msg state change from :${item.msgStatus} to ${message.state} ${AppUserInfo().imId} ${pbMessage.pbCommData.srcId}");
          //         item.msgStatus = message.state;
          //         updateGroupMsgState(pbMessage.pbCommData.msgSn, message.state,
          //             EnMsgFrom.local);
          //       } else {
          //         var str = pbMessage.pbCommData.exp["GROUP_MSG_STATUS"];
          //         if (str != null && str.isNotEmpty) {
          //           item.msgStatus = MSG_STATE.valueOf(int.parse(str))!;
          //           log("msg state change from :${item.msgStatus} to ${MSG_STATE.valueOf(int.parse(str))!} ${AppUserInfo().imId} ${pbMessage.pbCommData.srcId}");
          //           updateGroupMsgState(pbMessage.pbCommData.msgSn,
          //               item.msgStatus, EnMsgFrom.local);
          //         }
          //       }
          //     }
          //     // 根据确认设置消息状态
          //     // setState(() {});
          //     break;
          //   }
          // }

          for (var i = 0; i < _messages.length; i++) {
            var element = _messages[i];
            log(" ${element.status} ${element.id} ${pbMessage.pbCommData.msgSn.toInt()}");
            if (element.id == "${pbMessage.pbCommData.msgSn.toInt()}" &&
                element.status != Status.seen) {
              types.Message changeMessage = types.Message.fromJson(
                  groupMessageChangeStatu(element, message));
              _messages.removeAt(i);
              _messages.insert(i, changeMessage);
              log("更新本地列表显示 ${changeMessage.status}");
              setState(() {});
              break;
            }
          }
        } else if (pbMessage.pbName.contains("NameChangeNotify")) {
          NameChangeNotify message = NameChangeNotify()
            ..mergeFromBuffer(pbMessage.pbData);
          // 根据确认设置消息状态

          var info = c.groupInfo.value;
          info.name = message.name;
          c.groupInfo.value = info;
          groupDetailRsp.name = message.name;
          eventBus.fire(UpdateGroupName(
              groupId: widget.groupId.toInt(), groupDetails: groupDetailRsp));
          // _addMsgToList(ChatGroupData()..initWithPBMsg(pbMessage));
          _addMsgToList(pbMessage);
        } else if (pbMessage.pbName.contains("AvatarChangeNotify")) {
          AvatarChangeNotify message = AvatarChangeNotify()
            ..mergeFromBuffer(pbMessage.pbData);
          // 根据确认设置消息状态
          // c.groupInfo.value.name = message.avatar;
          // _addMsgToList(ChatGroupData()..initWithPBMsg(pbMessage));
          _addMsgToList(pbMessage);
        } else if (pbMessage.pbName.contains("GroupChat")) {
          if (pbMessage.pbCommData.srcId == AppUserInfo().imId &&
              enMsgFrom == EnMsgFrom.local) {
            // 自己发的不需处理
            return false;
          }

          final String msgSn = '${pbMessage.pbCommData.msgSn}';

          bool containsMessage = false;

          for (var i = 0; i < _messages.length; i++) {
            var element = _messages[i];
            if (element.id == msgSn && element.status != Status.seen) {
              containsMessage = true;
              types.Message changeMessage = types.Message.fromJson(
                groupMessageChangeStatu(
                  element,
                  MsgReceipt(state: MSG_STATE.SEND),
                ),
              );
              _messages.removeAt(i);
              _messages.insert(i, changeMessage);
              setState(() {});
              break;
            }
          }

          if (!containsMessage) {
            _addMsgToList(pbMessage, msgState: MSG_STATE.SEND);
          }

          _fetchGroupMemberUserInfo(
            pbMessage.pbCommData.srcId.toInt(),
          );

          GetUserInfo(
            pbMessage.pbCommData.srcId.toInt(),
          ).then((value) {
            if (value.sourceVersion < pbMessage.pbCommData.userSourceVersion) {
              GetUserInfo(
                pbMessage.pbCommData.srcId.toInt(),
                userSourceVersion: pbMessage.pbCommData.userSourceVersion,
              );
            }
          });
        } else if (pbMessage.pbName.contains("MemberDetailRsp")) {
          MemberDetailRsp message = MemberDetailRsp()
            ..mergeFromBuffer(pbMessage.pbData);
          mineMemberInfo = message;
        } else {
          if (msg is GroupChat) {
            LoggerManager().debug(
              'group chat 收到新消息 srcId: ${pbMessage.pbCommData.srcId} \n groupId: ${pbMessage.pbCommData.groupId} \n userSourceVersion: ${pbMessage.pbCommData.userSourceVersion}',
            );
            _fetchGroupMemberUserInfo(
              pbMessage.pbCommData.srcId.toInt(),
            );
            GetUserInfo(
              pbMessage.pbCommData.srcId.toInt(),
            ).then((value) {
              if (value.sourceVersion <
                  pbMessage.pbCommData.userSourceVersion) {
                GetUserInfo(
                  pbMessage.pbCommData.srcId.toInt(),
                  userSourceVersion: pbMessage.pbCommData.userSourceVersion,
                );
              }
            });
          }
          LoggerManager().debug(
              'chat group =========> srcId: ${pbMessage.pbCommData.srcId} enMsgFrom: $enMsgFrom');
          _addMsgToList(pbMessage);
        }
        return true;
      });
    }
  }

  Future<void> _fetchGroupMemberUserInfo(
    int targetId,
  ) async {
    // if (!memberMap.containsKey(targetId)) {
    //   c
    //       .getRemoteMemberDetails(
    //     widget.groupId.toInt(),
    //     targetId,
    //   )
    //       .then((value) {
    //     if (null != value && context.mounted) {
    //       GetUserInfo(targetId).then((srcUserInfo) {
    //         final groupMember = ChatGroupMember(
    //           data: value,
    //           atName: value.username,
    //         );
    //
    //         groupMember.atName = srcUserInfo.nickName.isEmpty
    //             ? '游客${value.userId}'
    //             : srcUserInfo.nickName;
    //         LoggerManager().debug('group async user info ==== remark: ${value.remark}');
    //
    //         nameIdMap[groupMember.data.userId.toInt()] =
    //             '@${groupMember.atName}';
    //
    //         _members.add(groupMember);
    //       });
    //     }
    //   });
    // }
  }

  Future<void> _createLocalMsg(
    PBMessage pbMessage,
    GeneratedMessage msg,
  ) async {
    _addMsgToList(pbMessage);
  }

  Future<void> _sendAudioMessage(File soundFile) async {
    if (c.groupInfo.value.isGroupBanned) {
      showToast("您当前处于禁言状态，无法发言");
      return;
    }
    final path = soundFile.path;
    final audioDuration = await jsAudio.AudioPlayer().setFilePath(path);
    if (null != audioDuration) {
      final Uint8List uint8list = await soundFile.readAsBytes();
      LoggerManager()
          .debug('audio duration ===> ${audioDuration.inMicroseconds}');
      sendAudioMsg(
        AppUserInfo().imId,
        soundFile: soundFile,
        size: uint8list.length,
        audioDuration: audioDuration,
        callback: (types.AudioMessage audioMessage) {
          _hideChatMenuPanel();
          _addMessage(audioMessage);
        },
        onStatusChanged: (String msgSn, types.Status status) {
          _updateMessageStatus(msgSn, status);
        },
        isGroupChat: true,
        groupId: widget.groupId,
      );
    }
  }

  Widget _buildAudioWidget(
    types.AudioMessage audioMessage, {
    required int messageWidth,
  }) {
    return DeskVoiceMessage(
      msgId: audioMessage.id,
      url: audioMessage.uri,
      duration: audioMessage.duration,
      me: isMe(audioMessage.author.id),
    );
    // if (Platform.isMacOS || Platform.isWindows) {
    //   return DeskVoiceMessage(
    //     url: audioMessage.uri,
    //     me: isMe(audioMessage.author.id),
    //   );
    // }
    // return VoiceMessage(
    //   audioSrc: audioMessage.uri,
    //   me: isMe(audioMessage.author.id),
    //   meBgColor: Theme.of(context).colorScheme.primary,
    // );
  }

  Widget _buildBubbleWidget(
    Widget child, {
    required types.Message message,
    required bool nextMessageInGroup,
  }) {
    bool me = isMe(message.author.id);
    return Container(
      margin: me ? null : EdgeInsets.only(left: Dimens.gap_dp10),
      decoration: (message.type == types.MessageType.image ||
              message.type == types.MessageType.audio)
          ? null
          : BoxDecoration(
              color: me
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.surface,
              borderRadius: me
                  ? BorderRadius.only(
                      topLeft: Radius.circular(Dimens.gap_dp10),
                      topRight: Radius.circular(Dimens.gap_dp10),
                      bottomLeft: Radius.circular(Dimens.gap_dp10),
                    )
                  : BorderRadius.only(
                      topLeft: Radius.circular(Dimens.gap_dp10),
                      topRight: Radius.circular(Dimens.gap_dp10),
                      bottomRight: Radius.circular(Dimens.gap_dp10),
                    ),
            ),
      child: child,
    );
  }

  Future<void> _onAtChanged(List<LengthMap> list) async {
    atNameIdMap.clear();
    atNameList.clear();
    for (final lengthMap in list) {
      if (nameIdMap.containsValue(lengthMap.str.trim())) {
        final index = nameIdMap.values.toList().indexOf(lengthMap.str);
        final id = nameIdMap.keys.toList()[index];
        atNameList.add(lengthMap.str);
        atNameIdMap[lengthMap.str.trim()] = id;
      } else if (lengthMap.str.trim() == '@all') {
        atNameList.add(lengthMap.str);
        atNameIdMap[lengthMap.str.trim()] = AppUserInfo().imId;
      }
    }
    LoggerManager().debug('_onAtChanged ===========> $atNameIdMap');
  }

  Widget _buildMentionsWidget(
    String text,
    String selectedMention,
  ) {
    List<ChatGroupMember> members = [];
    for (final item in _members) {
      final isSelf = item.data.userId == AppUserInfo().imId;
      if (!isSelf) {
        members.add(item);
      }
    }
    if (selectedMention.isNotEmpty) {
      final value = selectedMention.substring(1, selectedMention.length);
      members = _members.where((element) {
        return element.atName.contains(value);
      }).toList();
    }

    if (hasAdminRights) {
      final member = members.firstWhereOrNull((element) => element.atAll);
      if (null == member) {
        members.insert(
          0,
          ChatGroupMember(
              data: Member(avatar: ''), atName: 'all ', atAll: true),
        );
      }
    }

    return Container(
      constraints: BoxConstraints(
        maxHeight: Dimens.gap_dp10 * 30,
      ),
      color: Theme.of(context).colorScheme.surface,
      padding: EdgeInsets.symmetric(vertical: Dimens.gap_dp10),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: members.length,
        itemBuilder: (context, index) {
          final ChatGroupMember member = members[index];
          final String name = member.atName;
          return Material(
            color: Theme.of(context).colorScheme.surface,
            child: InkWell(
              onTap: () {
                eventBus.fire(InsertAtText(name));
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimens.gap_dp20,
                  vertical: Dimens.gap_dp1 * 5,
                ),
                child: Row(
                  children: [
                    ConversationAvatar(
                      size: Dimens.gap_dp40,
                      url: member.data.avatar,
                      msgCountType: ENMsgCountType.privateMsgCount,
                      name: name,
                    ),
                    Gaps.hGap10,
                    Expanded(
                      child: Text(
                        '@$name',
                        softWrap: false,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: const Color(0xFF333333),
                          fontSize: Dimens.font_sp14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _onCameraPressed() async {
    if (c.groupInfo.value.isGroupBanned) {
      showToast("您当前处于禁言状态，无法发言");
      return;
    }
    final assetEntity = await CameraPicker.pickFromCamera(
      context,
      pickerConfig: const CameraPickerConfig(enableRecording: true),
    );
    if (null != assetEntity) {
      final file = await assetEntity.originFile;
      if (null != file) {
        final assetType = assetEntity.type;
        if (assetType == AssetType.image) {
          SendImageMsg(
            AppUserInfo().imId,
            context,
            path: file.path,
            cameraPick: true,
            isGroupChat: true,
            groupId: widget.groupId,
            callback: (
              types.ImageMessage imageMessage,
            ) {
              _hideChatMenuPanel();
              _addMessage(imageMessage);
            },
            onStatusChanged: (String msgSn, types.Status status) {
              _updateMessageStatus(msgSn, status);
            },
          );
        } else if (assetType == AssetType.video) {
          sendVideoMsg(
            AppUserInfo().imId,
            path: file.path,
            cameraPick: true,
            isGroupChat: true,
            groupId: widget.groupId,
            callback: (
              types.VideoMessage videoMessage,
            ) {
              _hideChatMenuPanel();
              _addMessage(videoMessage);
            },
            onStatusChanged: (String msgSn, types.Status status) {
              _updateMessageStatus(msgSn, status);
            },
          );
        }
      }
    }
  }

  Future<void> _chooseFile() async {
    if (c.groupInfo.value.isGroupBanned) {
      showToast("您当前处于禁言状态，无法发言");
      return;
    }
    final result = await FilePicker.platform.pickFiles(
      type: FileType.any,
    );
    if (result != null && result.files.single.path != null) {
      sendFileMsg(
        AppUserInfo().imId,
        file: result.files.single,
        callback: (types.FileMessage fileMessage) {
          _hideChatMenuPanel();
          _addMessage(fileMessage);
        },
        isGroupChat: true,
        groupId: widget.groupId,
        onStatusChanged: (String msgSn, types.Status status) {
          _updateMessageStatus(msgSn, status);
        },
      );
    }
  }

  bool isMe(String authorId) {
    return authorId == '${AppUserInfo().imId}';
  }

  Future<void> _hideChatMenuPanel() async {
    eventBus.fire(HideChatMenuPanel());
  }

  bool get isMultiSelected => c.isMultiSelect.value;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: CustomAppBar(
        leading: widget.enableBack
            ? BackButton(
                color: Colors.black87,
                onPressed: () {
                  if (isMultiSelected) {
                    c.multiSelectedMessageList.clear();
                    c.updateSelectStatus();
                  } else {
                    Navigator.of(context).pop();
                  }
                },
              )
            : ((Platform.isMacOS || Platform.isWindows) && isMultiSelected)
                ? IconButton(
                    onPressed: () {
                      c.updateSelectStatus();
                    },
                    icon: const Icon(Icons.close),
                    color: Colors.black87,
                  )
                : null,
        automaticallyImplyLeading: widget.enableBack,
        centerTitle:
            (Platform.isMacOS || Platform.isWindows || Platform.isLinux)
                ? false
                : true,
        title: Obx(
          () {
            final name = c.groupInfo.value.name;
            LoggerManager().debug('chat group name =================> $name');
            return GroupNameWidget(
              groupId: widget.groupId.toInt(),
              groupDetails: groupDetailRsp,
              style: const TextStyle(color: Colors.black87),
              showMemberCount: true,
              // count: memberCount,
            );
          },
        ),
        actions: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              CustomPopupMenu(
                menuBuilder: () => ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    color: const Color(0xFF4C4C4C),
                    padding: EdgeInsets.symmetric(
                      vertical: Dimens.gap_dp10,
                    ),
                    child: IntrinsicWidth(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: menuItems
                            .map(
                              (item) => GestureDetector(
                                behavior: HitTestBehavior.translucent,
                                onTap: () async {
                                  _controller.hideMenu();
                                  if (item.type == 0) {
                                    if (c.groupInfo.value.disbanded == 1) {
                                      showToast("群已解散");
                                      return;
                                    }
                                    // if (Dimens.isDesktop()) {
                                    //   MyAlertDialog().show(
                                    //     child: GroupInfoPage(
                                    //       ginfo: c.groupInfo.value,
                                    //     ),
                                    //   );
                                    //   return;
                                    // }
                                    final result = await Navigator.pushNamed(
                                      context,
                                      GroupInfoPage.name,
                                      arguments: c.groupInfo.value,
                                    );
                                    LoggerManager()
                                        .debug('群设置 result ========> $result');
                                    if (null != result &&
                                        result is bool &&
                                        result) {
                                      Navigator.pop(context);
                                    } else {
                                      setState(() {});
                                    }
                                  } else if (item.type == 1) {
                                    if (c.groupInfo.value.ownerId ==
                                        AppUserInfo().imId) {
                                      DialogManager.showDisbandGroupDialog(
                                        context,
                                        onConfirm: () async {
                                          /// 群主只能解散不能退出
                                          Client.instance.sendMsg(
                                            DisbandGroupsReq()
                                              ..groupIds.add(widget.groupId),
                                            widget.groupId,
                                            MakePBCommData(
                                              aimId: widget.groupId,
                                              groupId: widget.groupId,
                                              toService: Service.group,
                                            ),
                                          );
                                          final conversation =
                                              await ImController.to
                                                  .getConversationById(
                                            widget.groupId.toInt(),
                                          );
                                          if (null != conversation) {
                                            ImController.to
                                                .delete(conversation);
                                          }
                                          if (Platform.isAndroid ||
                                              Platform.isIOS) {
                                            if (context.mounted) {
                                              Navigator.pop(context);
                                            }
                                          }
                                        },
                                      );
                                    } else {
                                      DialogManager.showExitGroupDialog(
                                        context,
                                        onConfirm: () async {
                                          if (c.groupInfo.value.isDisbanded) {
                                            showToast('已退出');
                                            AppDatabase().groupDao?.delete(
                                                  groupId:
                                                      widget.groupId.toInt(),
                                                );
                                            AppDatabase()
                                                .groupMessageDao
                                                ?.delete(
                                                  groupId:
                                                      widget.groupId.toInt(),
                                                );
                                          } else {
                                            /// 删除群信息
                                            Client.instance.sendMsg(
                                              QuitReq(),
                                              widget.groupId,
                                              MakePBCommData(
                                                aimId: widget.groupId,
                                                groupId: widget.groupId,
                                                toService: Service.group,
                                              ),
                                            );
                                            showToast(
                                              '您退出了群${groupDetailRsp.name}',
                                            );
                                          }
                                          final conversation =
                                              await ImController.to
                                                  .getConversationById(
                                            widget.groupId.toInt(),
                                          );
                                          if (null != conversation) {
                                            ImController.to
                                                .delete(conversation);
                                          }
                                          await AppDatabase()
                                              .groupMemberDao
                                              ?.delete(
                                                groupId: widget.groupId.toInt(),
                                                userId: AppUserInfo().imId,
                                              );
                                          if (Platform.isAndroid ||
                                              Platform.isIOS) {
                                            // ignore: use_build_context_synchronously
                                            Navigator.pop(context);
                                          }
                                        },
                                      );
                                    }
                                  }
                                },
                                child: Container(
                                  height: Dimens.gap_dp40,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: Dimens.gap_dp20,
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        item.icon,
                                        size: Dimens.gap_dp18,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .surface,
                                      ),
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.only(
                                            left: Dimens.gap_dp10,
                                          ),
                                          padding: EdgeInsets.symmetric(
                                            vertical: Dimens.gap_dp10,
                                          ),
                                          child: Text(
                                            item.title,
                                            style: TextStyle(
                                              fontSize: Dimens.font_sp14,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .surface,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
                ),
                pressType: PressType.singleClick,
                verticalMargin: -10,
                controller: _controller,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: Dimens.gap_dp10,
                  ),
                  child: Icon(
                    Icons.more_horiz,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
              ),
              if (c.applyListsSize.value > 0)
                Container(
                  width: 4,
                  height: 4,
                  margin: const EdgeInsets.only(top: 10, right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.red,
                  ),
                )
            ],
          )
        ],
      ),
      floatingActionButton: Platform.isWindows || Platform.isMacOS
          ? ValueListenableBuilder(
              valueListenable: _showBottomBtnNotifier,
              builder: (context, isShow, child) {
                if (isShow) {
                  return Container(
                    width: Dimens.gap_dp30,
                    height: Dimens.gap_dp30,
                    margin: EdgeInsets.symmetric(
                      vertical: Dimens.gap_dp60,
                      horizontal: Dimens.gap_dp10,
                    ),
                    child: FloatingActionButton(
                      backgroundColor: Theme.of(context).colorScheme.surface,
                      onPressed: () {
                        _scrollController.animateTo(
                          0,
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.easeIn,
                        );
                      },
                      child: Icon(
                        Icons.arrow_downward,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  );
                }
                return Gaps.empty;
              },
            )
          : null,
      body: Column(
        children: [
          ChatMarqueeGroupWidget(
            groupId: widget.groupId.toInt(),
            value: c.groupInfo.value.notice ?? '',
            showGroupNotice: c.showGroupNotice.value,
            hasAdminRights: hasAdminRights,
          ),
          Expanded(
            child: chatUI.Chat(
              unreadAtMessageList:
                  _conversationController?.unreadAtMessageList ?? [],
              updateAtMessage: (message) {
                _conversationController?.updateAtMessage(
                  widget.groupId.toInt(),
                  message,
                );
              },
              holderWidget: c.loading.value
                  ? RepaintBoundary(
                      child: Container(
                        alignment: Alignment.center,
                        color: Theme.of(context).colorScheme.surface,
                        child: SizedBox(
                          width: Dimens.gap_dp1 * 35,
                          height: Dimens.gap_dp1 * 35,
                          child: CircularProgressIndicator(
                            backgroundColor: Colors.transparent,
                            strokeWidth: 2.5,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ),
                      ),
                    )
                  : null,
              messages: _messages,
              isMultiSelect: isMultiSelected,
              // scrollController: _scrollController,
              backPic: c.groupInfo.value.backPic,
              theme: const chatUI.DefaultChatTheme(
                backgroundColor: Color(0xFFF7F7F7),
              ),
              onBackgroundTap: _hideChatMenuPanel,
              // bubbleBuilder: _buildBubbleWidget,
              audioMessageBuilder: _buildAudioWidget,
              onAttachmentPressed: _handleAttachmentPressed,
              onMessageTap: _handleMessageTap,
              onAvatarLongPressed: (types.User user) async {
                final userId = int.parse(user.id);
                final currentUser = userId == AppUserInfo().imId;
                if (currentUser) {
                  return;
                }

                if (context.mounted) {
                  if (hasAdminRights) {
                    AvatarLongPressedDialog.show(context, (action) async {
                      if (action == 0) {
                        /// 封禁
                        c.banMember(
                          userId: userId,
                          groupId: widget.groupId.toInt(),
                          banned: true,
                        );
                      } else if (action == 1) {
                        /// 取消封禁
                        c.banMember(
                          userId: userId,
                          groupId: widget.groupId.toInt(),
                          banned: false,
                        );
                      } else if (action == 2) {
                        /// 踢出群组
                        c.kickOutMember(
                          context,
                          userId: userId,
                          groupId: widget.groupId.toInt(),
                        );
                      } else {
                        final memberInfo = await c.getMemberDetails(
                          widget.groupId.toInt(),
                          userId,
                          showLoading: true,
                        );

                        /// @对方
                        if (!memberMap.containsKey(userId) &&
                            null != memberInfo) {
                          final userInfo = await GetUserInfo(userId);
                          memberInfo.username = userInfo.nickName;

                          final groupMember = ChatGroupMember(
                            data: memberInfo,
                            atName: memberInfo.username,
                          );

                          groupMember.atName = memberInfo.username.isEmpty
                              ? '游客${memberInfo.userId}'
                              : memberInfo.username;

                          nameIdMap[groupMember.data.userId.toInt()] =
                              '@${groupMember.atName}';

                          _members.add(groupMember);
                          memberMap[userId] = memberInfo;

                          eventBus
                              .fire(InsertAtText(' @${groupMember.atName} '));
                        } else {
                          ChatGroupMember? member;
                          LoggerManager().debug(
                              'onAvatarLongPressed userId =======> $userId');
                          for (final item in _members) {
                            LoggerManager().debug(
                                'onAvatarLongPressed item userId =======> ${item.data.userId.toInt()}');
                            if (item.data.userId.toInt() == userId) {
                              member = item;
                            }
                          }
                          if (null != member) {
                            eventBus.fire(InsertAtText(' @${member.atName} '));
                          }
                        }
                      }
                    });
                  } else {
                    final memberInfo = await c.getMemberDetails(
                      widget.groupId.toInt(),
                      userId,
                      showLoading: true,
                    );

                    /// @对方
                    if (!memberMap.containsKey(userId) && null != memberInfo) {
                      final userInfo = await GetUserInfo(userId);
                      memberInfo.username = userInfo.nickName;

                      final groupMember = ChatGroupMember(
                        data: memberInfo,
                        atName: memberInfo.username,
                      );

                      groupMember.atName = memberInfo.username.isEmpty
                          ? '游客${memberInfo.userId}'
                          : memberInfo.username;

                      nameIdMap[groupMember.data.userId.toInt()] =
                          '@${groupMember.atName}';

                      _members.add(groupMember);
                      memberMap[userId] = memberInfo;

                      eventBus.fire(InsertAtText(' @${groupMember.atName} '));
                    } else {
                      ChatGroupMember? member;
                      LoggerManager()
                          .debug('onAvatarLongPressed userId =======> $userId');
                      for (final item in _members) {
                        LoggerManager().debug(
                            'onAvatarLongPressed item userId =======> ${item.data.userId.toInt()}');
                        if (item.data.userId.toInt() == userId) {
                          member = item;
                        }
                      }
                      if (null != member) {
                        eventBus.fire(InsertAtText(' @${member.atName} '));
                      }
                    }
                  }
                }
              },
              onAvatarTap: (types.User user) async {
                final userId = int.parse(user.id);
                final currentUser = userId == AppUserInfo().imId;
                FriendInfo friendInfo = await GetFriendInfo(userId);
                Member? member;
                if (!currentUser) {
                  member = _members
                      .firstWhere(
                          (element) => element.data.userId.toInt() == userId)
                      .data;
                }
                if (Dimens.isDesktop()) {
                  MyAlertDialog().show(
                    child: currentUser
                        ? ffi.FriendInfoV(finfo: friendInfo)
                        : ffi.FriendInfoV(
                            finfo: friendInfo,
                            member: member,
                            groupId: widget.groupId.toInt(),
                            hasAdminRights: hasAdminRights,
                          ),
                  );
                  return;
                }

                // ignore: use_build_context_synchronously
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return currentUser
                          ? ffi.FriendInfoV(finfo: friendInfo)
                          : ffi.FriendInfoV(
                              finfo: friendInfo,
                              member: member,
                              groupId: widget.groupId.toInt(),
                              hasAdminRights: hasAdminRights,
                            );
                    },
                  ),
                );
              },
              onAtTap: (message, atNameIdMap, atName) async {
                final userId = atNameIdMap[atName] as int;
                FriendInfo friendInfo = await GetFriendInfo(userId);
                final member = _members
                    .firstWhere(
                        (element) => element.data.userId.toInt() == userId)
                    .data;
                if (Dimens.isDesktop()) {
                  MyAlertDialog().show(
                    child: ffi.FriendInfoV(
                      finfo: friendInfo,
                      member: member,
                      groupId: widget.groupId.toInt(),
                      hasAdminRights: hasAdminRights,
                    ),
                  );
                  return;
                }

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return ffi.FriendInfoV(
                        finfo: friendInfo,
                        member: member,
                        groupId: widget.groupId.toInt(),
                        hasAdminRights: hasAdminRights,
                      );
                    },
                  ),
                );
              },
              // onMessageLongPress: _handleMessageLongPressed,
              onMessageStatusTap:
                  isMultiSelected ? null : _handleMessageLongPressed,
              onPreviewDataFetched: _handlePreviewDataFetched,
              onSendPressed: _handleSendPressed,
              customBottomWidget: c.groupInfo.value.isBanned && !hasAdminRights
                  ? Container(
                      width: double.infinity,
                      height: Dimens.gap_dp48,
                      color: Colors.white,
                      alignment: Alignment.center,
                      child: Text(
                        '当前群聊已禁言',
                        style: TextStyle(
                          color: Colors.black38,
                          fontWeight: FontWeight.bold,
                          fontSize: Dimens.font_sp16,
                        ),
                      ),
                    )
                  : isMultiSelected
                      ? ForwardMessageBottomBar(
                          conversationId: widget.groupId.toInt(),
                          messages: c.multiSelectedMessageList,
                          privateChat: false,
                        )
                      : MessageBottomBar(
                          focusNode: _focusNode,
                          controller: _editingController,
                          repliedMessage: c.repliedMessage.value,
                          onAttachmentPressed: _handleAttachmentPressed,
                          onSendPressed: _handleSendPressed,
                          onVoiceMessageSend: _sendAudioMessage,
                          onFilePressed: _chooseFile,
                          onCameraPressed: _onCameraPressed,
                          mentionsBuilder: _buildMentionsWidget,
                          enableAt: true,
                          onVideoPressed: _handleVideoPressed,
                          onScreenshotPressed: () {
                            _onScreenshotPressed(context);
                          },
                          onRedPacketPressed: () {
                            Get.to(
                              GroupChatRedPacketPage(
                                targetId: widget.groupId.toInt(),
                                groupName: c.groupInfo.value.name,
                              ),
                            );
                          },
                          onBusinessCardPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<FriendInfo>(
                                builder: (context) {
                                  return const SelectContactPage(
                                      isMulti: false);
                                },
                              ),
                            ).then(
                              (value) async {
                                if (null != value) {
                                  final message =
                                      await IMClient.sendCardMessage(
                                    widget.groupId.toInt(),
                                    name: value.userInfo.nickName,
                                    avatar: value.userInfo.avatar,
                                    conversationType: CHAT_TYPE.GROUP,
                                    groupId: widget.groupId,
                                    userId: '${value.userInfo.imId}',
                                  );
                                  int index = _messages.indexWhere(
                                    (element) => element.id == message.id,
                                  );
                                  if (index == -1) {
                                    _addMessage(message);
                                  }
                                }
                              },
                            );
                          },
                          onFileCopy: (files) {
                            if (c.groupInfo.value.isGroupBanned) {
                              showToast('您当前处于禁言状态，无法发言');
                              return;
                            }
                            List<XFile> fileList =
                                files.map((path) => XFile(path)).toList();
                            _sendFilesWithConfirmation(fileList);
                          },
                          clearReply: () {
                            c.updateRepliedMessage(null);
                          },
                          onAtChanged: _onAtChanged,
                        ),
              multiSelectedList: c.multiSelectedMessageList,
              onCheckChanged: (
                types.Message message, {
                required bool changed,
              }) {
                c.addSelectedMessage(message, changed);
              },
              showUserAvatars: true,
              showUserNames: true,
              nameBuilder: (author) {
                return UserNameWidget(
                  author: author,
                  groupId: widget.groupId.toInt(),
                );
              },
              user: c.user,
              onRefresh: () async {
                refreshHistroryMessage();
              },
              imageMessageBuilder: (
                types.ImageMessage imageMessage, {
                required int messageWidth,
              }) {
                return ImageMessageWidget(
                  imageMessage: imageMessage,
                  messageWidth: messageWidth,
                );
              },
              customMessageBuilder: (
                types.CustomMessage customMessage, {
                required int messageWidth,
              }) {
                return CustomWidget(
                  message: customMessage,
                  messageWidth: messageWidth,
                  onTap: () async {
                    final customType = customMessage.metadata!['customType'];
                    if (customType == 'businessCard') {
                      var userId = customMessage.metadata!['userId'];
                      userId = int.parse(userId);
                      FriendInfo friendInfo = await GetFriendInfo(userId);
                      final member = _members
                          .firstWhere((element) =>
                              element.data.userId.toInt() == userId)
                          .data;
                      if (Dimens.isDesktop()) {
                        MyAlertDialog().show(
                          child: ffi.FriendInfoV(
                            finfo: friendInfo,
                            member: member,
                            groupId: widget.groupId.toInt(),
                            hasAdminRights: hasAdminRights,
                          ),
                        );
                        return;
                      }

                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return ffi.FriendInfoV(
                              finfo: friendInfo,
                              member: member,
                              groupId: widget.groupId.toInt(),
                              hasAdminRights: hasAdminRights,
                            );
                          },
                        ),
                      );
                    } else if (customType == 'redPacket') {
                      if (null != customMessage.metadata) {
                        final json = customMessage.metadata!['data'];
                        final rsp = RedPacketInfoRsp.fromJson(json);
                        c.getRedPacketInfo(
                          context,
                          rsp.data.redPacketId.toInt(),
                          customMessage.id,
                        );
                      }
                    }
                  },
                );
              },
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              emptyState: const Empty(
                text: '暂无聊天记录',
              ),
              replyMessageBuilder: (
                types.TextMessage message, {
                required int messageWidth,
              }) {
                final types.Message? repliedMessage = message.repliedMessage;
                if (null != repliedMessage) {
                  if (repliedMessage is types.ImageMessage) {
                    return GestureDetector(
                      onTap: () {
                        final List<PreviewImage> images = <PreviewImage>[
                          PreviewImage(
                            id: repliedMessage.id,
                            uri: repliedMessage.uri,
                            author: repliedMessage.author,
                          ),
                        ];
                        if (Dimens.isDesktop()) {
                          MyAlertDialog().show(
                            child: MediaPreviewView(images: images),
                          );
                          return;
                        }
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (
                              context,
                              animation,
                              secondaryAnimation,
                            ) =>
                                MediaPreviewView(images: images),
                            transitionDuration: Duration.zero,
                          ),
                        );
                      },
                      child: ImageMessageWidget(
                        imageMessage: repliedMessage,
                        messageWidth: messageWidth,
                      ),
                    );
                  } else if (repliedMessage is types.VideoMessage) {
                    return GestureDetector(
                      onTap: () {
                        String thumbnailUrl = '';
                        if (null != repliedMessage.metadata) {
                          thumbnailUrl = repliedMessage.metadata!['thumbnail'];
                        }
                        final List<PreviewVideo> videos = <PreviewVideo>[
                          PreviewVideo(
                            id: repliedMessage.id,
                            uri: repliedMessage.uri,
                            thumbnail: thumbnailUrl,
                            author: repliedMessage.author,
                          ),
                        ];
                        if (Dimens.isDesktop()) {
                          final videoUrl = videos.first.uri;
                          MyAlertDialog().show(
                            child: PcPreviewVideoWidget(url: videoUrl),
                          );
                          return;
                        }
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    PreviewVideoWidget(
                              videos: videos,
                            ),
                            transitionDuration: Duration.zero,
                          ),
                        );
                      },
                      child: VideoMessage(
                        message: repliedMessage,
                        messageWidth: messageWidth,
                      ),
                    );
                  } else if (repliedMessage is types.FileMessage) {
                    return chatUI.FileMessage(message: repliedMessage);
                  } else if (repliedMessage is types.AudioMessage) {
                    return const Text(
                      '[语音消息]',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFFF4F4F4),
                        fontWeight: FontWeight.w500,
                      ),
                    );
                  } else if (repliedMessage is types.TextMessage) {
                    return chatUI.TextMessage(
                      emojiEnlargementBehavior: EmojiEnlargementBehavior.multi,
                      hideBackgroundOnEmojiMessages: true,
                      message: repliedMessage,
                      showName: false,
                      usePreviewData: true,
                    );
                  }
                }
                return Gaps.empty;
              },
              previewImage: (
                int initialPage,
                Map<String, String>? imageHeaders,
                List<PreviewImage> images,
                chatUI.ImageGalleryOptions options,
              ) {
                if (Dimens.isDesktop()) {
                  MyAlertDialog().show(
                    child: MediaPreviewView(
                      images: images,
                      options: options,
                      initialPage: initialPage,
                      imageHeaders: imageHeaders,
                    ),
                  );
                  return;
                }
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        MediaPreviewView(
                      images: images,
                      options: options,
                      initialPage: initialPage,
                      imageHeaders: imageHeaders,
                    ),
                    transitionDuration: Duration.zero,
                  ),
                );
              },
              previewVideo: (
                int initialPage,
                List<PreviewVideo> videos,
              ) {
                if (Dimens.isDesktop()) {
                  final videoUrl = videos[initialPage].uri;
                  MyAlertDialog().show(
                    child: PcPreviewVideoWidget(url: videoUrl),
                  );
                  return;
                }
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        PreviewVideoWidget(
                      initialPage: initialPage,
                      videos: videos,
                    ),
                    transitionDuration: Duration.zero,
                  ),
                );
              },
              menuBuilder: isMultiSelected
                  ? null
                  : (context, message, controller) {
                      final List<ItemModel> menuItems = [];
                      if (enableCopy(message)) {
                        menuItems.add(
                          ItemModel(text: '复制', icon: Icons.copy),
                        );
                      }
                      if (enableRecall(message)) {
                        menuItems.add(
                          ItemModel(text: '撤回', icon: Icons.redo),
                        );
                      }
                      menuItems.add(
                        ItemModel(text: '引用', icon: Icons.format_quote),
                      );
                      menuItems.add(
                        ItemModel(
                          text: '多选',
                          icon: Icons.playlist_add_check,
                        ),
                      );
                      // menuItems.add(
                      //   ItemModel(
                      //     text: '收藏',
                      //     icon: Icons.collections,
                      //   ),
                      // );
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(Dimens.gap_dp6),
                        child: Container(
                          color: const Color(0xFF4C4C4C),
                          padding:
                              EdgeInsets.symmetric(horizontal: Dimens.gap_dp10),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: menuItems
                                .map((e) => buildMenuItem(
                                      context,
                                      message,
                                      e,
                                      controller,
                                    ))
                                .toList(),
                          ),
                        ),
                      );
                    },
              buildCustomMenu: (
                BuildContext context,
                types.Message message,
              ) {
                if (message.status == Status.sending ||
                    message.status == Status.error) {
                  return null;
                }
                final List<MenuItem> menuItems = [];
                if (enableCopy(message)) {
                  menuItems.add(
                    MenuItem(
                      label: '复制',
                      onClick: (_) {
                        _copyMessageText(context, message);
                      },
                    ),
                  );
                }
                if (enableRecall(message)) {
                  menuItems.add(
                    MenuItem(
                      label: '撤回',
                      onClick: (_) {
                        _recallMessage(context, message);
                      },
                    ),
                  );
                }
                menuItems.add(
                  MenuItem(
                    label: '引用',
                    onClick: (_) {
                      _quoteMessage(context, message);
                    },
                  ),
                );
                menuItems.add(
                  MenuItem(
                    label: '多选',
                    onClick: (_) {
                      c.updateSelectStatus();
                    },
                  ),
                );
                return Menu(
                  items: menuItems,
                );
              },
            ),
          ),
        ],
      ),
/*      body: Stack(
        children: [
          c.loading.isTrue
              ? Container(
                  alignment: Alignment.center,
                  color: Theme.of(context).colorScheme.surface,
                  child: SizedBox(
                    width: Dimens.gap_dp1 * 35,
                    height: Dimens.gap_dp1 * 35,
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.transparent,
                      strokeWidth: 2.5,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                )
              : ,
        ],
      ),*/
    );
  }

  Future<void> _copyMessageText(
    BuildContext context,
    types.Message message,
  ) async {
    if (message is types.TextMessage) {
      final metadata = message.metadata;
      if (null != metadata) {
        final pbMessage = message.metadata!['pbMessage'] as PBMessage;
        final pbDataMsg = message.metadata!['pbDataMsg'] as GeneratedMessage;
        final value = await getItemText(pbMessage, pbDataMsg);
        await Clipboard.setData(
          ClipboardData(text: value),
        );
      } else {
        await Clipboard.setData(
          ClipboardData(text: message.text),
        );
      }
      showToast('已复制');
    }
  }

  Future<void> _quoteMessage(
    BuildContext context,
    types.Message message,
  ) async {
    c.updateRepliedMessage(message);
    if (!_focusNode.hasFocus) {
      _focusNode.requestFocus();
    }
  }

  Future<void> _recallMessage(
    BuildContext context,
    types.Message message,
  ) async {
    DialogManager.showRecallMessageDialog(
      context,
      onConfirm: () {
        final groupId = widget.groupId;
        final messageId = message.id;
        final userId = int.parse(message.author.id);
        MsgRecallReq msgRecall = MsgRecallReq(
          msgSn: Int64(int.parse(messageId)),
          msgOwnerId: Int64(userId),
        );
        Client.instance.sendMsg(
          msgRecall,
          groupId,
          MakePBCommData(
            groupId: groupId,
            toService: Service.group,
          ),
        );
      },
    );
  }

  Widget buildMenuItem(
    BuildContext context,
    types.Message message,
    ItemModel item,
    CustomPopupMenuController controller,
  ) {
    return GestureDetector(
      onTap: () {
        _focusNode.unfocus();
        controller.hideMenu();
        if (item.text == '复制') {
          _copyMessageText(context, message);
        } else if (item.text == '引用') {
          _quoteMessage(context, message);
        } else if (item.text == '撤回') {
          _recallMessage(context, message);
        } else if (item.text == '多选') {
          c.updateSelectStatus();
        } else if (item.text == '收藏') {
          c.collectMessage(widget.groupId.toInt(), message);
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Dimens.gap_dp12,
          vertical: Dimens.gap_dp10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              item.icon,
              size: Dimens.gap_dp20,
              color: Colors.white,
            ),
            Container(
              margin: EdgeInsets.only(
                top: Dimens.gap_dp2,
              ),
              child: Text(
                item.text,
                style: TextStyle(
                  fontSize: Dimens.font_sp12,
                  color: Theme.of(context).colorScheme.surface,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool enableCopy(types.Message message) {
    return message is types.TextMessage;
  }

  bool enableRecall(types.Message message) {
    if (hasAdminRights) {
      return true;
    }
    if (message.author.id != '${AppUserInfo().imId}') {
      return false;
    }
    if (message.status == Status.sending || message.status == Status.error) {
      return false;
    }
    final dateTime = DateTime.fromMillisecondsSinceEpoch(message.createdAt!);
    final nowDateTime = DateTime.now();

    final differenceDuration = nowDateTime.difference(dateTime);
    final differenceSeconds = differenceDuration.inSeconds;
    return differenceSeconds <= 120;
  }

  Future<void> _sendFilesWithConfirmation(List<XFile> files) async {
    files.removeWhere((element) {
      final directory = Directory(element.path);
      final isDirectoryExists = directory.existsSync();
      return isDirectoryExists;
    });
    // ignore: use_build_context_synchronously
    DesktopWidget.showDesktopPopupWindow(
      context: context,
      width: 600,
      height: files.length < 4 ? 300 : 500,
      target:
          (null == c.groupInfo.value.name || c.groupInfo.value.name!.isEmpty)
              ? widget.name ?? ''
              : c.groupInfo.value.name,
      onClose: () {
        _editingController.clear();
      },
      child: (closeFunc) => Container(
        padding: const EdgeInsets.only(bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Scrollbar(
                child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    final file = files[index];
                    final String fileFormat = path.extension(file.path).split(
                        ".")[path.extension(file.path).split(".").length - 1];
                    return Material(
                      color: Theme.of(context).colorScheme.surface,
                      child: InkWell(
                        onTap: () {
                          launchUrl(Uri.file(file.path));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 6,
                            horizontal: 20,
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: Dimens.gap_dp2 * 22,
                                height: Dimens.gap_dp2 * 22,
                                child: Container(
                                  padding: EdgeInsets.all(Dimens.gap_dp4),
                                  child: Image.asset(
                                      Config.fileMap[fileFormat.toLowerCase()]),
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Text(
                                  path.basename(file.path),
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider(
                      height: 1,
                      thickness: 1,
                      color: Theme.of(context).dividerColor,
                    );
                  },
                  itemCount: files.length,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      _editingController.clear();
                      closeFunc();
                    },
                    child: const Text('取消'),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _editingController.clear();
                      _sendDropFiles(files);
                      closeFunc();
                    },
                    child: const Text('发送'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _sendGroupDropFiles(
    DropDoneDetails details,
    BuildContext context,
  ) async {
    final controller = ChatPageController.to;
    final currentIndex = controller.currentIndex.value;
    LoggerManager().debug('currentIndex =================> $currentIndex');

    List<XFile> files = details.files;
    files.removeWhere((element) {
      final directory = Directory(element.path);
      final isDirectoryExists = directory.existsSync();
      return isDirectoryExists;
    });
    DesktopWidget.showDesktopPopupWindow(
      context: context,
      width: 600,
      height: files.length < 4 ? 300 : 500,
      target: c.groupInfo.value.name,
      child: (closeFunc) => Container(
        padding: const EdgeInsets.only(bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Scrollbar(
                child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    final file = files[index];
                    final String fileFormat = path.extension(file.path).split(
                        ".")[path.extension(file.path).split(".").length - 1];
                    return Material(
                      color: Theme.of(context).colorScheme.surface,
                      child: InkWell(
                        onTap: () {
                          launchUrl(Uri.file(file.path));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 6, horizontal: 20),
                          child: Row(
                            children: [
                              SizedBox(
                                width: Dimens.gap_dp2 * 22,
                                height: Dimens.gap_dp2 * 22,
                                child: Container(
                                  padding: EdgeInsets.all(Dimens.gap_dp4),
                                  child: Image.asset(
                                      Config.fileMap[fileFormat.toLowerCase()]),
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Text(
                                  path.basename(file.path),
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider(
                      height: 1,
                      thickness: 1,
                      color: Theme.of(context).dividerColor,
                    );
                  },
                  itemCount: files.length,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      closeFunc();
                    },
                    child: const Text('取消'),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      files.forEach((element) async {
                        final size = await element.length();
                        sendFileMsg(
                          AppUserInfo().imId,
                          file: PlatformFile(
                            name: element.name,
                            size: size,
                            path: element.path,
                          ),
                          callback: (types.FileMessage fileMessage) {
                            _hideChatMenuPanel();
                            _addMessage(fileMessage);
                          },
                          isGroupChat: true,
                          groupId: widget.groupId,
                          onStatusChanged: (String msgSn, types.Status status) {
                            _updateMessageStatus(msgSn, status);
                          },
                        );
                      });
                      closeFunc();
                    },
                    child: const Text('发送'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  final GlobalKey<ExtendedImageEditorState> editorKey =
      GlobalKey<ExtendedImageEditorState>();

  Future<void> _onScreenshotPressed(BuildContext context) async {
    if (c.groupInfo.value.isGroupBanned) {
      showToast("您当前处于禁言状态，无法发言");
      return;
    }
    if (!context.mounted) return;
    final file = await ScreenshotHelper.captureScreen();
    if (null != file) {
      final size = await ScreenshotHelper.getImageSize(file);

      // ignore: use_build_context_synchronously
      DesktopWidget.showPopupWindow(
        context: context,
        child: (closeFunc) {
          return ImageEditorPage(
            filePath: file,
            callback: (result) {
              closeFunc();
              if (null != result) {
                final imageKey = GlobalKey<ImagePainterState>();
                // ignore: use_build_context_synchronously
                DesktopWidget.showPopupWindow(
                  context: context,
                  child: (closeFunc1) {
                    return Column(
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.circular(Dimens.gap_dp16),
                            child: ImagePainter.file(
                              result,
                              key: imageKey,
                              onClear: () {
                                closeFunc1();
                              },
                            ),
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.symmetric(vertical: Dimens.gap_dp16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimens.gap_dp8),
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(
                                Dimens.gap_dp8,
                              ),
                              child: Container(
                                width: Dimens.gap_dp10 * 12,
                                height: Dimens.gap_dp46,
                                alignment: Alignment.center,
                                child: Text(
                                  '完成编辑',
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.surface,
                                  ),
                                ),
                              ),
                              onTap: () async {
                                try {
                                  LoadingDialog.show();
                                  final image = await imageKey.currentState
                                      ?.exportImage();
                                  if (null != image) {
                                    String directory;

                                    if (Platform.isWindows) {
                                      final dic = await getTemporaryDirectory();
                                      directory = dic.path;
                                    } else {
                                      final dic =
                                          await getApplicationSupportDirectory();
                                      directory = dic.path;
                                    }

                                    const uuid = Uuid();
                                    final fileName =
                                        'screenshot_edit_${uuid.v4()}.png';
                                    final filePath = '$directory/$fileName';

                                    final imgFile = File(filePath);

                                    imgFile.writeAsBytesSync(image);

                                    LoadingDialog.dismiss();

                                    closeFunc1();

                                    // ignore: use_build_context_synchronously
                                    DesktopWidget.showDesktopPopupWindow(
                                      context: context,
                                      width: 600,
                                      height: 600,
                                      target: c.groupInfo.value.name,
                                      child: (closeFunc1) => Container(
                                        padding: const EdgeInsets.all(16),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: SizedBox(
                                                height:
                                                    min(360, size.height / 2),
                                                child: RHExtendedImage.file(
                                                  imgFile,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                OutlinedButton(
                                                    onPressed: () {
                                                      closeFunc1();
                                                    },
                                                    child: const Text(('取消'))),
                                                const SizedBox(
                                                  width: 20,
                                                ),
                                                ElevatedButton(
                                                    onPressed: () {
                                                      closeFunc1();
                                                      SendScreenshot(
                                                        AppUserInfo().imId,
                                                        path: imgFile.path,
                                                        callback: (
                                                          types.ImageMessage
                                                              imageMessage,
                                                        ) {
                                                          _hideChatMenuPanel();
                                                          _addMessage(
                                                              imageMessage);
                                                        },
                                                        onStatusChanged:
                                                            (String msgSn,
                                                                types.Status
                                                                    status) {
                                                          _updateMessageStatus(
                                                              msgSn, status);
                                                        },
                                                        isGroupChat: true,
                                                        groupId: widget.groupId,
                                                      );
                                                    },
                                                    child: const Text(('发送')))
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  }
                                } catch (error) {
                                  LoadingDialog.dismiss();
                                }
                              },
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                  width: 600,
                  height: 600,
                );
              }
            },
          );
        },
        width: 600,
        height: 600,
      );
    }
  }

  void _addMessage(types.Message message) {
    // c.offSet += 1;
    if (mounted) {
      setState(() {
        _messages.insert(0, message);
      });
    }
  }

  void refreshHistroryMessage() {
    c.page += 1;
    // LoggerManager().debug('refreshHistroryMessage offset: ${c.offSet}');
    // c.loadHistoryMsgList();
    c.loadData();
  }

  Future<void> _handleVideoPressed() async {
    if (c.groupInfo.value.disbanded == 1) {
      showToast("群已解散");
      return;
    }
    if (mineMemberInfo.banned) {
      showToast("你已被封禁");
      return;
    }
    sendVideoMsg(
      AppUserInfo().imId,
      callback: (
        types.VideoMessage videoMessage,
      ) {
        _hideChatMenuPanel();
        _addMessage(videoMessage);
      },
      onStatusChanged: (String msgSn, types.Status status) {
        _updateMessageStatus(msgSn, status);
      },
      isGroupChat: true,
      groupId: widget.groupId,
    );
  }

  void _handleAttachmentPressed() {
    if (c.groupInfo.value.isGroupBanned) {
      showToast("您当前处于禁言状态，无法发言");
      return;
    }
    if (c.groupInfo.value.disbanded == 1) {
      showToast("群已解散");
      return;
    }
    if (mineMemberInfo.banned) {
      showToast("你已被封禁");
      return;
    }
    _handleImageSelection();
  }

  void _handleImageSelection() async {
    SendImageMsg(
      AppUserInfo().imId,
      context,
      targetName: c.groupInfo.value.name,
      callback: (types.ImageMessage imageMessage) {
        _hideChatMenuPanel();
        _addMessage(imageMessage);
      },
      onStatusChanged: (String msgSn, types.Status status) {
        _updateMessageStatus(msgSn, status);
      },
      isGroupChat: true,
      groupId: widget.groupId,
    );
  }

  void _handleMessageTap(BuildContext _, types.Message message) async {
    if (message is types.FileMessage) {
      var localPath = message.uri;

      if (message.uri.startsWith('http')) {
        try {
          final index =
              _messages.indexWhere((element) => element.id == message.id);
          final updatedMessage =
              (_messages[index] as types.FileMessage).copyWith(
            isLoading: true,
          );

          setState(() {
            _messages[index] = updatedMessage;
          });

          final client = http.Client();
          final request = await client.get(Uri.parse(message.uri));
          final bytes = request.bodyBytes;
          final documentsDir = (await getApplicationDocumentsDirectory()).path;
          localPath = '$documentsDir/${message.name}';

          if (!File(localPath).existsSync()) {
            final file = File(localPath);
            await file.writeAsBytes(bytes);
          }
        } finally {
          final index =
              _messages.indexWhere((element) => element.id == message.id);
          final updatedMessage =
              (_messages[index] as types.FileMessage).copyWith(
            isLoading: null,
          );

          setState(() {
            _messages[index] = updatedMessage;
          });
        }
      }

      await OpenFilex.open(localPath);
    }
  }

  Future<void> _handleMessageLongPressed(
    BuildContext context,
    types.Message message,
  ) async {
    if (message.author.id != '${AppUserInfo().imId}') {
      return;
    }
    if (message.status == Status.sending || message.status == Status.error) {
      return;
    }

    final dateTime = DateTime.fromMillisecondsSinceEpoch(message.createdAt!);
    final nowDateTime = DateTime.now();

    final differenceDuration = nowDateTime.difference(dateTime);
    final differenceSeconds = differenceDuration.inSeconds;
    if (differenceSeconds > 120) {
      return;
    }
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SizedBox(
            width: 400,
            height: 50,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(Dimens.gap_dp10),
              ),
              alignment: Alignment.centerLeft,
              child: const Text("要撤回消息吗？"),
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('确定'),
              onPressed: () async {
                final dateTime =
                    DateTime.fromMillisecondsSinceEpoch(message.createdAt!);
                final nowDateTime = DateTime.now();

                final differenceDuration = nowDateTime.difference(dateTime);
                final differenceSeconds = differenceDuration.inSeconds;
                if (differenceSeconds > 120) {
                  return;
                }
                final groupId = widget.groupId;
                final messageId = message.id;
                final userId = AppUserInfo().imId;
                MsgRecallReq msgRecall = MsgRecallReq(
                  msgSn: Int64(int.parse(messageId)),
                  msgOwnerId: Int64(userId),
                );
                Client.instance.sendMsg(
                  msgRecall,
                  groupId,
                  MakePBCommData(
                    groupId: groupId,
                    toService: Service.group,
                  ),
                );
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('取消'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _updateMessageStatus(String msgSn, types.Status status) async {
    for (int index = 0; index < _messages.length; index++) {
      final message = _messages[index];
      if (message.id == msgSn) {
        types.Message changeMessage = types.Message.fromJson(
          groupMessageChangeStatu(
            message,
            MsgReceipt(state: _statusToState(status)),
          ),
        );
        _messages.removeAt(index);
        _messages.insert(index, changeMessage);
        setState(() {});
      }
    }
  }

  MSG_STATE _statusToState(types.Status status) {
    if (status == types.Status.error) {
      return MSG_STATE.FAULT;
    }
    return MSG_STATE.INIT;
  }

  void _handlePreviewDataFetched(
    types.TextMessage message,
    types.PreviewData previewData,
  ) {
    final index = _messages.indexWhere((element) => element.id == message.id);
    final updatedMessage = (_messages[index] as types.TextMessage).copyWith(
      previewData: previewData,
    );

    setState(() {
      _messages[index] = updatedMessage;
    });
  }

  Future<void> _handleSendPressed(types.PartialText message) async {
    if (c.groupInfo.value.isGroupBanned) {
      showToast("您当前处于禁言状态，无法发言");
      return;
    }
    if (c.groupInfo.value.disbanded == 1) {
      showToast("群已解散");
      return;
    }
    if (mineMemberInfo.banned) {
      showToast("你已被封禁");
      return;
    }
    if (message.text.isEmpty) {
      showToast("请输入聊天内容");
      return;
    }

    final textMessage = await IMClient.sendTextMessage(
      AppUserInfo().imId,
      message.text,
      groupId: widget.groupId,
      conversationType: CHAT_TYPE.GROUP,
      repliedMessage: c.repliedMessage.value.message,
      atNames: atNameList,
      atNameIdMap: atNameIdMap,
    );
    c.updateRepliedMessage(null);
    if (textMessage is types.TextMessage) {
      _addMessage(textMessage);
    }
  }

  /// 防重复
  final List<int> localMsgSnList = [];

  ///////////////////////////////////////////
  void _addMsgToList(
    PBMessage pbMessage, {
    MSG_STATE msgState = MSG_STATE.INIT,
  }) async {
    try {
      // for (var item in c.groupInfo.value.lstMsg) {
      //   if (item.pbHeadMsg.pbCommData.msgSn == pbMessage.pbCommData.msgSn) {
      //     log("已经有一个了，不再加入");
      //     return;
      //   }
      // }
      log("222222222222222222_addMsgToList of pbmsgsn=${pbMessage.pbCommData.msgSn} ${pbMessage.pbName} localMsgSnList: $localMsgSnList",
          deep: 2);
      if (localMsgSnList.contains(pbMessage.pbCommData.msgSn.toInt())) {
        return;
      } else {
        localMsgSnList.add(pbMessage.pbCommData.msgSn.toInt());
      }
      var msg = ChatGroupData();
      await msg.initWithPBMsg(pbMessage); //.then((value) {
      msg.msgStatus = msgState;
      // if (pbMessage.pbCommData.srcId.toInt() != 0) {
      //   msg.uinfo = await GetUserInfo(
      //     pbMessage.pbCommData.srcId.toInt(),
      //     userSourceVersion: pbMessage.pbCommData.userSourceVersion,
      //   );
      // }
      log("add msg :${msg.pbHeadMsg.pbCommData.msgSn} to list");
      // c.groupInfo.value.lstMsg.add(msg);

      var map = await changeToGroupMessageMap(msg);

      var i = 0;
      for (final message in _messages) {
        if (message.author.id == '${pbMessage.pbCommData.srcId.toInt()}') {
          if (message.author.imageUrl != msg.userInfo.avatar) {
            Map<String, dynamic> dataMap = message.toJson();
            Map<String, dynamic> authorMap =
                dataMap['author'] as Map<String, dynamic>;
            authorMap['imageUrl'] = msg.userInfo.avatar;
            dataMap['author'] = authorMap;

            types.Message changeMessage = types.Message.fromJson(dataMap);
            _messages.removeAt(i);
            _messages.insert(i, changeMessage);
          }
        }
        i++;
      }

      if (map.isNotEmpty) {
        final message = types.Message.fromJson(map);

        setState(() {
          _messages.insert(0, message);
        });
      }
    } catch (error) {}
    // rcvMsgCount++;
  }

  void fetchMineMember() {
    Client.instance.sendMsg(
        MemberDetailReq(),
        widget.groupId,
        MakePBCommData(
            aimId: Int64(AppUserInfo().imId),
            groupId: widget.groupId,
            toService: Service.group));
  }

  @override
  bool get wantKeepAlive => true;
}
