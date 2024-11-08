import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/widgets/rh_extended_image.dart';

class GroupBackgroundItem extends StatelessWidget {
  const GroupBackgroundItem({
    super.key,
    required this.data,
    this.onDelete,
  });

  final BackgroundImageInfo data;
  final Function()? onDelete;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: Dimens.gap_dp10,
              right: Dimens.gap_dp10,
            ),
            child: SizedBox(
              width: Dimens.gap_dp10 * 10,
              height: Dimens.gap_dp10 * 10,
              child: RHExtendedImage.network(
                data.imageUrl,
                borderRadius: BorderRadius.circular(
                  Dimens.gap_dp6,
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: GestureDetector(
              onTap: () {
                onDelete?.call();
              },
              child: Padding(
                padding: EdgeInsets.all(Dimens.gap_dp2),
                child: Icon(
                  Icons.remove_circle_outline,
                  size: Dimens.gap_dp20,
                  color: Colors.redAccent,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
