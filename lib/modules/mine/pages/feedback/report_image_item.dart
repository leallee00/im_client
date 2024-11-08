import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/widgets/rh_extended_image.dart';

class ReportImageItem extends StatelessWidget {
  const ReportImageItem({
    super.key,
    required this.url,
    this.onDelete,
  });

  final String url;
  final Function()? onDelete;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Dimens.gap_dp10 * 10,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(
              Dimens.gap_dp6,
            ),
            child: RHExtendedImage.network(
              url,
              width: double.infinity,
              height: double.infinity,
              borderRadius: BorderRadius.circular(
                Dimens.gap_dp8,
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 2,
            child: GestureDetector(
              onTap: onDelete,
              child: Icon(
                Icons.remove_circle,
                color: Colors.redAccent,
                size: Dimens.gap_dp20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
