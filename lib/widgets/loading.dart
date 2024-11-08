import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:quliao/config/dimens.dart';

class LoadingDialog extends StatelessWidget {
  const LoadingDialog({super.key});

  static Future<void> show() async {
    SmartDialog.showLoading(
      builder: (_) {
        return const LoadingDialog();
      },
    );
  }

  static Future<void> dismiss() async {
    SmartDialog.dismiss();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      decoration: BoxDecoration(
        color: const Color(0x80000000),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // loading animation
          CupertinoActivityIndicator(
            radius: Dimens.gap_dp12,
            color: Theme.of(context).colorScheme.surface,
          ),
        ],
      ),
    );
  }
}

class CustomLoadingIndicator extends StatefulWidget {
  const CustomLoadingIndicator({
    super.key,
    this.color,
    this.strokeWidth = 5.0,
    this.size = 50.0,
    this.duration = const Duration(milliseconds: 1200),
    this.controller,
  });

  final Color? color;
  final double size;
  final double strokeWidth;
  final Duration duration;
  final AnimationController? controller;

  @override
  CustomLoadingIndicatorState createState() => CustomLoadingIndicatorState();
}

class CustomLoadingIndicatorState extends State<CustomLoadingIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation1;
  late Animation<double> _animation2;
  late Animation<double> _animation3;

  @override
  void initState() {
    super.initState();

    _controller = (widget.controller ??
        AnimationController(vsync: this, duration: widget.duration))
      ..addListener(() => setState(() {}))
      ..repeat();
    _animation1 = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 1.0),
      ),
    );
    _animation2 = Tween(begin: -2 / 3, end: 1 / 2).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.5, 1.0),
      ),
    );
    _animation3 = Tween(begin: 0.25, end: 5 / 6).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.0,
          1.0,
          curve: _RingCurve(),
        ),
      ),
    );
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()..rotateZ((_animation1.value) * 5 * pi / 6),
      alignment: FractionalOffset.center,
      child: SizedBox.fromSize(
        size: Size.square(widget.size),
        child: CustomPaint(
          painter: _RingPainter(
            paintWidth: widget.strokeWidth,
            trackColor: widget.color ?? Theme.of(context).colorScheme.secondary,
            progressPercent: _animation3.value,
            startAngle: pi * _animation2.value,
          ),
        ),
      ),
    );
  }
}

class _RingPainter extends CustomPainter {
  _RingPainter({
    required this.paintWidth,
    this.progressPercent,
    this.startAngle,
    required this.trackColor,
  }) : trackPaint = Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = paintWidth
          ..strokeCap = StrokeCap.round;

  final double paintWidth;
  final Paint trackPaint;
  final Color trackColor;
  final double? progressPercent;
  final double? startAngle;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = (min(size.width, size.height) - paintWidth) / 2;
    trackPaint.color = trackColor.withOpacity(0.2);
    canvas.drawCircle(center, radius, trackPaint);
    trackPaint.color = trackColor;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle!,
      2 * pi * progressPercent!,
      false,
      trackPaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class _RingCurve extends Curve {
  const _RingCurve();

  @override
  double transform(double t) => (t <= 0.5) ? 2 * t : 2 * (1 - t);
}
