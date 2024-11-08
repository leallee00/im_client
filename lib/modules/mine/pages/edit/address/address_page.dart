import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/global/widgets/refresh_view.dart';
import 'package:quliao/modules/mine/pages/edit/address/add/add_address_page.dart';
import 'package:quliao/modules/mine/pages/edit/address/address_item.dart';
import 'package:quliao/modules/mine/pages/edit/address/edit/edit_address_page.dart';
import 'package:quliao/modules/mine/widgets/user_address_dialog.dart';
import 'package:quliao/widgets/app_bar.dart';

import 'address_controller.dart';
import 'empty_address_widget.dart';

/// 我的地址
class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

  @override
  State<StatefulWidget> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  final _controller = Get.put(AddressController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text('我的地址'),
        actions: [
          Obx(
            () {
              final isEmpty = _controller.addressList.isEmpty;
              if (isEmpty) {
                return Gaps.empty;
              }
              return IconButton(
                splashRadius: Dimens.gap_dp20,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) {
                        return const AddAddressPage();
                      },
                    ),
                  );
                },
                icon: Icon(
                  Icons.add,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              );
            },
          ),
        ],
      ),
      body: GetBuilder<AddressController>(
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
                  final data = controller.addressList[index];
                  return AddressItem(
                    data: controller.addressList[index],
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) {
                            return EditAddressPage(
                              userAddress: controller.addressList[index],
                            );
                          },
                        ),
                      );
                    },
                    onLongPress: () {
                      UserAddressDialog.show(
                        context,
                        (value) {
                          if (value == 1) {
                            /// 编辑
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) {
                                  return EditAddressPage(
                                    userAddress: controller.addressList[index],
                                  );
                                },
                              ),
                            );
                          } else if (value == 2) {
                            /// 删除
                            _controller.delete(context, data);
                          } else {
                            /// 复制
                            _controller.copyAddress(data);
                          }
                        },
                      );
                    },
                  );
                },
                itemCount: controller.addressList.length,
                separatorBuilder: (BuildContext context, int index) {
                  return Container(
                    width: double.infinity,
                    height: Dimens.gap_dp1 / 2,
                    color: Theme.of(context).dividerColor,
                    margin: EdgeInsets.symmetric(
                      horizontal: Dimens.gap_dp16,
                    ),
                  );
                },
              );
            },
            emptyBuilder: (context) {
              return EmptyAddressWidget(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) {
                        return const AddAddressPage();
                      },
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
