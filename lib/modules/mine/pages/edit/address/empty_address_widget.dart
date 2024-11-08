import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';

class EmptyAddressWidget extends StatelessWidget {
  const EmptyAddressWidget({
    super.key,
    this.onTap,
  });

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: Dimens.gap_dp10 * 20,
        ),
        Text(
          '暂无地址信息',
          style: TextStyle(
            fontSize: Dimens.font_sp14,
            color: Theme.of(context).colorScheme.onBackground.withOpacity(0.6),
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimens.gap_dp10,
              vertical: Dimens.gap_dp6,
            ),
            child: Text(
              '添加地址',
              style: TextStyle(
                fontSize: Dimens.font_sp16,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
