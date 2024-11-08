import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/global/global_repository.dart';
import 'package:quliao/global/widgets/refresh_view.dart';
import 'package:quliao/pages/sugget/gripesugget_create.dart';
import 'package:quliao/pages/sugget/gripesugget_detail.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/themes/theme.dart';
import 'package:quliao/utils/toast/toast.dart';
import 'package:quliao/widgets/app_bar.dart';
import 'package:quliao/widgets/button.dart';
import 'package:quliao/widgets/dialog/manager.dart';

import 'feedback_controller.dart';
import 'feedback_item.dart';
import 'report_page.dart';

/// 投诉建议
class FeedbackPage extends StatefulWidget {
  const FeedbackPage({super.key});

  @override
  State<StatefulWidget> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  final _controller = Get.put(FeedbackController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text('投诉建议'),
      ),
      backgroundColor: const Color(0xFFF4F4F4),
      body: Column(
        children: [
          Expanded(
            child: GetBuilder<FeedbackController>(
              init: _controller,
              builder: (controller) {
                return RefreshView(
                  loadState: controller.loadState.value,
                  refreshController: controller.refreshController,
                  onRefresh: controller.onRefresh,
                  onLoading: controller.onLoad,
                  bodyBuilder: (context) {
                    return ListView.separated(
                      padding: EdgeInsets.only(
                        top: Dimens.gap_dp10,
                      ),
                      itemBuilder: (context, index) {
                        final data = controller.dataList[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ComplaintSuggetDetailPage(
                                  mySuggest: data,
                                ),
                              ),
                            );
                          },
                          child: FeedbackItem(data: data),
                        );
                      },
                      itemCount: controller.dataList.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: double.infinity,
                          height: Dimens.gap_dp8,
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
          Container(
            height: Dimens.gap_dp1 / 2,
            color: Theme.of(context).colorScheme.divider.withOpacity(0.4),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: Dimens.gap_dp12,
              horizontal: Dimens.gap_dp16,
            ),
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: CustomButton(
                    width: double.infinity,
                    height: Dimens.gap_dp46,
                    size: CustomButtonSize.medium,
                    shape: CustomButtonShape.stadium,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    onPressed: () {
                      Navigator.push<Suggest>(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ComplaintPage(
                            myType: ComplaintPageType.SuggetType,
                          ),
                        ),
                      ).then((value) {
                        if (null != value) {
                          _controller.addSuggest(value);
                        }
                      });
                    },
                    child: Text(
                      '建议',
                      style: TextStyle(
                        fontSize: Dimens.font_sp14,
                      ),
                    ),
                  ),
                ),
                Gaps.hGap10,
                Expanded(
                  child: CustomButton(
                    width: double.infinity,
                    height: Dimens.gap_dp46,
                    size: CustomButtonSize.medium,
                    shape: CustomButtonShape.stadium,
                    backgroundColor: Colors.redAccent,
                    onPressed: () {
                      Get.to(const ReportPage());
                    },
                    child: Text(
                      '投诉',
                      style: TextStyle(
                        fontSize: Dimens.font_sp14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
