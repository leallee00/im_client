import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';

class DropSendFile extends StatelessWidget {
  const DropSendFile({
    super.key,
    this.name,
  });

  final String? name;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Opacity(
            opacity: 0.85,
            child: Container(
              color: Theme.of(context).colorScheme.surface,
              padding: EdgeInsets.all(Dimens.gap_dp40),
              child: DottedBorder(
                borderType: BorderType.RRect,
                radius: Radius.circular(Dimens.gap_dp20),
                color: Theme.of(context).colorScheme.primary,
                dashPattern: const [6, 3],
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.file_copy_outlined,
                          size: 60,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Text(
                          '发送给${name ?? '对方'}',
                          style: Theme.of(context).textTheme.titleMedium,
                        )
                      ],
                    ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
