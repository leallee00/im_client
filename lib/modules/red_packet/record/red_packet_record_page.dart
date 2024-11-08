import 'package:date_format/date_format.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/global/widgets/refresh_view.dart';
import 'package:quliao/modules/red_packet/widgets/record_list_item.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/widgets/app_bar.dart';

import 'red_packet_record_page_controller.dart';

class RedPacketRecordPage extends StatefulWidget {
  const RedPacketRecordPage({
    super.key,
    required this.redPacketId,
    this.receivedValue,
  });

  final int redPacketId;
  final String? receivedValue;

  @override
  State<StatefulWidget> createState() => _RedPacketRecordPageState();
}

class _RedPacketRecordPageState extends State<RedPacketRecordPage> {
  final _controller = Get.put(RedPacketRecordPageController());

  @override
  void initState() {
    super.initState();
    _controller.loadData(widget.redPacketId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFBBB80),
              Color(0xFFE0250B),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomAppBar(
              backgroundColor: Colors.transparent,
              leading: IconButton(
                onPressed: () => Get.back(),
                icon: Icon(
                  Icons.arrow_back,
                  color: Theme.of(context).colorScheme.surface,
                ),
                splashRadius: Dimens.gap_dp20,
              ),
            ),
            Obx(
              () {
                final targetInfo = _controller.targetInfo.value;
                final nickname = targetInfo?.remark.isEmpty == true
                    ? targetInfo?.userInfo.nickName
                    : targetInfo?.remark;
                return Text(
                  '$nickname发出的红包',
                  style: TextStyle(
                    fontSize: Dimens.font_sp18,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFFDF260A),
                  ),
                );
              },
            ),
            Gaps.vGap10,
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: Dimens.gap_dp20,
              ),
              child: Obx(
                () {
                  final description =
                      _controller.redPacketInfo.value?.description;
                  return Text(
                    description ?? '恭喜发财，大吉大利',
                    style: TextStyle(
                      fontSize: Dimens.font_sp14,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                    textAlign: TextAlign.center,
                  );
                },
              ),
            ),
            Gaps.vGap4,
            Obx(
              () {
                final amount =
                    _controller.redPacketInfo.value?.createValue ?? Int64(0);
                LoggerManager().debug('amount ======> $amount');
                if (null != widget.receivedValue &&
                    widget.receivedValue!.isNotEmpty) {
                  return Text(
                    '${widget.receivedValue}元',
                    style: TextStyle(
                      fontSize: Dimens.font_sp1 * 36,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                  );
                }
                return Text(
                  '${amount.toInt() / 100}元',
                  style: TextStyle(
                    fontSize: Dimens.font_sp1 * 36,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.surface,
                  ),
                );
              },
            ),
            Gaps.vGap4,
            Text(
              '已存入余额',
              style: TextStyle(
                fontSize: Dimens.font_sp12,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).colorScheme.surface,
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                horizontal: Dimens.gap_dp16,
              ).copyWith(top: Dimens.gap_dp30),
              child: Obx(
                () {
                  final redPacketInfo = _controller.redPacketInfo.value;
                  final createCount = redPacketInfo?.createCount ?? 0;
                  final remainCount = redPacketInfo?.remainCount ?? 0;
                  final amount =
                      _controller.redPacketInfo.value?.createValue ?? Int64(0);
                  if (null != widget.receivedValue) {
                    return Text(
                      '领取${createCount - remainCount}/${redPacketInfo?.createCount}个，总金额${amount.toInt()}元',
                      style: TextStyle(
                        fontSize: Dimens.font_sp12,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).colorScheme.surface,
                      ),
                    );
                  }
                  return Text(
                    '领取${createCount - remainCount}/${redPacketInfo?.createCount}个',
                    style: TextStyle(
                      fontSize: Dimens.font_sp12,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                  );
                },
              ),
            ),
            Gaps.vGap10,
            Expanded(
              child: GetBuilder<RedPacketRecordPageController>(
                init: _controller,
                builder: (_) {
                  return RefreshView(
                    loadState: _controller.loadState.value,
                    refreshController: _controller.refreshController,
                    onRefresh: _controller.onRefresh,
                    onLoading: _controller.onLoad,
                    bodyBuilder: (context) {
                      return ListView.builder(
                        itemCount: _controller.dataList.length,
                        padding: EdgeInsets.zero,
                        itemBuilder: (context, index) {
                          return RecordListItem(
                            data: _controller.dataList[index],
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
