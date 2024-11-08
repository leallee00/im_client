import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/widgets/loading.dart';

abstract class CustomToast {
  static void text(String text) {
    EasyLoading.instance
      ..maskType = EasyLoadingMaskType.clear
      ..userInteractions = true;
    EasyLoading.showToast(text);
  }

  static void success(String text) {
    EasyLoading.instance
      ..maskType = EasyLoadingMaskType.clear
      ..userInteractions = true;
    EasyLoading.showSuccess(text);
  }

  static void fail(String text) {
    EasyLoading.instance
      ..maskType = EasyLoadingMaskType.custom
      ..userInteractions = true;
    EasyLoading.showError(text);
  }

  static void loading() {
    LoadingDialog.show();
  }

  static void dismiss() => LoadingDialog.dismiss();
}

class CustomToastFail extends StatelessWidget {
  const CustomToastFail({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.close_rounded,
      color: Theme.of(context).colorScheme.error,
      size: Dimens.gap_dp60,
    );
  }
}

class CustomToastSuccess extends StatelessWidget {
  const CustomToastSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.check_rounded,
      color: const Color(0xFF23A757),
      size: Dimens.gap_dp60,
    );
  }
}
