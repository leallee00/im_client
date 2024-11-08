import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/global/widgets/refresh_view.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/modules/contacts/friend/new/new_friend_controller.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/chat_private/flyer_chat/test_page.dart';
import 'package:quliao/pb/pb_msg/friend/friend.pbenum.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/themes/theme.dart';
import 'package:quliao/widgets/app_bar.dart';

import '../../../../pb/pb_msg/friend/friend.pb.dart';
import '../../../../pb/pb_pub/service.pbenum.dart';
import '../../../../widgets/avatar.dart';
import 'package:quliao/models/user/friendInfo.dart';

/// 新的朋友
class NewFriendPage extends StatefulWidget {
  const NewFriendPage({super.key});

  @override
  State<StatefulWidget> createState() => _NewFriendPageState();
}

class _NewFriendPageState extends State<NewFriendPage> {
  final _controller = Get.put(NewFriendController());

  Widget _optionButton(FriendApply finfo) {
    if (AppUserInfo.instance.imId == finfo.applyId) {
      /// 自己发出的申请
      switch (finfo.applyState) {
        case FRIEND_APPLY_STATE.Init:
          return TextButton(
            // color: Colors.green,
            child: Text(
              '发送好友申请',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: Dimens.font_sp14,
              ),
            ),
            onPressed: () {
              Client.instance.sendMsg(
                ApplyReq(),
                Int64(AppUserInfo.instance.imId),
                MakePBCommData(
                  aimId: Int64(finfo.friendId),
                  toService: Service.friend,
                ),
              );
              showToast('申请已发出，等待确认');
            },
          );
        case FRIEND_APPLY_STATE.Request: //0:发起,
          return TextButton(
            // color: Colors.green,
            child: Text(
              '请求已发送,请耐心等待',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: Dimens.font_sp14,
              ),
            ),
            onPressed: () {
              Client.instance.sendMsg(
                ApplyReq(),
                Int64(AppUserInfo.instance.imId),
                MakePBCommData(
                  aimId: Int64(finfo.friendId),
                  toService: Service.friend,
                ),
              );
              showToast('申请已再次发出，等待确认');
            },
          );
        case FRIEND_APPLY_STATE.Agree:
          return TextButton(
            onPressed: () async {
              GetFriendInfo(finfo.friendId).then(
                (value) {
                  return Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext ctx) {
                        return ChatPage(
                          finfo: value,
                        );
                      },
                    ),
                  );
                },
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '好友已接受您的申请',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontSize: Dimens.font_sp12,
                  ),
                ),
                Gaps.vGap4,
                Text(
                  '发起会话',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: Dimens.font_sp14,
                  ),
                ),
              ],
            ),
          );
        case FRIEND_APPLY_STATE.Reject: //2:拒绝,
          return Text(
            '对方已拒绝您的申请',
            style: TextStyle(
              color: Theme.of(context).colorScheme.error,
              fontSize: Dimens.font_sp14,
            ),
          );
          break;
        case FRIEND_APPLY_STATE.OverTime: //3:超时,
          return Text(
            '对方超时未操作',
            style: TextStyle(
              color: AppTheme.warning,
              fontSize: Dimens.font_sp14,
            ),
          );
          break;
      }
    } else {
      // 别人发起的
      switch (finfo.applyState) {
        case FRIEND_APPLY_STATE.Init:
        case FRIEND_APPLY_STATE.Request: //0:发起,
          return TextButton(
            // color: Colors.green,
            child: const Text(
              '通过验证',
              style: TextStyle(color: Colors.blue, fontSize: 14),
            ),
            onPressed: () {
              _controller.agree(finfo);
              // Client.instance.sendMsg(
              //   ApplyAnswerReq()..agree = true,
              //   Int64(AppUserInfo.instance.imId),
              //   MakePBCommData(
              //     aimId: Int64(finfo.friendId),
              //     toService: Service.friend,
              //   ),
              // );
              // showToast('已通过验证');
              // _controller.agree(finfo);
            },
          );
        case FRIEND_APPLY_STATE.Agree:
          return TextButton(
            onPressed: () async {
              GetFriendInfo(finfo.friendId).then(
                (value) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext ctx) {
                        return ChatPage(finfo: value);
                      },
                    ),
                  );
                },
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '您已接受好友申请',
                  style: TextStyle(
                    fontSize: Dimens.font_sp12,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
                Gaps.vGap4,
                Text(
                  '发起会话',
                  style: TextStyle(
                    fontSize: Dimens.font_sp14,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ); //Text("对方已通过");
        case FRIEND_APPLY_STATE.Reject: //2:拒绝,
          return Text(
            '您已拒绝好友申请',
            style: TextStyle(
              fontSize: Dimens.font_sp14,
              color: Theme.of(context).colorScheme.error,
            ),
          );
        case FRIEND_APPLY_STATE.OverTime: //3:超时,
          return Text(
            '您超时未操作',
            style: TextStyle(
              color: AppTheme.warning,
              fontSize: Dimens.font_sp14,
            ),
          );
      }
    }
    return const Text('unknown');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          '新的朋友',
          style: TextStyle(
            fontSize: Dimens.font_sp18,
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: GetBuilder<NewFriendController>(
              init: _controller,
              builder: (controller) {
                return RefreshView(
                  refreshController: controller.refreshController,
                  loadState: controller.loadState.value,
                  onRefresh: controller.onRefresh,
                  onLoading: controller.onLoad,
                  bodyBuilder: (context) {
                    return SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (controller.applications.isNotEmpty)
                            Container(
                              width: double.infinity,
                              height: Dimens.gap_dp46,
                              padding: EdgeInsets.symmetric(
                                horizontal: Dimens.gap_dp16,
                              ),
                              color: const Color(0xFFF4F4F4),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '三天内',
                                style: TextStyle(
                                  fontSize: Dimens.font_sp14,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground,
                                ),
                              ),
                            ),
                          if (controller.applications.isNotEmpty)
                            ListView.separated(
                              shrinkWrap: true,
                              padding: EdgeInsets.zero,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                final item =
                                    controller.applications[index].data;
                                if (null != item) {
                                  return ListTile(
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: Dimens.gap_dp12,
                                      horizontal: Dimens.gap_dp16,
                                    ),
                                    leading: UserAvatar(
                                      size: Dimens.gap_dp40,
                                      avatar: item.avatar,
                                      name: item.nick,
                                    ),
                                    title: Text(
                                      item.nick,
                                      style: TextStyle(
                                        fontSize: Dimens.font_sp16,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onBackground,
                                      ),
                                    ),
                                    subtitle: Text(
                                      item.applyMsg,
                                      style: TextStyle(
                                        fontSize: Dimens.font_sp12,
                                      ),
                                    ),
                                    trailing: Container(
                                      child: _optionButton(item),
                                    ),
                                    selectedColor:
                                        Theme.of(context).colorScheme.primary,
                                    splashColor: Colors.lightBlueAccent,
                                    selected: AppUserInfo.instance.imId !=
                                            item.applyId &&
                                        item.applyState ==
                                            FRIEND_APPLY_STATE.Request,
                                  );
                                } else {
                                  return Gaps.empty;
                                }
                              },
                              itemCount: controller.applications.length,
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return Container(
                                  height: 1 / 3,
                                  margin: EdgeInsets.symmetric(
                                    horizontal: Dimens.gap_dp16,
                                  ),
                                  color: Colors.grey.withOpacity(0.5),
                                );
                              },
                            ),
                          if (controller.applications1.isNotEmpty)
                            Container(
                              width: double.infinity,
                              height: Dimens.gap_dp46,
                              padding: EdgeInsets.symmetric(
                                horizontal: Dimens.gap_dp16,
                              ),
                              color: const Color(0xFFF4F4F4),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '三天之前',
                                style: TextStyle(
                                  fontSize: Dimens.font_sp14,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground,
                                ),
                              ),
                            ),
                          if (controller.applications1.isNotEmpty)
                            ListView.separated(
                              shrinkWrap: true,
                              padding: EdgeInsets.zero,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                final item =
                                    controller.applications1[index].data;
                                if (null != item) {
                                  return ListTile(
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: Dimens.gap_dp12,
                                      horizontal: Dimens.gap_dp16,
                                    ),
                                    leading: UserAvatar(
                                      size: Dimens.gap_dp40,
                                      avatar: item.avatar,
                                      name: item.nick,
                                    ),
                                    title: Text(
                                      item.nick,
                                      style: TextStyle(
                                        fontSize: Dimens.font_sp16,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onBackground,
                                      ),
                                    ),
                                    subtitle: Text(
                                      item.applyMsg,
                                      style: TextStyle(
                                        fontSize: Dimens.font_sp12,
                                      ),
                                    ),
                                    trailing: Container(
                                      child: _optionButton(item),
                                    ),
                                    selectedColor:
                                        Theme.of(context).colorScheme.primary,
                                    splashColor: Colors.lightBlueAccent,
                                    selected: AppUserInfo.instance.imId !=
                                            item.applyId &&
                                        item.applyState ==
                                            FRIEND_APPLY_STATE.Request,
                                  );
                                } else {
                                  return Gaps.empty;
                                }
                              },
                              itemCount: controller.applications1.length,
                              separatorBuilder: (
                                BuildContext context,
                                int index,
                              ) {
                                return Container(
                                  height: 1 / 3,
                                  margin: EdgeInsets.symmetric(
                                    horizontal: Dimens.gap_dp16,
                                  ),
                                  color: Colors.grey.withOpacity(0.5),
                                );
                              },
                            ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
