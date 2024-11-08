import 'package:flutter/material.dart' hide Card;
import 'package:flutter/services.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/widgets/rh_extended_image.dart';
import 'package:url_launcher/url_launcher.dart';

class CardItemWidget extends StatelessWidget {
  const CardItemWidget({
    super.key,
    required this.data,
  });

  final Card data;

  @override
  Widget build(BuildContext context) {
    final createTime =
        DateTime.fromMillisecondsSinceEpoch(data.createTime.toInt() * 1000);
    final expireTime =
        DateTime.fromMillisecondsSinceEpoch(data.expireTime.toInt() * 1000);
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: Dimens.gap_dp6,
        horizontal: Dimens.gap_dp16,
      ),
      clipBehavior: Clip.none,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.all(
          Radius.circular(Dimens.gap_dp12),
        ),
        border: Border.all(
          width: Dimens.gap_dp1 / 2,
          color: const Color(0xFFDCECFF),
        ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow,
            offset: Offset(0, Dimens.gap_dp20),
            blurRadius: Dimens.gap_dp10,
            spreadRadius: -Dimens.gap_dp10,
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.gap_dp12,
        vertical: Dimens.gap_dp12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: Dimens.gap_dp50,
            child: Row(
              children: [
                RHExtendedImage.network(
                  data.icon,
                  width: Dimens.gap_dp50,
                  height: Dimens.gap_dp50,
                  borderRadius: BorderRadius.circular(
                    Dimens.gap_dp26,
                  ),
                ),
                Gaps.hGap10,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Text(
                          data.name,
                          style: TextStyle(
                            color: const Color(0xFF0B2959),
                            fontSize: Dimens.font_sp16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Gaps.hGap10,
                      Row(
                        children: [
                          Text(
                            data.code,
                            style: TextStyle(
                              fontSize: Dimens.font_sp12,
                              color: const Color(0xFF575E70),
                            ),
                          ),
                          GestureDetector(
                            onTap: () async {
                              await Clipboard.setData(
                                ClipboardData(text: data.code),
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
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(Dimens.gap_dp6),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () async {
                        await launchUrl(
                          Uri.parse(data.awardsUrl),
                        );
                      },
                      borderRadius: BorderRadius.circular(Dimens.gap_dp6),
                      child: Container(
                        width: Dimens.gap_dp1 * 74,
                        height: Dimens.gap_dp28,
                        alignment: Alignment.center,
                        child: Text(
                          '去使用',
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
          ),
          Gaps.vGap16,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${createTime.year}/${createTime.month}/${createTime.day} 领取',
                style: TextStyle(
                  color: const Color(0xFF575E70),
                  fontSize: Dimens.font_sp12,
                ),
              ),
              Text(
                '${expireTime.year}/${expireTime.month}/${expireTime.day} 到期',
                style: TextStyle(
                  color: const Color(0xFF575E70),
                  fontSize: Dimens.font_sp12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
