import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/themes/theme.dart';

class ClickItem extends StatelessWidget {
  const ClickItem({
    super.key,
    required this.title,
    this.height,
    this.trailing,
    this.onTap,
    this.showDivider = true,
  });

  final String title;
  final double? height;
  final Widget? trailing;
  final bool showDivider;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: height ?? Dimens.gap_dp60,
            padding: EdgeInsets.symmetric(
              horizontal: Dimens.gap_dp16,
            ),
            child: Stack(
              children: [
                Align(
                  child: Row(
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      Expanded(child: Gaps.empty),
                      if (null != trailing) trailing!,
                      if (null != onTap) Gaps.hGap8,
                      if (null != onTap)
                        Icon(
                          Icons.chevron_right,
                          color: Theme.of(context)
                              .colorScheme
                              .divider
                              .withOpacity(0.5),
                        ),
                    ],
                  ),
                ),
                if (showDivider)
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      height: Dimens.gap_dp1 / 2,
                      color: Theme.of(context).dividerColor,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
