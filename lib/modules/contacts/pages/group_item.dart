import 'dart:io';

import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/pages/chat_index/group_name_widget.dart';
import 'package:quliao/pages/chat_private/chat.dart';
import 'package:quliao/pages/home/home_page.dart';
import 'package:quliao/widgets/avatar.dart';

import '../../../pb/pb_msg/group/group.pb.dart';

class GroupItemWidget extends StatelessWidget {
  const GroupItemWidget({
    super.key,
    required this.data,
    this.isGroupTitle = false,
    this.callback,
  });

  final GroupInfo data;
  final bool isGroupTitle;
  final Function()? callback;

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
        ListTile(
          contentPadding: EdgeInsets.symmetric(
            vertical: Dimens.gap_dp4,
            horizontal: Dimens.gap_dp20,
          ),
          leading: UserAvatar(
            size: Dimens.gap_dp40,
            avatar: data.avatar,
            name: data.name,
          ),
          title: Row(
            children: [
              const Icon(
                Icons.group,
                size: 20,
                color: Colors.orange,
              ),
              Gaps.hGap4,
              Expanded(
                child: GroupNameWidget(
                  groupId: data.groupId.toInt(),
                  groupDetails: GroupDetailRsp(
                    name: data.name,
                    remark: data.remark,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          ),
          onTap: callback,
        ),
      ],
    );
  }
}
