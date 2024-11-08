import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';

class BillItemWidget extends StatelessWidget {
  const BillItemWidget({
    super.key,
    required this.data,
  });

  final WalletChangeFlowItem data;

  String parseDate() {
    final dateTime = DateTime.fromMillisecondsSinceEpoch(
      data.updatedAt.toInt() * 1000,
    );
    return '${dateTime.year}-${dateTime.month}-${dateTime.day} ${dateTime.hour}:${dateTime.minute}:${dateTime.second}';
  }

  @override
  Widget build(BuildContext context) {
    Color textColor = const Color(0xFFFAFF00);
    final changeValue = data.changeValue.toInt() / 100;
    if (changeValue < 0) {
      textColor = const Color(0xFF860020);
    }
    return Container(
      height: Dimens.gap_dp64,
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.gap_dp12,
        vertical: Dimens.gap_dp4,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: Dimens.gap_dp16,
        vertical: Dimens.gap_dp6,
      ),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFFFF4D0E),
            Color(0xFFFD234D),
          ],
        ),
        borderRadius: BorderRadius.circular(Dimens.gap_dp10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  '流水号：${data.id}',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.surface,
                    fontSize: Dimens.font_sp14,
                  ),
                ),
              ),
              Text(
                changeValue > 0 ? '+$changeValue元' : '$changeValue元',
                style: TextStyle(
                  fontSize: Dimens.font_sp16,
                  color: textColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                parseDate(),
                style: TextStyle(
                  color: Theme.of(context).colorScheme.surface,
                  fontSize: Dimens.font_sp1 * 13,
                ),
              ),
              Gaps.hGap10,
              Expanded(
                child: Text(
                  data.description,
                  textAlign: TextAlign.right,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.surface,
                    fontSize: Dimens.font_sp14,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
