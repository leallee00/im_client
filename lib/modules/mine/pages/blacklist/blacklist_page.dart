import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/global/widgets/refresh_view.dart';
import 'package:quliao/global/widgets/state_widget.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/pages/friend_list/contact_item.dart';
import 'package:quliao/widgets/app_bar.dart';

import 'blacklist_controller.dart';

/// 黑名单列表
class BlackListPage extends StatefulWidget {
  const BlackListPage({super.key});

  @override
  State<StatefulWidget> createState() => _BlackListPageState();
}

class _BlackListPageState extends State<BlackListPage> {
  final _controller = Get.put(BlackListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text('黑名单列表'),
      ),
      body: GetBuilder<BlackListController>(
        init: _controller,
        builder: (controller) {
          return RefreshView(
            loadState: controller.loadState.value,
            refreshController: controller.refreshController,
            onRefresh: controller.loadData,
            bodyBuilder: (context) {
              return ListView.separated(
                itemCount: controller.blackList.length,
                itemBuilder: (context, index) {
                  final itemData = controller.blackList[index];
                  return _buildItem(itemData);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    indent: Dimens.gap_dp16,
                    endIndent: Dimens.gap_dp16,
                  );
                },
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildItem(FriendInfo data) {
    return Row(
      children: [
        Expanded(
          child: ContactItem(data: data),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              Dimens.gap_dp16,
            ),
            color: Colors.redAccent,
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                _controller.remove(context, data);
              },
              borderRadius: BorderRadius.circular(
                Dimens.gap_dp16,
              ),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimens.gap_dp14,
                  vertical: Dimens.gap_dp6,
                ),
                child: Text(
                  '移除',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Dimens.font_sp13,
                  ),
                ),
              ),
            ),
          ),
        ),
        Gaps.hGap16,
      ],
    );
  }
}
