import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:protobuf/protobuf.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/flutter_chat_ui/flutter_chat_ui.dart';
import 'package:quliao/flutter_chat_ui/src/models/preview_image.dart';
import 'package:quliao/flutter_chat_ui/src/models/preview_video.dart';
import 'package:quliao/flutter_chat_ui/src/widgets/message/file_history_message.dart';
import 'package:quliao/flutter_chat_ui/src/widgets/message/text_history_message.dart';
import 'package:quliao/flutter_chat_ui/src/widgets/message/video_message.dart';
import 'package:quliao/flutter_chat_ui/src/widgets/state/inherited_chat_theme.dart';
import 'package:quliao/flutter_chat_ui/src/widgets/state/inherited_l10n.dart';
import 'package:quliao/models/msg_struct.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/pages/chat_group/flyer_chat/chat_group_change_to_message.dart';
import 'package:quliao/pages/chat_index/DeskVoiceMessage.dart';
import 'package:quliao/pages/chat_index/custom_message.dart';
import 'package:quliao/pages/chat_index/media_preview.dart';
import 'package:quliao/pages/chat_index/preview_video.dart';
import 'package:quliao/pages/chat_private/chat.dart';
import 'package:quliao/pages/chat_private/flyer_chat/chat_private_change_to_message.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:quliao/pages/chat_private/image_message_widget.dart';
import 'package:quliao/pages/friend/friend_info.dart';
import 'package:quliao/pages/windows/comm_dialog.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/widgets/avatar.dart' as avatar;
import 'package:url_launcher/url_launcher.dart';

import '../../pb/pb_pub/comm.pb.dart';
import 'pc_preview_video.dart';

class MergeForwardMessageList extends StatefulWidget {
  const MergeForwardMessageList({
    super.key,
    required this.messageIds,
    this.privateChat = true,
  });

  final List messageIds;
  final bool privateChat;

  @override
  State<StatefulWidget> createState() => _MergeForwardMessageListState();
}

class _MergeForwardMessageListState extends State<MergeForwardMessageList> {
  final List<types.Message> _messages = [];

  @override
  void initState() {
    super.initState();
    _query();
  }

  final user = types.User(
    id: AppUserInfo().imId.toString(),
    firstName: AppUserInfo().nickName,
    imageUrl:
        "${AppUserInfo().appAvatar}?x-oss-process=image/resize,m_fill,h_100,w_100",
  );

  Future<void> _query() async {
    LoggerManager().debug('privateChat ==========> ${widget.privateChat}');
    final dataResult = await dbMsg?.rawQuery(
          "SELECT * FROM ${widget.privateChat ? tbPrivateMsgTable : tbGroupMsgTable} WHERE msgSn IN (${widget.messageIds.map((id) => '?').join(', ')})",
          widget.messageIds,
        ) ??
        [];
    if (dataResult.isNotEmpty) {
      if (widget.privateChat) {
        for (final data in dataResult) {
          var d = ChatPrivateData()..initWithMap(data);

          final messageMap = await changeToMessageMap(d);
          if (!messageMap.keys.contains('type')) {
            continue;
          }
          types.Message message = types.Message.fromJson(messageMap);
          _messages.add(message);
        }
      } else {
        for (final data in dataResult) {
          var d = ChatGroupData();
          // 等待加载用户信息
          await d.initWithMap(data);
          final messageMap = await changeToGroupMessageMap(d);
          if (!messageMap.keys.contains('type')) {
            continue;
          }
          types.Message message = types.Message.fromJson(messageMap);
          _messages.add(message);
        }
      }
      setState(() {});
    }
  }

  Future<void> _openFile(types.FileMessage message) async {
    var localPath = message.uri;

    if (message.uri.startsWith('http')) {
      try {
        final index =
            _messages.indexWhere((element) => element.id == message.id);
        final updatedMessage = (_messages[index] as types.FileMessage).copyWith(
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
        final updatedMessage = (_messages[index] as types.FileMessage).copyWith(
          isLoading: null,
        );

        setState(() {
          _messages[index] = updatedMessage;
        });
      }
    }

    await OpenFilex.open(localPath);
  }

  Future<void> _nav2TargetProfile(int userId) async {
    FriendInfo friendInfo = FriendInfo();
    friendInfo.LoadFriendData(userId).then((value) {
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
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.surface,
        leading: const BackButton(
          color: Colors.black87,
        ),
        title: const Text(
          '聊天记录',
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: _messages.isEmpty
          ? Gaps.empty
          : InheritedChatTheme(
              theme: DefaultChatTheme(
                backgroundColor: Theme.of(context).colorScheme.surface,
                messageInsetsHorizontal: Dimens.gap_dp14,
                messageInsetsVertical: Dimens.gap_dp8,
                sentMessageBodyTextStyle: TextStyle(
                  color: neutral7,
                  fontSize: Dimens.font_sp1 * 15,
                ),
                receivedMessageBodyTextStyle: TextStyle(
                  color: neutral0,
                  fontSize: Dimens.font_sp1 * 15,
                ),
                sentMessageDocumentIconColor:
                    Theme.of(context).colorScheme.primary,
              ),
              child: InheritedL10n(
                l10n: const ChatL10nEn(),
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    Widget child = Gaps.empty;
                    final messageWidth = Dimens.gap_dp10 * 20;
                    final message = _messages[index];
                    Decoration? decoration;
                    if (message is types.TextMessage) {
                      decoration = BoxDecoration(
                        color: const Color(0xFFF4F4F4),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Dimens.gap_dp10),
                          topRight: Radius.circular(Dimens.gap_dp10),
                          bottomRight: Radius.circular(Dimens.gap_dp10),
                        ),
                      );
                      child = TextHistoryMessage(
                        emojiEnlargementBehavior:
                            EmojiEnlargementBehavior.multi,
                        hideBackgroundOnEmojiMessages: true,
                        message: message,
                        showName: false,
                        usePreviewData: true,
                      );
                      // final pbMessage = message.metadata!['pbMessage'] as PBMessage;
                      // final pbDataMsg = message.metadata!['pbDataMsg'] as GeneratedMessage;
                      // await getItemText(pbMessage, pbDataMsg);
                      // child = Text(message.text);
                    } else if (message is types.ImageMessage) {
                      final images = [
                        PreviewImage(
                          id: message.id,
                          uri: message.uri,
                          author: message.author,
                        ),
                      ];
                      child = GestureDetector(
                        onTap: () {
                          if (Dimens.isDesktop()) {
                            MyAlertDialog().show(
                              child: MediaPreviewView(
                                images: images,
                              ),
                            );
                            return;
                          }
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      MediaPreviewView(
                                images: images,
                              ),
                              transitionDuration: Duration.zero,
                            ),
                          );
                        },
                        child: ImageMessageWidget(
                          imageMessage: message,
                          messageWidth: messageWidth.toInt(),
                        ),
                      );
                    } else if (message is types.AudioMessage) {
                      child = DeskVoiceMessage(
                        msgId: message.id,
                        url: message.uri,
                        me: false,
                        duration: message.duration,
                      );
                    } else if (message is types.FileMessage) {
                      child = GestureDetector(
                        onTap: () => _openFile(message),
                        child: SizedBox(
                          width: messageWidth + Dimens.gap_dp46,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(Dimens.gap_dp10),
                              topRight: Radius.circular(Dimens.gap_dp10),
                              bottomRight: Radius.circular(Dimens.gap_dp10),
                            ),
                            child: FileHistoryMessage(message: message),
                          ),
                        ),
                      );
                    } else if (message is types.VideoMessage) {
                      String thumbnailUrl = '';
                      if (null != message.metadata) {
                        thumbnailUrl = message.metadata!['thumbnail'];
                      }
                      final videos = [
                        PreviewVideo(
                          id: message.id,
                          uri: message.uri,
                          thumbnail: thumbnailUrl,
                          author: message.author,
                        ),
                      ];
                      return GestureDetector(
                        onTap: () {
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
                          message: message,
                          messageWidth: messageWidth.toInt(),
                        ),
                      );
                    } else if (message is types.CustomMessage) {
                      child = CustomWidget(
                        message: message,
                        messageWidth: (messageWidth + Dimens.gap_dp50).toInt(),
                      );
                    }
                    return Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimens.gap_dp12,
                        vertical: Dimens.gap_dp10,
                      ),
                      constraints: BoxConstraints(maxWidth: messageWidth),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () => _nav2TargetProfile(
                              int.parse(message.author.id),
                            ),
                            child: avatar.UserAvatar(
                              size: Dimens.gap_dp40,
                              avatar: message.author.imageUrl ?? '',
                              name: message.author.firstName ?? '',
                            ),
                          ),
                          Gaps.hGap10,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(message.author.firstName ?? ''),
                              Gaps.vGap4,
                              Container(
                                decoration: decoration,
                                padding: EdgeInsets.symmetric(
                                  horizontal: Dimens.gap_dp10,
                                  vertical: Dimens.gap_dp4,
                                ),
                                child: child,
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                  itemCount: _messages.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return Container(
                      width: double.infinity,
                      height: Dimens.gap_dp1 / 2,
                      color: Theme.of(context).dividerColor,
                      margin: EdgeInsets.only(left: Dimens.gap_dp1 * 62),
                    );
                  },
                ),
              ),
            ),
    );
  }
}
