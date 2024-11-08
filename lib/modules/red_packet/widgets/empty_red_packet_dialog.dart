import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/images.dart';
import 'package:quliao/pb/pb_msg/user_center/userCenter.pb.dart'
    hide FriendInfo;
import 'package:quliao/utils/screen.dart';
import 'package:quliao/widgets/rh_extended_image.dart';

import '../../../models/user/friendInfo.dart';

/// 红包已被抢完
class EmptyRedPacketDialog extends StatefulWidget {
  const EmptyRedPacketDialog({
    super.key,
    required this.data,
    this.onTap,
  });

  final RedPacketInfo data;
  final Function()? onTap;

  static Future<void> show(
    BuildContext context,
    RedPacketInfo data, {
    Function()? onTap,
  }) async {
    SmartDialog.show(
      tag: 'emptyRedPacket',
      builder: (_) {
        return EmptyRedPacketDialog(data: data, onTap: onTap);
      },
      alignment: Alignment.center,
    );
  }

  static Future<void> dismiss() async {
    SmartDialog.dismiss(tag: 'emptyRedPacket');
  }

  @override
  State<StatefulWidget> createState() => _EmptyRedPacketDialogState();
}

class _EmptyRedPacketDialogState extends State<EmptyRedPacketDialog> {
  FriendInfo? targetInfo;

  @override
  void initState() {
    super.initState();
    _getTargetInfo(widget.data.grantUserId.toInt());
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
    final nickname = targetInfo?.remark.isEmpty == true
        ? targetInfo?.userInfo.nickName
        : targetInfo?.remark;
    return SizedBox(
      height: Screen.height,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: Dimens.gap_dp10 * 24,
            height: Dimens.gap_dp40,
            margin: EdgeInsets.only(top: Dimens.gap_dp1 * 130),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color(0xFFF3732A),
                  Color(0xFFDC1A05),
                ],
              ),
              borderRadius: BorderRadius.circular(Dimens.gap_dp20),
            ),
            alignment: Alignment.center,
            child: Text(
              '$nickname发出的红包',
              style: TextStyle(
                color: const Color(0xFFFEE89B),
                fontSize: Dimens.font_sp20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: Dimens.gap_dp1 * 32),
            child: Text(
              '手慢了，红包派完了',
              style: TextStyle(
                color: Theme.of(context).colorScheme.surface,
                fontSize: Dimens.font_sp1 * 30,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: Dimens.gap_dp1 * 405,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: RHExtendedImage.asset(
                    Images.imgRedPacket.assetName,
                    width: Dimens.gap_dp1 * 360,
                    height: Dimens.gap_dp1 * 360,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: widget.onTap,
                    child: RHExtendedImage.asset(
                      Images.iconRedPacketRecord.assetName,
                      width: Dimens.gap_dp1 * 230,
                      height: Dimens.gap_dp1 * 54,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              EmptyRedPacketDialog.dismiss();
            },
            child: Container(
              margin: EdgeInsets.only(
                top: Dimens.gap_dp12,
              ),
              child: RHExtendedImage.asset(
                Images.iconCloseRedPacket.assetName,
                width: Dimens.gap_dp1 * 32,
                height: Dimens.gap_dp1 * 32,
              ),
            ),
          )
        ],
      ),
    );
  }
}
