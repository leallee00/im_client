import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/modules/mine/pages/card/card_page.dart';
import 'package:quliao/modules/mine/pages/signin/signin_page_controller.dart';
import 'package:quliao/modules/mine/widgets/award_content_dialog.dart';
import 'package:quliao/modules/mine/widgets/signin_task_item.dart';
import 'package:quliao/widgets/empty.dart';

class SignInTaskPage extends StatefulWidget {
  const SignInTaskPage({
    super.key,
    required this.tag,
  });

  final String tag;

  @override
  State<StatefulWidget> createState() => _SignInTaskPageState();
}

class _SignInTaskPageState extends State<SignInTaskPage> {
  final _controller = SignInPageController.to;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final dataList = widget.tag == 'toBeCompleted'
            ? _controller.todoList
            : _controller.completedList;
        if (dataList.isEmpty) {
          return const Empty();
        }
        return ListView.builder(
          padding: EdgeInsets.symmetric(
            vertical: Dimens.gap_dp20,
            horizontal: Dimens.gap_dp10,
          ),
          itemCount: dataList.length,
          itemBuilder: (context, index) {
            final itemData = dataList[index];
            return SigninTaskItemWidget(
              data: itemData,
              onTap: () {
                final isCompleted = widget.tag != 'toBeCompleted';
                if (isCompleted) {
                  Get.to(const CardPage());
                } else {
                  if (itemData.awardsList.isNotEmpty) {
                    AwardContentDialog.show(
                      context,
                      itemData.awardsList.first,
                    );
                  }
                }
              },
            );
          },
        );
      },
    );
  }
}
