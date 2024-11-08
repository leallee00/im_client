import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/db/database.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/pages/auth/sign_in_screen.dart';
import 'package:quliao/pages/login/login_page.dart';
import 'package:quliao/pages/mine/myinfo.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/widgets/dialog/manager.dart';

import '../../pub/log.dart';
import 'edit_password_page.dart';

class Setup extends StatefulWidget {
  @override
  SetupState createState() => new SetupState();
}

class SetupState extends State<Setup> {
  PackageInfo _packageInfo = PackageInfo(
    appName: '未知',
    packageName: '未知',
    version: '未知',
    buildNumber: '未知',
    buildSignature: '未知',
    installerStore: '未知',
  );

  @override
  void initState() {
    super.initState();
    _initPackageInfo();
  }

  Future<void> _initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    log("info->$info");
    setState(() {
      _packageInfo = info;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "设置",
          style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        children: [
          ListTile(
            title: const Text('应用名称'),
            trailing: Text(_packageInfo.appName),
            contentPadding: EdgeInsets.symmetric(
              vertical: Dimens.gap_dp2,
              horizontal: Dimens.gap_dp20,
            ),
          ),
          // Container(
          //   width: double.infinity,
          //   height: Dimens.gap_dp1 / 2,
          //   color: Theme.of(context).dividerColor,
          //   margin: EdgeInsets.only(left: Dimens.gap_dp20),
          // ),
          // ListTile(
          //   title: const Text('包名称'),
          //   trailing: Text(_packageInfo.packageName),
          //   contentPadding: EdgeInsets.symmetric(
          //     vertical: Dimens.gap_dp2,
          //     horizontal: Dimens.gap_dp20,
          //   ),
          // ),
          Container(
            width: double.infinity,
            height: Dimens.gap_dp1 / 2,
            color: Theme.of(context).dividerColor,
            margin: EdgeInsets.only(left: Dimens.gap_dp20),
          ),
          ListTile(
            title: const Text('应用版本号'),
            trailing: Text(_packageInfo.version),
            contentPadding: EdgeInsets.symmetric(
              vertical: Dimens.gap_dp2,
              horizontal: Dimens.gap_dp20,
            ),
          ),

          Container(
            height: Dimens.gap_dp10,
            color: const Color(0xFFF7F7F7),
          ),
          ListTile(
            leading: const Icon(
              Icons.switch_account,
              color: Colors.orangeAccent,
            ),
            title: Text(
              '切换账号',
              style: TextStyle(
                color: Colors.blue,
                fontSize: Dimens.font_sp14,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushNamed(SignInScreen.name);
            },
            contentPadding: EdgeInsets.symmetric(
              vertical: Dimens.gap_dp2,
              horizontal: Dimens.gap_dp20,
            ),
          ),
          Container(
            width: double.infinity,
            height: Dimens.gap_dp1 / 2,
            color: Theme.of(context).dividerColor,
            margin: EdgeInsets.only(left: Dimens.gap_dp20),
          ),
          ListTile(
            leading: const Icon(
              Icons.exit_to_app,
              color: Colors.orangeAccent,
            ),
            title: Text(
              '退出登录',
              style: TextStyle(
                color: Colors.blue,
                fontSize: Dimens.font_sp14,
              ),
            ),
            onTap: () {
              DialogManager.showExitAppDialog(
                context,
                onConfirm: () {
                  AppDatabase().objectBox.close();
                  AppUserInfo.instance.reset();
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    SignInScreen.name,
                    (Route<dynamic> route) => false,
                  );
                },
              );
            },
            contentPadding: EdgeInsets.symmetric(
              vertical: Dimens.gap_dp2,
              horizontal: Dimens.gap_dp20,
            ),
          ),
        ],
      ),
    );
  }
}
