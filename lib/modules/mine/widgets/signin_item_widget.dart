import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/images.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/widgets/rh_extended_image.dart';

class SignInItemWidget extends StatelessWidget {
  const SignInItemWidget({
    super.key,
    required this.data,
    this.logData,
    this.onTap,
  });

  final SubTask data;
  final SignUpLog? logData;
  final Function()? onTap;

  String _getStatusText() {
    final isSigned = (logData?.continueTimes ?? 0) > 0;
    if (isSigned) {
      if (isToday()) {
        return '今天\n已签到';
      } else {
        return '已签';
      }
    } else {
      if (futureDay()) {
        return '待签';
      }
      return '未签';
    }
  }

  String _formatTime() {
    if (null == logData) {
      return '';
    }
    final dateTime = DateTime.fromMillisecondsSinceEpoch(
      logData!.createdAt.toInt() * 1000,
    );
    return '${dateTime.month}/${dateTime.day}';
  }

  bool futureDay() {
    if (null == logData) {
      return false;
    }
    final dateTime = DateTime.fromMillisecondsSinceEpoch(
      logData!.createdAt.toInt() * 1000,
    );
    final dateNow = DateTime.now();
    return dateTime.millisecondsSinceEpoch > dateNow.millisecondsSinceEpoch;
  }

  bool isToday() {
    if (null == logData) {
      return false;
    }
    final dateTime = DateTime.fromMillisecondsSinceEpoch(
      logData!.createdAt.toInt() * 1000,
    );
    final dateNow = DateTime.now();
    return dateTime.year == dateNow.year &&
        dateTime.month == dateNow.month &&
        dateTime.day == dateNow.day;
  }

  @override
  Widget build(BuildContext context) {
    final isSigned = (logData?.continueTimes ?? 0) > 0;
    String iconAssetName = Images.iconNotSignin.assetName;
    TextStyle textStyle = TextStyle(
      color: const Color(0xFF757575),
      fontSize: Dimens.font_sp12,
      fontWeight: FontWeight.w500,
    );
    TextStyle dayTextStyle = TextStyle(
      color: const Color(0xFF4F4F4F),
      fontSize: Dimens.font_sp12,
      fontWeight: FontWeight.w500,
    );
    BoxDecoration boxDecoration = BoxDecoration(
      color: const Color(0xFFD9D9D9),
      borderRadius: BorderRadius.circular(
        Dimens.gap_dp10,
      ),
    );

    if (isSigned) {
      /// 已签到
      boxDecoration = BoxDecoration(
        color: const Color(0x3333B8FF),
        borderRadius: BorderRadius.circular(
          Dimens.gap_dp10,
        ),
        border: Border.all(
          color: const Color(0xFF33B8FF),
        ),
      );
      textStyle = TextStyle(
        color: const Color(0xFF33B8FF),
        fontSize: Dimens.font_sp12,
        fontWeight: FontWeight.w500,
      );
      dayTextStyle = TextStyle(
        color: const Color(0xFF33B8FF),
        fontSize: Dimens.font_sp12,
        fontWeight: FontWeight.w500,
      );
      iconAssetName = Images.iconSignedIn.assetName;

      if (isToday()) {
        /// 今天已签到
        boxDecoration = BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xFF33B8FF),
              Color(0xFF069AFF),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(
            Dimens.gap_dp10,
          ),
        );
        dayTextStyle = TextStyle(
          color: Colors.white,
          fontSize: Dimens.font_sp12,
          fontWeight: FontWeight.w500,
        );
        iconAssetName = Images.iconSignedInToday.assetName;
      }
    }

    return SizedBox(
      width: Dimens.gap_dp40,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              width: Dimens.gap_dp40,
              height: Dimens.gap_dp50,
              decoration: boxDecoration,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    _formatTime(),
                    style: dayTextStyle,
                    maxLines: 1,
                  ),
                  RHExtendedImage.asset(
                    iconAssetName,
                    width: Dimens.gap_dp18,
                    height: Dimens.gap_dp18,
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: Dimens.gap_dp40,
            height: Dimens.gap_dp40,
            alignment: Alignment.center,
            child: Text(
              _getStatusText(),
              style: textStyle,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
