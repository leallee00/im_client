import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/config/images.dart';
import 'package:quliao/flutter_chat_ui/src/models/preview_image.dart';
import 'package:quliao/flutter_chat_ui/src/models/preview_video.dart';
import 'package:quliao/flutter_chat_ui/src/widgets/message/file_history_message.dart';
import 'package:quliao/flutter_chat_ui/src/widgets/message/text_history_message.dart';
import 'package:quliao/flutter_chat_ui/src/widgets/message/video_message.dart';
import 'package:quliao/flutter_chat_ui/src/widgets/state/inherited_chat_theme.dart';
import 'package:quliao/flutter_chat_ui/src/widgets/state/inherited_l10n.dart';
import 'package:quliao/global/widgets/refresh_view.dart';
import 'package:quliao/pages/chat_index/DeskVoiceMessage.dart';
import 'package:quliao/pages/chat_index/custom_message.dart';
import 'package:quliao/pages/chat_index/media_preview.dart';
import 'package:quliao/pages/chat_index/pc_preview_video.dart';
import 'package:quliao/pages/chat_index/preview_video.dart';
import 'package:quliao/pages/chat_private/image_message_widget.dart';
import 'package:quliao/pages/windows/comm_dialog.dart';
import 'package:quliao/widgets/app_bar.dart';
import 'package:quliao/widgets/rh_extended_image.dart';

import '../../../../flutter_chat_ui/src/chat_l10n.dart';
import '../../../../flutter_chat_ui/src/chat_theme.dart';
import '../../../../flutter_chat_ui/src/models/emoji_enlargement_behavior.dart';
import '../../../../pages/friend/friend_info.dart';
import 'collection_controller.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:quliao/models/user/friendInfo.dart';
import 'package:http/http.dart' as http;
import 'package:quliao/widgets/avatar.dart' as avatar;

/// 我的收藏
class CollectionPage extends StatefulWidget {
  const CollectionPage({super.key});

  @override
  State<StatefulWidget> createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  final _controller = Get.put(CollectionController());

  @override
  void initState() {
    super.initState();
    _controller.onRefresh();
  }

  Future<void> _openFile(types.FileMessage message) async {
    var localPath = message.uri;

    if (message.uri.startsWith('http')) {
      try {
        final index = _controller.dataList
            .indexWhere((element) => element.id == message.id);
        final updatedMessage =
            (_controller.dataList[index] as types.FileMessage).copyWith(
          isLoading: true,
        );

        setState(() {
          _controller.dataList[index] = updatedMessage;
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
        final index = _controller.dataList
            .indexWhere((element) => element.id == message.id);
        final updatedMessage =
            (_controller.dataList[index] as types.FileMessage).copyWith(
          isLoading: null,
        );

        setState(() {
          _controller.dataList[index] = updatedMessage;
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
      appBar: CustomAppBar(
        title: const Text('我的收藏'),
      ),
      body: GetBuilder<CollectionController>(
        init: _controller,
        builder: (controller) {
          return RefreshView(
            loadState: controller.loadState.value,
            refreshController: controller.refreshController,
            onRefresh: controller.onRefresh,
            onLoading: controller.onLoad,
            bodyBuilder: (context) {
              return InheritedChatTheme(
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
                      final message = controller.dataList[index];
                      debugPrint(
                          'index =========> msgSn: ${int.parse(message.id)}');
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
                        child = Text(message.text);
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
                          messageWidth:
                              (messageWidth + Dimens.gap_dp50).toInt(),
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
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          message.author.firstName ?? '',
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          _controller.delete(
                                            context,
                                            int.parse(message.id),
                                          );
                                        },
                                        child: Padding(
                                          padding:
                                              EdgeInsets.all(Dimens.gap_dp4),
                                          child: RHExtendedImage.asset(
                                            Images.iconDelete.assetName,
                                            width: Dimens.gap_dp20,
                                            height: Dimens.gap_dp20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
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
                            ),
                          ],
                        ),
                      );
                    },
                    itemCount: controller.dataList.length,
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
              );
            },
          );
        },
      ),
    );
  }
}
