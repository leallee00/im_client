import 'dart:math';

import 'package:flutter/material.dart';

class PayPasswordField extends StatelessWidget {
  const PayPasswordField({
    super.key,
    required this.data,
    this.pwdLength = 0,
  });

  final String data;
  final int pwdLength;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _PayPasswordFieldPainter(data, pwdLength),
    );
  }
}

class _PayPasswordFieldPainter extends CustomPainter {
  _PayPasswordFieldPainter(this.data, this.pwdLength);

  String data;
  int pwdLength;

  @override
  void paint(Canvas canvas, Size size) {
    // 密码画笔
    Paint mPwdPaint = Paint();
    Paint mRectPaint = Paint();

    mPwdPaint.color = Colors.black;
    mRectPaint.color = const Color(0xff707070);

    RRect r = RRect.fromLTRBR(
      0.0,
      0.0,
      size.width,
      size.height,
      Radius.circular(size.height / 12),
    );

    mRectPaint.style = PaintingStyle.stroke;

    canvas.drawRRect(r, mRectPaint);

    var per = size.width / pwdLength;
    var offsetX = per;
    while (offsetX < size.width) {
      canvas.drawLine(
        Offset(offsetX, 0.0),
        Offset(offsetX, size.height),
        mRectPaint,
      );
      offsetX += per;
    }

    var half = per / 2;
    var radio = per / 8;

    mPwdPaint.style = PaintingStyle.fill;
    if (data.isNotEmpty) {
      for (int i = 0; i < data.length && i < 6; i++) {
        canvas.drawArc(
          Rect.fromLTRB(
            i * per + half - radio,
            size.height / 2 - radio,
            i * per + half + radio,
            size.height / 2 + radio,
          ),
          0.0,
          2 * pi,
          true,
          mPwdPaint,
        );
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
