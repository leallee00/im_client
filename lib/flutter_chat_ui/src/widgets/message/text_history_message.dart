import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_link_previewer/flutter_link_previewer.dart'
    show LinkPreview, regexEmail, regexLink;
import 'package:flutter_parsed_text/flutter_parsed_text.dart';
import 'package:protobuf/protobuf.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/flutter_chat_ui/src/chat_theme.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../pages/chat_group/flyer_chat/chat_group_change_to_message.dart';
import '../../../../pb/pb_pub/comm.pb.dart';
import '../../models/emoji_enlargement_behavior.dart';
import '../../models/pattern_style.dart';
import '../../util.dart';
import '../state/inherited_chat_theme.dart';
import 'user_name.dart';

/// A class that represents text message widget with optional link preview.
class TextHistoryMessage extends StatefulWidget {
  /// Creates a text message widget from a [types.TextMessage] class.
  const TextHistoryMessage({
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
  });

  /// See [Message.emojiEnlargementBehavior].
  final EmojiEnlargementBehavior emojiEnlargementBehavior;

  /// See [Message.hideBackgroundOnEmojiMessages].
  final bool hideBackgroundOnEmojiMessages;

  /// [types.TextMessage].
  final types.TextMessage message;

  /// This is to allow custom user name builder
  /// By using this we can fetch newest user info based on id
  final Widget Function(String userId)? nameBuilder;

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

  @override
  State<StatefulWidget> createState() => _TextHistoryMessageState();
}

class _TextHistoryMessageState extends State<TextHistoryMessage> {
  String messageText = '';

  @override
  void initState() {
    super.initState();
    messageText = widget.message.text;
    _getContent();
  }

  Future<void> _getContent() async {
    if (null != widget.message.metadata) {
      final pbMessage = widget.message.metadata!['pbMessage'] as PBMessage;
      final pbDataMsg = widget.message.metadata!['pbDataMsg'] as GeneratedMessage;
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

  Widget _linkPreview(
    double width,
    BuildContext context,
  ) {
    const linkDescriptionTextStyle = TextStyle(
      color: neutral0,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      height: 1.428,
    );
    const linkTitleTextStyle = TextStyle(
      color: neutral0,
      fontSize: 16,
      fontWeight: FontWeight.w800,
      height: 1.375,
    );

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
      previewData: widget.message.previewData,
      text: messageText,
      textWidget: _textWidgetBuilder(context, false),
      userAgent: widget.userAgent,
      width: width,
    );
  }

  void _onPreviewDataFetched(types.PreviewData previewData) {
    if (widget.message.previewData == null) {
      widget.onPreviewDataFetched?.call(widget.message, previewData);
    }
  }

  Widget _textWidgetBuilder(
    BuildContext context,
    bool enlargeEmojis,
  ) {
    final theme = InheritedChatTheme.of(context).theme;
    final bodyLinkTextStyle = widget.replied
        ? InheritedChatTheme.of(context)
            .theme
            .receivedMessageBodyLinkTextStyle
            ?.copyWith(
              fontSize: GlobalController.to.textFontSize(),
            )
        : TextStyle(
            color: neutral0,
            fontSize: GlobalController.to.textFontSize(),
          );
    final bodyTextStyle = widget.replied
        ? theme.receivedMessageBodyTextStyle.copyWith(
            fontSize: GlobalController.to.textFontSize(),
          )
        : TextStyle(
            color: neutral0,
            fontSize: GlobalController.to.textFontSize(),
          );
    final boldTextStyle = widget.replied
        ? theme.receivedMessageBodyBoldTextStyle?.copyWith(
            fontSize: GlobalController.to.textFontSize(),
          )
        : theme.receivedMessageBodyBoldTextStyle?.copyWith(
            fontSize: GlobalController.to.textFontSize(),
          );
    final codeTextStyle = widget.replied
        ? theme.receivedMessageBodyCodeTextStyle?.copyWith(
            fontSize: GlobalController.to.textFontSize(),
          )
        : theme.receivedMessageBodyCodeTextStyle?.copyWith(
            fontSize: GlobalController.to.textFontSize(),
          );
    final emojiTextStyle = widget.replied
        ? theme.receivedEmojiMessageTextStyle.copyWith(
            fontSize: GlobalController.to.textFontSize(),
          )
        : theme.receivedEmojiMessageTextStyle.copyWith(
            fontSize: GlobalController.to.textFontSize(),
          );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.showName)
          widget.nameBuilder?.call(widget.message.author.id) ??
              UserName(author: widget.message.author),
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
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final enlargeEmojis =
        widget.emojiEnlargementBehavior != EmojiEnlargementBehavior.never &&
            isConsistsOfEmojis(widget.emojiEnlargementBehavior, widget.message);

    final theme = InheritedChatTheme.of(context).theme;
    final width = MediaQuery.of(context).size.width;

    if (widget.usePreviewData && widget.onPreviewDataFetched != null) {
      final urlRegexp = RegExp(regexLink, caseSensitive: false);
      final matches = urlRegexp.allMatches(messageText);

      if (matches.isNotEmpty) {
        return _linkPreview(width, context);
      }
    }

    final linkDescriptionTextStyle = InheritedChatTheme.of(context)
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
          if (null != widget.message.repliedMessage)
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
                    '${widget.message.repliedMessage!.author.firstName}',
                    style: linkDescriptionTextStyle.copyWith(
                      fontSize: Dimens.font_sp12,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),

                  /// build reply message
                  if (null != widget.replyMessageBuilder)
                    widget.replyMessageBuilder!(widget.message,
                        messageWidth: widget.messageWidth)
                ],
              ),
            ),
          _textWidgetBuilder(context, enlargeEmojis),
        ],
      ),
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

  @override
  Widget build(BuildContext context) => ParsedText(
        parse: [
          ...options.matchers,
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
