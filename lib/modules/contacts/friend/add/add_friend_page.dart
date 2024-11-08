import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/base/scan.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/pub/view.dart';
import 'package:quliao/widgets/app_bar.dart';

import 'add_friend_controller.dart';

/// 添加朋友
class AddFriendPage extends StatefulWidget {
  const AddFriendPage({super.key});

  @override
  State<StatefulWidget> createState() => _AddFriendPageState();
}

class _AddFriendPageState extends State<AddFriendPage> {
  final _controller = Get.put(AddFriendController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          '添加朋友',
          style: TextStyle(
            fontSize: Dimens.font_sp18,
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.crop_free,
              color: Colors.black54,
            ),
            splashRadius: Dimens.gap_dp20,
            onPressed: () async {
              var code = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ScanCodePage(title: '添加好友');
                  },
                ),
              );
              _controller.qrCallback(code);
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SearchFriendButton(context),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(Dimens.gap_dp16),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: Dimens.gap_dp10,
              vertical: Dimens.gap_dp2,
            ),
            child: Text(
              '我的账号：${AppUserInfo.instance.userName}',
              style: TextStyle(
                fontSize: Dimens.font_sp13,
                color: Theme.of(context).colorScheme.surface,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
