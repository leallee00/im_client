import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/pages/friend/search.dart';
import 'package:quliao/pages/windows/comm_dialog.dart';

Widget SearchFriendButton(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      // border: Border.all(color: Colors.white, width: 0.5),
      color: Colors.black12,
      borderRadius: BorderRadius.circular(Dimens.gap_dp22),
    ),

    ///距离顶部
    margin: EdgeInsets.symmetric(
      vertical: Dimens.gap_dp14,
      horizontal: Dimens.gap_dp16,
    ),

    child: Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          if (Platform.isWindows || Platform.isMacOS) {
            MyAlertDialog().show(child: SearchFriend());
            return;
          }
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) {
                return SearchFriend();
              },
            ),
          );
        },
        borderRadius: BorderRadius.circular(Dimens.gap_dp22),
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: Dimens.gap_dp10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.search,
                color: Colors.black54,
                size: Dimens.gap_dp20,
              ),
              Gaps.hGap4,
              Text(
                GlobalController.to.systemConfig.value?.emailLogin == true
                    ? '账号/手机号/邮箱'
                    : '账号/手机',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: Dimens.font_sp14,
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}

// Widget TagSuperComment(){
//   return Chip()
// }

Widget officialTag() {
  return Container(
    padding: const EdgeInsets.only(top: 2, bottom: 2, left: 4, right: 4),
    decoration: BoxDecoration(
      color: Colors.orange,
      borderRadius: BorderRadius.circular((3.0)),
    ),
    child: Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          "V ",
          style: TextStyle(color: Colors.yellow, fontSize: 12),
        ),
        Text(
          "官方",
          style: TextStyle(color: Colors.white, fontSize: 12),
        )
      ],
    ),
  );
}
