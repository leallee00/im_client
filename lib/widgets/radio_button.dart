import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';

class CheckBoxButton extends StatelessWidget {
  const CheckBoxButton({
    this.disabled = false,
    Key? key,
    this.size,
    this.onlyShow = false,
    required this.isChecked,
    this.onChanged,
  }) : super(key: key);

  final bool isChecked;
  final Function(bool isChecked)? onChanged;
  final bool disabled;
  final bool onlyShow;
  final double? size;

  @override
  Widget build(BuildContext context) {
    BoxDecoration boxDecoration = !isChecked
        ? BoxDecoration(
            border: Border.all(
              color: const Color(0xFF888888),
            ),
            shape: BoxShape.circle,
            color: Colors.white,
          )
        : BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).colorScheme.primary,
          );

    if (disabled) {
      boxDecoration = const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey,
      );
    }
    return Center(
      child: onlyShow
          ? Container(
              height: size ?? Dimens.gap_dp22,
              width: size ?? Dimens.gap_dp22,
              decoration: boxDecoration,
              child: Icon(
                Icons.check,
                size: size != null ? (size! / 2) : 11,
                color: Colors.white,
              ),
            )
          : InkWell(
              borderRadius: BorderRadius.circular(Dimens.gap_dp12),
              onTap: () {
                if (onChanged != null && !disabled) {
                  onChanged!(!isChecked);
                }
              },
              child: Container(
                height: size ?? Dimens.gap_dp22,
                width: size ?? Dimens.gap_dp22,
                decoration: boxDecoration,
                child: Icon(
                  Icons.check,
                  size: size != null ? (size! / 2) : Dimens.gap_dp1 * 11,
                  color: Colors.white,
                ),
              ),
            ),
    );
  }
}
