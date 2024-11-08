import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';

class VerifyCodeWidget extends StatelessWidget {
  const VerifyCodeWidget({
    super.key,
    required this.text,
    this.enabled = true,
    this.onTap,
  });

  final String text;
  final bool enabled;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: enabled
            ? Theme.of(context).colorScheme.primary
            : const Color(0x19000000),
        borderRadius: BorderRadius.circular(
          Dimens.gap_dp16,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(
            Dimens.gap_dp16,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: Dimens.gap_dp6,
              horizontal: Dimens.gap_dp12,
            ),
            child: Text(
              text,
              style: TextStyle(
                fontSize: Dimens.font_sp12,
                color: enabled
                    ? Theme.of(context).colorScheme.surface
                    : Theme.of(context).colorScheme.onBackground,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
