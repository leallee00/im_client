import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:oktoast/oktoast.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/images.dart';
import 'package:quliao/modules/red_packet/repository/red_packet_repository.dart';
import 'package:quliao/pb/pb_msg/user_center/userCenter.pb.dart'
    hide FriendInfo;
import 'package:quliao/utils/screen.dart';
import 'package:quliao/widgets/rh_extended_image.dart';

import '../../../models/user/friendInfo.dart';

class ReceiveRedPacketDialog extends StatefulWidget {
  const ReceiveRedPacketDialog({
    super.key,
    required this.data,
    this.callback,
  });

  final RedPacketInfo data;
  final Function(String?)? callback;

  static Future<void> show(
    BuildContext context,
    RedPacketInfo data, {
    Function(String?)? callback,
  }) async {
    SmartDialog.show(
      tag: 'receiveRedPacket',
      builder: (_) {
        return ReceiveRedPacketDialog(data: data, callback: callback);
      },
      alignment: Alignment.center,
    );
  }

  static Future<void> dismiss() async {
    SmartDialog.dismiss(tag: 'receiveRedPacket');
  }

  @override
  State<StatefulWidget> createState() => _ReceiveRedPacketDialogState();
}

class _ReceiveRedPacketDialogState extends State<ReceiveRedPacketDialog> {
  FriendInfo? targetInfo;

  final _repository = RedPacketRepository();

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

  Future<void> _receiveRedPacket() async {
    final req = RedPacketReceiveReq(
      redPacketId: widget.data.redPacketId,
    );
    await _repository.receivePrivateRedPacket(
      req,
      callback: (value) {
        showToast('领取成功');
        widget.callback?.call(
          '${value.receivedValue.toInt() / 100}',
        );
        ReceiveRedPacketDialog.dismiss();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final nickname = targetInfo?.remark.isEmpty == true
        ? targetInfo?.userInfo.nickName
        : targetInfo?.remark;
    return SizedBox(
      height: Screen.height,
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: EdgeInsets.only(top: Dimens.gap_dp1 * 66),
                    child: RHExtendedImage.asset(
                      Images.imgBgRedPacketContent.assetName,
                      width: Dimens.gap_dp1 * 332,
                      height: Dimens.gap_dp1 * 332,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
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
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: Dimens.gap_dp1 * 160,
                    height: Dimens.gap_dp1 * 102,
                    margin: EdgeInsets.only(top: Dimens.gap_dp1 * 180),
                    alignment: Alignment.center,
                    child: Text(
                      widget.data.description,
                      style: TextStyle(
                        color: const Color(0xFFDE200A),
                        fontSize: Dimens.font_sp1 * 30,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: Dimens.gap_dp1 * 405,
                    margin: EdgeInsets.only(top: Dimens.gap_dp1 * 276),
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
                            onTap: () {
                              _receiveRedPacket();
                            },
                            child: Container(
                              width: Dimens.gap_dp1 * 158,
                              height: Dimens.gap_dp1 * 54,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFFF9B071),
                                    Color(0xFFDF1C09),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                                borderRadius: BorderRadius.circular(
                                  Dimens.gap_dp30,
                                ),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                '领红包',
                                style: TextStyle(
                                  fontSize: Dimens.font_sp20,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.surface,
                                ),
                              ),
                            ),
                            // child: RHExtendedImage.asset(
                            //   Images.iconReceiveRedPacket.assetName,
                            //   width: Dimens.gap_dp1 * 158,
                            //   height: Dimens.gap_dp1 * 54,
                            // ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              ReceiveRedPacketDialog.dismiss();
            },
            child: Container(
              margin: EdgeInsets.only(
                bottom: Dimens.gap_dp80,
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
