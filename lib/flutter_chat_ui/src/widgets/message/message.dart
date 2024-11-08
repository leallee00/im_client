import 'dart:io';

import 'package:contextual_menu/contextual_menu.dart';
import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quliao/flutter_chat_ui/src/models/item_model.dart';
import 'package:quliao/flutter_chat_ui/src/widgets/message/video_message.dart';
import 'package:quliao/pages/windows/client/contextual_menu_util.dart';
import 'package:quliao/widgets/radio_button.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../models/bubble_rtl_alignment.dart';
import '../../models/emoji_enlargement_behavior.dart';
import '../../util.dart';
import '../state/inherited_chat_theme.dart';
import '../state/inherited_user.dart';
import 'file_message.dart';
import 'image_message.dart';
import 'message_status.dart';
import 'text_message.dart';
import 'user_avatar.dart';

/// Base widget for all message types in the chat. Renders bubbles around
/// messages and status. Sets maximum width for a message for
/// a nice look on larger screens.
class Message extends StatefulWidget {
  /// Creates a particular message from any message type.
  const Message({
    super.key,
    this.audioMessageBuilder,
    this.avatarBuilder,
    this.bubbleBuilder,
    this.bubbleRtlAlignment,
    this.customMessageBuilder,
    this.customStatusBuilder,
    required this.emojiEnlargementBehavior,
    this.fileMessageBuilder,
    required this.hideBackgroundOnEmojiMessages,
    this.imageHeaders,
    this.imageMessageBuilder,
    required this.message,
    required this.messageWidth,
    this.nameBuilder,
    this.onAvatarTap,
    this.onAvatarLongPressed,
    this.onMessageDoubleTap,
    this.onMessageLongPress,
    this.onMessageStatusLongPress,
    this.onMessageStatusTap,
    this.onMessageTap,
    this.onMessageVisibilityChanged,
    this.onPreviewDataFetched,
    required this.roundBorder,
    required this.showAvatar,
    required this.showName,
    required this.showStatus,
    required this.showUserAvatars,
    this.textMessageBuilder,
    required this.textMessageOptions,
    required this.usePreviewData,
    this.userAgent,
    this.videoMessageBuilder,
    this.buildCustomMenu,
    this.replyMessageBuilder,
    this.onTapDown,
    this.menuBuilder,
    this.isMultiSelect = false,
    this.onCheckChanged,
    this.multiSelectedList,
    this.onAtTap,
  });

  /// Build an audio message inside predefined bubble.
  final Widget Function(types.AudioMessage, {required int messageWidth})?
      audioMessageBuilder;

  /// This is to allow custom user avatar builder
  /// By using this we can fetch newest user info based on id
  final Widget Function(String userId)? avatarBuilder;

  /// Customize the default bubble using this function. `child` is a content
  /// you should render inside your bubble, `message` is a current message
  /// (contains `author` inside) and `nextMessageInGroup` allows you to see
  /// if the message is a part of a group (messages are grouped when written
  /// in quick succession by the same author)
  final Widget Function(
    Widget child, {
    required types.Message message,
    required bool nextMessageInGroup,
  })? bubbleBuilder;

  /// Determine the alignment of the bubble for RTL languages. Has no effect
  /// for the LTR languages.
  final BubbleRtlAlignment? bubbleRtlAlignment;

  /// Build a custom message inside predefined bubble.
  final Widget Function(types.CustomMessage, {required int messageWidth})?
      customMessageBuilder;

  /// Build a custom status widgets.
  final Widget Function(types.Message message, {required BuildContext context})?
      customStatusBuilder;

  /// Controls the enlargement behavior of the emojis in the
  /// [types.TextMessage].
  /// Defaults to [EmojiEnlargementBehavior.multi].
  final EmojiEnlargementBehavior emojiEnlargementBehavior;

  /// Build a file message inside predefined bubble.
  final Widget Function(types.FileMessage, {required int messageWidth})?
      fileMessageBuilder;

  /// Hide background for messages containing only emojis.
  final bool hideBackgroundOnEmojiMessages;

  /// See [Chat.imageHeaders].
  final Map<String, String>? imageHeaders;

  /// Build an image message inside predefined bubble.
  final Widget Function(types.ImageMessage, {required int messageWidth})?
      imageMessageBuilder;

  /// Any message type.
  final types.Message message;

  /// Maximum message width.
  final int messageWidth;

  /// See [TextMessage.nameBuilder].
  final Widget Function(types.User author)? nameBuilder;

  /// See [UserAvatar.onAvatarTap].
  final void Function(types.User)? onAvatarTap;

  final void Function(types.User)? onAvatarLongPressed;

  /// Called when user double taps on any message.
  final void Function(BuildContext context, types.Message)? onMessageDoubleTap;

  /// Called when user makes a long press on any message.
  final void Function(BuildContext context, types.Message)? onMessageLongPress;

  /// Called when user makes a long press on status icon in any message.
  final void Function(BuildContext context, types.Message)?
      onMessageStatusLongPress;

  /// Called when user taps on status icon in any message.
  final void Function(BuildContext context, types.Message)? onMessageStatusTap;

  /// Called when user taps on any message.
  final void Function(BuildContext context, types.Message)? onMessageTap;

  final void Function(TapDownDetails details)? onTapDown;

  /// Called when the message's visibility changes.
  final void Function(types.Message, bool visible)? onMessageVisibilityChanged;

  /// See [TextMessage.onPreviewDataFetched].
  final void Function(types.TextMessage, types.PreviewData)?
      onPreviewDataFetched;

  /// Rounds border of the message to visually group messages together.
  final bool roundBorder;

  /// Show user avatar for the received message. Useful for a group chat.
  final bool showAvatar;

  /// See [TextMessage.showName].
  final bool showName;

  /// Show message's status.
  final bool showStatus;

  /// Show user avatars for received messages. Useful for a group chat.
  final bool showUserAvatars;

  /// Build a text message inside predefined bubble.
  final Widget Function(
    types.TextMessage, {
    required int messageWidth,
    required bool showName,
  })? textMessageBuilder;

  /// See [TextMessage.options].
  final TextMessageOptions textMessageOptions;

  /// See [TextMessage.usePreviewData].
  final bool usePreviewData;

  /// See [TextMessage.userAgent].
  final String? userAgent;

  /// Build an audio message inside predefined bubble.
  final Widget Function(types.VideoMessage, {required int messageWidth})?
      videoMessageBuilder;

  final Menu? Function(BuildContext context, types.Message)? buildCustomMenu;

  final Widget Function(
    BuildContext context,
    types.Message,
    CustomPopupMenuController controller,
  )? menuBuilder;

  final Widget Function(
    types.TextMessage, {
    required int messageWidth,
  })? replyMessageBuilder;

  final bool isMultiSelect;

  final Function(
    types.Message, {
    required bool changed,
  })? onCheckChanged;

  final List<types.Message>? multiSelectedList;

  final Function(
    types.Message message,
    Map<String, dynamic> map,
    String atValue,
  )? onAtTap;

  @override
  State<StatefulWidget> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  CustomPopupMenuController? menuController;

  @override
  void initState() {
    super.initState();
    menuController = CustomPopupMenuController();
  }

  Widget _avatarBuilder(BuildContext context) => widget.showAvatar
      ? widget.avatarBuilder?.call(widget.message.author.id) ??
          UserAvatar(
            author: widget.message.author,
            bubbleRtlAlignment: widget.bubbleRtlAlignment,
            imageHeaders: widget.imageHeaders,
            onAvatarTap: widget.onAvatarTap,
            onAvatarLongPressed: widget.onAvatarLongPressed,
          )
      : SizedBox(width: 40 + InheritedChatTheme.of(context).theme.statusIconPadding.left + InheritedChatTheme.of(context).theme.statusIconPadding.right);

  Widget _bubbleBuilder(
    BuildContext context,
    BorderRadius borderRadius,
    bool currentUserIsAuthor,
    bool enlargeEmojis,
  ) =>
      widget.bubbleBuilder != null
          ? widget.bubbleBuilder!(
              _messageBuilder(),
              message: widget.message,
              nextMessageInGroup: widget.roundBorder,
            )
          : enlargeEmojis && widget.hideBackgroundOnEmojiMessages
              ? _messageBuilder()
              : Container(
                  decoration: BoxDecoration(
                    borderRadius: borderRadius,
                    color: !currentUserIsAuthor ||
                            widget.message.type == types.MessageType.image
                        ? Theme.of(context).colorScheme.surface
                        : Theme.of(context).colorScheme.primary,
                  ),
                  child: ClipRRect(
                    borderRadius: borderRadius,
                    child: _messageBuilder(),
                  ),
                );

  Widget _messageBuilder() {
    switch (widget.message.type) {
      case types.MessageType.audio:
        final audioMessage = widget.message as types.AudioMessage;
        return widget.audioMessageBuilder != null
            ? widget.audioMessageBuilder!(audioMessage,
                messageWidth: widget.messageWidth)
            : const SizedBox();
      case types.MessageType.custom:
        final customMessage = widget.message as types.CustomMessage;
        return widget.customMessageBuilder != null
            ? widget.customMessageBuilder!(customMessage,
                messageWidth: widget.messageWidth)
            : const SizedBox();
      case types.MessageType.file:
        final fileMessage = widget.message as types.FileMessage;
        return widget.fileMessageBuilder != null
            ? widget.fileMessageBuilder!(fileMessage,
                messageWidth: widget.messageWidth)
            : FileMessage(message: fileMessage);
      case types.MessageType.image:
        final imageMessage = widget.message as types.ImageMessage;
        return widget.imageMessageBuilder != null
            ? widget.imageMessageBuilder!(imageMessage,
                messageWidth: widget.messageWidth)
            : ImageMessage(
                imageHeaders: widget.imageHeaders,
                message: imageMessage,
                messageWidth: widget.messageWidth,
              );
      case types.MessageType.text:
        final textMessage = widget.message as types.TextMessage;
        return widget.textMessageBuilder != null
            ? widget.textMessageBuilder!(
                textMessage,
                messageWidth: widget.messageWidth,
                showName: widget.showName,
              )
            : TextMessage(
                emojiEnlargementBehavior: widget.emojiEnlargementBehavior,
                hideBackgroundOnEmojiMessages:
                    widget.hideBackgroundOnEmojiMessages,
                message: textMessage,
                nameBuilder: widget.nameBuilder,
                onPreviewDataFetched: widget.onPreviewDataFetched,
                options: widget.textMessageOptions,
                showName: widget.showName,
                usePreviewData: widget.usePreviewData,
                userAgent: widget.userAgent,
                messageWidth: widget.messageWidth,
                replyMessageBuilder: widget.replyMessageBuilder,
                onAtTap: widget.onAtTap,
              );
      case types.MessageType.video:
        final videoMessage = widget.message as types.VideoMessage;
        return widget.videoMessageBuilder != null
            ? widget.videoMessageBuilder!(videoMessage,
                messageWidth: widget.messageWidth)
            : VideoMessage(
                message: videoMessage, messageWidth: widget.messageWidth);
      default:
        return const SizedBox();
    }
  }

  bool get isChecked =>
      (null == widget.multiSelectedList || widget.multiSelectedList!.isEmpty)
          ? false
          : widget.multiSelectedList!.contains(widget.message);

  @override
  Widget build(BuildContext context) {
    final query = MediaQuery.of(context);
    final user = InheritedUser.of(context).user;
    final currentUserIsAuthor = user.id == widget.message.author.id;
    final enlargeEmojis =
        widget.emojiEnlargementBehavior != EmojiEnlargementBehavior.never &&
            widget.message is types.TextMessage &&
            isConsistsOfEmojis(
              widget.emojiEnlargementBehavior,
              widget.message as types.TextMessage,
            );
    final messageBorderRadius =
        InheritedChatTheme.of(context).theme.messageBorderRadius;
    final borderRadius = widget.bubbleRtlAlignment == BubbleRtlAlignment.left
        ? BorderRadiusDirectional.only(
            bottomEnd: Radius.circular(
              !currentUserIsAuthor || widget.roundBorder
                  ? messageBorderRadius
                  : 0,
            ),
            bottomStart: Radius.circular(
              currentUserIsAuthor || widget.roundBorder
                  ? messageBorderRadius
                  : 0,
            ),
            topEnd: Radius.circular(messageBorderRadius),
            topStart: Radius.circular(messageBorderRadius),
          )
        : BorderRadius.only(
            bottomLeft: Radius.circular(
              currentUserIsAuthor || widget.roundBorder
                  ? messageBorderRadius
                  : 0,
            ),
            bottomRight: Radius.circular(
              !currentUserIsAuthor || widget.roundBorder
                  ? messageBorderRadius
                  : 0,
            ),
            topLeft: Radius.circular(messageBorderRadius),
            topRight: Radius.circular(messageBorderRadius),
          );

    return Container(
      alignment: widget.bubbleRtlAlignment == BubbleRtlAlignment.left
          ? currentUserIsAuthor
              ? AlignmentDirectional.centerEnd
              : AlignmentDirectional.centerStart
          : currentUserIsAuthor
              ? Alignment.centerRight
              : Alignment.centerLeft,
      margin: widget.bubbleRtlAlignment == BubbleRtlAlignment.left
          ? EdgeInsetsDirectional.only(
              bottom: 4,
              end: isMobile ? query.padding.right : 0,
              start: 20 + (isMobile ? query.padding.left : 0),
            )
          : EdgeInsets.only(
              bottom: 4,
              left: 20 + (isMobile ? query.padding.left : 0),
              right: isMobile ? query.padding.right : 0,
            ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        textDirection: widget.bubbleRtlAlignment == BubbleRtlAlignment.left
            ? null
            : TextDirection.ltr,
        children: [
          if (widget.isMultiSelect)
            currentUserIsAuthor
                ? Expanded(
                    child: Row(
                      children: [
                        CheckBoxButton(
                          isChecked: isChecked,
                          onChanged: (value) {
                            widget.onCheckChanged?.call(
                              widget.message,
                              changed: value,
                            );
                          },
                        )
                      ],
                    ),
                  )
                : Container(
                    margin: EdgeInsets.only(right: 12, bottom: 10),
                    child: CheckBoxButton(
                      isChecked: isChecked,
                      onChanged: (value) {
                        widget.onCheckChanged?.call(
                          widget.message,
                          changed: value,
                        );
                      },
                    ),
                  ),
          if (!currentUserIsAuthor && widget.showUserAvatars) _avatarBuilder(context),
          if (currentUserIsAuthor)
            Padding(
              padding: InheritedChatTheme.of(context).theme.statusIconPadding,
              child: widget.showStatus
                  ? GestureDetector(
                      onLongPress: () => widget.onMessageStatusLongPress
                          ?.call(context, widget.message),
                      onTap: () => widget.onMessageStatusTap
                          ?.call(context, widget.message),
                      child: widget.customStatusBuilder != null
                          ? widget.customStatusBuilder!(widget.message,
                              context: context)
                          : MessageStatus(status: widget.message.status),
                    )
                  : null,
            ),
          widget.isMultiSelect
              ? ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: widget.messageWidth.toDouble() - 60,
                  ),
                  child: _buildMessageItem(
                    borderRadius,
                    currentUserIsAuthor,
                    enlargeEmojis,
                  ),
                )
              : CustomPopupMenu(
                  controller: menuController,
                  menuBuilder: () {
                    if (null == widget.menuBuilder) {
                      return const SizedBox();
                    }
                    return widget.menuBuilder!(
                      context,
                      widget.message,
                      menuController!,
                    );
                  },
                  barrierColor: Colors.transparent,
                  pressType: PressType.longPress,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: widget.messageWidth.toDouble() - 60,
                    ),
                    child: Platform.isWindows || Platform.isMacOS
                        ? ContextMenuUtil(
                            key: Key(UniqueKey().toString()),
                            customMenu: widget.buildCustomMenu
                                ?.call(context, widget.message),
                            child: _buildMessageItem(
                              borderRadius,
                              currentUserIsAuthor,
                              enlargeEmojis,
                            ),
                          )
                        : _buildMessageItem(
                            borderRadius,
                            currentUserIsAuthor,
                            enlargeEmojis,
                          ),
                  ),
                ),
          if (currentUserIsAuthor)
            Padding(
              padding: InheritedChatTheme.of(context).theme.statusIconPadding,
              child: _avatarBuilder(context),
            ),
        ],
      ),
    );
  }

  Widget _buildMessageItem(
    BorderRadiusGeometry borderRadius,
    bool currentUserIsAuthor,
    bool enlargeEmojis,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        GestureDetector(
          onTapDown: (TapDownDetails details) {
            widget.onTapDown?.call(details);
          },
          onDoubleTap: () =>
              widget.onMessageDoubleTap?.call(context, widget.message),
          onLongPress: null == widget.onMessageLongPress
              ? null
              : () {
                  widget.onMessageLongPress?.call(context, widget.message);
                },
          onTap: () => widget.onMessageTap?.call(context, widget.message),
          child: widget.onMessageVisibilityChanged != null
              ? VisibilityDetector(
                  key: Key(widget.message.id),
                  onVisibilityChanged: (visibilityInfo) =>
                      widget.onMessageVisibilityChanged!(
                    widget.message,
                    visibilityInfo.visibleFraction > 0.1,
                  ),
                  child: _bubbleBuilder(
                    context,
                    borderRadius.resolve(Directionality.of(context)),
                    currentUserIsAuthor,
                    enlargeEmojis,
                  ),
                )
              : _bubbleBuilder(
                  context,
                  borderRadius.resolve(Directionality.of(context)),
                  currentUserIsAuthor,
                  enlargeEmojis,
                ),
        ),
      ],
    );
  }
}
