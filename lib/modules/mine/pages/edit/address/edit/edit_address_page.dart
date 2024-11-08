import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/modules/mine/pages/edit/address/address_controller.dart';
import 'package:quliao/pages/mine/click_item.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/themes/theme.dart';
import 'package:quliao/widgets/app_bar.dart';
import 'package:quliao/widgets/button.dart';
import 'package:quliao/widgets/cell.dart';
import 'package:quliao/widgets/custom_bottom_sheet.dart';
import 'package:quliao/widgets/input.dart';

/// 编辑地址
class EditAddressPage extends StatefulWidget {
  const EditAddressPage({
    super.key,
    required this.userAddress,
  });

  final UserAddress userAddress;

  @override
  State<StatefulWidget> createState() => _EditAddressPageState();
}

class _EditAddressPageState extends State<EditAddressPage> {
  final _controller = AddressController.to;

  @override
  void initState() {
    super.initState();
    _controller.initTextEditingController(
      userAddress: widget.userAddress,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.disposeTextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _controller.hideKeyboard(context);
      },
      child: Scaffold(
        appBar: CustomAppBar(
          title: const Text('编辑地址'),
        ),
        body: Theme(
          data: AppTheme.light().copyWith(
            inputDecorationTheme: InputDecorationTheme(
              isCollapsed: true,
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: Dimens.gap_dp20,
                vertical: Dimens.gap_dp4,
              ),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: Dimens.gap_dp20,
                  ),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: Dimens.gap_dp46,
                    ),
                    child: CustomInputCell(
                      title: Text(
                        '联系人',
                        style: TextStyle(
                          fontSize: Dimens.font_sp14,
                        ),
                      ),
                      value: CustomInputNormal(
                        controller: _controller.contactsCtl,
                        textAlign: TextAlign.end,
                        hintStyle: TextStyle(
                          fontSize: Dimens.font_sp14,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: Dimens.gap_dp1 / 2,
                  color: Theme.of(context).dividerColor,
                  margin: EdgeInsets.symmetric(
                    horizontal: Dimens.gap_dp16,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: Dimens.gap_dp20,
                  ),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: Dimens.gap_dp46,
                    ),
                    child: CustomInputCell(
                      title: Text(
                        '手机号码',
                        style: TextStyle(
                          fontSize: Dimens.font_sp14,
                        ),
                      ),
                      value: CustomInputNormal(
                        controller: _controller.mobileCtl,
                        textAlign: TextAlign.end,
                        hintStyle: TextStyle(
                          fontSize: Dimens.font_sp14,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: Dimens.gap_dp1 / 2,
                  color: Theme.of(context).dividerColor,
                  margin: EdgeInsets.symmetric(
                    horizontal: Dimens.gap_dp16,
                  ),
                ),
                Container(
                  height: Dimens.gap_dp46,
                  margin: EdgeInsets.only(
                    top: Dimens.gap_dp20,
                  ),
                  child: Obx(
                    () {
                      final result = _controller.addressResult.value;
                      return ClickItem(
                        title: '所在地区',
                        trailing: Text(
                          null != _controller.addressResult.value
                              ? '${result?.provinceName}-${result?.cityName}-${result?.areaName}'
                              : '请选择',
                          style: null != _controller.addressResult.value
                              ? TextStyle(
                                  fontSize: Dimens.font_sp14,
                                  fontWeight: FontWeight.w600,
                                )
                              : TextStyle(
                                  fontSize: Dimens.font_sp14,
                                  color: Colors.black.withOpacity(0.5),
                                ),
                        ),
                        onTap: () {
                          _controller.hideKeyboard(context);
                          CustomBottomSheet.showCityPicker(context: context)
                              .then(
                            (value) {
                              _controller.addressResult.value = value;
                            },
                          );
                        },
                      );
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: Dimens.gap_dp20,
                  ),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: Dimens.gap_dp52,
                    ),
                    child: CustomInputCell(
                      title: Text(
                        '详细地址',
                        style: TextStyle(
                          fontSize: Dimens.font_sp14,
                        ),
                      ),
                      value: CustomInputNormal(
                        controller: _controller.addressDetailsCtl,
                        textAlign: TextAlign.end,
                        hintText: '请输入街道门牌信息',
                        hintStyle: TextStyle(
                          fontSize: Dimens.font_sp14,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: Dimens.gap_dp1 / 2,
                  color: Theme.of(context).dividerColor,
                  margin: EdgeInsets.symmetric(
                    horizontal: Dimens.gap_dp16,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: Dimens.gap_dp20,
                  ),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: Dimens.gap_dp52,
                    ),
                    child: CustomInputCell(
                      title: Text(
                        '邮政编码',
                        style: TextStyle(
                          fontSize: Dimens.font_sp14,
                        ),
                      ),
                      value: CustomInputNormal(
                        controller: _controller.postCodeCtl,
                        textAlign: TextAlign.end,
                        hintText: '请输入',
                        hintStyle: TextStyle(
                          fontSize: Dimens.font_sp14,
                          color: Colors.black.withOpacity(0.5),
                        ),
                        keyboardType: TextInputType.phone,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                            RegExp('[0-9]'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: Dimens.gap_dp1 / 2,
                  color: Theme.of(context).dividerColor,
                  margin: EdgeInsets.symmetric(
                    horizontal: Dimens.gap_dp16,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: Dimens.gap_dp20,
                  ),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: Dimens.gap_dp46,
                    ),
                    child: CustomCell(
                      title: Text(
                        '是否设为默认地址',
                        style: TextStyle(
                          fontSize: Dimens.font_sp14,
                        ),
                      ),
                      value: SizedBox(
                        width: Dimens.gap_dp40,
                        height: Dimens.gap_dp22,
                        child: Obx(
                          () {
                            return FlutterSwitch(
                              value: _controller.defAddress.value,
                              width: Dimens.gap_dp40,
                              height: Dimens.gap_dp22,
                              borderRadius: Dimens.gap_dp20,
                              toggleSize: Dimens.gap_dp20,
                              padding: Dimens.gap_dp2,
                              onToggle: (value) {
                                _controller.defAddress.value =
                                    !_controller.defAddress.value;
                              },
                              activeColor:
                                  Theme.of(context).colorScheme.primary,
                              inactiveColor: Theme.of(context)
                                  .colorScheme
                                  .primary
                                  .withOpacity(0.3),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: Dimens.gap_dp1 / 2,
                  color: Theme.of(context).dividerColor,
                  margin: EdgeInsets.symmetric(
                    horizontal: Dimens.gap_dp16,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: Dimens.gap_dp16,
                  ).copyWith(
                    top: Dimens.gap_dp38,
                  ),
                  child: CustomButton(
                    width: double.infinity,
                    height: Dimens.gap_dp48,
                    size: CustomButtonSize.large,
                    shape: CustomButtonShape.stadium,
                    onPressed: () {
                      _controller.edit(context);
                    },
                    child: Text(
                      '确定编辑',
                      style: TextStyle(
                        fontSize: Dimens.font_sp16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
