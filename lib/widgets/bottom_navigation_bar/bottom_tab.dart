import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/widgets/rh_extended_image.dart';

import 'bottom_tab_model.dart';

class BottomTab extends StatelessWidget {
  const BottomTab({
    super.key,
    required this.data,
    this.selected = false,
    this.width,
    this.height,
    this.onTap,
  });

  final BottomTabModel data;
  final bool? selected;
  final double? width;
  final double? height;
  final Function(BottomTabModel)? onTap;

  @override
  Widget build(BuildContext context) {
    final imageSize = Dimens.gap_dp24;
    return TextButton(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.transparent),
      ),
      onPressed: () => onTap?.call(data),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: imageSize,
            height: imageSize,
            child: Stack(
              children: [
                RHExtendedImage.asset(
                  selected ?? false ? data.unselectedIcon : data.icon,
                  width: imageSize,
                  height: imageSize,
                ),
                RHExtendedImage.asset(
                  selected ?? false ? data.icon : data.unselectedIcon,
                  width: imageSize,
                  height: imageSize,
                ),
              ],
            ),
          ),
          Gaps.vGap4,
          Text(
            data.name,
            style: TextStyle(
              color: selected ?? false
                  ? const Color(0xFF069AFF)
                  : const Color(0xFF666666),
              fontSize: Dimens.font_sp12,
            ),
          ),
        ],
      ),
    );
  }
}
