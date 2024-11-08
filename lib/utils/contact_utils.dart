import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';

class ContactUtils {
  static Widget getSusItem(
    BuildContext context,
    String tag, {
    double susHeight = 40,
  }) {
    if (tag == '★') {
      tag = '★ 星标朋友';
    }
    return Container(
      height: susHeight,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: Dimens.gap_dp16),
      color: const Color(0xFFF3F4F5),
      alignment: Alignment.centerLeft,
      child: Text(
        tag,
        softWrap: false,
        style: TextStyle(
          fontSize: Dimens.font_sp14,
          color: const Color(0xFF666666),
        ),
      ),
    );
  }
}
