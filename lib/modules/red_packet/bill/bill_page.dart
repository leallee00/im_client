import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/global/widgets/refresh_view.dart';
import 'package:quliao/modules/red_packet/bill/bill_item_widget.dart';
import 'package:quliao/modules/red_packet/bill/details/bill_details_page.dart';
import 'package:quliao/widgets/app_bar.dart';

import 'bill_page_controller.dart';

/// 账单
class BillPage extends StatefulWidget {
  const BillPage({super.key});

  @override
  State<StatefulWidget> createState() => _BillPageState();
}

class _BillPageState extends State<BillPage> {
  final _controller = Get.put(BillPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text('账单'),
      ),
      body: GetBuilder<BillPageController>(
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
                  return GestureDetector(
                    onTap: () {
                      Get.to(
                        BillDetailsPage(
                          data: _controller.dataList[index],
                        ),
                      );
                    },
                    child: BillItemWidget(
                      data: _controller.dataList[index],
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
