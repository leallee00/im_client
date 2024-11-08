import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/modules/red_packet/repository/red_packet_repository.dart';
import 'package:quliao/pub/func.dart';

class ModifyPayPwdController extends GetxController {
  final oldPwdController = TextEditingController();
  final Rx<FocusNode?> oldPwdFocusNode = Rx(FocusNode());
  final newPwdController = TextEditingController();
  final Rx<FocusNode?> newPwdFocusNode = Rx(null);

  final _repository = RedPacketRepository();

  Future<void> modify() async {
    final oldPwd = oldPwdController.text;
    final newPwd = newPwdController.text;

    if (oldPwd.isEmpty) {
      showToast('请输入原支付密码');
      return;
    }
    if (newPwd.isEmpty) {
      showToast('请输入新支付密码');
      return;
    }
    await _repository.modifyPayPassword(
      oldPwd,
      newPwd,
      callback: () {
        showToast('支付密码修改成功');
        Get.back();
      },
    );
  }
}
