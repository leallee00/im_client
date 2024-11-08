import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/global/widgets/refresh_view.dart';
import 'package:quliao/modules/mine/pages/card/card_page_controller.dart';
import 'package:quliao/modules/mine/widgets/card_item_widget.dart';
import 'package:quliao/widgets/app_bar.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<StatefulWidget> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  final _controller = Get.put(CardPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text('我的卡包'),
      ),
      body: GetBuilder<CardPageController>(
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
                itemBuilder: (context, index) {
                  final itemData = _controller.dataList[index];
                  return CardItemWidget(data: itemData);
                },
              );
            },
          );
        },
      ),
    );
  }
}
