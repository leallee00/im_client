import 'package:city_pickers/city_pickers.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:quliao/global/enum/load_state.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/modules/mine/repository/mine_repository.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/widgets/dialog/manager.dart';

class AddressController extends GetxController {
  static AddressController get to => Get.find();

  final Rx<LoadState> loadState = Rx(LoadState.loading);

  final _repository = MineRepository();

  final refreshController = RefreshController();

  int page = 0;
  bool hasNextPage = false;

  bool get isRefresh => page == 0;

  RxList<UserAddress> addressList = RxList();

  /// 联系人
  late TextEditingController contactsCtl;

  /// 手机号码
  late TextEditingController mobileCtl;

  /// 详细地址
  late TextEditingController addressDetailsCtl;

  /// 邮政编码
  late TextEditingController postCodeCtl;

  final RxBool defAddress = RxBool(false);

  final Rx<Result?> addressResult = Rx(null);

  @override
  void onInit() {
    super.onInit();
    onRefresh();
  }

  void initTextEditingController({
    UserAddress? userAddress,
  }) {
    contactsCtl = TextEditingController(
      text: null != userAddress ? userAddress.contacts : '',
    );
    mobileCtl = TextEditingController(
      text: null != userAddress ? userAddress.phoneCode : '',
    );
    addressDetailsCtl = TextEditingController(
      text: null != userAddress ? userAddress.detailAddress : '',
    );
    postCodeCtl = TextEditingController(
      text: null != userAddress ? userAddress.postCode : '',
    );
    defAddress.value = null == userAddress ? false : userAddress.isDefault;
  }

  void disposeTextEditingController() {
    contactsCtl.dispose();
    mobileCtl.dispose();
    addressDetailsCtl.dispose();
    postCodeCtl.dispose();
    defAddress.value = false;
  }

  void copyAddress(
    UserAddress userAddress,
  ) async {
    final text = '联系人：${userAddress.contacts}\n'
        '手机号码：${userAddress.phoneCode}\n'
        '地区：${userAddress.area}\n'
        '详细地址：${userAddress.detailAddress}\n'
        '邮政编码：${userAddress.postCode}';
    await Clipboard.setData(
      ClipboardData(text: text),
    );
    showToast('已复制');
  }

  void onRefresh() async {
    page = 0;
    getAddressList();
  }

  void onLoad() async {
    if (hasNextPage) {
      page += 1;
      getAddressList();
    } else {
      refreshController.loadNoData();
    }
  }

  Future<void> getAddressList() async {
    _repository.getAddressList(
      page,
      callback: (value) {
        if (isRefresh) {
          addressList.clear();
          refreshController.refreshCompleted(
            resetFooterState: true,
          );
        }

        addressList.addAll(value);

        hasNextPage = value.length >= 10;

        if (value.isEmpty) {
          if (isRefresh) {
            loadState.value = LoadState.empty;
          } else {
            loadState.value = LoadState.successful;
          }
          refreshController.loadNoData();
        } else {
          loadState.value = LoadState.successful;
          if (hasNextPage) {
            refreshController.loadComplete();
          } else {
            refreshController.loadNoData();
          }
        }
        update();
      },
      onError: () {
        if (isRefresh) {
          refreshController.refreshFailed();
          if (addressList.isEmpty) {
            loadState.value = LoadState.failed;
          }
        } else {
          page -= 1;
          refreshController.loadFailed();
        }
        update();
      },
    );
  }

  Future<void> hideKeyboard(
    BuildContext context,
  ) async {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  Future<void> add(
    BuildContext context,
  ) async {
    if (contactsCtl.text.isEmpty) {
      showToast('请输入联系人');
      return;
    }
    if (mobileCtl.text.isEmpty) {
      showToast('请输入手机号码');
      return;
    }
    if (null == addressResult.value) {
      showToast('请选择城市');
      return;
    }
    if (addressDetailsCtl.text.isEmpty) {
      showToast('请输入街道门牌信息');
      return;
    }
    if (postCodeCtl.text.isEmpty) {
      showToast('请输入邮政编码');
      return;
    }

    final addressResultValue = addressResult.value;

    final userAddress = UserAddress(
      id: Int64(AppUserInfo.instance.imId),
      contacts: contactsCtl.text,
      phoneCode: mobileCtl.text,
      area:
          '${addressResultValue?.provinceName}-${addressResultValue?.cityName}-${addressResultValue?.areaName}',
      detailAddress: addressDetailsCtl.text,
      postCode: postCodeCtl.text,
      isDefault: defAddress.value,
    );

    _repository.addUserAddress(
      userAddress,
      callback: () {},
      onError: () {
        showToast('添加失败，请重试');
      },
    );
  }

  Future<void> edit(
    BuildContext context,
  ) async {
    if (contactsCtl.text.isEmpty) {
      showToast('请输入联系人');
      return;
    }
    if (mobileCtl.text.isEmpty) {
      showToast('请输入手机号码');
      return;
    }
    if (null == addressResult.value) {
      showToast('请选择城市');
      return;
    }
    if (addressDetailsCtl.text.isEmpty) {
      showToast('请输入街道门牌信息');
      return;
    }
    if (postCodeCtl.text.isEmpty) {
      showToast('请输入邮政编码');
      return;
    }

    final addressResultValue = addressResult.value;

    final userAddress = UserAddress(
      id: Int64(AppUserInfo.instance.imId),
      contacts: contactsCtl.text,
      phoneCode: mobileCtl.text,
      area:
          '${addressResultValue?.provinceName}-${addressResultValue?.cityName}-${addressResultValue?.areaName}',
      detailAddress: addressDetailsCtl.text,
      postCode: postCodeCtl.text,
      isDefault: defAddress.value,
    );

    _repository.addUserAddress(
      userAddress,
      callback: () {},
      onError: () {
        showToast('添加失败，请重试');
      },
    );
  }

  Future<void> delete(
    BuildContext context,
    UserAddress userAddress,
  ) async {
    DialogManager.showDelUserAddressDialog(
      context,
      onConfirm: () {
        _repository.deleteUserAddress(
          userAddress,
          callback: () {
            addressList.removeWhere(
              (element) => element.id == userAddress.id,
            );
            update();
          },
          onError: () {
            showToast('删除失败，请重试');
          },
        );
      },
    );
  }
}
