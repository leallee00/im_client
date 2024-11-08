import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/models/user/myinfo.dart';

import '../../util.dart';
import '../state/inherited_chat_theme.dart';
import '../state/inherited_l10n.dart';
import '../state/inherited_user.dart';

/// A class that represents file message widget.
class FileHistoryMessage extends StatelessWidget {
  /// Creates a file message widget based on a [types.FileMessage].
  const FileHistoryMessage({
    super.key,
    required this.message,
  });

  /// [types.FileMessage].
  final types.FileMessage message;

  @override
  Widget build(BuildContext context) {
    final color = '${AppUserInfo().imId}' == message.author.id
        ? InheritedChatTheme.of(context).theme.sentMessageDocumentIconColor
        : InheritedChatTheme.of(context).theme.receivedMessageDocumentIconColor;

    return Semantics(
      label: InheritedL10n.of(context).l10n.fileButtonAccessibilityLabel,
      child: Container(
        padding: EdgeInsetsDirectional.fromSTEB(
          InheritedChatTheme.of(context).theme.messageInsetsVertical,
          InheritedChatTheme.of(context).theme.messageInsetsVertical,
          InheritedChatTheme.of(context).theme.messageInsetsHorizontal,
          InheritedChatTheme.of(context).theme.messageInsetsVertical,
        ),
        color: Theme.of(context).colorScheme.primary,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF7F7F7),
                borderRadius: BorderRadius.circular(21),
              ),
              height: 42,
              width: 42,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  if (message.isLoading ?? false)
                    Positioned.fill(
                      child: CircularProgressIndicator(
                        color: color,
                        strokeWidth: 2,
                      ),
                    ),
                  Image.asset(
                    'assets/icon-document.png',
                    color: Theme.of(context).colorScheme.primary,
                    // package: 'flutter_chat_ui',
                  ),
                ],
              ),
            ),
            Flexible(
              child: Container(
                margin: const EdgeInsetsDirectional.only(
                  start: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      message.name,
                      style: '${AppUserInfo().imId}' == message.author.id
                          ? InheritedChatTheme.of(context)
                              .theme
                              .sentMessageBodyTextStyle
                              .copyWith(
                                fontSize: GlobalController.to.textFontSize(),
                              )
                          : InheritedChatTheme.of(context)
                              .theme
                              .receivedMessageBodyTextStyle
                              .copyWith(
                                fontSize: GlobalController.to.textFontSize(),
                              ),
                      textWidthBasis: TextWidthBasis.longestLine,
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 4,
                      ),
                      child: Text(
                        formatBytes(message.size.truncate()),
                        style: '${AppUserInfo().imId}' == message.author.id
                            ? InheritedChatTheme.of(context)
                                .theme
                                .sentMessageCaptionTextStyle
                                .copyWith(
                                  fontSize: GlobalController.to.textFontSize(),
                                )
                            : InheritedChatTheme.of(context)
                                .theme
                                .receivedMessageCaptionTextStyle
                                .copyWith(
                                  fontSize: GlobalController.to.textFontSize(),
                                ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
