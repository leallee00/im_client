import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/pub/view.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:quliao/widgets/app_bar.dart';

class MyQRCode extends StatefulWidget {
  static const name = "MyQRCode";

  const MyQRCode({super.key});

  @override
  MyQRCodeState createState() => new MyQRCodeState();
}

class MyQRCodeState extends State<MyQRCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text('我的二维码'),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        margin: EdgeInsets.only(top: Dimens.gap_dp40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            QrImageView(
              data: jsonEncode(
                <String, dynamic>{
                  'type': 0,
                  'data': AppUserInfo.instance.imId,
                },
              ),
              size: 200,
            ),
            Text(
              "我的账号：${AppUserInfo.instance.userName}",
              style: TextStyle(
                fontSize: Dimens.font_sp14,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
