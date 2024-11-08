import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/modules/mine/mine_page_controller.dart';
import 'package:quliao/modules/mine/pages/info/mobile/bind_mobile_page.dart';
import 'package:quliao/modules/mine/repository/mine_repository.dart';
import 'package:quliao/modules/red_packet/password/pay_password_dialog.dart';
import 'package:quliao/modules/red_packet/repository/red_packet_repository.dart';
import 'package:quliao/pages/mine/edit_password_page.dart';
import 'package:quliao/pb/pb_msg/user_center/userCenter.pb.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/widgets/dialog/manager.dart';

class RedPacketController extends GetxController {
  static RedPacketController get to => Get.find();

  late int groupId;

  /// 红包金额
  final amountController = TextEditingController();

  /// 红包个数
  final numberController = TextEditingController();

  /// 红包文案
  final contentController = TextEditingController();

  final amountController2 = TextEditingController();
  final numberController2 = TextEditingController();
  final contentController2 = TextEditingController();

  RxString amountValue = RxString('¥ 0.00 元');
  RxString amountValue1 = RxString('¥ 0.00 元');

  final _repository = RedPacketRepository();
  final _mineRepository = MineRepository();

  bool hasPayPassword = false;

  bool get isBindMobile => AppUserInfo.instance.phone.isNotEmpty;

  void initGroupId(int value) {
    groupId = value;
  }

  @override
  void onInit() {
    super.onInit();
    getWalletInfo();
    amountController.addListener(() {
      final text = amountController.text;
      if (text.isEmpty) {
        amountValue.value = '¥ 0.00 元';
      } else {
        amountValue.value = '¥ ${num.parse(text)} 元';
      }
    });
    numberController2.addListener(() {
      final text = numberController2.text;
      if (text.isEmpty) {
        amountValue1.value = '¥ 0.00 元';
      } else {
        final value = int.parse(text);

        final amountText = amountController2.text;
        if (amountText.isEmpty) {
          amountValue1.value = '¥ 0.00 元';
        } else {
          final amountValue = num.parse(amountText);
          amountValue1.value = '¥ ${amountValue * value} 元';
        }
      }
    });
    amountController2.addListener(() {
      final text = amountController2.text;
      if (text.isEmpty) {
        amountValue1.value = '¥ 0.00 元';
      } else {
        final value = num.parse(text);

        final countText = numberController2.text;
        if (countText.isEmpty) {
          amountValue1.value = '¥ 0.00 元';
        } else {
          final countValue = int.parse(countText);
          amountValue1.value = '¥ ${countValue * value} 元';
        }
      }
    });
  }

  Future<void> getWalletInfo() async {
    await _mineRepository.getWalletInfo(
      callback: (value) {
        if (value.wallet.isNotEmpty) {
          hasPayPassword = value.hasePassWorld;
        }
      },
    );
  }

  Future<String> md5Password(
    String data,
  ) async {
    final content = const Utf8Encoder().convert(data);
    final digest = md5.convert(content);
    return digest.toString();
  }

  Future<void> sendPrivateRedPacket(
    BuildContext context,
    int userId, {
    String? nickname,
  }) async {
    final amountText = amountController.text;
    if (amountText.isEmpty) {
      showToast('请输入红包金额');
      return;
    }
    if (num.parse(amountText) > 5000) {
      showToast('红包金额不得超过5000');
      return;
    }
    final description = contentController.text;
    if (isBindMobile) {
      PayPasswordDialog.show(
        context,
        amountText,
        onResult: (value) async {
          final redPacketAmount = double.parse(amountController.text) * 100;
          final req = RedPacketHandOutReq();
          req.aimId = Int64(userId);
          req.grantUserId = Int64(AppUserInfo().imId);
          req.createCount = 1;
          req.createValue = Int64(redPacketAmount.toInt());
          req.description = description.isEmpty ? '恭喜发财，大吉大利' : description;
          req.grantScene = GrantScene.PrivateChat;
          req.walletPasswd = await md5Password(value);
          req.aimName = nickname ?? '';

          await _repository.sendRedPacket(
            req,
            callback: (rsp) {
              Get.back();
            },
          );
        },
      );
      // final redPacketAmount = int.parse(amountController.text);
      // final req = RedPacketHandOutReq();
      // req.aimId = Int64(userId);
      // req.grantUserId = Int64(AppUserInfo().imId);
      // req.createCount = 1;
      // req.createValue = Int64(redPacketAmount);
      // req.description = '恭喜发财，大吉大利';
      // req.grantScene = GrantScene.PrivateChat;
      // await _repository.sendRedPacket(
      //   req,
      //   callback: (rsp) {
      //     Get.back();
      //   },
      // );
    } else {
      DialogManager.showBindMobileDialog(
        context,
        onConfirm: () {
          Get.to(const EditPasswordPage(type: 2));
        },
      );
    }
    // final message = await IMClient.sendRedPacketMessage(userId, req);
    // Get.back(result: message);
  }

  Future<void> sendGroupLuckyRedPacket(
    BuildContext context, {
    String? groupName,
  }) async {
    final amountText = amountController.text;
    if (amountText.isEmpty) {
      showToast('请输入红包金额');
      return;
    }
    if (num.parse(amountText) > 5000) {
      showToast('红包金额不得超过5000');
      return;
    }
    if (numberController.text.isEmpty) {
      showToast('请输入红包个数');
      return;
    }
    final description = contentController.text;
    if (isBindMobile) {
      PayPasswordDialog.show(
        context,
        amountText,
        onResult: (value) async {
          final redPacketAmount = double.parse(amountController.text) * 100;
          final redPacketCount = int.parse(numberController.text);
          final req = RedPacketHandOutReq();
          req.aimId = Int64(groupId);
          req.grantUserId = Int64(AppUserInfo().imId);
          req.createCount = redPacketCount;
          req.createValue = Int64(redPacketAmount.toInt());
          req.description = description.isEmpty ? '恭喜发财，大吉大利' : description;
          req.grantScene = GrantScene.GroupChat;
          req.groupRedPacketType = GroupRedPacketType.Lucky;
          req.walletPasswd = await md5Password(value);
          req.aimName = groupName ?? '';

          await _repository.sendRedPacket(
            req,
            callback: (rsp) {
              Get.back();
            },
          );
        },
      );
    } else {
      DialogManager.showBindMobileDialog(
        context,
        onConfirm: () {
          Get.to(const EditPasswordPage(type: 2));
        },
      );
    }
    // final message = await IMClient.sendRedPacketMessage(
    //   groupId,
    //   req,
    //   groupId: Int64(groupId),
    //   conversationType: CHAT_TYPE.GROUP,
    // );
    // Get.back(result: message);
  }

  Future<void> sendGroupAverageRedPacket(
    BuildContext context, {
    String? groupName,
  }) async {
    if (numberController2.text.isEmpty) {
      showToast('请输入红包个数');
      return;
    }
    final amountText = amountController2.text;
    if (amountText.isEmpty) {
      showToast('请输入红包金额');
      return;
    }
    final count = int.parse(numberController2.text);
    final amount = num.parse(amountText);
    final redPacketAmountText = '${count * amount}';
    final description = contentController2.text;
    if (isBindMobile) {
      PayPasswordDialog.show(
        context,
        redPacketAmountText,
        onResult: (value) async {
          final redPacketAmount = double.parse(amountController2.text) * 100;
          final redPacketCount = int.parse(numberController2.text);
          final req = RedPacketHandOutReq();
          req.aimId = Int64(groupId);
          req.grantUserId = Int64(AppUserInfo().imId);
          req.createCount = redPacketCount;
          req.createValue = Int64(redPacketAmount.toInt());
          req.description = description.isEmpty ? '恭喜发财，大吉大利' : description;
          req.grantScene = GrantScene.GroupChat;
          req.groupRedPacketType = GroupRedPacketType.Average;
          req.walletPasswd = await md5Password(value);
          req.aimName = groupName ?? '';

          await _repository.sendRedPacket(
            req,
            callback: (rsp) {
              Get.back();
            },
          );
        },
      );
    } else {
      DialogManager.showBindMobileDialog(
        context,
        onConfirm: () {
          Get.to(const EditPasswordPage(type: 2));
        },
      );
    }
    // final message = await IMClient.sendRedPacketMessage(
    //   groupId,
    //   req,
    //   groupId: Int64(groupId),
    //   conversationType: CHAT_TYPE.GROUP,
    // );
    // Get.back(result: message);
  }

  Future<void> setPayPassword(
    String payPassword, {
    Function()? callback,
  }) async {
    await _repository.setPayPassword(
      payPassword,
      callback: callback,
    );
  }
}
