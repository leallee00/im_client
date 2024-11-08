import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/modules/mine/widgets/edit_avatar_bottom_dialog.dart';
import 'package:quliao/widgets/app_bar.dart';
import 'package:quliao/widgets/avatar.dart';

import 'edit_userinfo_controller.dart';

class EditAvatarPage extends StatefulWidget {
  const EditAvatarPage({super.key});

  @override
  State<StatefulWidget> createState() => _EditAvatarPageState();
}

class _EditAvatarPageState extends State<EditAvatarPage> {
  final _controller = Get.put(EditUserInfoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).colorScheme.surface,
          ),
        ),
        title: Text(
          '修改头像',
          style: TextStyle(
            color: Theme.of(context).colorScheme.surface,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              EditAvatarBottomDialog.show(
                context,
                (value) {
                  /// value: 1-相册 2-拍照 3-保存到手机
                  if (value == 1) {
                    _controller.pickImage((p0) {
                      setState(() {});
                    });
                  } else if (value == 2) {
                    _controller.takePhoto((p0) {
                      setState(() {});
                    });
                  } else {
                    /// todo 保存到手机
                  }
                },
              );
            },
            splashRadius: Dimens.gap_dp20,
            icon: Icon(
              Icons.more_horiz,
              color: Theme.of(context).colorScheme.surface,
            ),
          ),
        ],
      ),
      body: Center(
        child: UserAvatar(
          avatar: AppUserInfo.instance.appAvatar,
          name: AppUserInfo().nickName,
          size: Dimens.gap_dp10 * 30,
        ),
      ),
    );
  }
}
