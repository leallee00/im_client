import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/modules/contacts/widgets/add_button.dart';
import 'package:quliao/modules/mine/pages/feedback/report_image_item.dart';
import 'package:quliao/widgets/app_bar.dart';
import 'package:quliao/widgets/button.dart';

import 'report_controller.dart';

/// 投诉
class ReportPage extends StatefulWidget {
  const ReportPage({super.key});

  @override
  State<StatefulWidget> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  final _controller = Get.put(ReportController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: CustomAppBar(
          title: const Text('投诉'),
        ),
        resizeToAvoidBottomInset: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                vertical: Dimens.gap_dp10,
                horizontal: Dimens.gap_dp16,
              ),
              child: Text(
                '问题与意见',
                style: TextStyle(
                  fontSize: Dimens.font_sp14,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: Dimens.gap_dp16,
              ),
              child: TextField(
                controller: _controller.editingController,
                keyboardType: TextInputType.text,
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: '请输入您的内容',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: Dimens.font_sp14,
                    textBaseline: TextBaseline.ideographic,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(Dimens.gap_dp8),
                    ),
                    borderSide: BorderSide(
                      width: Dimens.gap_dp1,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: Dimens.gap_dp20,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: Dimens.gap_dp16,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      '图片（问题截图）',
                      style: TextStyle(
                        fontSize: Dimens.font_sp14,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                  ),
                  Obx(
                    () {
                      return Text(
                        '${_controller.dataList.length - 1}/4',
                        style: TextStyle(
                          fontSize: Dimens.font_sp14,
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: Dimens.gap_dp16,
              ).copyWith(top: Dimens.gap_dp20),
              alignment: Alignment.centerLeft,
              constraints: BoxConstraints(
                minHeight: Dimens.gap_dp10 * 10,
                maxHeight: Dimens.gap_dp10 * 40,
              ),
              child: Obx(
                () {
                  return GridView.builder(
                    itemBuilder: (context, index) {
                      final imageModel = _controller.dataList[index];
                      if (imageModel.type == 0) {
                        return ReportImageItem(
                          url: imageModel.url!,
                          onDelete: () {
                            _controller.deleteImage(
                              imageModel.url!,
                            );
                          },
                        );
                      }
                      return AddButton(
                        padding: _controller.dataList.length == 1
                            ? null
                            : EdgeInsets.all(Dimens.gap_dp8),
                        onTap: () {
                          _controller.pickImage();
                        },
                      );
                    },
                    itemCount: _controller.dataList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: _controller.dataList.length == 1 ? 0 : 0,
                      crossAxisSpacing:
                          _controller.dataList.length == 1 ? 0 : 0,
                    ),
                  );
                },
              ),
            ),
            Expanded(child: Gaps.empty),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: Dimens.gap_dp16,
              ).copyWith(bottom: Dimens.gap_dp20),
              child: CustomButton(
                width: double.infinity,
                height: Dimens.gap_dp46,
                size: CustomButtonSize.medium,
                shape: CustomButtonShape.stadium,
                backgroundColor: Colors.redAccent,
                onPressed: () {
                  _controller.report(context);
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
    );
  }
}
