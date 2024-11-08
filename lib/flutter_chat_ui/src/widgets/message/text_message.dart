import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_link_previewer/flutter_link_previewer.dart'
    show LinkPreview, regexEmail, regexLink;
import 'package:flutter_parsed_text/flutter_parsed_text.dart';
import 'package:protobuf/protobuf.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/pages/chat_group/flyer_chat/chat_group_change_to_message.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../utils/log/manager.dart';
import '../../models/emoji_enlargement_behavior.dart';
import '../../models/pattern_style.dart';
import '../../util.dart';
import '../state/inherited_chat_theme.dart';
import '../state/inherited_user.dart';
import 'user_name.dart';

/// A class that represents text message widget with optional link preview.
class TextMessage extends StatefulWidget {
  /// Creates a text message widget from a [types.TextMessage] class.
  const TextMessage({
    super.key,
    required this.emojiEnlargementBehavior,
    required this.hideBackgroundOnEmojiMessages,
    required this.message,
    this.nameBuilder,
    this.onPreviewDataFetched,
    this.options = const TextMessageOptions(),
    required this.showName,
    required this.usePreviewData,
    this.userAgent,
    this.messageWidth = 0,
    this.replyMessageBuilder,
    this.replied = false,
    this.onAtTap,
  });

  /// See [Message.emojiEnlargementBehavior].
  final EmojiEnlargementBehavior emojiEnlargementBehavior;

  /// See [Message.hideBackgroundOnEmojiMessages].
  final bool hideBackgroundOnEmojiMessages;

  /// [types.TextMessage].
  final types.TextMessage message;

  /// This is to allow custom user name builder
  /// By using this we can fetch newest user info based on id
  final Widget Function(types.User author)? nameBuilder;

  /// See [LinkPreview.onPreviewDataFetched].
  final void Function(types.TextMessage, types.PreviewData)?
      onPreviewDataFetched;

  /// Customisation options for the [TextMessage].
  final TextMessageOptions options;

  /// Show user name for the received message. Useful for a group chat.
  final bool showName;

  /// Enables link (URL) preview.
  final bool usePreviewData;

  /// User agent to fetch preview data with.
  final String? userAgent;

  final int messageWidth;

  final Widget Function(
    types.TextMessage, {
    required int messageWidth,
  })? replyMessageBuilder;

  final bool replied;

  final Function(
    types.Message message,
    Map<String, dynamic> map,
    String atValue,
  )? onAtTap;

  @override
  State<StatefulWidget> createState() => _TextMessageState();
}

class _TextMessageState extends State<TextMessage> {
  types.TextMessage get message => widget.message;

  String messageText = '';

  @override
  void initState() {
    super.initState();
    messageText = message.text;
    _getContent();
  }

  Future<void> _getContent() async {
    if (null != message.metadata) {
      final pbMessage = message.metadata!['pbMessage'] as PBMessage;
      final pbDataMsg = message.metadata!['pbDataMsg'] as GeneratedMessage;
      getItemText(pbMessage, pbDataMsg).then((value) {
        if (context.mounted) {
          LoggerManager().debug(
            'text message metadata groupChatText ======> $value',
          );
          setState(() {
            messageText = value;
          });
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final enlargeEmojis =
        widget.emojiEnlargementBehavior != EmojiEnlargementBehavior.never &&
            isConsistsOfEmojis(widget.emojiEnlargementBehavior, widget.message);
    final theme = InheritedChatTheme.of(context).theme;
    final user = InheritedUser.of(context).user;
    final width = MediaQuery.of(context).size.width;

    Map<String, dynamic>? atMap;
    if (null != message.metadata) {
      // LoggerManager().debug('text message metadata ======> ${message.metadata}');
      final String? atNamesJson = message.metadata!['atNames'];
      final String? atNameIdMapJson = message.metadata!['atNameIdMap'];
      LoggerManager()
          .debug('------ text message ------ atNamesJson: $atNamesJson');
      LoggerManager().debug(
          '------ text message ------ atNameIdMapJson: $atNameIdMapJson');
      if (null != atNameIdMapJson) {
        atMap = jsonDecode(atNameIdMapJson) as Map<String, dynamic>;
        LoggerManager().debug('------ text message ------ atMap: $atMap');
      }
    }

    if (widget.usePreviewData && widget.onPreviewDataFetched != null) {
      final urlRegexp = RegExp(regexLink, caseSensitive: false);
      final matches = urlRegexp.allMatches(messageText);

      if (matches.isNotEmpty) {
        return _linkPreview(
          user,
          width,
          context,
          onAtTap: (value) {
            if (null != widget.onAtTap && null != atMap) {
              widget.onAtTap!.call(message, atMap, value);
            }
          },
        );
      }
    }

    final linkDescriptionTextStyle = user.id == message.author.id
        ? InheritedChatTheme.of(context)
            .theme
            .sentMessageLinkDescriptionTextStyle
        : InheritedChatTheme.of(context)
            .theme
            .receivedMessageLinkDescriptionTextStyle;

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: theme.messageInsetsHorizontal,
        vertical: theme.messageInsetsVertical,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (null != message.repliedMessage)
            Container(
              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 6),
              constraints: const BoxConstraints(minWidth: 120),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(200, 200, 200, 0.25),
                border: Border(
                  left: BorderSide(
                    color: Color.fromRGBO(232, 232, 232, 0.5),
                    width: 2,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${message.repliedMessage!.author.firstName}',
                    style: linkDescriptionTextStyle.copyWith(
                      fontSize:_textFontSize(),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),

                  /// build reply message
                  if (null != widget.replyMessageBuilder)
                    widget.replyMessageBuilder!(message,
                        messageWidth: widget.messageWidth)
                ],
              ),
            ),
          _textWidgetBuilder(
            user,
            context,
            enlargeEmojis,
            onAtTap: (value) {
              if (null != widget.onAtTap && null != atMap) {
                widget.onAtTap!.call(message, atMap, value);
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _linkPreview(
    types.User user,
    double width,
    BuildContext context, {
    Function(String)? onAtTap,
  }) {
    final linkDescriptionTextStyle = user.id == message.author.id
        ? InheritedChatTheme.of(context)
            .theme
            .sentMessageLinkDescriptionTextStyle
        : InheritedChatTheme.of(context)
            .theme
            .receivedMessageLinkDescriptionTextStyle;
    final linkTitleTextStyle = user.id == message.author.id
        ? InheritedChatTheme.of(context).theme.sentMessageLinkTitleTextStyle
        : InheritedChatTheme.of(context)
            .theme
            .receivedMessageLinkTitleTextStyle;

    return LinkPreview(
      enableAnimation: true,
      metadataTextStyle: linkDescriptionTextStyle,
      metadataTitleStyle: linkTitleTextStyle,
      onLinkPressed: widget.options.onLinkPressed,
      onPreviewDataFetched: _onPreviewDataFetched,
      openOnPreviewImageTap: widget.options.openOnPreviewImageTap,
      openOnPreviewTitleTap: widget.options.openOnPreviewTitleTap,
      padding: EdgeInsets.symmetric(
        horizontal:
            InheritedChatTheme.of(context).theme.messageInsetsHorizontal,
        vertical: InheritedChatTheme.of(context).theme.messageInsetsVertical,
      ),
      previewData: message.previewData,
      text: messageText,
      textWidget: _textWidgetBuilder(
        user,
        context,
        false,
        onAtTap: onAtTap,
      ),
      userAgent: widget.userAgent,
      width: width,
    );
  }

  void _onPreviewDataFetched(types.PreviewData previewData) {
    if (message.previewData == null) {
      widget.onPreviewDataFetched?.call(message, previewData);
    }
  }

  double _textFontSize() {
    final fontSizeModel = GlobalController.to.chatFontSize.value;
    if (fontSizeModel.type == 1) {
      return Dimens.font_sp14;
    } else if (fontSizeModel.type == 2) {
      return Dimens.font_sp16;
    } else {
      return Dimens.font_sp18;
    }
  }

  Widget _textWidgetBuilder(
    types.User user,
    BuildContext context,
    bool enlargeEmojis, {
    Function(String)? onAtTap,
  }) {
    final theme = InheritedChatTheme.of(context).theme;
    final bodyLinkTextStyle = widget.replied
        ? InheritedChatTheme.of(context)
            .theme
            .receivedMessageBodyLinkTextStyle
            ?.copyWith(fontSize: _textFontSize())
        : user.id == message.author.id
            ? InheritedChatTheme.of(context).theme.sentMessageBodyLinkTextStyle?.copyWith(fontSize: _textFontSize())
            : InheritedChatTheme.of(context)
                .theme
                .receivedMessageBodyLinkTextStyle?.copyWith(fontSize: _textFontSize());
    final bodyTextStyle = widget.replied
        ? theme.receivedMessageBodyTextStyle.copyWith(fontSize: _textFontSize())
        : user.id == message.author.id
            ? theme.sentMessageBodyTextStyle.copyWith(fontSize: _textFontSize())
            : theme.receivedMessageBodyTextStyle.copyWith(fontSize: _textFontSize());
    final boldTextStyle = widget.replied
        ? theme.receivedMessageBodyBoldTextStyle?.copyWith(fontSize: _textFontSize())
        : user.id == message.author.id
            ? theme.sentMessageBodyBoldTextStyle?.copyWith(fontSize: _textFontSize())
            : theme.receivedMessageBodyBoldTextStyle?.copyWith(fontSize: _textFontSize());
    final codeTextStyle = widget.replied
        ? theme.receivedMessageBodyCodeTextStyle?.copyWith(fontSize: _textFontSize())
        : user.id == message.author.id
            ? theme.sentMessageBodyCodeTextStyle?.copyWith(fontSize: _textFontSize())
            : theme.receivedMessageBodyCodeTextStyle?.copyWith(fontSize: _textFontSize());
    final emojiTextStyle = widget.replied
        ? theme.receivedEmojiMessageTextStyle.copyWith(fontSize: _textFontSize())
        : user.id == message.author.id
            ? theme.sentEmojiMessageTextStyle.copyWith(fontSize: _textFontSize())
            : theme.receivedEmojiMessageTextStyle.copyWith(fontSize: _textFontSize());

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.showName)
          widget.nameBuilder?.call(message.author) ??
              UserName(author: message.author),
        if (enlargeEmojis)
          if (widget.options.isTextSelectable)
            SelectableText(messageText, style: emojiTextStyle)
          else
            Text(messageText, style: emojiTextStyle)
        else
          TextMessageText(
            bodyLinkTextStyle: bodyLinkTextStyle,
            bodyTextStyle: bodyTextStyle,
            boldTextStyle: boldTextStyle,
            codeTextStyle: codeTextStyle,
            options: widget.options,
            text: messageText,
            onAtTap: onAtTap,
          ),
      ],
    );
  }
}

/// Widget to reuse the markdown capabilities, e.g., for previews.
class TextMessageText extends StatelessWidget {
  const TextMessageText({
    super.key,
    this.bodyLinkTextStyle,
    required this.bodyTextStyle,
    this.boldTextStyle,
    this.codeTextStyle,
    this.maxLines,
    this.options = const TextMessageOptions(),
    this.overflow = TextOverflow.clip,
    required this.text,
    this.onAtTap,
  });

  /// Style to apply to anything that matches a link.
  final TextStyle? bodyLinkTextStyle;

  /// Regular style to use for any unmatched text. Also used as basis for the fallback options.
  final TextStyle bodyTextStyle;

  /// Style to apply to anything that matches bold markdown.
  final TextStyle? boldTextStyle;

  /// Style to apply to anything that matches code markdown.
  final TextStyle? codeTextStyle;

  /// See [ParsedText.maxLines].
  final int? maxLines;

  /// See [TextMessage.options].
  final TextMessageOptions options;

  /// See [ParsedText.overflow].
  final TextOverflow overflow;

  /// Text that is shown as markdown.
  final String text;

  final Function(String)? onAtTap;

  @override
  Widget build(BuildContext context) => ParsedText(
        parse: [
          ...options.matchers,
          MatchText(
            onTap: onAtTap,
            pattern: r'@([^ ]+)',
            style: bodyLinkTextStyle ??
                bodyTextStyle.copyWith(
                  decoration: TextDecoration.underline,
                ),
          ),
          MatchText(
            onTap: (mail) async {
              final url = Uri(scheme: 'mailto', path: mail);
              if (await canLaunchUrl(url)) {
                await launchUrl(url);
              }
            },
            pattern: regexEmail,
            style: bodyLinkTextStyle ??
                bodyTextStyle.copyWith(
                  decoration: TextDecoration.underline,
                ),
          ),
          MatchText(
            onTap: (urlText) async {
              final protocolIdentifierRegex = RegExp(
                r'^((http|ftp|https):\/\/)',
                caseSensitive: false,
              );
              if (!urlText.startsWith(protocolIdentifierRegex)) {
                urlText = 'https://$urlText';
              }
              if (options.onLinkPressed != null) {
                options.onLinkPressed!(urlText);
              } else {
                final url = Uri.tryParse(urlText);
                if (url != null && await canLaunchUrl(url)) {
                  await launchUrl(
                    url,
                    mode: LaunchMode.externalApplication,
                  );
                }
              }
            },
            pattern: regexLink,
            style: bodyLinkTextStyle ??
                bodyTextStyle.copyWith(
                  decoration: TextDecoration.underline,
                ),
          ),
          MatchText(
            pattern: PatternStyle.bold.pattern,
            style: boldTextStyle ??
                bodyTextStyle.merge(PatternStyle.bold.textStyle),
            renderText: ({required String str, required String pattern}) => {
              'display': str.replaceAll(
                PatternStyle.bold.from,
                PatternStyle.bold.replace,
              ),
            },
          ),
          MatchText(
            pattern: PatternStyle.italic.pattern,
            style: bodyTextStyle.merge(PatternStyle.italic.textStyle),
            renderText: ({required String str, required String pattern}) => {
              'display': str.replaceAll(
                PatternStyle.italic.from,
                PatternStyle.italic.replace,
              ),
            },
          ),
          MatchText(
            pattern: PatternStyle.lineThrough.pattern,
            style: bodyTextStyle.merge(PatternStyle.lineThrough.textStyle),
            renderText: ({required String str, required String pattern}) => {
              'display': str.replaceAll(
                PatternStyle.lineThrough.from,
                PatternStyle.lineThrough.replace,
              ),
            },
          ),
          MatchText(
            pattern: PatternStyle.code.pattern,
            style: codeTextStyle ??
                bodyTextStyle.merge(PatternStyle.code.textStyle),
            renderText: ({required String str, required String pattern}) => {
              'display': str.replaceAll(
                PatternStyle.code.from,
                PatternStyle.code.replace,
              ),
            },
          ),
        ],
        maxLines: maxLines,
        overflow: overflow,
        regexOptions: const RegexOptions(multiLine: true, dotAll: true),
        selectable: options.isTextSelectable,
        style: bodyTextStyle,
        text: text,
        textWidthBasis: TextWidthBasis.longestLine,
      );
}

@immutable
class TextMessageOptions {
  const TextMessageOptions({
    this.isTextSelectable = false,
    this.onLinkPressed,
    this.openOnPreviewImageTap = false,
    this.openOnPreviewTitleTap = false,
    this.matchers = const [],
  });

  /// Whether user can tap and hold to select a text content.
  final bool isTextSelectable;

  /// Custom link press handler.
  final void Function(String)? onLinkPressed;

  /// See [LinkPreview.openOnPreviewImageTap].
  final bool openOnPreviewImageTap;

  /// See [LinkPreview.openOnPreviewTitleTap].
  final bool openOnPreviewTitleTap;

  /// Additional matchers to parse the text.
  final List<MatchText> matchers;
}
