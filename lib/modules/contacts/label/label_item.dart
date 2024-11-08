import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';

class LabelItem extends StatelessWidget {
  const LabelItem({
    super.key,
    required this.data,
    this.onTap,
  });

  final CategorizeTag data;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.all(
          Radius.circular(Dimens.gap_dp6),
        ),
        border: Border.all(
          color: Theme.of(context).colorScheme.outline,
          width: Dimens.gap_dp1,
        ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow,
            offset: Offset(0, Dimens.gap_dp20),
            blurRadius: Dimens.gap_dp10,
            spreadRadius: -Dimens.gap_dp10,
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.gap_dp10,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: Dimens.gap_dp16,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: Dimens.gap_dp52,
            alignment: Alignment.centerLeft,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: data.tag,
                    style: TextStyle(
                      fontSize: Dimens.font_sp14,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                  TextSpan(
                    text: '（${data.memberCount}）',
                    style: TextStyle(
                      fontSize: Dimens.font_sp14,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
