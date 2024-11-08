import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/flutter_chat_ui/src/chat_l10n.dart';
import 'package:quliao/flutter_chat_ui/src/chat_theme.dart';
import 'package:quliao/flutter_chat_ui/src/models/preview_image.dart';
import 'package:quliao/flutter_chat_ui/src/models/preview_video.dart';
import 'package:quliao/flutter_chat_ui/src/widgets/message/file_history_message.dart';
import 'package:quliao/flutter_chat_ui/src/widgets/message/video_message.dart';
import 'package:quliao/flutter_chat_ui/src/widgets/state/inherited_chat_theme.dart';
import 'package:quliao/flutter_chat_ui/src/widgets/state/inherited_l10n.dart';
import 'package:quliao/global/widgets/state_widget.dart';
import 'package:quliao/modules/conversation/pages/chat/search/media/controller.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:quliao/pages/chat_index/media_preview.dart';
import 'package:quliao/pages/chat_index/pc_preview_video.dart';
import 'package:quliao/pages/chat_index/preview_video.dart';
import 'package:quliao/pages/chat_private/image_message_widget.dart';
import 'package:quliao/pages/windows/comm_dialog.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../models/user/friendInfo.dart';
import '../../../../../../pages/friend/friend_info.dart';
import 'package:quliao/widgets/avatar.dart' as avatar;
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

class SearchMediaPage extends StatefulWidget {
  const SearchMediaPage({
    super.key,
    required this.conversationId,
    this.privateChat = true,
    this.type,
  });

  final int conversationId;
  final bool privateChat;
  final types.MessageType? type;

  @override
  State<StatefulWidget> createState() => _SearchMediaPageState();
}

class _SearchMediaPageState extends State<SearchMediaPage> {
  late SearchMediaController controller;

  @override
  void initState() {
    super.initState();
    controller = SearchMediaController();
    Get.put(controller, tag: '${widget.conversationId}');
    controller.loadHistory(
      widget.conversationId,
      privateChat: widget.privateChat,
      type: widget.type,
    );
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

  Future<void> _openFile(types.FileMessage message) async {
    var localPath = message.uri;

    final _messages = controller.messageList;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        titleSpacing: 0,
        elevation: 0,
        title: Text(
          null == widget.type ? '图片与视频' : '文件',
          style: const TextStyle(color: Colors.black87),
        ),
        leading: const BackButton(
          color: Colors.black87,
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Obx(
        () => StateWidget(
          state: controller.loadState.value,
          emptyView: Center(
            child: null == widget.type
                ? const Text('暂无图片或视频')
                : const Text('暂无聊天文件'),
          ),
          child: InheritedChatTheme(
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
                  final message = controller.messageList[index];
                  Decoration? decoration;
                  if (message is types.ImageMessage) {
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
                    child = GestureDetector(
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
                  }
                  return Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context, message.id);
                      },
                      child: Container(
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
                            Expanded(
                              child: Stack(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: null != message.createdAt
                                        ? Text(
                                            DateFormat('yyyy-MM-dd HH:mm:ss')
                                                .format(
                                              DateTime
                                                  .fromMicrosecondsSinceEpoch(
                                                message.createdAt! * 1000,
                                              ),
                                            ),
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSurface
                                                  .withOpacity(0.5),
                                            ),
                                          )
                                        : Gaps.empty,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemCount: controller.messageList.length,
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
        ),
      ),
    );
  }
}
