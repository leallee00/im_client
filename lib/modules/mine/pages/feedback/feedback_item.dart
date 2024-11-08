import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/pages/sugget/gripesugget_data.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';

class FeedbackItem extends StatelessWidget {
  const FeedbackItem({
    super.key,
    required this.data,
  });

  final Suggest data;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.all(
          Radius.circular(Dimens.gap_dp4),
        ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow,
            offset: Offset(0, Dimens.gap_dp6),
            blurRadius: Dimens.gap_dp6,
            spreadRadius: -Dimens.gap_dp6,
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(
        horizontal: Dimens.gap_dp16,
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: Dimens.gap_dp4,
              ),
              decoration: BoxDecoration(
                color: data.type == 1
                    ? Theme.of(context).colorScheme.primary
                    : Colors.redAccent,
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(Dimens.gap_dp10),
                ).copyWith(
                  topLeft: Radius.circular(Dimens.gap_dp4),
                ),
              ),
              child: Text(
                data.type == 1 ? '建议' : '投诉',
                style: TextStyle(
                  fontSize: Dimens.font_sp11,
                  color: Theme.of(context).colorScheme.surface,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Gaps.vGap10,
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: Dimens.gap_dp12,
                ).copyWith(top: Dimens.gap_dp16),
                child: Text(
                  data.suggest,
                  style: TextStyle(
                    fontSize: Dimens.font_sp14,
                    height: 1.5,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Row(
                children: [
                  Gaps.hGap12,
                  Icon(
                    Icons.comment,
                    color: Theme.of(context)
                        .colorScheme
                        .onBackground
                        .withOpacity(0.6),
                    size: Dimens.gap_dp16,
                  ),
                  Gaps.hGap4,
                  Text(
                    '${data.replyCount}',
                    style: TextStyle(
                      height: 1.5,
                      fontSize: Dimens.font_sp12,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                  Expanded(child: Gaps.empty),
                  Container(
                    margin: EdgeInsets.all(Dimens.gap_dp12),
                    child: Text(
                      timestampToDate(
                        data.createdAt.toString(),
                      ),
                      style: TextStyle(
                        height: 1.5,
                        fontSize: Dimens.font_sp12,
                        color: Theme.of(context)
                            .colorScheme
                            .onBackground
                            .withOpacity(0.6),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
