import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/widgets/app_bar.dart';

class BillDetailsPage extends StatefulWidget {
  const BillDetailsPage({
    super.key,
    required this.data,
  });

  final WalletChangeFlowItem data;

  @override
  State<StatefulWidget> createState() => _BillDetailsPageState();
}

class _BillDetailsPageState extends State<BillDetailsPage> {
  String parseDate() {
    final dateTime = DateTime.fromMillisecondsSinceEpoch(
      widget.data.updatedAt.toInt() * 1000,
    );
    return '${dateTime.year}-${dateTime.month}-${dateTime.day} ${dateTime.hour}:${dateTime.minute}:${dateTime.second}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text('账单详情'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Dimens.gap_dp12,
          vertical: Dimens.gap_dp10,
        ),
        margin: EdgeInsets.symmetric(
          horizontal: Dimens.gap_dp16,
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
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Container(
                  width: Dimens.gap_dp10 * 10,
                  alignment: Alignment.centerRight,
                  child: Text(
                    '流水号：',
                    style: TextStyle(
                      fontSize: Dimens.font_sp14,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    '${widget.data.id}',
                    style: TextStyle(
                      fontSize: Dimens.font_sp14,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                  ),
                ),
              ],
            ),
            Gaps.vGap8,
            Row(
              children: [
                Container(
                  width: Dimens.gap_dp10 * 10,
                  alignment: Alignment.centerRight,
                  child: Text(
                    '资金变化：',
                    style: TextStyle(
                      fontSize: Dimens.font_sp14,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    widget.data.changeValue.toInt() > 0
                        ? '+${widget.data.changeValue}元'
                        : '${widget.data.changeValue}元',
                    style: TextStyle(
                      fontSize: Dimens.font_sp14,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                  ),
                ),
              ],
            ),
            Gaps.vGap8,
            Row(
              children: [
                Container(
                  width: Dimens.gap_dp10 * 10,
                  alignment: Alignment.centerRight,
                  child: Text(
                    '时间：',
                    style: TextStyle(
                      fontSize: Dimens.font_sp14,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    parseDate(),
                    style: TextStyle(
                      fontSize: Dimens.font_sp14,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                  ),
                ),
              ],
            ),
            Gaps.vGap8,
            Row(
              children: [
                Container(
                  width: Dimens.gap_dp10 * 10,
                  alignment: Alignment.centerRight,
                  child: Text(
                    '状态：',
                    style: TextStyle(
                      fontSize: Dimens.font_sp14,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    widget.data.statusDesc,
                    style: TextStyle(
                      fontSize: Dimens.font_sp14,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                  ),
                ),
              ],
            ),
            Gaps.vGap8,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: Dimens.gap_dp10 * 10,
                  alignment: Alignment.centerRight,
                  child: Text(
                    '款项原因：',
                    style: TextStyle(
                      fontSize: Dimens.font_sp14,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    widget.data.description.isEmpty
                        ? '暂无'
                        : widget.data.description,
                    style: TextStyle(
                      fontSize: Dimens.font_sp14,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                  ),
                ),
              ],
            ),
            Gaps.vGap8,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: Dimens.gap_dp10 * 10,
                  alignment: Alignment.centerRight,
                  child: Text(
                    '款项渠道：',
                    style: TextStyle(
                      fontSize: Dimens.font_sp14,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    widget.data.channelName,
                    style: TextStyle(
                      fontSize: Dimens.font_sp14,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
