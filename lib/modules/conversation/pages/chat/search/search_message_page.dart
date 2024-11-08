import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/flutter_chat_ui/src/chat_l10n.dart';
import 'package:quliao/flutter_chat_ui/src/chat_theme.dart';
import 'package:quliao/flutter_chat_ui/src/models/emoji_enlargement_behavior.dart';
import 'package:quliao/flutter_chat_ui/src/widgets/message/text_history_message.dart';
import 'package:quliao/flutter_chat_ui/src/widgets/state/inherited_chat_theme.dart';
import 'package:quliao/flutter_chat_ui/src/widgets/state/inherited_l10n.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/modules/conversation/pages/chat/search/controller.dart';
import 'package:quliao/modules/conversation/pages/chat/search/media/search_media_page.dart';
import 'package:quliao/pages/windows/comm_dialog.dart';
import 'package:quliao/widgets/input.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

import '../../../../../pages/friend/friend_info.dart';
import 'package:quliao/widgets/avatar.dart' as avatar;
import 'package:intl/intl.dart';

class SearchMessagePage extends StatefulWidget {
  const SearchMessagePage({
    super.key,
    required this.conversationId,
    this.privateChat = true,
  });

  final int conversationId;
  final bool privateChat;

  @override
  State<StatefulWidget> createState() => _SearchMessagePageState();
}

class _SearchMessagePageState extends State<SearchMessagePage> {
  late SearchMessageController controller;

  @override
  void initState() {
    super.initState();
    controller = SearchMessageController();
    Get.put(controller, tag: '${widget.conversationId}');
    controller.loadHistory(
      widget.conversationId,
      privateChat: widget.privateChat,
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

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => controller.hideKeyboard(context),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.black87,
          ),
          titleSpacing: 0,
          elevation: 0,
          title: Padding(
            padding: EdgeInsets.symmetric(vertical: 24.h),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(22.r),
              child: CustomInputSearch(
                controller: controller.keywordInput,
                hintText: '搜索',
                padding: EdgeInsets.symmetric(
                  horizontal: 12.w,
                  vertical: 6.h,
                ),
                onChanged: controller.onChanged,
              ),
            ),
          ),
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 6.h),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.r),
                    ),
                  ),
                ),
                child: Text(
                  '取消',
                  style: TextStyle(
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Obx(
          () => controller.searchResult.isEmpty
              ? _buildEmpty()
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
                        final message = controller.searchResult[index];
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
                              constraints:
                                  BoxConstraints(maxWidth: messageWidth),
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
                                  ),
                                  if (null != message.createdAt)
                                    Text(
                                      DateFormat('yyyy-MM-dd HH:mm:ss').format(
                                        DateTime.fromMicrosecondsSinceEpoch(
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
                                    ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: controller.searchResult.length,
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

  Widget _buildEmpty() {
    return Container(
      margin: EdgeInsets.only(top: 60.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '搜索指定内容',
            style: TextStyle(
              fontSize: 12.sp,
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
            ),
          ),
          Gaps.vGap10,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () async {
                  if (Platform.isMacOS || Platform.isWindows) {
                    final value = await MyAlertDialog().show<String>(
                      child: SearchMediaPage(
                        conversationId: widget.conversationId,
                        privateChat: widget.privateChat,
                      ),
                    );
                    if (null != value) {
                      if (context.mounted) {
                        Navigator.pop(context, value);
                      }
                    }
                    return;
                  }
                  final value = await Navigator.of(context).push<String>(
                    MaterialPageRoute<String>(
                      builder: (context) => SearchMediaPage(
                        conversationId: widget.conversationId,
                        privateChat: widget.privateChat,
                      ),
                    ),
                  );
                  if (null != value) {
                    if (context.mounted) {
                      Navigator.pop(context, value);
                    }
                  }
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 2.h,
                  ),
                  child: Text(
                    '图片与视频',
                    style: TextStyle(
                      fontSize: 13.sp,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () async {
                  if (Platform.isMacOS || Platform.isWindows) {
                    final value = await MyAlertDialog().show<String>(
                      child: SearchMediaPage(
                        conversationId: widget.conversationId,
                        privateChat: widget.privateChat,
                        type: types.MessageType.file,
                      ),
                    );
                    if (null != value) {
                      if (context.mounted) {
                        Navigator.pop(context, value);
                      }
                    }
                    return;
                  }
                  final value = await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SearchMediaPage(
                        conversationId: widget.conversationId,
                        privateChat: widget.privateChat,
                        type: types.MessageType.file,
                      ),
                    ),
                  );
                  if (null != value) {
                    if (context.mounted) {
                      Navigator.pop(context, value);
                    }
                  }
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 2.h,
                  ),
                  child: Text(
                    '文件',
                    style: TextStyle(
                      fontSize: 13.sp,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
