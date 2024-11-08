import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/widgets/app_bar.dart';
import 'package:quliao/widgets/button.dart';

import 'edit_userinfo_controller.dart';

class EditNicknamePage extends StatefulWidget {
  const EditNicknamePage({super.key});

  @override
  State<StatefulWidget> createState() => _EditNicknamePageState();
}

class _EditNicknamePageState extends State<EditNicknamePage> {
  final _controller = Get.put(EditUserInfoController());
  final _editController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _editController.text = AppUserInfo.instance.nickName;
  }

  Future<void> hideKeyboard(
    BuildContext context,
  ) async {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        hideKeyboard(context);
      },
      child: Scaffold(
        appBar: CustomAppBar(
          title: const Text('修改昵称'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: Dimens.gap_dp16,
              ).copyWith(top: Dimens.gap_dp20),
              child: Text(
                '请输入您要修改的昵称',
                style: TextStyle(
                  fontSize: Dimens.font_sp14,
                  color: Theme.of(context)
                      .colorScheme
                      .onBackground
                      .withOpacity(0.8),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: Dimens.gap_dp40,
              margin: EdgeInsets.symmetric(
                horizontal: Dimens.gap_dp16,
              ).copyWith(top: Dimens.gap_dp10),
              child: TextField(
                controller: _editController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: Dimens.gap_dp1,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(Dimens.gap_dp20),
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: Dimens.gap_dp12,
                  ).copyWith(
                    bottom: Dimens.gap_dp4,
                  ),
                  hintText: '',
                  hintStyle: TextStyle(
                    fontSize: Dimens.font_sp14,
                    color: const Color.fromRGBO(153, 153, 153, 1.0),
                  ),
                ),
                autofocus: true,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: Dimens.gap_dp36,
                vertical: Dimens.gap_dp24,
              ),
              child: CustomButton(
                width: double.infinity,
                height: Dimens.gap_dp46,
                size: CustomButtonSize.large,
                shape: CustomButtonShape.stadium,
                onPressed: () async {
                  final nickname = _editController.text.trim();
                  _controller.editUserNickname(context, nickname);
                },
                child: Text(
                  '确定',
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
