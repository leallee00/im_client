import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:oktoast/oktoast.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/config/images.dart';
import 'package:quliao/global/models/award_model.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/widgets/rh_extended_image.dart';
import 'package:url_launcher/url_launcher.dart';

class SignInSuccessDialog extends StatelessWidget {
  const SignInSuccessDialog({
    super.key,
    required this.data,
  });

  final AwardModel data;

  static Future<void> show(
    BuildContext context,
    AwardModel data,
  ) async {
    SmartDialog.show(
      tag: 'sign_in_success',
      builder: (_) {
        return SignInSuccessDialog(data: data);
      },
      backDismiss: false,
      clickMaskDismiss: false,
      alignment: Alignment.center,
    );
  }

  static Future<void> dismiss() async {
    SmartDialog.dismiss(tag: 'sign_in_success');
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
            height: Dimens.gap_dp1 * 308,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: Images.imgBgSignInSuccess,
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Gaps.vGap20,
                Text(
                  '签到成功',
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
                  data.name ?? '',
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
                    data.desc ?? '',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.surface,
                      fontSize: Dimens.font_sp16,
                    ),
                  ),
                ),
                Container(
                  height: Dimens.gap_dp44,
                  margin: EdgeInsets.symmetric(
                    horizontal: Dimens.gap_dp20,
                  ).copyWith(top: Dimens.gap_dp30),
                  padding: EdgeInsets.symmetric(
                    horizontal: Dimens.gap_dp12,
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    borderRadius: BorderRadius.circular(
                      Dimens.gap_dp6,
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          data.code ?? '',
                          style: TextStyle(
                            color: const Color(0xFF575E70),
                            fontSize: Dimens.font_sp14,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          await Clipboard.setData(
                            ClipboardData(text: data.code ?? ''),
                          );
                          showToast('已复制');
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: Dimens.gap_dp4,
                          ),
                          child: Text(
                            '复制',
                            style: TextStyle(
                              color: const Color(0xFFFF4454),
                              fontSize: Dimens.font_sp12,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(child: Gaps.empty),
                GestureDetector(
                  onTap: () async {
                    await launchUrl(
                      Uri.parse(data.awardsUrl ?? ''),
                    );
                    SignInSuccessDialog.dismiss();
                  },
                  child: Container(
                    width: Dimens.gap_dp1 * 154,
                    height: Dimens.gap_dp44,
                    margin: EdgeInsets.only(
                      bottom: Dimens.gap_dp20,
                    ),
                    decoration: BoxDecoration(
                        color: const Color(0xFFFF4454),
                        borderRadius: BorderRadius.circular(
                          Dimens.gap_dp22,
                        ),
                        border: Border.all(
                          color: const Color(0x40FFFFFF),
                          width: Dimens.gap_dp1,
                        )),
                    alignment: Alignment.center,
                    child: Text(
                      '点击去领取',
                      style: TextStyle(
                        fontSize: Dimens.font_sp16,
                        color: Theme.of(context).colorScheme.surface,
                      ),
                    ),
                  ),
                ),
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
