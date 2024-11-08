import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/images.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/widgets/rh_extended_image.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
    this.size,
    this.style,
    required this.avatar,
    required this.name,
  });

  final double? size;
  final String avatar;
  final String name;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final length = name.characters.length;
    // LoggerManager().debug('name =====> $name length ======> ${name.characters.length}');
    final double avatarSize = size ?? Dimens.gap_dp48;

    return (avatar.contains("http") || name.isEmpty)
        ? ClipRRect(
            borderRadius: BorderRadius.circular(avatarSize / 2),
            child: CachedNetworkImage(
              imageUrl: avatar,
              fit: BoxFit.cover,
              width: avatarSize,
              height: avatarSize,
              placeholder: (context, url) {
                return SizedBox(
                  width: avatarSize,
                  child: CupertinoActivityIndicator(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                );
              },
              errorWidget: (context, url, _) {
                return SizedBox(
                  width: avatarSize,
                  child: RHExtendedImage.asset(
                    Images.placeholder.keyName,
                    fit: BoxFit.contain,
                  ),
                );
              },
            ),
          )
        : Container(
            width: avatarSize,
            height: avatarSize,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(avatarSize / 2),
            ),
            alignment: Alignment.center,
            child: Text(
              length > 1 ? name.substring(0, 1) : name,
              style: style ?? Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Theme.of(context).colorScheme.surface),
            ),
          );
  }
}
