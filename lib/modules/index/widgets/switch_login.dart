import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/global/enum/login_type.dart';

class SwitchLoginButton extends StatelessWidget {
  const SwitchLoginButton({
    super.key,
    required this.type,
    this.checked = false,
    this.onTap,
    this.value,
  });

  final LoginType type;
  final bool checked;
  final Function()? onTap;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: checked
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
              value ?? type.value(),
              style: TextStyle(
                fontSize: Dimens.font_sp12,
                color: checked
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
