import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/models/user/friendInfo.dart';

import '../../../widgets/avatar.dart';

class LabelContactItem extends StatelessWidget {
  const LabelContactItem({
    super.key,
    required this.data,
    this.onDelete,
  });

  final FriendInfo data;
  final Function()? onDelete;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Dimens.gap_dp10 * 10,
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Gaps.vGap4,
              UserAvatar(
                size: Dimens.gap_dp40,
                avatar: data.userInfo.avatar,
                name: data.userInfo.nickName,
              ),
              Gaps.vGap4,
              Text(
                data.userInfo.nickName,
                maxLines: 1,
                style: TextStyle(
                  fontSize: Dimens.font_sp11,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
            ],
          ),
          Positioned(
            top: 0,
            right: 16,
            child: GestureDetector(
              onTap: onDelete,
              child: Icon(
                Icons.remove_circle,
                color: Colors.redAccent,
                size: Dimens.gap_dp20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
