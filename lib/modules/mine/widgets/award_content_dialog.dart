import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:oktoast/oktoast.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/config/images.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/widgets/rh_extended_image.dart';

class AwardContentDialog extends StatelessWidget {
  const AwardContentDialog({
    super.key,
    required this.data,
  });

  final Awards data;

  static Future<void> show(
    BuildContext context,
    Awards data,
  ) async {
    SmartDialog.show(
      tag: 'award_content',
      builder: (_) {
        return AwardContentDialog(data: data);
      },
      backDismiss: false,
      clickMaskDismiss: false,
      alignment: Alignment.center,
    );
  }

  static Future<void> dismiss() async {
    SmartDialog.dismiss(tag: 'award_content');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: Dimens.gap_dp40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: Dimens.gap_dp1 * 296,
            height: Dimens.gap_dp1 * 264,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: Images.imgBgAwardContent,
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Gaps.vGap20,
                Text(
                  '奖励内容',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.surface,
                    fontSize: Dimens.font_sp1 * 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: Dimens.gap_dp1 * 30,
                ),
                Text(
                  data.name,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.surface,
                    fontSize: Dimens.font_sp16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Gaps.vGap4,
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: Dimens.gap_dp16,
                  ),
                  child: Text(
                    data.description ?? '',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.surface,
                      fontSize: Dimens.font_sp16,
                    ),
                  ),
                ),
                Expanded(child: Gaps.empty),
              ],
            ),
          ),
          Gaps.vGap12,
          Container(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () => dismiss(),
              child: RHExtendedImage.asset(
                Images.iconCloseDialog.assetName,
                width: Dimens.gap_dp32,
                height: Dimens.gap_dp32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
