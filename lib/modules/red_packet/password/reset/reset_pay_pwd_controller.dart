import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oktoast/oktoast.dart';
import 'package:quliao/modules/mine/repository/mine_repository.dart';
import 'package:quliao/modules/red_packet/repository/red_packet_repository.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/widgets/countdown/countdown.dart';

class ResetPayPwdController extends GetxController {
  final mobileController = TextEditingController();
  final codeController = TextEditingController();
  final newPwdController = TextEditingController();

  final _repository = RedPacketRepository();

  final _mineRepository = MineRepository();

  Future<void> sendPhoneCode(
    CountdownCubit cubit,
  ) async {
    if (mobileController.text.isEmpty) {
      showToast('请输入手机号码');
      return;
    }
    cubit.startCountdown();
    final sendPhoneCodeReq = SendPhoneCodeReq(
      phoneNo: mobileController.text,
    );
    await _mineRepository.sendPhoneCode(
      sendPhoneCodeReq,
      onError: () {
        cubit.cancel();
      },
    );
  }

  Future<void> reset() async {
    final mobile = mobileController.text;
    final code = codeController.text;
    final newPwd = newPwdController.text;

    if (mobile.isEmpty) {
      showToast('请输入手机号码');
      return;
    }
    if (code.isEmpty) {
      showToast('请输入验证码');
      return;
    }
    if (newPwd.isEmpty) {
      showToast('请输入支付密码');
      return;
    }
    await _repository.resetPayPassword(
      newPwd,
      code,
      callback: () {
        showToast('支付密码重置成功');
        Get.back(result: true);
      },
    );
  }
}
