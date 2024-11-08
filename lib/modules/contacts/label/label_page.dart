import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/global/widgets/refresh_view.dart';
import 'package:quliao/modules/contacts/label/add/add_label_page.dart';
import 'package:quliao/modules/contacts/label/contacts/select_contact_page.dart';
import 'package:quliao/modules/contacts/label/edit/edit_label_page.dart';
import 'package:quliao/modules/contacts/label/label_item.dart';
import 'package:quliao/widgets/app_bar.dart';

import '../../../pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'label_controller.dart';

/// 标签
class LabelPage extends StatefulWidget {
  const LabelPage({super.key});

  @override
  State<StatefulWidget> createState() => _LabelPageState();
}

class _LabelPageState extends State<LabelPage> {
  final _controller = Get.put(LabelController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        actionPadding: EdgeInsets.zero,
        title: const Text('标签'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<AddCategorizeTagRsp>(
                  builder: (context) {
                    return const AddLabelPage();
                  },
                ),
              ).then((value) {
                if (null != value) {
                  _controller.addCategory(value);
                }
              });
            },
            icon: const Icon(Icons.add),
            splashRadius: Dimens.gap_dp20,
          ),
        ],
      ),
      body: GetBuilder<LabelController>(
        init: _controller,
        builder: (controller) {
          return RefreshView(
            loadState: controller.loadState.value,
            refreshController: controller.refreshController,
            onRefresh: controller.onRefresh,
            onLoading: controller.onLoad,
            bodyBuilder: (context) {
              return ListView.separated(
                itemBuilder: (context, index) {
                  final data = controller.dataList[index];
                  return LabelItem(
                    data: data,
                    onTap: () {
                      Get.to<dynamic>(EditLabelPage(data: data))?.then(
                        (value) {
                          if (value is bool) {
                            if (value) {
                              _controller.delCategory(data);
                            }
                          }
                        },
                      );
                    },
                  );
                },
                itemCount: controller.dataList.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: double.infinity,
                    height: Dimens.gap_dp10,
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
