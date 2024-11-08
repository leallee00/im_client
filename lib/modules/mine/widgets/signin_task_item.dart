import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/widgets/rh_extended_image.dart';

class SigninTaskItemWidget extends StatelessWidget {
  const SigninTaskItemWidget({
    super.key,
    required this.data,
    this.onTap,
  });

  final SubTask data;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final awardList = data.awardsList;
    return Container(
      height: Dimens.gap_dp64,
      margin: EdgeInsets.symmetric(
        horizontal: Dimens.gap_dp12,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RHExtendedImage.network(
            awardList.isEmpty ? '' : data.awardsList.first.icon,
            width: Dimens.gap_dp40,
            height: Dimens.gap_dp40,
            borderRadius: BorderRadius.circular(Dimens.gap_dp8),
          ),
          Gaps.hGap10,
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: Dimens.gap_dp8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Text(
                      data.name,
                      style: TextStyle(
                        fontSize: Dimens.font_sp14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      data.description,
                      style: TextStyle(
                        fontSize: Dimens.font_sp12,
                        color: const Color(0xFF333333),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Gaps.hGap10,
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(Dimens.gap_dp4),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap,
                borderRadius: BorderRadius.circular(Dimens.gap_dp4),
                child: Container(
                  width: Dimens.gap_dp1 * 74,
                  height: Dimens.gap_dp28,
                  alignment: Alignment.center,
                  child: Text(
                    '查看奖励',
                    style: TextStyle(
                      fontSize: Dimens.font_sp12,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
