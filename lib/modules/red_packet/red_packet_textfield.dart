import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/widgets/input.dart';

class RedPacketTextField extends StatelessWidget {
  const RedPacketTextField({
    super.key,
    required this.controller,
    this.hint,
    this.keyboardType,
    this.inputFormatters,
  });

  final TextEditingController controller;
  final String? hint;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimens.gap_dp44,
      margin: EdgeInsets.symmetric(
        horizontal: Dimens.gap_dp16,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.gap_dp10,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(
          Dimens.gap_dp10,
        ),
        border: Border.all(
          color: const Color(0xFFDCECFF),
          width: Dimens.gap_dp1 / 2,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: CustomInputNormal(
              controller: controller,
              hintText: hint,
              keyboardType: keyboardType,
              maxLines: 1,
              inputFormatters: inputFormatters,
              hintStyle: TextStyle(
                fontSize: Dimens.font_sp14,
                color: const Color(0xFFD9D9D9),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
