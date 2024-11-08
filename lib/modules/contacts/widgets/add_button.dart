import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    super.key,
    this.onTap,
    this.padding,
  });

  final Function()? onTap;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: Radius.circular(Dimens.gap_dp8),
        dashPattern: const [6, 3],
        color: Colors.black12,
        padding: EdgeInsets.zero,
        child: GestureDetector(
          onTap: onTap,
          child: Center(
            child: Icon(
              Icons.add,
              size: Dimens.gap_dp30,
              color: Colors.black26,
            ),
          ),
        ),
      ),
    );
  }
}
