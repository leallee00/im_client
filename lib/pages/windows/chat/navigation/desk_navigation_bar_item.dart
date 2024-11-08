import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/mywedgits/badger/badger.dart';
import 'package:quliao/pages/chat_index/msg_badger_widget.dart';

class DeskNavigationBarItem extends StatelessWidget {
  const DeskNavigationBarItem({
    super.key,
    required this.name,
    required this.icon,
    this.selected = false,
    this.onTap,
    this.type = ENMsgCountType.msgCount,
  });

  final String name;
  final IconData icon;
  final bool selected;
  final Function()? onTap;
  final ENMsgCountType type;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Container(
        width: Dimens.gap_dp1 * 54,
        height: Dimens.gap_dp1 * 54,
        decoration: selected ? BoxDecoration(
          color: const Color(0xFF232A3C),
          borderRadius: BorderRadius.circular(Dimens.gap_dp6),
        ) : null,
        child: Stack(
          children: [
            Align(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    size: Dimens.gap_dp18,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  Gaps.vGap4,
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: Dimens.font_sp10,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 2,
              right: 10,
              child: MsgBadgerWidget(
                type: type,
                key: Key(type.name),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
