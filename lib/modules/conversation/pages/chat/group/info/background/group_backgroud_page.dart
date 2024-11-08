import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/config/images.dart';
import 'package:quliao/db/obox/model/group_model.dart';
import 'package:quliao/modules/conversation/pages/chat/group/info/background/group_background_item.dart';
import 'package:quliao/modules/mine/widgets/edit_avatar_bottom_dialog.dart';
import 'package:quliao/pages/chat_private/chat.dart';
import 'package:quliao/widgets/app_bar.dart';
import 'package:quliao/widgets/dialog/manager.dart';
import 'package:quliao/widgets/rh_extended_image.dart';

import 'group_background_controller.dart';

/// 群背景图片
class GroupBackgroudPage extends StatefulWidget {
  const GroupBackgroudPage({
    super.key,
    required this.groupInfo,
  });

  final GroupModel groupInfo;

  @override
  State<StatefulWidget> createState() => _GroupBackgroudPageState();
}

class _GroupBackgroudPageState extends State<GroupBackgroudPage> {
  final _controller = Get.put(GroupBackgroundController());

  @override
  void initState() {
    super.initState();
    _controller.init(widget.groupInfo);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      appBar: CustomAppBar(
        title: Text(
          '群背景',
          style: TextStyle(
            color: Theme.of(context).colorScheme.surface,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).colorScheme.surface,
          ),
        ),
        actionPadding: EdgeInsets.zero,
        backgroundColor: Theme.of(context).colorScheme.onBackground,
        actions: [
          IconButton(
            onPressed: () {
              EditAvatarBottomDialog.show(
                context,
                (value) {
                  /// value: 1-相册 2-拍照 3-保存到手机
                  if (value == 1) {
                    _controller.pickImage();
                  } else if (value == 2) {
                    _controller.takePhoto();
                  } else {
                    /// todo 保存到手机 v
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Center(
              child: Obx(
                () {
                  final backgroundImageUrl =
                      _controller.currentBackground.value;
                  if (null == backgroundImageUrl ||
                      backgroundImageUrl.isEmpty) {
                    return RHExtendedImage.asset(
                      Images.imgBgChat.assetName,
                      width: double.infinity,
                    );
                  }
                  return RHExtendedImage.network(
                    backgroundImageUrl,
                    width: double.infinity,
                  );
                },
              ),
            ),
          ),
          Obx(
            () {
              final dataList = _controller.dataList;
              if (dataList.isEmpty) {
                return Gaps.empty;
              }
              return _buildHistoryAvatarList(context);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildHistoryAvatarList(
    BuildContext context,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: Dimens.gap_dp16,
          ),
          child: Text(
            '历史背景',
            style: TextStyle(
              fontSize: Dimens.font_sp14,
              color: Theme.of(context).colorScheme.surface,
            ),
          ),
        ),
        SizedBox(
          height: Dimens.gap_dp10 * 12,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(
              horizontal: Dimens.gap_dp16,
            ),
            scrollDirection: Axis.horizontal,
            itemCount: _controller.dataList.length,
            itemBuilder: (context, index) {
              final data = _controller.dataList[index];
              return GestureDetector(
                onTap: () {
                  if (data.imageUrl != _controller.currentBackground.value) {
                    DialogManager.showSetChatBackgroundDialog(
                      context,
                      onConfirm: () {
                        _controller.setBackground(data);
                      },
                    );
                  }
                },
                child: GroupBackgroundItem(
                  data: data,
                  onDelete: () {
                    DialogManager.showDeleteGroupChatBackground(
                      context,
                      onConfirm: () {
                        _controller.deleteBackgroundImageInfo(context, data);
                      },
                    );
                  },
                ),
              );
            },
          ),
        ),
        Gaps.vGap10,
      ],
    );
  }
}
