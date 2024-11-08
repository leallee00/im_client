import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/config/size_extension.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/models/user/userinfo.dart';
import 'package:quliao/pages/chat_index/conversation_avatar.dart';
import 'package:quliao/pages/chat_index/user_nickname_widget.dart';
import 'package:quliao/widgets/avatar.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({
    super.key,
    required this.data,
    this.callback,
  });

  final FriendInfo data;
  final VoidCallback? callback;

  String get avatarUrl => data.userInfo.avatar;

  String get name => data.remark.isEmpty ? data.userInfo.nickName : data.remark;

  String get signName =>
      data.userInfo.signName.isEmpty ? '暂无签名' : data.userInfo.signName;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: null == callback ? Colors.transparent : Theme.of(context).colorScheme.surface,
      child: InkWell(
        onTap: callback,
        child: Container(
          height: Dimens.gap_dp60,
          padding: EdgeInsets.symmetric(
            horizontal: Dimens.gap_dp20,
          ),
          child: Row(
            children: [
              UserAvatar(
                size: Dimens.gap_dp40,
                avatar: avatarUrl,
                name: data.userInfo.nickName,
              ),
              Gaps.hGap14,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UserNicknameWidget(
                    friendInfo: data,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: const Color(0xFF333333),
                      fontSize: Dimens.font_sp14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  if (GlobalController.to.systemConfig.value?.hideUserSign == false)
                  Padding(
                    padding: EdgeInsets.only(top: 4.h),
                    child: Text(
                      signName,
                      softWrap: false,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: const Color(0xFFBBBBBB),
                        fontSize: Dimens.font_sp12,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
