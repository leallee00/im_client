import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAlertDialog {
  Future<T?> show<T>({Widget? child}) async {
    return await Get.dialog(Material(
      color: Colors.transparent,
      child: Center(
        child: Container(
          color: Colors.transparent,
          width: 390,
          height: 750,
          child: Center(child: child),
        ),
      ),
    ));
  }
}
