import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:quliao/config/dimens.dart';

import '../../../../pages/chat_index/conversation_avatar.dart';
import '../../models/bubble_rtl_alignment.dart';
import '../../util.dart';
import '../state/inherited_chat_theme.dart';
import 'package:quliao/widgets/avatar.dart' as avatar;

/// Renders user's avatar or initials next to a message.
class UserAvatar extends StatelessWidget {
  /// Creates user avatar.
  const UserAvatar({
    super.key,
    required this.author,
    this.bubbleRtlAlignment,
    this.imageHeaders,
    this.onAvatarTap,
    this.onAvatarLongPressed,
  });

  /// Author to show image and name initials from.
  final types.User author;

  /// See [Message.bubbleRtlAlignment].
  final BubbleRtlAlignment? bubbleRtlAlignment;

  /// See [Chat.imageHeaders].
  final Map<String, String>? imageHeaders;

  /// Called when user taps on an avatar.
  final void Function(types.User)? onAvatarTap;
  final void Function(types.User)? onAvatarLongPressed;

  @override
  Widget build(BuildContext context) {
    final color = getUserAvatarNameColor(
      author,
      InheritedChatTheme.of(context).theme.userAvatarNameColors,
    );
    final hasImage = author.imageUrl != null;
    final initials = getUserInitials(author);

    return Container(
      margin: bubbleRtlAlignment == BubbleRtlAlignment.left
          ? const EdgeInsetsDirectional.only(end: 8)
          : const EdgeInsets.only(right: 8),
      child: GestureDetector(
        onTap: () => onAvatarTap?.call(author),
        onLongPress: () => onAvatarLongPressed?.call(author),
        child: avatar.UserAvatar(
          size: Dimens.gap_dp40,
          avatar: author.imageUrl!,
          name: initials,
        ),
      ),
    );
  }
}
