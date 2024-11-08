import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/modules/mine/pages/edit/edit_userinfo_controller.dart';
import 'package:quliao/widgets/app_bar.dart';
import 'package:quliao/widgets/button.dart';
import 'package:quliao/widgets/dialog/manager.dart';

import 'logout_confirm_page.dart';

class LogOutPage extends StatefulWidget {
  const LogOutPage({super.key});

  @override
  State<StatefulWidget> createState() => _LogOutPageState();
}

class _LogOutPageState extends State<LogOutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text('注销账号'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Dimens.gap_dp16,
        ).copyWith(top: Dimens.gap_dp24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '注销账号：${AppUserInfo.instance.userName}',
              style: TextStyle(
                fontSize: Dimens.font_sp14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Gaps.vGap20,
            Text(
              '账号注销是不可恢复的操作，请您仔细考虑，谨慎操作。操作前请您务必充分阅读以下内容：',
              style: TextStyle(
                height: 1.5,
                fontSize: Dimens.font_sp14,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            Gaps.vGap20,
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '1、',
                    style: TextStyle(
                      fontSize: Dimens.font_sp14,
                      color: Colors.redAccent,
                    ),
                  ),
                  TextSpan(
                    text: '账号出于安全状态',
                    style: TextStyle(
                      fontSize: Dimens.font_sp14,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                ],
              ),
            ),
            Gaps.vGap10,
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '2、',
                    style: TextStyle(
                      fontSize: Dimens.font_sp14,
                      color: Colors.redAccent,
                    ),
                  ),
                  TextSpan(
                    text:
                        '账号注销申请即放弃该账号在uc软件所涉及相关数据，包括该账号的权益、记录等一切内容，都将视为您自愿放弃。',
                    style: TextStyle(
                      height: 1.5,
                      fontSize: Dimens.font_sp14,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                ],
              ),
            ),
            Gaps.vGap10,
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '3、',
                    style: TextStyle(
                      fontSize: Dimens.font_sp14,
                      color: Colors.redAccent,
                    ),
                  ),
                  TextSpan(
                    text: '账号注销后，您将无法登录。',
                    style: TextStyle(
                      fontSize: Dimens.font_sp14,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                ],
              ),
            ),
            Gaps.vGap10,
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '4、',
                    style: TextStyle(
                      fontSize: Dimens.font_sp14,
                      color: Colors.redAccent,
                    ),
                  ),
                  TextSpan(
                    text: '已成功注销的账号，将无法进行找回。',
                    style: TextStyle(
                      fontSize: Dimens.font_sp14,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: Gaps.empty),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: Dimens.gap_dp16,
              ).copyWith(
                top: Dimens.gap_dp8,
                bottom: Dimens.gap_dp20,
              ),
              child: CustomButton(
                width: double.infinity,
                height: Dimens.gap_dp48,
                size: CustomButtonSize.large,
                shape: CustomButtonShape.stadium,
                backgroundColor: Colors.redAccent,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) {
                        return const LogoutConfirmPage();
                      },
                    ),
                  );
                  // DialogManager.showLogOutDialog(
                  //   context,
                  //   onConfirm: () {
                  //     EditUserInfoController.to.logOut(
                  //       () {},
                  //     );
                  //   },
                  // );
                },
                child: Text(
                  '注销账号',
                  style: TextStyle(
                    fontSize: Dimens.font_sp16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
