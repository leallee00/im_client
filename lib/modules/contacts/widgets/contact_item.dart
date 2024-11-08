import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/config/images.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/mywedgits/badger/badger.dart';
import 'package:quliao/pages/chat_index/msg_badger_widget.dart';
import 'package:quliao/pages/friend_list/contact_item.dart';
import 'package:quliao/widgets/rh_extended_image.dart';

class ContactItemWidget extends StatelessWidget {
  const ContactItemWidget({
    super.key,
    required this.data,
    this.isGroupTitle = false,
    this.callback,
    this.type = 0,
  });

  final FriendInfo data;
  final bool isGroupTitle;
  final Function()? callback;

  /// 1: 新的朋好友 2：群聊 3：标签
  final int type;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        isGroupTitle
            ? Container(
                height: Dimens.gap_dp34,
                padding: EdgeInsets.symmetric(
                  horizontal: Dimens.gap_dp16,
                ),
                decoration: const BoxDecoration(
                  color: Color(0xffebebeb),
                  border: Border(
                    top: BorderSide(color: Colors.grey, width: 0.2),
                    bottom: BorderSide(color: Colors.grey, width: 0.2),
                  ),
                ),
                alignment: Alignment.centerLeft,
                child: Text(
                  data.nameIndex ?? '',
                  style: TextStyle(
                    fontSize: Dimens.font_sp14,
                    color: const Color(0xff888888),
                  ),
                ),
              )
            : Gaps.empty,
        type == 0
            ? ContactItem(
                data: data,
                callback: callback,
              )
            : _buildFunctionButton(context),
      ],
    );
  }

  String _getTypeText() {
    if (type == 1) {
      return '新的朋友';
    } else if (type == 2) {
      return '群聊';
    } else {
      return '标签';
    }
  }

  String _icon(int type) {
    if (type == 1) {
      return Images.iconNewFriend.assetName;
    } else if (type == 2) {
      return Images.iconGroup.assetName;
    } else {
      return Images.iconTag.assetName;
    }
  }

  Widget _buildFunctionButton(
    BuildContext context,
  ) {
    return Material(
      color: Theme.of(context).colorScheme.surface,
      child: InkWell(
        onTap: callback,
        child: Container(
          height: Dimens.gap_dp60,
          padding: EdgeInsets.symmetric(
            horizontal: Dimens.gap_dp20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RHExtendedImage.asset(
                _icon(type),
                width: Dimens.gap_dp36,
                height: Dimens.gap_dp36,
              ),
              Gaps.hGap14,
              Text(
                _getTypeText(),
                style: TextStyle(
                  color: const Color(0xFF333333),
                  fontSize: Dimens.font_sp14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Expanded(child: Gaps.empty),
              type == 1
                  ? const MsgBadgerWidget(type: ENMsgCountType.friendList)
                  : Gaps.empty,
            ],
          ),
        ),
      ),
    );
  }
}
