import 'dart:convert';
import 'dart:io';

import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:protobuf/protobuf.dart';
import 'package:quliao/config/config.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/global/models/error_source.dart';
import 'package:quliao/global/models/font_size_model.dart';
import 'package:quliao/global/models/group_msg_sn.dart';
import 'package:quliao/global/models/system_config.dart';
import 'package:quliao/im/im_client.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/pages/chat_group/controller/chat_group_controller.dart';
import 'package:quliao/pages/chat_private/chat.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:quliao/pages/chat_private/flyer_chat/chat_test_controller.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/pub/config.dart' as config;
import 'package:quliao/pub/pub-def.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/utils/sound_player.dart';
import 'package:quliao/utils/storage/index.dart';
import 'package:yaml/yaml.dart';

import '../../pages/chat_group/flyer_chat/chat_group_change_to_message.dart';
import '../../pb/pb_pub/comm.pb.dart';

class GlobalController extends GetxController {
  static GlobalController get to => Get.find();

  final Rx<SystemConfig?> systemConfig = SystemConfig().obs;
  final RxMap<int, int> groupIdMsgSnMap = RxMap<int, int>();
  final RxMap<int, int> groupIdLatestMsgSnMap = RxMap<int, int>();

  final RxList<ImEndPoint> imEndPointList = RxList();

  /// 记录当前会话id
  RxInt currentConversationId = RxInt(-1);
  Rx<File?> logFile = Rx(null);
  Rx<ErrorSourceModel?> errorSource = Rx(null);

  final Rx<FontSizeModel> chatFontSize = Rx(FontSizeModel());
  final fontSizeList = [
    FontSizeModel(),
    FontSizeModel(type: 1, value: '中号'),
    FontSizeModel(type: 2, value: '大号'),
  ];

  double textFontSize() {
    final fontSizeModel = chatFontSize.value;
    if (fontSizeModel.type == 0) {
      return Dimens.font_sp14;
    } else if (fontSizeModel.type == 1) {
      return Dimens.font_sp16;
    } else {
      return Dimens.font_sp18;
    }
  }

  @override
  void onInit() {
    super.onInit();

    final cacheFontSizeType = Storage.instance.getInt(
      StorageKey.fontSizeType,
    );
    final cacheFontSize = fontSizeList.firstWhere(
      (element) => element.type == cacheFontSizeType,
    );
    chatFontSize.value = cacheFontSize;

    ever(currentConversationId, (callback) {
      SoundPlayer.stop();
    });
    final offlineMsgSnJson = Storage.instance.getString(
      StorageKey.offlineMsgSn,
    );
    final msgSnList = <GroupMsgSn>[];
    if (offlineMsgSnJson.isNotEmpty) {
      final list = jsonDecode(offlineMsgSnJson);
      for (final item in list) {
        msgSnList.add(
          GroupMsgSn.fromJson(item as Map<Object?, Object?>),
        );
      }
    }
    final map1 = <int, int>{};
    final map2 = <int, int>{};
    for (final item in msgSnList) {
      map1.putIfAbsent(item.groupId, () => item.groupMsgSn);
      map2.putIfAbsent(item.groupId, () => item.msgSn);
    }
    groupIdMsgSnMap.value = map1;
    groupIdLatestMsgSnMap.value = map2;
  }

  final RxList<FriendInfo> contacts = RxList();
  final Map letterPosMap = {Config.INDEX_BAR_WORDS[0]: 0.0};

  Future<List<FriendInfo>> getContacts({
    bool force = false,
  }) async {
    if (!force) {
      if (contacts.isNotEmpty) {
        return contacts;
      }
    }
    final value = await GetFriends(isFirst: true);
    value.sort(
      (FriendInfo a, FriendInfo b) => a.nameIndex!.compareTo(b.nameIndex!),
    );

    var totalPos = Dimens.gap_dp60 + 400;
    for (int i = 0; i < value.length; i++) {
      bool hasGroupTitle = true;
      if (i > 0 &&
          value[i].nameIndex!.compareTo(value[i - 1].nameIndex!) == 0) {
        hasGroupTitle = false;
      }

      if (hasGroupTitle) letterPosMap[value[i].nameIndex!] = totalPos;

      totalPos += Dimens.gap_dp60;
    }

    contacts.value = value;
    for (final item in value) {
      LoggerManager().debug(
        'user nickname: ${item.remark.isEmpty ? item.userInfo.nickName : item.remark} nameIndex: ${item.nameIndex}',
      );
    }
    return contacts;
  }

  Future<void> loadConfig() async {
    final String yamlString = await rootBundle.loadString('assets/config.yaml');

    final YamlMap yamlMap = loadYaml(yamlString);
    final configValue = config.isTest ? yamlMap['test'] : yamlMap['config'];
    if (configValue is List) {
      for (final YamlMap item in configValue) {
        ImEndPoint imEndPoint = ImEndPoint();
        imEndPoint.cfgAllocatorUrl = item['cfgAllocatorUrl'];
        imEndPoint.urlUploadFile = item['urlUploadFile'];
        imEndPoint.cfgImInterApiUrl = item['cfgImInterApiUrl'];
        imEndPoint.cfgImOutApiUrl = item['cfgImOutApiUrl'];
        imEndPoint.cfgAppGateApiHost = item['cfgAppGateApiHost'];
        imEndPoint.score = item['score'];
        imEndPoint.name = item['name'];
        imEndPoint.delay = item['delay'];
        imEndPointList.add(imEndPoint);
      }
    }
  }

  void updateCurrentConversation(int conversationId) {
    currentConversationId.value = conversationId;
  }

  void updateSystemConfig(SystemConfig? config) {
    systemConfig.value = config;
  }

  void removeMsgSn(int groupId) {
    LoggerManager()
        .debug('global controller groupIdMsgSnMap: $groupIdMsgSnMap');
    LoggerManager().debug(
        'global controller groupIdLatestMsgSnMap: $groupIdLatestMsgSnMap');
    try {
      if (groupIdMsgSnMap.containsKey(groupId)) {
        final list = <GroupMsgSn>[];
        for (final key in groupIdMsgSnMap.keys) {
          if (key != groupId) {
            final item = GroupMsgSn(
              groupId: key,
              groupMsgSn: groupIdMsgSnMap[key]!,
              msgSn: groupIdLatestMsgSnMap[key]!,
            );
            list.add(item);
          }
        }
        Storage.instance.setString(
          StorageKey.offlineMsgSn,
          jsonEncode(list),
        );

        groupIdMsgSnMap.remove(groupId);
        groupIdLatestMsgSnMap.remove(groupId);
      }
    } catch (error) {
      LoggerManager().debug('removeMsgSn $error');
    }
  }

  Future<void> _forwardMessage(
    int conversationId,
    types.Message message,
  ) async {
    eventBus.fire(
      ForwardMessage(
        conversationId: conversationId,
        message: message,
      ),
    );
  }

  Future<void> mergeForwardMessage(
    Map<int, ChatItemFinfo> dataMap,
    List<types.Message> messages, {
    required int conversationId,
    bool privateChat = true,
  }) async {
    debugPrint(
        'mergeForwardMessage length 111 ============> ${messages.length}');
    String mergeForwardTitle = '${AppUserInfo().imId}的聊天记录';
    if (!privateChat) {
      final GroupInfo groupInfo = GroupInfo();
      await groupInfo.fetchGroupData(conversationId);
      mergeForwardTitle =
          '${groupInfo.remark.isEmpty ? groupInfo.name : groupInfo.remark}的聊天记录';
    }
    debugPrint(
        'mergeForwardMessage length 222 ============> ${messages.length}');
    final List<String> mergeForwardContentList = [];
    final List<int> mergeForwardMessageIds = [];
    for (final message in messages) {
      mergeForwardMessageIds.add(int.parse(message.id));
      if (message is types.TextMessage) {
        String text = message.text;
        if (null != message.metadata) {
          final pbMessage = message.metadata!['pbMessage'] as PBMessage;
          final pbDataMsg = message.metadata!['pbDataMsg'] as GeneratedMessage;
          text = await getItemText(pbMessage, pbDataMsg);
        }
        mergeForwardContentList.add('${message.author.firstName}:$text');
      } else if (message is types.ImageMessage) {
        mergeForwardContentList.add('${message.author.firstName}:[图片]');
      } else if (message is types.VideoMessage) {
        mergeForwardContentList.add('${message.author.firstName}:[视频]');
      } else if (message is types.FileMessage) {
        mergeForwardContentList.add('${message.author.firstName}:[文件]');
      } else if (message is types.AudioMessage) {
        mergeForwardContentList.add('${message.author.firstName}:[语音]');
      } else if (message is types.CustomMessage) {
        if (null != message.metadata &&
            message.metadata!.containsKey('customType')) {
          if (message.metadata!['customType'] == 'mergeForward') {
            mergeForwardContentList.add('${message.author.firstName}:[聊天记录]');
          }
        }
      }
    }
    if (privateChat) {
      ChatTestController.to(conversationId.toString()).updateSelectStatus();
    } else {
      ChatGroupController.to(conversationId.toString()).updateSelectStatus();
    }
    for (final chatId in dataMap.keys) {
      final conversation = dataMap[chatId];
      final bool privateChat0 =
          conversation!.chatItem.chatType != CHAT_TYPE.GROUP;
      if (privateChat0) {
        IMClient.sendMergeForwardMessage(
          chatId,
          title: mergeForwardTitle,
          contentList: mergeForwardContentList,
          messageIds: mergeForwardMessageIds,
          mergeForwardFromPrivate: privateChat,
        ).then(
          (value) => _forwardMessage(chatId, value),
        );
      } else {
        IMClient.sendMergeForwardMessage(
          AppUserInfo().imId,
          title: mergeForwardTitle,
          contentList: mergeForwardContentList,
          messageIds: mergeForwardMessageIds,
          groupId: Int64(chatId),
          conversationType: CHAT_TYPE.GROUP,
          mergeForwardFromPrivate: privateChat,
        ).then(
          (value) => _forwardMessage(chatId, value),
        );
      }
    }
  }

  Future<void> forwardMessage(
    Map<int, ChatItemFinfo> dataMap,
    List<types.Message> messages, {
    required int conversationId,
    bool privateChat = true,
  }) async {
    LoggerManager().debug(
      'target id ======> ${dataMap.keys} messages length ======> ${messages.length}',
    );
    for (final message in messages) {
      for (final conversationId in dataMap.keys) {
        final conversation = dataMap[conversationId];
        final bool privateChat =
            conversation!.chatItem.chatType != CHAT_TYPE.GROUP;
        if (message is types.TextMessage) {
          String text = message.text;
          if (null != message.metadata) {
            final pbMessage = message.metadata!['pbMessage'] as PBMessage;
            final pbDataMsg =
                message.metadata!['pbDataMsg'] as GeneratedMessage;
            text = await getItemText(pbMessage, pbDataMsg);
          }
          if (privateChat) {
            IMClient.sendTextMessage(
              conversationId,
              text,
            ).then(
              (value) => _forwardMessage(conversationId, value),
            );
          } else {
            IMClient.sendTextMessage(
              AppUserInfo().imId,
              text,
              groupId: Int64(conversationId),
              conversationType: CHAT_TYPE.GROUP,
            ).then(
              (value) => _forwardMessage(conversationId, value),
            );
          }
        } else if (message is types.ImageMessage) {
          if (privateChat) {
            IMClient.sendImageMessage(
              conversationId,
              message.uri,
              name: message.name,
              size: message.size,
              width: message.width ?? 0,
              height: message.height ?? 0,
            ).then(
              (value) => _forwardMessage(conversationId, value),
            );
          } else {
            IMClient.sendImageMessage(
              AppUserInfo().imId,
              message.uri,
              name: message.name,
              size: message.size,
              width: message.width ?? 0,
              height: message.height ?? 0,
              groupId: Int64(conversationId),
              conversationType: CHAT_TYPE.GROUP,
            ).then(
              (value) => _forwardMessage(conversationId, value),
            );
          }
        } else if (message is types.FileMessage) {
          if (privateChat) {
            IMClient.sendFileMessage(
              conversationId,
              message.uri,
              name: message.name,
              size: message.size,
            ).then(
              (value) => _forwardMessage(conversationId, value),
            );
          } else {
            IMClient.sendFileMessage(
              AppUserInfo().imId,
              message.uri,
              name: message.name,
              size: message.size,
              groupId: Int64(conversationId),
              conversationType: CHAT_TYPE.GROUP,
            ).then(
              (value) => _forwardMessage(conversationId, value),
            );
          }
        } else if (message is types.AudioMessage) {
          if (privateChat) {
            IMClient.sendAudioMessage(
              conversationId,
              message.uri,
              name: message.name,
              size: message.size,
              duration: message.duration.inMicroseconds,
            ).then(
              (value) => _forwardMessage(conversationId, value),
            );
          } else {
            IMClient.sendAudioMessage(
              AppUserInfo().imId,
              message.uri,
              name: message.name,
              size: message.size,
              duration: message.duration.inMicroseconds,
              groupId: Int64(conversationId),
              conversationType: CHAT_TYPE.GROUP,
            ).then(
              (value) => _forwardMessage(conversationId, value),
            );
          }
        } else if (message is types.VideoMessage) {
          String thumbnailUrl = '';
          if (null != message.metadata) {
            thumbnailUrl = message.metadata!['thumbnail'];
          }
          if (privateChat) {
            IMClient.sendVideoMessage(
              conversationId,
              message.uri,
              name: message.name,
              size: message.size,
              width: message.width ?? 0,
              height: message.height ?? 0,
              thumbnail: thumbnailUrl,
            ).then(
              (value) => _forwardMessage(conversationId, value),
            );
          } else {
            IMClient.sendVideoMessage(
              AppUserInfo().imId,
              message.uri,
              name: message.name,
              size: message.size,
              width: message.width ?? 0,
              height: message.height ?? 0,
              thumbnail: thumbnailUrl,
              groupId: Int64(conversationId),
              conversationType: CHAT_TYPE.GROUP,
            ).then(
              (value) => _forwardMessage(conversationId, value),
            );
          }
        }
      }
    }

    if (privateChat) {
      ChatTestController.to(conversationId.toString()).updateSelectStatus();
    } else {
      ChatGroupController.to(conversationId.toString()).updateSelectStatus();
    }
  }
}
