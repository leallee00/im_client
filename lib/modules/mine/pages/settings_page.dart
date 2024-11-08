import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oktoast/oktoast.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:quliao/config/config.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/db/database.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/global/controller/unread_message_controller.dart';
import 'package:quliao/global/models/font_size_model.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/modules/mine/pages/logout/logout_page.dart';
import 'package:quliao/modules/web/webview_page.dart';
import 'package:quliao/mywedgits/badger/badger.dart';
import 'package:quliao/pages/auth/sign_in_screen.dart';
import 'package:quliao/pages/sugget/gripesugget_list.dart';
import 'package:quliao/utils/storage/index.dart';
import 'package:quliao/widgets/app_bar.dart';
import 'package:quliao/widgets/dialog/manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../widgets/custom_bottom_sheet.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<StatefulWidget> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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
    setState(() {
      _packageInfo = info;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text('设置'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListTile(
            title: const Text('应用名称'),
            trailing: Text(_packageInfo.appName),
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
            title: const Text('应用版本号'),
            trailing: Text(_packageInfo.version),
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
          // Obx(
          //   () {
          //     final value = GlobalController.to.chatFontSize.value;
          //     return ListTile(
          //       title: const Text('聊天字体大小'),
          //       trailing: Text(value.value),
          //       contentPadding: EdgeInsets.symmetric(
          //         vertical: Dimens.gap_dp2,
          //         horizontal: Dimens.gap_dp20,
          //       ),
          //       onTap: () async {
          //         final result = await CustomBottomSheet.showPicker<String>(
          //           context: context,
          //           items: GlobalController.to.fontSizeList
          //               .map((e) => e.value)
          //               .toList(),
          //           title: '修改字体大小',
          //           selectedIndex:
          //               GlobalController.to.fontSizeList.indexOf(value),
          //           builder: (value) => Text(value),
          //         );
          //         final fontSizeModel =
          //             GlobalController.to.fontSizeList.firstWhere(
          //           (element) => element.value == result,
          //         );
          //         GlobalController.to.chatFontSize.value = fontSizeModel;
          //         Storage.instance.setInt(
          //           StorageKey.fontSizeType,
          //           fontSizeModel.type,
          //         );
          //       },
          //     );
          //   },
          // ),
          Container(
            width: double.infinity,
            height: Dimens.gap_dp1 / 2,
            color: Theme.of(context).dividerColor,
            margin: EdgeInsets.only(left: Dimens.gap_dp20),
          ),
          ListTile(
            title: const Text('隐私协议'),
            contentPadding: EdgeInsets.symmetric(
              vertical: Dimens.gap_dp2,
              horizontal: Dimens.gap_dp20,
            ),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    return const WebViewPage(
                      title: '隐私协议',
                      url: Config.privacyAgreement,
                    );
                  },
                ),
              );
            },
          ),
          Container(
            width: double.infinity,
            height: Dimens.gap_dp1 / 2,
            color: Theme.of(context).dividerColor,
            margin: EdgeInsets.only(left: Dimens.gap_dp20),
          ),
          ListTile(
            title: const Text('用户协议'),
            contentPadding: EdgeInsets.symmetric(
              vertical: Dimens.gap_dp2,
              horizontal: Dimens.gap_dp20,
            ),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    return const WebViewPage(
                      title: '用户协议',
                      url: Config.userAgreement,
                    );
                  },
                ),
              );
            },
          ),
          Container(
            height: Dimens.gap_dp10,
            color: const Color(0xFFF7F7F7),
          ),
          ListTile(
            leading: const Icon(
              Icons.cleaning_services_rounded,
              color: Colors.orangeAccent,
            ),
            title: Text(
              '清理缓存',
              style: TextStyle(
                color: Colors.blue,
                fontSize: Dimens.font_sp14,
              ),
            ),
            onTap: () {
              DialogManager.showClearCacheDialog(
                context,
                onConfirm: () async {
                  showToast('清理数据...');
                  final prefs = await SharedPreferences.getInstance();
                  prefs.clear();
                  AppUserInfo.instance.saveToSp();
                  AppDatabase().objectBox;
                  GlobalController.to.chatFontSize.value = FontSizeModel();
                  resetDb().then((value) {
                    showToast('清理完成');
                    eventBus.fire(ReloadChatListData());
                    UnReadMessageController.to.clearUnReadMsgCount(
                      type: ENMsgCountType.totalMsg,
                    );
                  });
                },
              );
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
              Icons.report,
              color: Colors.orangeAccent,
            ),
            title: Text(
              '投诉建议',
              style: TextStyle(
                color: Colors.blue,
                fontSize: Dimens.font_sp14,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(
                context,
                ComplaintSuggetPage.name,
              );
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
          // Container(
          //   width: double.infinity,
          //   height: Dimens.gap_dp1 / 2,
          //   color: Theme.of(context).dividerColor,
          //   margin: EdgeInsets.only(left: Dimens.gap_dp20),
          // ),
          // ListTile(
          //   leading: const Icon(
          //     Icons.exit_to_app,
          //     color: Colors.orangeAccent,
          //   ),
          //   title: Text(
          //     '注销',
          //     style: TextStyle(
          //       color: Colors.blue,
          //       fontSize: Dimens.font_sp14,
          //     ),
          //   ),
          //   onTap: () {
          //     Navigator.of(context).push(
          //       MaterialPageRoute(
          //         builder: (_) {
          //           return const LogOutPage();
          //         },
          //       ),
          //     );
          //   },
          //   contentPadding: EdgeInsets.symmetric(
          //     vertical: Dimens.gap_dp2,
          //     horizontal: Dimens.gap_dp20,
          //   ),
          // ),
        ],
      ),
    );
  }
}
