import 'dart:convert';

import 'package:fixnum/fixnum.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:mime/mime.dart';
import 'package:protobuf/protobuf.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/pb/pb_msg/gate/gate.pb.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart';
import 'package:quliao/pb/pb_msg/user_center/userCenter.pb.dart'
    hide FriendInfo;
import 'package:quliao/pb/pb_pub/service.pbenum.dart';
import 'package:quliao/pub/pub-def.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:quliao/net/socket.dart';
import 'package:quliao/utils/log/manager.dart';

import '../models/user/friendInfo.dart';
import '../pb/pb_pub/comm.pb.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class IMClient {
  static final Client _client = Client();

  static types.User getCurrentUser() {
    return types.User(
      id: AppUserInfo().imId.toString(),
      firstName: AppUserInfo().nickName,
      imageUrl:
          "${AppUserInfo().appAvatar}?x-oss-process=image/resize,m_fill,h_100,w_100",
    );
  }

  static Future<types.User> getTarget(
    int targetId,
  ) async {
    final friendInfo = FriendInfo();
    await friendInfo.LoadFriendData(targetId);
    return types.User(
      id: 'targetId',
      firstName: friendInfo.userInfo.nickName,
      imageUrl:
          "${friendInfo.userInfo.avatar}?x-oss-process=image/resize,m_fill,h_100,w_100",
    );
  }

  static String generateMessageId() {
    return '${AppUserInfo().NewMsgSn()}';
  }

  // static Future<types.CustomMessage> sendRedPacketMessage(
  //   int targetId,
  //   RedPacketHandOutReq data, {
  //   String? msgSn,
  //   Int64 groupId = Int64.ZERO,
  //   CHAT_TYPE conversationType = CHAT_TYPE.PRIVATE,
  // }) async {
  //   final pbCommData = _buildPBCommData(
  //     targetId,
  //     conversationType,
  //     msgSn: msgSn,
  //     groupId: groupId,
  //   );
  //
  //   ChatText chatText = ChatText(
  //     exp: <String, String>{
  //       'chatType': conversationType == CHAT_TYPE.PRIVATE ? 'private' : 'group',
  //       'customType': 'redPacket',
  //     },
  //   );
  //   chatText.aimUserId = Int64(targetId);
  //   chatText.text = '';
  //   chatText.data = data.writeToJson();
  //   chatText.chatType = TextChatType.RED_PACKET;
  //
  //   if (conversationType == CHAT_TYPE.PRIVATE) {
  //     _client.sendMsg(chatText, Int64(targetId), pbCommData);
  //   } else {
  //     _client.sendMsg(chatText, groupId, pbCommData);
  //   }
  //   String msgSnValue = '${pbCommData.msgSn}';
  //   if (msgSnValue.isEmpty) {
  //     msgSnValue = generateMessageId();
  //   }
  //
  //   return types.CustomMessage(
  //     id: msgSnValue,
  //     author: getCurrentUser(),
  //     createdAt: DateTime.now().millisecondsSinceEpoch,
  //     status: Status.sending,
  //     metadata: <String, dynamic>{
  //       'chatType': conversationType == CHAT_TYPE.PRIVATE ? 'private' : 'group',
  //       'customType': 'redPacket',
  //     },
  //   );
  // }

  static Future<types.Message> sendTextMessage(
    int targetId,
    String content, {
    String? msgSn,
    Int64 groupId = Int64.ZERO,
    CHAT_TYPE conversationType = CHAT_TYPE.PRIVATE,
    types.Message? repliedMessage,
    List<String>? atNames,
    Map<String, int>? atNameIdMap,
  }) async {
    return await _sendMessage(
      targetId,
      content,
      msgSn: msgSn,
      groupId: groupId,
      messageType: types.MessageType.text,
      conversationType: conversationType,
      repliedMessage: repliedMessage,
      atNames: atNames,
      atNameIdMap: atNameIdMap,
    );
  }

  static Future<types.Message> sendFileMessage(
    int targetId,
    String fileUrl, {
    required String name,
    required num size,
    String? msgSn,
    Int64 groupId = Int64.ZERO,
    CHAT_TYPE conversationType = CHAT_TYPE.PRIVATE,
  }) async {
    return await _sendMessage(
      targetId,
      fileUrl,
      msgSn: msgSn,
      fileName: name,
      fileSize: size,
      groupId: groupId,
      messageType: types.MessageType.file,
      conversationType: conversationType,
    );
  }

  static Future<types.Message> sendImageMessage(
    int targetId,
    String imageUrl, {
    required String name,
    required num size,
    required double width,
    required double height,
    String? msgSn,
    Int64 groupId = Int64.ZERO,
    CHAT_TYPE conversationType = CHAT_TYPE.PRIVATE,
  }) async {
    return await _sendMessage(
      targetId,
      imageUrl,
      fileName: name,
      fileSize: size,
      width: width,
      height: height,
      msgSn: msgSn,
      groupId: groupId,
      messageType: types.MessageType.image,
      conversationType: conversationType,
    );
  }

  static Future<types.Message> sendMergeForwardMessage(
    int targetId, {
    required String title,
    required List<String> contentList,
    required List<int> messageIds,
    String? msgSn,
    Int64 groupId = Int64.ZERO,
    CHAT_TYPE conversationType = CHAT_TYPE.PRIVATE,
    bool mergeForwardFromPrivate = true,
  }) async {
    return await _sendMessage(
      targetId,
      '',
      title: title,
      contentList: contentList,
      messageIds: messageIds,
      msgSn: msgSn,
      groupId: groupId,
      messageType: types.MessageType.custom,
      conversationType: conversationType,
      mergeForwardFromPrivate: mergeForwardFromPrivate,
    );
  }

  static Future<types.Message> sendCardMessage(
    int targetId, {
    required String name,
    required String avatar,
    required String userId,
    String? msgSn,
    Int64 groupId = Int64.ZERO,
    CHAT_TYPE conversationType = CHAT_TYPE.PRIVATE,
  }) async {
    return await _sendMessage(
      targetId,
      '',
      name: name,
      avatar: avatar,
      userId: userId,
      msgSn: msgSn,
      groupId: groupId,
      messageType: types.MessageType.custom,
      conversationType: conversationType,
    );
  }

  // static Future<types.Message> sendRedPacketMessage(
  //   int targetId,
  //   RedPacketHandOutRsp data, {
  //   String? msgSn,
  //   Int64 groupId = Int64.ZERO,
  //   CHAT_TYPE conversationType = CHAT_TYPE.PRIVATE,
  // }) async {
  //   return await _sendMessage(
  //     targetId,
  //     '',
  //     data: data,
  //     msgSn: msgSn,
  //     groupId: groupId,
  //     messageType: types.MessageType.custom,
  //     conversationType: conversationType,
  //   );
  // }

  static Future<types.Message> sendVideoMessage(
    int targetId,
    String imageUrl, {
    required String name,
    required num size,
    double? width,
    double? height,
    String? thumbnail,
    String? msgSn,
    Int64 groupId = Int64.ZERO,
    CHAT_TYPE conversationType = CHAT_TYPE.PRIVATE,
  }) async {
    return await _sendMessage(
      targetId,
      imageUrl,
      fileName: name,
      fileSize: size,
      width: width,
      height: height,
      thumbnail: thumbnail,
      msgSn: msgSn,
      groupId: groupId,
      messageType: types.MessageType.video,
      conversationType: conversationType,
    );
  }

  static Future<types.Message> sendAudioMessage(
    int targetId,
    String audioUrl, {
    required String name,
    required num size,
    required int duration,
    String? msgSn,
    Int64 groupId = Int64.ZERO,
    CHAT_TYPE conversationType = CHAT_TYPE.PRIVATE,
  }) async {
    return await _sendMessage(
      targetId,
      audioUrl,
      fileName: name,
      fileSize: size,
      duration: duration,
      msgSn: msgSn,
      groupId: groupId,
      messageType: types.MessageType.audio,
      conversationType: conversationType,
    );
  }

  static Future<types.Message> _sendMessage(
    int targetId,
    String content, {
    String? msgSn,
    String? name,
    String? avatar,
    String? userId,
    num? fileSize,
    double? width,
    double? height,
    String? fileName,
    String? thumbnail,
    int? duration,
    Int64 groupId = Int64.ZERO,
    RedPacketInfoRsp? data,
    types.MessageType messageType = types.MessageType.text,
    CHAT_TYPE conversationType = CHAT_TYPE.PRIVATE,
    types.Message? repliedMessage,
    String? title,
    List<String>? contentList,
    List<int>? messageIds,
    bool mergeForwardFromPrivate = true,
    List<String>? atNames,
    Map<String, int>? atNameIdMap,
  }) async {
    final messageContent = buildMessageContent(
      targetId,
      content,
      fileSize: fileSize,
      width: width,
      height: height,
      fileName: fileName,
      name: name,
      avatar: avatar,
      data: data,
      userId: userId,
      thumbnail: thumbnail,
      duration: duration,
      messageType: messageType,
      groupId: groupId,
      conversationType: conversationType,
      repliedMessage: repliedMessage,
      title: title,
      contentList: contentList,
      messageIds: messageIds,
      mergeForwardFromPrivate: mergeForwardFromPrivate,
      atNames: atNames,
      atNameIdMap: atNameIdMap,
    );
    final pbCommData = buildPBCommData(
      targetId,
      conversationType,
      msgSn: msgSn,
      groupId: groupId,
    );
    if (conversationType == CHAT_TYPE.PRIVATE) {
      _client.sendMsg(messageContent, Int64(targetId), pbCommData);
    } else {
      _client.sendMsg(messageContent, groupId, pbCommData);
    }
    String msgSnValue = '${pbCommData.msgSn}';
    if (msgSnValue.isEmpty) {
      msgSnValue = generateMessageId();
    }
    return buildMessage(
      targetId,
      content,
      msgSnValue,
      fileSize: fileSize,
      width: width,
      height: height,
      name: name,
      data: data,
      avatar: avatar,
      userId: userId,
      fileName: fileName,
      thumbnail: thumbnail,
      duration: duration,
      messageType: messageType,
      groupId: groupId,
      repliedMessage: repliedMessage,
      title: title,
      contentList: contentList,
      messageIds: messageIds,
      conversationType: conversationType,
      mergeForwardFromPrivate: mergeForwardFromPrivate,
      atNames: atNames,
      atNameIdMap: atNameIdMap,
    );
  }

  static types.Message buildMessage(
    int targetId,
    String content,
    String msgSn, {
    num? fileSize,
    double? width,
    double? height,
    String? name,
    String? avatar,
    String? userId,
    String? fileName,
    String? thumbnail,
    int? duration,
    RedPacketInfoRsp? data,
    types.MessageType messageType = types.MessageType.text,
    Int64 groupId = Int64.ZERO,
    types.Message? repliedMessage,
    String? title,
    List<String>? contentList,
    List<int>? messageIds,
    CHAT_TYPE conversationType = CHAT_TYPE.PRIVATE,
    bool mergeForwardFromPrivate = true,
    List<String>? atNames,
    Map<String, int>? atNameIdMap,
    types.User? targetUser,
  }) {
    if (messageType == types.MessageType.file) {
      return buildFileMessage(
        targetId,
        content,
        msgSn,
        fileSize ?? 0,
        fileName ?? '',
      );
    } else if (messageType == types.MessageType.image) {
      return buildImageMessage(
        targetId,
        content,
        msgSn,
        fileSize ?? 0,
        width ?? 0,
        height ?? 0,
        fileName ?? '',
      );
    } else if (messageType == types.MessageType.audio) {
      return buildAudioMessage(
        targetId,
        content,
        msgSn,
        fileSize ?? 0,
        fileName ?? '',
        duration ?? 0,
      );
    } else if (messageType == types.MessageType.video) {
      return buildVideoMessage(
        targetId,
        content,
        msgSn,
        fileSize ?? 0,
        width ?? 0,
        height ?? 0,
        fileName ?? '',
        thumbnail,
      );
    } else if (messageType == types.MessageType.custom) {
      return buildCustomMessage(
        targetId,
        msgSn,
        title ?? '',
        contentList ?? [],
        messageIds ?? [],
        conversationType,
        mergeForwardFromPrivate,
        targetUser: targetUser,
        name: name,
        avatar: avatar,
        userId: userId,
        data: data,
      );
    }
    return _buildTextMessage(
      targetId,
      content,
      msgSn,
      groupId,
      repliedMessage: repliedMessage,
      atNames: atNames,
      atNameIdMap: atNameIdMap,
    );
  }

  static types.TextMessage _buildTextMessage(
    int targetId,
    String content,
    String msgSn,
    Int64 groupId, {
    types.Message? repliedMessage,
    List<String>? atNames,
    Map<String, int>? atNameIdMap,
  }) {
    Map<String, dynamic>? metadata;
    if (null != atNames && atNames.isNotEmpty) {
      metadata = <String, dynamic>{};
      metadata['atNames'] = jsonEncode(atNames);
      metadata['atNameIdMap'] = jsonEncode(atNameIdMap);
    }
    return types.TextMessage(
      id: msgSn,
      text: content,
      author: getCurrentUser(),
      status: Status.sending,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      repliedMessage: repliedMessage,
      metadata: metadata,
    );
  }

  static types.FileMessage buildFileMessage(
    int targetId,
    String content,
    String msgSn,
    num fileSize,
    String fileName,
  ) {
    return types.FileMessage(
      id: msgSn,
      author: getCurrentUser(),
      createdAt: DateTime.now().millisecondsSinceEpoch,
      name: fileName,
      size: fileSize,
      uri: content,
      mimeType: lookupMimeType(content),
      status: Status.sending,
    );
  }

  static types.ImageMessage buildImageMessage(
    int targetId,
    String content,
    String msgSn,
    num fileSize,
    double width,
    double height,
    String fileName,
  ) {
    return types.ImageMessage(
      id: msgSn,
      author: getCurrentUser(),
      createdAt: DateTime.now().millisecondsSinceEpoch,
      name: fileName,
      size: fileSize,
      uri: content,
      status: Status.sending,
      width: width,
      height: height,
    );
  }

  static types.VideoMessage buildVideoMessage(
    int targetId,
    String content,
    String msgSn,
    num fileSize,
    double width,
    double height,
    String fileName,
    String? thumbnail,
  ) {
    return types.VideoMessage(
      id: msgSn,
      author: getCurrentUser(),
      createdAt: DateTime.now().millisecondsSinceEpoch,
      name: fileName,
      size: fileSize,
      uri: content,
      status: Status.sending,
      width: width,
      height: height,
      metadata: <String, dynamic>{
        'thumbnail': thumbnail,
      },
    );
  }

  static CustomMessage buildCustomMessage(
    int targetId,
    String msgSn,
    String title,
    List<String> contentList,
    List<int> messageIds,
    CHAT_TYPE conversationType,
    bool mergeForwardFromPrivate, {
    types.User? targetUser,
    String? name,
    String? avatar,
    String? userId,
    RedPacketInfoRsp? data,
  }) {
    var metadata = <String, dynamic>{
      'chatType': mergeForwardFromPrivate ? 'private' : 'group',
      'customType':
          null != avatar && null != name ? 'businessCard' : 'mergeForward',
      'forwardTitle': title,
      'forwardContent': jsonEncode(contentList),
      'forwardMessageIds': jsonEncode(messageIds),
      'name': name,
      'avatar': avatar,
      'userId': userId,
    };
    var user = getCurrentUser();
    if (null != data) {
      metadata = <String, dynamic>{
        'customType': 'redPacket',
        'data': data.writeToJson(),
        'chatType': conversationType == CHAT_TYPE.PRIVATE ? 'private' : 'group',
      };
    }
    if (null != targetUser) {
      user = targetUser;
    }
    return types.CustomMessage(
      id: msgSn,
      author: user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      status: null != data ? Status.seen : Status.sending,
      metadata: metadata,
    );
  }

  static types.AudioMessage buildAudioMessage(
    int targetId,
    String content,
    String msgSn,
    num fileSize,
    String fileName,
    int duration,
  ) {
    return types.AudioMessage(
      id: msgSn,
      author: getCurrentUser(),
      duration: Duration(microseconds: duration),
      createdAt: DateTime.now().millisecondsSinceEpoch,
      name: fileName,
      size: fileSize,
      uri: content,
      status: Status.sending,
    );
  }

  static PBCommData buildPBCommData(
    int targetId,
    CHAT_TYPE conversationType, {
    String? msgSn,
    Int64 groupId = Int64.ZERO,
  }) {
    PBCommData pbCommData = MakePBCommData(aimId: Int64(targetId));
    if (conversationType == CHAT_TYPE.GROUP) {
      pbCommData = MakePBCommData(
        aimId: groupId,
        groupId: groupId,
        toService: Service.group,
      );
      if (null != msgSn) {
        pbCommData.msgSn = Int64.parseInt(msgSn);
      }
      pbCommData.needReadReceipt = true;
      return pbCommData;
    }
    if (null != msgSn) {
      pbCommData.msgSn = Int64.parseInt(msgSn);
    }
    pbCommData.needPushMsg = true;
    pbCommData.needReadReceipt = true;
    pbCommData.userSourceVersion = AppUserInfo().userSourceVersion;
    return pbCommData;
  }

  static GeneratedMessage buildMessageContent(
    int targetId,
    String content, {
    num? fileSize,
    double? width,
    double? height,
    String? fileName,
    String? thumbnail,
    String? name,
    String? avatar,
    String? userId,
    int? duration,
    Int64 groupId = Int64.ZERO,
    RedPacketInfoRsp? data,
    CHAT_TYPE conversationType = CHAT_TYPE.PRIVATE,
    types.MessageType messageType = types.MessageType.text,
    types.Message? repliedMessage,
    String? title,
    List<String>? contentList,
    List<int>? messageIds,
    bool mergeForwardFromPrivate = true,
    List<String>? atNames,
    Map<String, int>? atNameIdMap,
  }) {
    if (conversationType == CHAT_TYPE.PRIVATE) {
      return _buildChatText(
        targetId,
        content,
        fileSize: fileSize,
        width: width,
        height: height,
        name: name,
        avatar: avatar,
        data: data,
        userId: userId,
        fileName: fileName,
        thumbnail: thumbnail,
        duration: duration,
        messageType: messageType,
        title: title,
        contentList: contentList,
        messageIds: messageIds,
        conversationType: conversationType,
        mergeForwardFromPrivate: mergeForwardFromPrivate,
      );
    } else {
      return _buildGroupChat(
        targetId,
        content,
        fileSize: fileSize,
        width: width,
        height: height,
        name: name,
        avatar: avatar,
        data: data,
        userId: userId,
        fileName: fileName,
        thumbnail: thumbnail,
        duration: duration,
        messageType: messageType,
        groupId: groupId,
        repliedMessage: repliedMessage,
        title: title,
        contentList: contentList,
        messageIds: messageIds,
        mergeForwardFromPrivate: mergeForwardFromPrivate,
        atNames: atNames,
        atNameIdMap: atNameIdMap,
        conversationType: conversationType,
      );
    }
  }

  static GroupChat _buildGroupChat(
    int targetId,
    String content, {
    num? fileSize,
    double? width,
    double? height,
    String? name,
    String? avatar,
    String? userId,
    String? fileName,
    String? thumbnail,
    int? duration,
    RedPacketInfoRsp? data,
    types.MessageType messageType = types.MessageType.text,
    Int64 groupId = Int64.ZERO,
    types.Message? repliedMessage,
    String? title,
    List<String>? contentList,
    List<int>? messageIds,
    bool mergeForwardFromPrivate = true,
    List<String>? atNames,
    Map<String, int>? atNameIdMap,
    CHAT_TYPE conversationType = CHAT_TYPE.PRIVATE,
  }) {
    GroupChat groupChat = GroupChat();
    if (messageType == types.MessageType.file) {
      groupChat = GroupChat(
        exp: <String, String>{
          'size': '$fileSize',
          'name': fileName ?? '',
        },
      );
    } else if (messageType == types.MessageType.audio) {
      groupChat = GroupChat(
        exp: <String, String>{
          'size': '$fileSize',
          'duration': '${duration ?? 0}',
        },
      );
    } else if (messageType == types.MessageType.image) {
      groupChat = GroupChat(
        exp: <String, String>{
          'width': '${width ?? 0}',
          'height': '${height ?? 0}',
        },
      );
    } else if (messageType == types.MessageType.video) {
      groupChat = GroupChat(
        exp: <String, String>{
          'width': '${width ?? 0}',
          'height': '${height ?? 0}',
          'thumbnail': thumbnail ?? '',
        },
      );
    } else if (messageType == types.MessageType.text) {
      final dataMap = <String, String>{};
      if (null != repliedMessage) {
        dataMap['groupId'] = '$groupId';
        dataMap['messageReply'] = repliedMessage.id;
      }
      if (null != atNames && atNames.isNotEmpty) {
        dataMap['atNames'] = jsonEncode(atNames);
        dataMap['atNameIdMap'] = jsonEncode(atNameIdMap);
      }
      groupChat = GroupChat(exp: dataMap);
    } else if (messageType == types.MessageType.custom) {
      if (null != messageIds && messageIds.isNotEmpty) {
        groupChat = GroupChat(
          exp: <String, String>{
            'chatType': mergeForwardFromPrivate ? 'private' : 'group',
            'customType': 'mergeForward',
            'forwardTitle': title ?? '',
            'forwardContent': jsonEncode(contentList ?? []),
            'forwardMessageIds': jsonEncode(messageIds),
          },
        );
      } else if (null != name && name != avatar) {
        groupChat = GroupChat(
          exp: <String, String>{
            'chatType': mergeForwardFromPrivate ? 'private' : 'group',
            'customType': 'businessCard',
            'name': name ?? '',
            'avatar': avatar ?? '',
            'userId': userId ?? '',
          },
        );
      } else if (null != data) {
        groupChat = GroupChat(
          exp: <String, String>{
            'customType': 'redPacket',
            'data': data.writeToJson(),
            'chatType':
                conversationType == CHAT_TYPE.PRIVATE ? 'private' : 'group',
          },
        );
      }
    }
    groupChat.aimUserId = Int64(targetId);
    switch (messageType) {
      case types.MessageType.text:
        groupChat.text = content;
        groupChat.chatType = TextChatType.TEXT;
        break;
      case types.MessageType.audio:
        groupChat.text = '';
        groupChat.data = content;
        groupChat.chatType = TextChatType.AUDIO;
        break;
      case types.MessageType.custom:
        groupChat.text = '';
        if (null != data) {
          groupChat.data = data.writeToJson();
        } else {
          groupChat.data = content;
        }
        groupChat.chatType = TextChatType.CUSTOMIZE;
        break;
      case types.MessageType.file:
        groupChat.text = '';
        groupChat.data = content;
        groupChat.chatType = TextChatType.FILE;
        break;
      case types.MessageType.image:
        groupChat.text = '';
        groupChat.data = content;
        groupChat.chatType = TextChatType.PIC;
        break;
      case types.MessageType.system:
      case types.MessageType.unsupported:
        break;
      case types.MessageType.video:
        groupChat.text = '';
        groupChat.data = content;
        groupChat.chatType = TextChatType.VIDEO;
        break;
    }
    return groupChat;
  }

  static ChatText _buildChatText(
    int targetId,
    String content, {
    num? fileSize,
    double? width,
    double? height,
    String? name,
    String? avatar,
    String? userId,
    String? fileName,
    String? thumbnail,
    int? duration,
    RedPacketInfoRsp? data,
    types.MessageType messageType = types.MessageType.text,
    String? title,
    List<String>? contentList,
    List<int>? messageIds,
    bool mergeForwardFromPrivate = true,
    CHAT_TYPE conversationType = CHAT_TYPE.PRIVATE,
  }) {
    ChatText chatText = ChatText();
    if (messageType == types.MessageType.file) {
      chatText = ChatText(
        exp: <String, String>{
          'size': '$fileSize',
          'name': fileName ?? '',
        },
      );
    } else if (messageType == types.MessageType.audio) {
      chatText = ChatText(
        exp: <String, String>{
          'size': '$fileSize',
          'duration': '${duration ?? 0}',
        },
      );
    } else if (messageType == types.MessageType.image) {
      chatText = ChatText(
        exp: <String, String>{
          'width': '${width ?? 0}',
          'height': '${height ?? 0}',
        },
      );
    } else if (messageType == types.MessageType.video) {
      chatText = ChatText(
        exp: <String, String>{
          'width': '${width ?? 0}',
          'height': '${height ?? 0}',
          'thumbnail': thumbnail ?? '',
        },
      );
    } else if (messageType == types.MessageType.custom) {
      if (null != messageIds && messageIds.isNotEmpty) {
        chatText = ChatText(
          exp: <String, String>{
            'chatType': mergeForwardFromPrivate ? 'private' : 'group',
            'customType': 'mergeForward',
            'forwardTitle': title ?? '',
            'forwardContent': jsonEncode(contentList ?? []),
            'forwardMessageIds': jsonEncode(messageIds),
          },
        );
      } else if (null != name && name != avatar) {
        chatText = ChatText(
          exp: <String, String>{
            'chatType': mergeForwardFromPrivate ? 'private' : 'group',
            'customType': 'businessCard',
            'name': name ?? '',
            'avatar': avatar ?? '',
            'userId': userId ?? '',
          },
        );
      } else if (null != data) {
        chatText = ChatText(
          exp: <String, String>{
            'customType': 'redPacket',
            'data': data.writeToJson(),
            'chatType':
                conversationType == CHAT_TYPE.PRIVATE ? 'private' : 'group',
          },
        );
      }
    }
    // else if (messageType == types.MessageType.text) {
    //   RepliedMessage repliedMessage =
    //       ChatInputController.to.repliedMessage.value;
    //   if (null != repliedMessage.message) {
    //     chatText = ChatText(
    //       exp: <String, String>{
    //         'messageReply': repliedMessage.message!.id,
    //       },
    //     );
    //   }
    // }
    chatText.aimUserId = Int64(targetId);
    switch (messageType) {
      case types.MessageType.text:
        chatText.text = content;
        chatText.chatType = TextChatType.TEXT;
        break;
      case types.MessageType.audio:
        chatText.text = '';
        chatText.data = content;
        chatText.chatType = TextChatType.AUDIO;
        break;
      case types.MessageType.custom:
        chatText.text = '';
        if (null != data) {
          chatText.data = data.writeToJson();
        } else {
          chatText.data = content;
        }
        chatText.chatType = TextChatType.CUSTOMIZE;
        break;
      case types.MessageType.file:
        chatText.text = '';
        chatText.data = content;
        chatText.chatType = TextChatType.FILE;
        break;
      case types.MessageType.image:
        chatText.text = '';
        chatText.data = content;
        chatText.chatType = TextChatType.PIC;
        break;
      case types.MessageType.system:
      case types.MessageType.unsupported:
        break;
      case types.MessageType.video:
        chatText.text = '';
        chatText.data = content;
        chatText.chatType = TextChatType.VIDEO;
        break;
    }
    return chatText;
  }
}
