import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/images.dart';
import 'package:quliao/widgets/rh_extended_image.dart';

class KeyboardItem extends StatefulWidget {
  final String text;
  final VoidCallback? callback;
  final double? keyHeight;

  const KeyboardItem({
    Key? key,
    this.callback,
    required this.text,
    this.keyHeight,
  }) : super(key: key);

  @override
  ButtonState createState() => ButtonState();
}

class ButtonState extends State<KeyboardItem> {
  double keyHeight = 60;
  late String text;

  @override
  void initState() {
    super.initState();
    text = widget.text;
  }

  @override
  Widget build(BuildContext context) {
    if (null != widget.keyHeight) {
      keyHeight = widget.keyHeight!;
    }
    return Container(
      color: const Color(0xFFFAFAFA),
      child: _renderChild(text),
    );
  }

  Widget _renderChild(String text) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    if (text == '') {
      return Container(
        height: keyHeight,
        width: screenWidth / 3,
        color: const Color(0xFFDDE1E5),
      );
    } else if (text == 'del') {
      return Container(
        color: const Color(0xFFDDE1E5),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: widget.callback,
            child: Container(
              height: keyHeight,
              width: screenWidth / 3,
              alignment: Alignment.center,
              child: RHExtendedImage.asset(
                Images.iconKeyboardDelete.assetName,
                width: Dimens.gap_dp26,
                height: Dimens.gap_dp26,
              ),
            ),
          ),
        ),
      );
    } else {
      return Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: widget.callback,
          child: Container(
            height: keyHeight,
            width: screenWidth / 3,
            alignment: Alignment.center,
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: Dimens.font_sp1 * 26,
                color: const Color(0xFF434343),
              ),
            ),
          ),
        ),
      );
    }
  }
}
