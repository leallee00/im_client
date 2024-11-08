import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/config/images.dart';
import 'package:quliao/global/controller/unread_message_controller.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/mywedgits/badger/badger.dart';
import 'package:quliao/pages/chat_index/msg_badger_widget.dart';

import 'bottom_tab.dart';
import 'bottom_tab_model.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    super.key,
    this.onTap,
  });

  final Function(int)? onTap;

  @override
  State<StatefulWidget> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;
  final List<BottomTabModel> _tabs = [
    BottomTabModel(
      name: '消息',
      icon: Images.iconMsgSelected.assetName,
      unselectedIcon: Images.iconMsgUnSelected.assetName,
    ),
    BottomTabModel(
      name: '通讯录',
      icon: Images.iconContactSelected.assetName,
      unselectedIcon: Images.iconContactUnSelected.assetName,
    ),
    BottomTabModel(
      name: '我的',
      icon: Images.iconMineSelected.assetName,
      unselectedIcon: Images.iconMineUnSelected.assetName,
    ),
  ];

  // late MobileHomePageController controller;

  Color backgroundColor = Colors.white.withOpacity(0.75);

  @override
  void initState() {
    super.initState();
    // controller = MobileHomePageController.to;
    // ever(
    //   controller.currentPage,
    //   (callback) {
    //     if (mounted) {
    //       setState(() {});
    //     }
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    // final tabData = _tabs[controller.currentPage.value];
    return Container(
      height: Dimens.gap_dp60,
      color: Theme.of(context).colorScheme.surface,
      child: Row(
        children: _tabs.map((data) => _buildTab(data)).toList(),
      ),
    );
  }

  Widget _buildMsgWidget(BottomTabModel tabData) {
    if (tabData.name == '消息') {
      return Row(
        children: [
          const Expanded(child: SizedBox.shrink()),
          Container(
            margin: EdgeInsets.only(
              top: Dimens.gap_dp4,
              right: 42.w,
            ),
            child: Obx(
                  () {
                final count =
                    UnReadMessageController.to.rxUnReadMsgCount.value;
                return Offstage(
                  offstage: count == 0,
                  child: Container(
                    height: Dimens.gap_dp14,
                    constraints: BoxConstraints(
                      minWidth: Dimens.gap_dp14,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFE456A),
                      borderRadius:
                      BorderRadius.circular(7 * Dimens.gap_dp1),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: Dimens.gap_dp4,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      count > 99 ? '99+' : '$count',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onError,
                        fontSize: Dimens.font_sp10,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      );
    } else if (tabData.name == '通讯录') {
      return Container(
        width: Dimens.gap_dp14,
        margin: EdgeInsets.only(
          top: Dimens.gap_dp4,
          left: Dimens.gap_dp24,
        ),
        child: MsgBadgerWidget(
          key: Key('${AppUserInfo().imId}_friendList'),
          type: ENMsgCountType.friendList,
        ),
      );
    } else {
      return Gaps.empty;
    }
  }

  Widget _buildTab(BottomTabModel tabData) {
    return Expanded(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: BottomTab(
              data: tabData,
              selected: _currentIndex == _tabs.indexOf(tabData),
              onTap: (value) {
                final int newIndex = _tabs.indexOf(value);
                if (null != widget.onTap) {
                  widget.onTap!.call(newIndex);
                }
                setState(() {
                  _currentIndex = newIndex;
                });
              },
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: _buildMsgWidget(tabData),
          ),
        ],
      ),
    );
  }
}
