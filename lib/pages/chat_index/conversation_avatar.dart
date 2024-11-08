import 'package:flutter/material.dart';
import 'package:quliao/widgets/rh_extended_image.dart';

import '../../mywedgits/badger/badger.dart';

class ConversationAvatar extends StatelessWidget {
  const ConversationAvatar({
    super.key,
    required this.size,
    required this.url,
    this.name = "?",
    this.isClipRect = true,
    this.showName = true,
    this.msgCountType = ENMsgCountType.privateMsgCount,
  });

  final double size;
  final String url;
  final String? name;
  final bool? isClipRect;
  final bool showName;
  final ENMsgCountType msgCountType;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: SizedBox(
          width: size,
          child: url.contains("http") || name == null || name!.isEmpty
              ? RHExtendedImage.network(
                  url,
                  width: size,
                  height: size,
                  borderRadius: BorderRadius.circular(size / 2),
                )
              : showName
                  ? Container(
                      width: size,
                      height: size,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(size / 2),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        name?.substring(0, 1) ?? '',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Theme.of(context).colorScheme.surface),
                      ),
                    )
                  : Container(color: Theme.of(context).colorScheme.primary)),
    );
  }
}
