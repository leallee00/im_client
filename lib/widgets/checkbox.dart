import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';

class XCheckBox extends StatelessWidget {
  const XCheckBox({
    super.key,
    required this.value,
    this.size = 22,
    this.padding = const EdgeInsets.all(6.0),
    this.unSelected,
    this.activeColor,
    this.disabledColor,
    this.onChanged,
  });

  final bool value;

  final double? size;
  final EdgeInsets padding;
  final Color? unSelected;
  final Color? activeColor;
  final Color? disabledColor;
  final Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    final color = onChanged == null
        ? disabledColor ?? Theme.of(context).disabledColor
        : value
            ? activeColor ?? Theme.of(context).colorScheme.primary
            : unSelected ?? Theme.of(context).unselectedWidgetColor;
    return Center(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            onChanged?.call(!value);
          },
          borderRadius: BorderRadius.circular(
            Dimens.gap_dp16,
          ),
          child: Padding(
            padding: padding,
            child: Icon(
              value ? Icons.check_box : Icons.check_box_outline_blank,
              size: size,
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
