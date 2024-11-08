import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/images.dart';

class Empty extends StatelessWidget {
  const Empty({
    super.key,
    this.text,
  });

  final String? text;

  @override
  Widget build(BuildContext context) {
    final double imgWidth = 240 * Dimens.gap_dp1;
    final double imgHeight = 153 * Dimens.gap_dp1;

    return Container(
      width: double.infinity,
      color: Theme.of(context).colorScheme.surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(
            image: Images.imgEmpty,
            width: imgWidth,
            height: imgHeight,
            fit: BoxFit.contain,
          ),
          Container(
            margin: EdgeInsets.only(top: Dimens.gap_dp24),
            child: Text(
              text ?? '加载已完毕',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomEmpty extends StatelessWidget {
  final Widget? icon;
  final Widget? title;
  final Widget? label;
  final Color? color;

  const CustomEmpty({
    Key? key,
    this.icon,
    this.title,
    this.label, this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = this.color ?? Theme.of(context).colorScheme.primary;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (icon != null)
          IconTheme(
            data: IconThemeData(color: Colors.white, size: Dimens.gap_dp50),
            child: Container(
              height: Dimens.gap_dp10 * 18,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(color, BlendMode.srcATop),
                  image: const AssetImage('assets/empty.png'),
                  fit: BoxFit.contain,
                ),
              ),
              child: Container(
                width: Dimens.gap_dp80,
                height: Dimens.gap_dp80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(Dimens.gap_dp28)),
                  // gradient: LinearGradient(
                  //   begin: Alignment.topLeft,
                  //   end: Alignment.bottomRight,
                  //   colors: [
                  //     Color.alphaBlend(color.withOpacity(0.6), Colors.white),
                  //     color,
                  //   ],
                  // ),
                ),
                child: icon,
              ),
            ),
          ),
        if (title != null)
          Padding(
            padding: EdgeInsets.only(top: Dimens.gap_dp20),
            child: DefaultTextStyle.merge(
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: Dimens.font_sp16,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).colorScheme.primary,
              ),
              child: title!,
            ),
          ),
        if (label != null)
          Padding(
            padding: EdgeInsets.only(top: Dimens.gap_dp20),
            child: DefaultTextStyle.merge(
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: Dimens.font_sp18),
              child: label!,
            ),
          ),
      ],
    );
  }
}
