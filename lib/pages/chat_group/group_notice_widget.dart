import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/flutter_chat_ui/src/widgets/chat.dart';
import 'package:quliao/modules/conversation/pages/chat/group/info/notice/group_notice_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'controller/chat_group_controller.dart';

class ChatMarqueeGroupWidget extends StatelessWidget {
  const ChatMarqueeGroupWidget({
    Key? key,
    required this.groupId,
    required this.value,
    this.showGroupNotice = false,
    this.hasAdminRights = false,
  }) : super(key: key);

  final int groupId;
  final String value;
  final bool showGroupNotice;
  final bool hasAdminRights;

  @override
  Widget build(BuildContext context) {
    return !showGroupNotice
        ? Container()
        : Container(
            color: const Color(0xFFF7F7F7),
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () async {
                final ChatGroupController c =
                    ChatGroupController.to('$groupId');
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.setInt(
                    "notice${groupId}_${c.groupInfo.value.noticeVersion}",
                    c.groupInfo.value.noticeVersion);
                c.showGroupNotice.value = false;
                if (context.mounted) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return GroupNoticePage(
                          groupId: groupId,
                          notice: value,
                          hasAdminRights: hasAdminRights,
                        );
                      },
                    ),
                  );
                }
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                width: ScreenUtil().screenWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.w),
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.notifications_active,
                      color: Colors.orange,
                      size: 18.w,
                    ),
                    Gaps.hGap6,
                    Expanded(
                      child: Text(
                        // c.groupInfo.value.notice,
                        value,
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: Colors.black87,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Gaps.hGap6,
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black54,
                      size: 12.w,
                    ),
                    // GestureDetector(
                    //   behavior: HitTestBehavior.opaque,
                    //   onTap: () async {
                    //     final ChatGroupController c =
                    //         ChatGroupController.to('$groupId');
                    //     SharedPreferences prefs =
                    //         await SharedPreferences.getInstance();
                    //     prefs.setInt(
                    //         "notice${groupId}_${c.groupInfo.value.noticeVersion}",
                    //         c.groupInfo.value.noticeVersion);
                    //     c.showGroupNotice.value = false;
                    //   },
                    //   child: Container(
                    //       margin: const EdgeInsets.only(left: 10),
                    //       child: const Icon(Icons.close,
                    //           color: Color(0XFFf76513), size: 13)),
                    // ),
                  ],
                ),
              ),
            ),
          );
  }
}
