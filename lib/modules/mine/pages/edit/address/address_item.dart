import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/modules/mine/pages/edit/address/address_controller.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';

class AddressItem extends StatelessWidget {
  const AddressItem({
    super.key,
    required this.data,
    this.onTap,
    this.onLongPress,
  });

  final UserAddress data;
  final Function()? onTap;
  final Function()? onLongPress;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        onLongPress: onLongPress,
        child: Container(
          height: Dimens.gap_dp64,
          padding: EdgeInsets.only(
            left: Dimens.gap_dp16,
            right: Dimens.gap_dp6,
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '${data.contacts} ${data.phoneCode}',
                      style: TextStyle(
                        fontSize: Dimens.font_sp14,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                    Text(
                      '${data.area} ${data.detailAddress}',
                      style: TextStyle(
                        fontSize: Dimens.font_sp12,
                        color: Theme.of(context)
                            .colorScheme
                            .onBackground
                            .withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  AddressController.to.copyAddress(data);
                },
                child: Text(
                  '复制',
                  style: TextStyle(
                    fontSize: Dimens.font_sp1 * 13,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
