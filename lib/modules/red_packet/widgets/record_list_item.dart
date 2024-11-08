import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/modules/red_packet/repository/red_packet_repository.dart';
import 'package:quliao/pb/pb_msg/user_center/userCenter.pb.dart'
    hide FriendInfo;
import 'package:quliao/widgets/avatar.dart';

import '../../../models/user/friendInfo.dart';

class RecordListItem extends StatefulWidget {
  const RecordListItem({
    super.key,
    required this.data,
  });

  final RedPacketFlowItem data;

  @override
  State<StatefulWidget> createState() => _RecordListItemState();
}

class _RecordListItemState extends State<RecordListItem> {
  FriendInfo? targetInfo;

  final _repository = RedPacketRepository();

  @override
  void initState() {
    super.initState();
    _getTargetInfo(widget.data.recipientUserId.toInt());
  }

  Future<void> _getTargetInfo(int target) async {
    final friendInfo = FriendInfo();
    await friendInfo.LoadFriendData(target);
    if (mounted) {
      setState(() {
        targetInfo = friendInfo;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final dateTime = DateTime.fromMillisecondsSinceEpoch(
      widget.data.createTime.toInt() * 1000,
    );
    final avatar = targetInfo?.userInfo.avatar;
    final nickname = targetInfo?.remark.isEmpty == true
        ? targetInfo?.userInfo.nickName
        : targetInfo?.remark;
    return Container(
      width: double.infinity,
      height: Dimens.gap_dp10 * 7,
      margin: EdgeInsets.symmetric(
        horizontal: Dimens.gap_dp16,
        vertical: Dimens.gap_dp8,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.gap_dp12,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(
          Dimens.gap_dp20,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          UserAvatar(
            avatar: avatar ?? '',
            name: nickname ?? '',
            size: Dimens.gap_dp10 * 5,
          ),
          Gaps.hGap12,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Text(
                      nickname ?? '',
                      style: TextStyle(
                        color: const Color(0xFF0B2959),
                        fontSize: Dimens.font_sp16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Text(
                  '${dateTime.year}/${dateTime.month}/${dateTime.day} ${dateTime.hour}:${dateTime.minute}:${dateTime.second}',
                  style: TextStyle(
                    color: const Color(0xFF575E70),
                    fontSize: Dimens.font_sp12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Text(
            '${(widget.data.value).toInt() / 100}元',
            style: TextStyle(
              color: const Color(0xFFFF4454),
              fontSize: Dimens.font_sp20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
