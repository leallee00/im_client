import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/mywedgits/badger/badger.dart';
import 'package:quliao/pages/windows/chat/navigation/desk_navigation_bar_item.dart';

class DeskNavigationBar extends StatefulWidget {
  const DeskNavigationBar({
    super.key,
    this.onTap,
  });

  final Function(int)? onTap;

  @override
  State<StatefulWidget> createState() => _DeskNavigationBarState();
}

class _DeskNavigationBarState extends State<DeskNavigationBar> {
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    eventBus.on<ReloadChatListData>().listen((event) {
      if (null != event.chatId) {
        setState(() {
          selectedIndex = 0;
        });
        if (null != widget.onTap) {
          widget.onTap!(0);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimens.gap_dp10 * 7,
      margin: EdgeInsets.symmetric(vertical: Dimens.gap_dp20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DeskNavigationBarItem(
            name: '消息',
            icon: Icons.message,
            selected: selectedIndex == 0,
            onTap: () {
              setState(() {
                selectedIndex = 0;
              });
              if (null != widget.onTap) {
                widget.onTap!(0);
              }
            },
            type: ENMsgCountType.totalMsg,
          ),
          Gaps.vGap10,
          DeskNavigationBarItem(
            name: '通讯录',
            icon: Icons.contacts,
            selected: selectedIndex == 1,
            onTap: () {
              setState(() {
                selectedIndex = 1;
              });
              if (null != widget.onTap) {
                widget.onTap!(1);
              }
            },
            type: ENMsgCountType.friendList,
          ),
        ],
      ),
    );
  }
}
