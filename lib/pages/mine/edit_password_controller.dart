import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditPasswordController extends GetxController {
  final RxBool accountPwdVisibility = RxBool(false);

  Future<void> hideKeyboard(
    BuildContext context,
  ) async {
    FocusScope.of(context).requestFocus(FocusNode());
  }
}
