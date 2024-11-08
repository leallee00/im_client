import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';
import 'package:desktop_drop/desktop_drop.dart';
import 'package:contextual_menu/contextual_menu.dart';
import 'package:file_picker/file_picker.dart';
import 'package:file_selector/file_selector.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart'
    hide VideoMessage, FileMessage, TextMessage;
import 'package:get/get.dart';
import 'package:image_painter/image_painter.dart';
import 'package:mime/mime.dart';
import 'package:protobuf/protobuf.dart';
import 'package:quliao/config/config.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/config/images.dart';
import 'package:quliao/db/database.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:http/http.dart' as http;
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quliao/flutter_chat_ui/src/models/item_model.dart';
import 'package:quliao/flutter_chat_ui/src/models/preview_image.dart';
import 'package:quliao/flutter_chat_ui/src/models/preview_video.dart';
import 'package:quliao/flutter_chat_ui/src/widgets/message/video_message.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/global/controller/im_controller.dart';
import 'package:quliao/global/controller/unread_message_controller.dart';
import 'package:quliao/im/im_client.dart';
import 'package:quliao/im/im_message_storage.dart';
import 'package:quliao/models/msg_struct.dart';
import 'package:quliao/models/sound_effect/sound_effect.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/models/user/userinfo.dart';
import 'package:quliao/modules/contacts/label/contacts/select_contact_page.dart';
import 'package:quliao/modules/conversation/pages/chat/editor/image_editor_page.dart';
import 'package:quliao/modules/red_packet/private/chat_red_packet_page.dart';
import 'package:quliao/net/msg_handler_mgr.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/chat_group/flyer_chat/chat_group_change_to_message.dart';
import 'package:quliao/pages/chat_index/DeskVoiceMessage.dart';
import 'package:quliao/pages/chat_index/custom_message.dart';
import 'package:quliao/pages/chat_index/forward_message_bottom_bar.dart';
import 'package:quliao/pages/chat_index/media_preview.dart';
import 'package:quliao/pages/chat_index/pc_preview_video.dart';
import 'package:quliao/pages/chat_index/preview_video.dart';
import 'package:quliao/pages/chat_index/replied_message.dart';
import 'package:quliao/pages/chat_index/user_nickname_widget.dart';
import 'package:quliao/pages/chat_private/chat.dart';
import 'package:quliao/pages/chat_private/chat_events.dart';
import 'package:quliao/pages/chat_private/chat_set.dart';
import 'package:quliao/pages/chat_private/flyer_chat/chat_private_change_to_message.dart';
import 'package:quliao/pages/chat_private/image_message_widget.dart';
import 'package:quliao/pages/friend/friend_info.dart';
import 'package:quliao/pages/home/home_page.dart';
import 'package:quliao/pages/windows/chat/chat_bottom_input.dart';
import 'package:quliao/pages/windows/chat/chat_page_controller.dart';
import 'package:quliao/pages/windows/chat/drop_send_file.dart';
import 'package:quliao/pages/windows/chat/message_bottom_bar.dart';
import 'package:quliao/pages/windows/client/window_client.dart';
import 'package:quliao/pb/pb_msg/gate/gate.pb.dart';
import 'package:quliao/pb/pb_msg/user_center/userCenter.pb.dart'
    hide FriendInfo;
import 'package:quliao/pb/pb_pub/comm.pb.dart' hide UserInfo;
import 'package:quliao/pb/pb_pub/error_code.pbenum.dart';
import 'package:quliao/pb/pb_pub/service.pbenum.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/pub/pub-def.dart';
import 'package:quliao/utils/cache.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/utils/permission.dart';
import 'package:quliao/utils/screen_shot.dart';
import 'package:quliao/widgets/app_bar.dart';
import 'package:quliao/widgets/desktop.dart';
import 'package:quliao/widgets/dialog/manager.dart';
import 'package:quliao/widgets/empty.dart';
import 'package:quliao/widgets/loading.dart';
import 'package:quliao/widgets/rh_extended_image.dart';
import 'package:screenshot_callback/screenshot_callback.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:just_audio/just_audio.dart' as jsAudio;
import 'package:uuid/uuid.dart';
import 'package:wechat_camera_picker/wechat_camera_picker.dart';

import '../../chat_group/flyer_chat/chat_group_change_to_message.dart';
import '../../windows/comm_dialog.dart';
import 'package:path/path.dart' as path;

import 'chat_test_controller.dart';

class ChatPage extends StatefulWidget {
  final FriendInfo finfo;
  final bool enableBack;

  static var name = '';

  const ChatPage({
    super.key,
    required this.finfo,
    this.enableBack = true,
  });

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  // final _user = const types.User(
  //   id: '82091008-a484-4a89-ae75-a22bf8d6f3ac',
  // );
  int limit = 20;
  int offSet = 0;

  UserInfo? _targetUserInfo;

  final _user = types.User(
    id: AppUserInfo().imId.toString(),
    firstName: AppUserInfo().nickName,
    imageUrl:
        "${AppUserInfo().appAvatar}?x-oss-process=image/resize,m_fill,h_100,w_100",
  );

  /// 私聊消息
  List<ChatPrivateData> lsPrivateMsg = <ChatPrivateData>[];
  late StreamSubscription<EventOnNetMsg> msgStreamSub;
  late StreamSubscription<ClearHistoryMessage> clearHistoryMsgStreamSub;
  late StreamSubscription<SendDropFiles> sendDropFilesStreamSub;
  var msgHandlerMgr = MsgHandlerMgr();
  var privateChatMsg = ChatText();
  var privateMsgReceipt = MsgReceipt();

  bool _loading = true;
  final AutoScrollController _scrollController = AutoScrollController();
  final ValueNotifier<bool> _showBottomBtnNotifier = ValueNotifier(false);

  final FocusNode _focusNode = FocusNode();
  final TextEditingController _editingController = TextEditingController();
  late ChatTestController c;

  bool get canSendMsg =>
      c.friendInfo.value.friendRelation == enFriendRelation.friend ||
      (Cache.getInstance().systemConfig?.canPrivateMsg ?? true);

  String get name => c.friendInfo.value.remark.isEmpty
      ? c.friendInfo.value.userInfo.nickName
      : c.friendInfo.value.remark;

  final ValueNotifier<bool> _showBackNotifier = ValueNotifier(false);

  final ScreenshotCallback screenshotCallback = ScreenshotCallback();

  @override
  void initState() {
    super.initState();
    c = Get.put(ChatTestController(), tag: widget.finfo.friendId.toString());
    c.load(
      widget.finfo.friendId,
    );
    c.multiSelectedMessageList.clear();
    ever(c.friendInfo, (callback) {
      _targetUserInfo = callback.userInfo;
      if (mounted) {
        setState(() {});
      }
    });
    if (Platform.isAndroid || Platform.isIOS) {
      PermissionUtil().requestPhotoPermission();
      UnReadMessageController.to.clearUnReadMsgCount(
        conversationId: widget.finfo.friendId,
      );
    }
    LoggerManager().debug(
      'sourceVersion init ===> ${widget.finfo.userInfo.sourceVersion}',
    );
    _initHandleMsg();

    // ever(c.messageList, (callback) {
    //   WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //     if (mounted) {
    //       setState(() {});
    //     }
    //   });
    // });
    ever(c.multiSelectedMessageList, (callback) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        if (mounted) {
          setState(() {});
        }
      });
    });
    ever(c.isMultiSelect, (callback) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        if (mounted) {
          _showBackNotifier.value = c.isMultiSelect.value;
          setState(() {});
        }
      });
    });

    clearHistoryMsgStreamSub =
        eventBus.on<ClearHistoryMessage>().listen((event) {
      if (event.chatId == _targetUserInfo?.imId) {
        c.messageList.clear();
        c.rxMessageCount.value = 0;
        // setState(() {});
      }
    });

    sendDropFilesStreamSub = eventBus.on<SendDropFiles>().listen((event) {
      if (event.conversationId == widget.finfo.friendId) {
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
      if (event.conversationId == widget.finfo.friendId) {
        int index = c.messageList.indexWhere(
          (element) => element.id == event.message.id,
        );
        if (index == -1) {
          _addMessage(event.message);
        }
      }
    });

    eventBus.on<NotifyRedPacket>().listen((event) {
      debugPrint(
        'private chat conversationId: ${event.conversationId} ----- friendId: ${widget.finfo.friendId}',
      );
      if (event.conversationId == widget.finfo.friendId) {
        int index = c.messageList.indexWhere(
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
        final friendId = Int64(widget.finfo.friendId);
        Client.instance.sendMsg(
          screenshotMessage,
          friendId,
          MakePBCommData(
            aimId: friendId,
            toService: Service.gate,
          ),
        );
      }
    });
  }

  Future<void> _sendDropFiles(List<XFile> files) async {
    for (final element in files) {
      final size = await element.length();
      sendFileMsg(
        widget.finfo.friendId,
        file: PlatformFile(
          name: element.name,
          size: size,
          path: element.path,
        ),
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
    UnReadMessageController.to.clearUnReadMsgCount(
      conversationId: widget.finfo.friendId,
    );
    if (Platform.isAndroid || Platform.isIOS) {
      GlobalController.to.updateCurrentConversation(-1);
    }
    _focusNode.dispose();
    _editingController.dispose();
    eventBus.fire(EventMsgCountClear()..imId = widget.finfo.userInfo.imId);

    c.isMultiSelect.value = false;
    msgStreamSub.cancel();
    clearHistoryMsgStreamSub.cancel();
    sendDropFilesStreamSub.cancel();
    msgHandlerMgr.removeMsgHandler(privateChatMsg);
    msgHandlerMgr.removeMsgHandler(privateMsgReceipt);
    screenshotCallback.dispose();
    super.dispose();
  }

  Future<void> _initHandleMsg() async {
    //   final response = await rootBundle.loadString('assets/messages.json');
    //   final messages = (jsonDecode(response) as List)
    //       .map((e) => types.Message.fromJson(e as Map<String, dynamic>))
    //       .toList();

    //   setState(() {
    //     _messages = messages;
    //   });
    msgStreamSub = eventBus.on<EventOnNetMsg>().listen((event) async {
      // log('我是列表，我也通过消息总线接收到了消息 NetMsg ${event.pbMsg.pbName}');
      if (event.pbMsg.pbName == 'pb_pub.HeartBeat') {
        // log('--------我是列表，我也通过消息总线接收到了消息 NetMsg ${event.pbMsg.pbName}');
        return;
      }

      if (event.pbMsg.pbCommData.groupId > 0) {
        // log("get msg:${event.pbMsg.pbName} with group:${event.pbMsg.pbCommData.groupId} not my group:${widget.groupId}");
        // 不是我的消息， 直接返回
        return;
      }

      // log("获得一个消息:${event.pbMsg.pbName} groupid:${event.pbMsg.pbCommData.groupId} msgsn:${event.pbMsg.pbCommData.msgSn} is me send:${event.pbMsg.pbCommData.srcId==AppUserInfo().imId} ");
      if (event.pbMsg.errCode != ErrCode.SUCCESS.value) {
        log("get a err msg  code:${event.pbMsg.errCode} desc:${event.pbMsg.errDesc} ${event.pbMsg}");
        showToast("code:${event.pbMsg.errCode} desc:${event.pbMsg.errDesc}");
        return;
      }

      // log("------------------get one group msg:${event.pbMsg.pbName}");

      // ShowMsgList();
      //

      log("获得消息 ${event.pbMsg.pbName} ${event.pbMsg.pbCommData.msgSn} ${event.pbMsg.pbCommData.srcId}->${event.pbMsg.pbCommData.aimId} 派发处理");

      final bool canContinue =
          event.pbMsg.pbCommData.srcId == widget.finfo.friendId ||
              event.pbMsg.pbCommData.aimId == widget.finfo.friendId;

      LoggerManager().debug('canContinue =========> $canContinue');

      if (!canContinue) {
        return;
      }

      if (event.pbMsg.pbName == 'pb_pub.TakeScreenShotNotify') {
        _addMsgToList(ChatPrivateData()
          ..initWithPbMsg(
            event.pbMsg,
            screenshot: true,
          ));
      } else if (event.pbMsg.pbName == 'pb_pub.MsgRecallRsp') {
        LoggerManager().debug('私聊页面开始处理撤回消息');
        MsgRecallRsp msgRecallRsp = MsgRecallRsp()
          ..mergeFromBuffer(event.pbMsg.pbData);
        LoggerManager().debug(
            'msgSn: ${msgRecallRsp.msgSn} --- msgOwnerId: ${msgRecallRsp.msgOwnerId}');

        final Int64 msgSn = event.pbMsg.pbCommData.msgSn;

        final String condition = 'msgSn=${msgRecallRsp.msgSn}';

        final privateMsg = await AppDatabase().objectBox.getPrivateMsg(
          widget.finfo.friendId,
          msgRecallRsp.msgSn.toInt(),
        );
        if (null != privateMsg) {
          /// 更新撤回人的uid
          privateMsg.recallUid = event.pbMsg.pbCommData.srcId.toInt();
          AppDatabase().objectBox.addPrivateMsg(privateMsg).then(
                (value) async {
              if (value > 0) {
                LoggerManager().error(
                  'MsgRecallReq 私聊消息更新成功 =========> groupId: ${widget.finfo.friendId} $value msgSn: ${msgRecallRsp.msgSn.toInt()}',
                );
              }
            },
          ).onError(
                (error, _) {
              LoggerManager().error(
                  'MsgRecallReq 私聊消息更新失败 =========> groupId: ${widget.finfo.friendId} \n $error');
            },
          );
        }

        // dbMsg
        //     ?.update(
        //   tbPrivateMsgTable,
        //   {
        //     "msgType": TextChatType.RECALL.value,
        //     'recallUid': event.pbMsg.pbCommData.srcId.toInt(),
        //   },
        //   where: condition,
        // )
        //     .then((value) {
        //   LoggerManager().debug('--------- $value');
        // });

        for (var i = 0; i < c.messageList.length; i++) {
          var element = c.messageList[i];
          if (element.id == '${msgRecallRsp.msgSn}') {
            types.Message changeMessage = types.Message.fromJson(
              await messageChangeType(
                element,
                MsgReceipt(
                  state: _statusToState(element.status ?? types.Status.sent),
                ),
                types.MessageType.system,
                msgRecallRsp.msgOwnerId,
              ),
            );
            c.messageList.removeAt(i);
            c.messageList.insert(i, changeMessage);
            setState(() {});
            break;
          }
        }

        return;
      } else if (event.pbMsg.pbName == 'pb_pub.MsgRecallReq') {
        LoggerManager().debug('私聊页面开始处理撤回消息 MsgRecallReq');
        MsgRecallReq msgRecallRsp = MsgRecallReq()
          ..mergeFromBuffer(event.pbMsg.pbData);
        LoggerManager().debug(
            'MsgRecallReq msgSn: ${msgRecallRsp.msgSn} --- msgOwnerId: ${msgRecallRsp.msgOwnerId}');

        final String condition = 'msgSn=${msgRecallRsp.msgSn}';
        // dbMsg
        //     ?.update(
        //   tbPrivateMsgTable,
        //   {
        //     "msgType": TextChatType.RECALL.value,
        //     'recallUid': event.pbMsg.pbCommData.srcId.toInt(),
        //   },
        //   where: condition,
        // )
        //     .then((value) {
        //   LoggerManager().debug('--------- $value');
        // });

        for (var i = 0; i < c.messageList.length; i++) {
          var element = c.messageList[i];
          if (element.id == '${msgRecallRsp.msgSn}') {
            types.Message changeMessage = types.Message.fromJson(
              await messageChangeType(
                element,
                MsgReceipt(
                  state: _statusToState(element.status ?? types.Status.sent),
                ),
                types.MessageType.system,
                msgRecallRsp.msgOwnerId,
              ),
            );
            c.messageList.removeAt(i);
            c.messageList.insert(i, changeMessage);
            setState(() {});
            break;
          }
        }
        return;
      }

      var result = await msgHandlerMgr.onMsg(event.pbMsg, event.enMsgFrom);
      LoggerManager().debug('result =========> $result');
      if (result) {
        log("回调处理消息 ${event.pbMsg.pbName} 成功!! 清理一下新消息条数");
        DBClearNewMsgCount(widget.finfo.userInfo.imId, CHAT_TYPE.PRIVATE);

        if (event.enMsgFrom == EnMsgFrom.local) {
          LoggerManager().debug(
              '收到一条确认消息 msgSn: ${event.pbMsg.pbCommData.msgSn.toInt()} --- 来自本地');
        } else {
          LoggerManager().debug(
              '收到一条确认消息 msgSn: ${event.pbMsg.pbCommData.msgSn.toInt()} --- 来自网络');
        }

        MsgReceipt message = MsgReceipt()..mergeFromBuffer(event.pbMsg.pbData);
        log("得到一个确认消息，更新数据 message ${message.state} msgSn: ${event.pbMsg.pbCommData.msgSn.toInt()}  是我？ ${isMySendMsg(event.pbMsg.pbCommData.srcId)}");
        // 找到消息并变更状态
        for (var element in lsPrivateMsg) {
          if (!element.isSplitLine &&
              element.msgSn == event.pbMsg.pbCommData.msgSn) {
            if (element.msgStatus == MSG_STATE.SEND) {
              message.state = MSG_STATE.SEND;
              break;
            } else {
              if (element.msgStatus.value < message.state.value) {
                element.msgStatus = message.state;
                // setState(() {});
                break;
              }
            }
          }
        }

        for (var i = 0; i < c.messageList.length; i++) {
          var element = c.messageList[i];
          if (element.id == "${event.pbMsg.pbCommData.msgSn.toInt()}" &&
              element.status != Status.seen) {
            types.Message changeMessage =
                types.Message.fromJson(messageChangeStatu(element, message));
            c.messageList.removeAt(i);
            c.messageList.insert(i, changeMessage);
            log("更新本地列表显示 ${changeMessage.status}");
            setState(() {});
            break;
          }
        }
      }
    });

    // 注册消息处理句柄
    msgHandlerMgr.RegMsgHandler(privateChatMsg,
        (GeneratedMessage msg, PBMessage pbMessage, EnMsgFrom enMsgFrom) {
      if (msg is ChatText) {
        LoggerManager().debug(
          "私聊页面收到一个chatText，添加进列表 userSourceVersion: ${pbMessage.pbCommData.userSourceVersion}",
        );

        /// 把消息加入消息列表
        LoggerManager().debug("GeneratedMessage ${pbMessage.pbCommData.srcId}");
        if (pbMessage.pbCommData.srcId == AppUserInfo().imId &&
            enMsgFrom == EnMsgFrom.local) {
          // 自己发的不需处理
          return false;
        }
        if (pbMessage.pbCommData.userSourceVersion !=
            _targetUserInfo!.sourceVersion) {
          LoggerManager().debug(
              "私聊页面开始获取对方用户信息 userSourceVersion: ${pbMessage.pbCommData.userSourceVersion}");
          GetUserInfo(
            _targetUserInfo!.imId,
            userSourceVersion: pbMessage.pbCommData.userSourceVersion,
          ).then((value) {
            setState(() {
              _targetUserInfo = value;
            });
          });
        }
        _addMsgToList(ChatPrivateData()..initWithPbMsg(pbMessage));
      }
      return true;
    });

    // 注册消息处理句柄
    msgHandlerMgr.RegMsgHandler(privateMsgReceipt,
        (GeneratedMessage msg, PBMessage pbMessage, EnMsgFrom enMsgFrom) {
      log("MsgReceipt ${pbMessage.pbCommData.srcId}");
      if (isMySendMsg(pbMessage.pbCommData.srcId)) {
        // 自己的回执消息，只更改本地数据库状态
        LoggerManager().debug('xxxxxxx 更新自己的回执消息为已读');
        // var condition =
        //     "msgSn=${pbMessage.pbCommData.msgSn} and msgStatus < ${MSG_STATE.READ.value}";

        Future.delayed(
          const Duration(seconds: 1),
          () {
            AppDatabase()
                .objectBox
                .getPrivateMsgByMsgSn(pbMessage.pbCommData.msgSn.toInt())
                .then((value) {
              if (null != value) {
                value.msgState = MSG_STATE.SEND.value;
                AppDatabase().objectBox.addPrivateMsg(value);
              }
            });
          },
        );

        // dbMsg?.update(
        //   tbPrivateMsgTable,
        //   {
        //     "msgStatus": MSG_STATE.SEND.value,
        //   },
        //   where: condition,
        // );

        // return false;
      }

      MsgReceipt message = MsgReceipt()..mergeFromBuffer(pbMessage.pbData);
      log("得到一个确认消息，更新数据 message ${message.state} msgSn: ${pbMessage.pbCommData.msgSn.toInt()}  是我？ ${isMySendMsg(pbMessage.pbCommData.srcId)}");
      // 找到消息并变更状态
      for (var element in lsPrivateMsg) {
        if (!element.isSplitLine &&
            element.msgSn == pbMessage.pbCommData.msgSn) {
          if (element.msgStatus.value < message.state.value) {
            log("找到对应消息，并需要修改状态，${element.msgStatus}->${message.state}");
            element.msgStatus = message.state;
            // setState(() {});
            break;
          }
        }
      }

      for (var i = 0; i < c.messageList.length; i++) {
        var element = c.messageList[i];
        if (element.id == "${pbMessage.pbCommData.msgSn.toInt()}" &&
            element.status != Status.seen) {
          types.Message changeMessage =
              types.Message.fromJson(messageChangeStatu(element, message));
          c.messageList.removeAt(i);
          c.messageList.insert(i, changeMessage);
          log("更新本地列表显示 ${changeMessage.status}");
          setState(() {});
          break;
        }
      }
      // _addMsgToList(ChatPrivateData()..initWithPbMsg(pbMessage));

      return true;
    });

    DBClearNewMsgCount(widget.finfo.userInfo.imId, CHAT_TYPE.PRIVATE);

    // 获取本地群消息
    // loadHistoryMessage();
  }

  Future<void> _sendAudioMessage(File soundFile) async {
    if (!canSendMsg) {
      showToast("无法给陌生人发送私信");
      return;
    }
    final path = soundFile.path;
    final audioDuration = await jsAudio.AudioPlayer().setFilePath(path);
    if (null != audioDuration) {
      final Uint8List uint8list = await soundFile.readAsBytes();
      sendAudioMsg(
        widget.finfo.friendId,
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

  Future<void> _onCameraPressed() async {
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
            widget.finfo.friendId,
            context,
            path: file.path,
            cameraPick: true,
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
            widget.finfo.friendId,
            path: file.path,
            cameraPick: true,
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
    if (!canSendMsg) {
      showToast("无法给陌生人发送私信");
      return;
    }
    final result = await FilePicker.platform.pickFiles(
      type: FileType.any,
    );
    if (result != null && result.files.single.path != null) {
      sendFileMsg(
        widget.finfo.friendId,
        file: result.files.single,
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

  bool isMe(String authorId) {
    return authorId == '${AppUserInfo().imId}';
  }

  Future<void> _hideChatMenuPanel() async {
    eventBus.fire(HideChatMenuPanel());
  }

  bool get isMultiSelected => c.isMultiSelect.value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: CustomAppBar(
        leading: widget.enableBack
            ? const BackButton(
                color: Colors.black87,
              )
            : (Platform.isMacOS || Platform.isWindows)
                ? ValueListenableBuilder<bool>(
                    valueListenable: _showBackNotifier,
                    builder: (context, value, child) {
                      if (value) {
                        return IconButton(
                          onPressed: () {
                            c.updateSelectStatus();
                          },
                          icon: const Icon(Icons.close),
                          color: Colors.black87,
                        );
                      }
                      return Gaps.empty;
                    },
                  )
                : null,
        automaticallyImplyLeading: widget.enableBack,
        centerTitle: true,
        title: Obx(() => UserNicknameWidget(
              friendInfo: c.friendInfo.value,
              style: const TextStyle(color: Colors.black87),
            )),
        //${state.msgCount}
        actionPadding: EdgeInsets.zero,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_horiz),
            color: Colors.black87,
            onPressed: () {
              // 打开添加朋友页面
              if (Dimens.isDesktop()) {
                MyAlertDialog().show(child: ChatSet(finfo: c.friendInfo.value));
                return;
              }
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return ChatSet(finfo: c.friendInfo.value);
                  },
                ),
              ).then((value) => setState(() {}));
            },
          ),
        ],
      ),
      body: Obx(
        () {
          final messageCount = c.rxMessageCount.value;
          LoggerManager().error('page build messageCount: $messageCount');
          if (c.loading.value) {
            return Container(
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
            );
          }
          return Chat(
            messages: c.messageList,
            isMultiSelect: isMultiSelected,
            scrollController: _scrollController,
            backPic: c.friendInfo.value.fpMsgSet.backPic,
            theme: const DefaultChatTheme(
              backgroundColor: Color(0xFFF7F7F7),
            ),
            onBackgroundTap: _hideChatMenuPanel,
            // bubbleBuilder: _buildBubbleWidget,
            audioMessageBuilder: _buildAudioWidget,
            onAttachmentPressed: _handleAttachmentPressed,
            onMessageTap: _handleMessageTap,
            // onMessageLongPress: _handleMessageLongPressed,
            onMessageStatusTap:
                isMultiSelected ? null : _handleMessageLongPressed,
            onPreviewDataFetched: _handlePreviewDataFetched,
            onSendPressed: _handleSendPressed,
            showUserAvatars: true,
            multiSelectedList: c.multiSelectedMessageList,
            onCheckChanged: (
              types.Message message, {
              required bool changed,
            }) {
              c.addSelectedMessage(message, changed);
            },
            customBottomWidget: isMultiSelected
                ? ForwardMessageBottomBar(
                    conversationId: widget.finfo.friendId,
                    messages: c.multiSelectedMessageList,
                    privateChat: true,
                  )
                : MessageBottomBar(
                    focusNode: _focusNode,
                    conversationId: '${_targetUserInfo?.appId}',
                    controller: _editingController,
                    onAttachmentPressed: _handleAttachmentPressed,
                    onSendPressed: _handleSendPressed,
                    onVoiceMessageSend: _sendAudioMessage,
                    onFilePressed: _chooseFile,
                    onCameraPressed: _onCameraPressed,
                    enableAt: false,
                    onVideoPressed: _handleVideoPressed,
                    onScreenshotPressed: () {
                      _onScreenshotPressed(context);
                    },
                    onRedPacketPressed: () async {
                      final redPacketMessage = await Get.to(
                        ChatRedPacketPage(
                          userId: widget.finfo.friendId,
                          nickname: widget.finfo.userInfo.nickName,
                        ),
                      );
                      if (null != redPacketMessage) {
                        int index = c.messageList.indexWhere(
                          (element) => element.id == redPacketMessage.id,
                        );
                        if (index == -1) {
                          _addMessage(redPacketMessage);
                        }
                      }
                    },
                    onBusinessCardPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<FriendInfo>(
                          builder: (context) {
                            return const SelectContactPage(
                              isMulti: false,
                            );
                          },
                        ),
                      ).then(
                        (value) async {
                          if (null != value) {
                            final message = await IMClient.sendCardMessage(
                              widget.finfo.friendId,
                              name: value.userInfo.nickName,
                              avatar: value.userInfo.avatar,
                              conversationType: CHAT_TYPE.PRIVATE,
                              userId: '${value.userInfo.imId}',
                            );
                            int index = c.messageList.indexWhere(
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
                      if (!canSendMsg) {
                        showToast("无法给陌生人发送私信");
                        return;
                      }
                      List<XFile> fileList =
                          files.map((path) => XFile(path)).toList();
                      _sendFilesWithConfirmation(fileList);
                    },
                  ),
            menuBuilder: (context, message, controller) {
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
                  padding: EdgeInsets.symmetric(horizontal: Dimens.gap_dp10),
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
            onAvatarTap: (user) async {
              LoggerManager().debug('user =========> ${user.id}');
              final currentUser = user.id == '${AppUserInfo().imId}';
              FriendInfo friendInfo = widget.finfo;
              friendInfo = await GetFriendInfo(int.parse(user.id));
              if (Dimens.isDesktop()) {
                MyAlertDialog().show(
                  child: FriendInfoV(finfo: friendInfo),
                );
                return;
              }
              // ignore: use_build_context_synchronously
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return FriendInfoV(finfo: friendInfo);
                  },
                ),
              );
            },
            // avatarBuilder: (String userId) {
            //   final currentUser = userId == '${AppUserInfo().imId}';
            //   LoggerManager().debug('app avatar ======> ${AppUserInfo().appAvatar}');
            //   return GestureDetector(
            //     onTap: () async {
            //       FriendInfo friendInfo = widget.finfo;
            //       if (currentUser) {
            //         friendInfo = await GetFriendInfo(int.parse(userId));
            //       }
            //       if (Dimens.isDesktop()) {
            //         MyAlertDialog().show(
            //           child: FriendInfoV(finfo: friendInfo),
            //         );
            //         return;
            //       }
            //       // ignore: use_build_context_synchronously
            //       Navigator.of(context).push(
            //         MaterialPageRoute(
            //           builder: (context) {
            //             return FriendInfoV(finfo: friendInfo);
            //           },
            //         ),
            //       );
            //     },
            //     child: RHExtendedImage.network(
            //       currentUser
            //           ? AppUserInfo().appAvatar
            //           : _targetUserInfo?.avatar ?? '',
            //       width: Dimens.gap_dp1 * 40,
            //       height: Dimens.gap_dp1 * 40,
            //       borderRadius: BorderRadius.circular(Dimens.gap_dp1 * 21),
            //       failedWidget: Container(
            //         width: Dimens.gap_dp1 * 40,
            //         height: Dimens.gap_dp1 * 40,
            //         decoration: BoxDecoration(
            //           color: Theme.of(context).colorScheme.primary,
            //           borderRadius: BorderRadius.circular(Dimens.gap_dp20),
            //         ),
            //         alignment: Alignment.center,
            //         child: Text(
            //           currentUser
            //               ? (AppUserInfo.instance.nickName.isNotEmpty
            //               ? AppUserInfo.instance.nickName
            //               : "${AppUserInfo.instance.imId}")
            //               : _targetUserInfo?.nickName.substring(0, 1) ?? '',
            //           style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            //               color: Theme.of(context).colorScheme.surface),
            //         ),
            //       ),
            //     ),
            //   );
            // },
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
                    if (Dimens.isDesktop()) {
                      MyAlertDialog().show(
                        child: FriendInfoV(finfo: friendInfo),
                      );
                      return;
                    }

                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return FriendInfoV(finfo: friendInfo);
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
            showUserNames: false,
            user: _user,
            onRefresh: () async {
              refreshHistroryMessage();
            },
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            emptyState: const Empty(
              text: '暂无聊天记录',
            ),
            previewImage: (
              int initialPage,
              Map<String, String>? imageHeaders,
              List<PreviewImage> images,
              ImageGalleryOptions options,
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
                  ));
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
            replyMessageBuilder: (
              types.TextMessage message, {
              required int messageWidth,
            }) {
              final types.Message? repliedMessage = message.repliedMessage;
              if (null != repliedMessage) {
                if (repliedMessage is types.ImageMessage) {
                  return ImageMessageWidget(
                    imageMessage: repliedMessage,
                    messageWidth: messageWidth,
                  );
                } else if (repliedMessage is types.VideoMessage) {
                  return VideoMessage(
                    message: repliedMessage,
                    messageWidth: messageWidth,
                  );
                } else if (repliedMessage is types.FileMessage) {
                  return FileMessage(message: repliedMessage);
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
                  return TextMessage(
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
            buildCustomMenu: (BuildContext context, types.Message message) {
              final List<MenuItem> menuItems = [];
              if (enableRecall(message)) {
                menuItems.add(
                  MenuItem(
                    label: '撤回消息',
                    onClick: (_) {
                      _handleMessageLongPressed(context, message);
                    },
                  ),
                );
              }
              menuItems.add(
                MenuItem(
                  label: '多选',
                  onClick: (_) {
                    c.updateSelectStatus();
                  },
                ),
              );
              return Menu(items: menuItems);
            },
          );
        },
      ),
      // _loading
      //     ?
      //     Container(
      //         alignment: Alignment.center,
      //         color: Theme.of(context).colorScheme.surface,
      //         child: SizedBox(
      //           width: Dimens.gap_dp1 * 35,
      //           height: Dimens.gap_dp1 * 35,
      //           child: CircularProgressIndicator(
      //             backgroundColor: Colors.transparent,
      //             strokeWidth: 2.5,
      //             valueColor: AlwaysStoppedAnimation<Color>(
      //               Theme.of(context).colorScheme.primary,
      //             ),
      //           ),
      //         ),
      //       )
      //     : ,
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
    );
  }

  void refreshHistroryMessage() {
    offSet += 20;
    c.loadMore(widget.finfo.friendId);
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

  Future<void> _recallMessage(
    BuildContext context,
    types.Message message,
  ) async {
    DialogManager.showRecallMessageDialog(
      context,
      onConfirm: () {
        final amId = widget.finfo.friendId;
        final messageId = message.id;
        final userId = int.parse(message.author.id);
        MsgRecallReq msgRecall = MsgRecallReq(
          msgSn: Int64(int.parse(messageId)),
          msgOwnerId: Int64(userId),
        );
        Client.instance.sendMsg(
          msgRecall,
          Int64(amId),
          MakePBCommData(
            aimId: Int64(amId),
            toService: Service.gate,
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
        controller.hideMenu();
        if (item.text == '复制') {
          _copyMessageText(context, message);
        } else if (item.text == '撤回') {
          _recallMessage(context, message);
        } else if (item.text == '多选') {
          c.updateSelectStatus();
        } else if (item.text == '收藏') {
          c.collectMessage(widget.finfo.friendId.toInt(), message);
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

  _sendFilesWithConfirmation(List<XFile> files) async {
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
      target: _targetUserInfo?.nickName,
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

  Future<void> _onScreenshotPressed(BuildContext context) async {
    if (!canSendMsg) {
      showToast("无法给陌生人发送私信");
      return;
    }
    if (!context.mounted) return;
    final file = await ScreenshotHelper.captureScreen();
    if (null != file) {
      final size = await ScreenshotHelper.getImageSize(file);
      // ignore: use_build_context_synchronously
      DesktopWidget.showPopupWindow(
        context: context,
        width: 600,
        height: 600,
        child: (closeFunc) => ImageEditorPage(
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
                          borderRadius: BorderRadius.circular(Dimens.gap_dp16),
                          child: ImagePainter.file(
                            result,
                            key: imageKey,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: Dimens.gap_dp16),
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
                                  color: Theme.of(context).colorScheme.surface,
                                ),
                              ),
                            ),
                            onTap: () async {
                              try {
                                LoadingDialog.show();
                                final image =
                                    await imageKey.currentState?.exportImage();
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
                                    target: _targetUserInfo!.nickName,
                                    child: (closeFunc1) => Container(
                                      padding: const EdgeInsets.all(16),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: SizedBox(
                                              height: min(360, size.height / 2),
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
                                                      widget.finfo.friendId,
                                                      path: imgFile.path,
                                                      callback: (
                                                        types.ImageMessage
                                                            imageMessage,
                                                      ) {
                                                        _hideChatMenuPanel();
                                                        _addMessage(
                                                            imageMessage);
                                                      },
                                                      onStatusChanged: (String
                                                              msgSn,
                                                          types.Status status) {
                                                        _updateMessageStatus(
                                                            msgSn, status);
                                                      },
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
        ),
      );
    }
  }

  void refreshChatList() {}

  void _addMessage(types.Message message) {
    log("添加到本地列表显示");
    // 新增一条在原有基础上偏移1
    c.offset += 1;
    setState(() {
      c.messageList.insert(0, message);
    });
    try {
      lsPrivateMsg.add(ChatPrivateData()..initWithMap(message.toJson()));
    } catch (error) {
      LoggerManager().debug(error.toString());
    }
  }

  Future<void> _handleVideoPressed() async {
    if (!canSendMsg) {
      showToast("无法给陌生人发送私信");
      return;
    }
    sendVideoMsg(
      widget.finfo.friendId,
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

  void _handleAttachmentPressed() {
    _handleImageSelection();
  }

  void _handleImageSelection() {
    final targetName = c.friendInfo.value.remark.isEmpty
        ? c.friendInfo.value.userInfo.nickName
        : c.friendInfo.value.remark;
    SendImageMsg(
      widget.finfo.friendId,
      context,
      targetName: targetName,
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
  }

  Future<void> _updateMessageStatus(String msgSn, types.Status status) async {
    for (int index = 0; index < c.messageList.length; index++) {
      final message = c.messageList[index];
      if (message.id == msgSn) {
        types.Message changeMessage = types.Message.fromJson(
          messageChangeStatu(
            message,
            MsgReceipt(state: _statusToState(status)),
          ),
        );
        c.messageList.removeAt(index);
        c.messageList.insert(index, changeMessage);
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

  Future<void> _handleMessageLongPressed(
    BuildContext context,
    types.Message message,
  ) async {
    if (!canSendMsg) {
      showToast("无法给陌生人发送私信");
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
                final amId = widget.finfo.friendId;
                final messageId = message.id;
                final userId = AppUserInfo().imId;
                MsgRecallReq msgRecall = MsgRecallReq(
                  msgSn: Int64(int.parse(messageId)),
                  msgOwnerId: Int64(userId),
                );
                Client.instance.sendMsg(
                  msgRecall,
                  Int64(amId),
                  MakePBCommData(
                    aimId: Int64(amId),
                    toService: Service.gate,
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

  void _handleMessageTap(BuildContext _, types.Message message) async {
    if (message is types.FileMessage) {
      var localPath = message.uri;

      if (message.uri.startsWith('http')) {
        try {
          final index =
              c.messageList.indexWhere((element) => element.id == message.id);
          final updatedMessage =
              (c.messageList[index] as types.FileMessage).copyWith(
            isLoading: true,
          );

          setState(() {
            c.messageList[index] = updatedMessage;
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
              c.messageList.indexWhere((element) => element.id == message.id);
          final updatedMessage =
              (c.messageList[index] as types.FileMessage).copyWith(
            isLoading: null,
          );

          setState(() {
            c.messageList[index] = updatedMessage;
          });
        }
      }

      await OpenFilex.open(localPath);
    }
  }

  void _handlePreviewDataFetched(
    types.TextMessage message,
    types.PreviewData previewData,
  ) {
    final index =
        c.messageList.indexWhere((element) => element.id == message.id);
    final updatedMessage = (c.messageList[index] as types.TextMessage).copyWith(
      previewData: previewData,
    );

    setState(() {
      c.messageList[index] = updatedMessage;
    });
  }

  Future<void> _handleSendPressed(types.PartialText message) async {
    if (!canSendMsg) {
      showToast("无法给陌生人发送私信");
      return;
    }

    if (message.text.isEmpty) {
      showToast("请输入聊天内容");
      return;
    }

    // var amId = c.friendInfo.value.userInfo.imId.toInt();
    // var amId = widget.finfo.friendId;
    // final textMessage = await IMClient.sendTextMessage(amId, message.text);
    //
    // /// ChatInputController.to.updateRepliedMessage(null);
    // if (textMessage is types.TextMessage) {
    //   _addMessage(textMessage);
    // }
    c.sendTextMessage(widget.finfo.friendId, message.text);
  }

  ///////////////////////////////////////////
  void loadHistoryMessage() async {
    if (offSet == 0 && !_loading) {
      setState(() {
        _loading = true;
      });
    }
    // 获取历史消息
    // todo 改造为db读取制作初始化进行，其他刷新不读，消息直接构造插入列表即可
    log("loadHistoryMessage");
    dbMsg
        ?.query(tbPrivateMsgTable,
            // where: "userId=? and friendId=?",
            // whereArgs:[AppUserInfo.instance.imId.toInt(), widget.finfo.userInfo.imId.toInt()],
            where: "friendId=?",
            // whereArgs: [widget.finfo.userInfo.imId.toInt()],
            whereArgs: [widget.finfo.friendId],
            limit: limit,
            offset: offSet,
            orderBy: "msgTime desc")
        .then((value) async {
      log("---------------------get value my imid:${AppUserInfo.instance.imId.toInt()} widget.finfo.friendId:${widget.finfo.friendId} friend imid:${c.friendInfo.value.userInfo.imId.toInt()} count:${value.length}");
      // 构建消息列表
      // List<ChatPrivateData> lsCPData = <ChatPrivateData>[];
      // ChatPrivateData? preData;
      var cdDataList = [];
      for (var cpd in value) {
        LoggerManager()
            .debug('changeToMessageMap msgType =======> ${cpd['msgType']}');
        // log("${cpd}");
        var d = ChatPrivateData()..initWithMap(cpd);

        final messageMap = await changeToMessageMap(d);
        if (!messageMap.keys.contains('type')) {
          continue;
        }

        // log("从数据库加载的消息:${(d.pbServiceMsg as ChatText).text} 是否自己发的:${d.srcId == AppUserInfo().imId}");
        cdDataList.add(d);
        types.Message message = types.Message.fromJson(messageMap);

        if (message.status == Status.sending) {
          final dateTime =
              DateTime.fromMillisecondsSinceEpoch(message.createdAt!);
          final nowDateTime = DateTime.now();

          final differenceDuration = nowDateTime.difference(dateTime);
          final differenceSeconds = differenceDuration.inSeconds;
          if (differenceSeconds > 300) {
            messageMap['status'] = 'error';
            message = types.Message.fromJson(messageMap);
            DBUpdateMsgState(d.msgSn, MSG_STATE.FAULT, EnMsgFrom.local);
          }
        }

        c.messageList.add(message);

        // 更改未读消息状态 (对方的消息并且是未读的)
        if (d.srcId != AppUserInfo.instance.imId &&
            d.msgStatus != MSG_STATE.READ) {
          log("user im id:${AppUserInfo.instance.imId}");
          log("original: d.pbMsg.pbCommData.aimId:${d.pbMsg.pbCommData.aimId} d.pbMsg.pbCommData.srcId:${d.pbMsg.pbCommData.srcId}");
          sendReceiptMsg(
            d.pbMsg.pbCommData,
            beginTime: Int64(0),
            state: MSG_STATE.READ,
          );
        }

        // ???
        types.AudioMessage;
      }

      setState(() {
        // lsPrivateMsg = lsCPData;
        _loading = false;
      });

      // 更新未读条数Config.chatTypePrivate
      DBClearNewMsgCount(c.friendInfo.value.userInfo.imId, CHAT_TYPE.PRIVATE);
    });
  }

  Future<void> _addMsgToList(
    ChatPrivateData cpData, {
    bool freshView = true,
    EnMsgFrom enMsgFrom = EnMsgFrom.net,
  }) async {
    log("msg state=${cpData.msgStatus.value} ${GetMsgState(cpData.msgStatus)} sn:${cpData.msgSn} ${(cpData.pbServiceMsg as ChatText).text}");

    // var userInfo = FriendInfo();
    // if (cpData.srcId == AppUserInfo().imId) {
    //   userInfo = await GetFriendInfo(cpData.aimId.toInt());
    // } else {
    //   userInfo = await GetFriendInfo(cpData.srcId.toInt());
    // }

    final message = types.Message.fromJson(await changeToMessageMap(cpData));
    setState(() {
      lsPrivateMsg.add(cpData);
      c.messageList.insert(0, message);
    });

    if (cpData.srcId != AppUserInfo.instance.imId &&
        cpData.pbMsg.pbName != pbNameMsgReceipt &&
        cpData.msgStatus.value < MSG_STATE.READ.value) {
      LoggerManager().debug('xxxxxx 更新已读通知');
      // 已读通知
      sendReceiptMsg(
        cpData.pbMsg.pbCommData,
        state: MSG_STATE.READ,
        beginTime: Int64(),
      );

      // todo 改造外服务端rsp收到再改状态
      cpData.msgStatus = MSG_STATE.READ;
      DBUpdateMsgState(cpData.msgSn, MSG_STATE.READ, enMsgFrom);
    }

    if (freshView) {
      setState(() {
        // 刷新
      });
    }
  }
}
