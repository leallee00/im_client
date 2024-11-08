import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/models/user/myinfo.dart';

import '../../../widgets/avatar.dart';

class BusinessCardWidget extends StatelessWidget {
  const BusinessCardWidget({
    super.key,
    required this.message,
    required this.messageWidth,
    this.onTap,
  });

  /// [types.CustomMessage].
  final types.CustomMessage message;

  /// Maximum message width.
  final int messageWidth;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final currentUserIsAuthor = '${AppUserInfo().imId}' == message.author.id;

    final name = message.metadata!['name'];
    final avatar = message.metadata!['avatar'];

    return GestureDetector(
      onTap: onTap,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: messageWidth.toDouble() - Dimens.gap_dp10 * 5,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft:
                currentUserIsAuthor ? const Radius.circular(10) : Radius.zero,
            bottomLeft: const Radius.circular(10),
            topRight: const Radius.circular(10),
            bottomRight:
                currentUserIsAuthor ? Radius.zero : const Radius.circular(10),
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  UserAvatar(
                    avatar: avatar,
                    name: name,
                    size: Dimens.gap_dp40,
                  ),
                  Gaps.hGap6,
                  Expanded(
                    child: Text(
                      name,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      maxLines: 1,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              const SizedBox(
                height: 4,
              ),
              const Divider(),
              const Text(
                '个人名片',
                style: TextStyle(
                  color: Color(0xFF999999),
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
