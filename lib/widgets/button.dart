import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';

enum CustomButtonType { filled, ghost, borderless }

enum CustomButtonSize { large, medium, small }

enum CustomButtonShape { radius, stadium }

class CustomButton extends StatelessWidget {
  final Widget child;
  final void Function()? onPressed;
  final Color? foregroundColor;
  final Color? backgroundColor;
  final CustomButtonType type;
  final CustomButtonSize size;
  final CustomButtonShape shape;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final bool isIcon;

  const CustomButton({
    Key? key,
    required this.child,
    this.onPressed,
    this.foregroundColor,
    this.backgroundColor,
    this.type = CustomButtonType.filled,
    this.size = CustomButtonSize.medium,
    this.shape = CustomButtonShape.radius,
    this.width,
    this.height,
    this.padding,
    this.isIcon = false,
  }) : super(key: key);

  factory CustomButton.icon({
    Key? key,
    required Icon icon,
    void Function()? onPressed,
    Color? foregroundColor,
    Color? backgroundColor,
    CustomButtonShape shape,
    CustomButtonSize size,
    double? width,
    double? height,
    EdgeInsetsGeometry? padding,
  }) = _ButtonWithIcon;

  OutlinedBorder? get _shape {
    switch (shape) {
      case CustomButtonShape.stadium:
        return const StadiumBorder();
      case CustomButtonShape.radius:
        return RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.gap_dp8),
        );
    }
  }

  EdgeInsetsGeometry? get _padding {
    switch (size) {
      case CustomButtonSize.large:
        return EdgeInsets.symmetric(
            horizontal: Dimens.gap_dp18, vertical: Dimens.gap_dp14);
      case CustomButtonSize.medium:
        return EdgeInsets.symmetric(
            horizontal: Dimens.gap_dp16, vertical: Dimens.gap_dp12);
      case CustomButtonSize.small:
        return EdgeInsets.symmetric(
            horizontal: Dimens.gap_dp12, vertical: Dimens.gap_dp10);
    }
  }

  double? get _fontSize {
    switch (size) {
      case CustomButtonSize.large:
        return Dimens.gap_dp18;
      case CustomButtonSize.medium:
        return Dimens.gap_dp16;
      case CustomButtonSize.small:
        return Dimens.gap_dp14;
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(
            Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(fontSize: _fontSize),
          ),
          padding: MaterialStateProperty.all(padding ?? _padding),
          foregroundColor: MaterialStateProperty.resolveWith((states) {
            switch (type) {
              case CustomButtonType.filled:
                return foregroundColor ??
                    (isIcon ? colorScheme.primary : colorScheme.onPrimary);
              case CustomButtonType.ghost:
              case CustomButtonType.borderless:
                final color = foregroundColor ?? colorScheme.primary;
                final opacity = color.opacity / 1.2;
                if (states.contains(MaterialState.pressed)) {
                  return color.withOpacity(opacity);
                }
                if (states.contains(MaterialState.disabled)) {
                  return color.withOpacity(opacity);
                }
                return color;
            }
          }),
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            switch (type) {
              case CustomButtonType.filled:
                final color = backgroundColor ??
                    colorScheme.primary.withOpacity(isIcon ? 0.1 : 1);
                final opacity = color.opacity / 2;
                if (states.contains(MaterialState.pressed)) {
                  return color.withOpacity(opacity);
                }
                if (states.contains(MaterialState.disabled)) {
                  return color.withOpacity(opacity);
                }
                return color;
              case CustomButtonType.ghost:
              case CustomButtonType.borderless:
                return Colors.transparent;
            }
          }),
          side: MaterialStateProperty.resolveWith((states) {
            switch (type) {
              case CustomButtonType.filled:
              case CustomButtonType.borderless:
                return BorderSide.none;
              case CustomButtonType.ghost:
                final color = foregroundColor ?? colorScheme.primary;
                final opacity = color.opacity / 2;
                if (states.contains(MaterialState.pressed)) {
                  return BorderSide(
                    color: color.withOpacity(opacity),
                    width: Dimens.gap_dp2,
                  );
                }
                if (states.contains(MaterialState.disabled)) {
                  return BorderSide(color: color.withOpacity(opacity));
                }
                return BorderSide(
                  color: color,
                  width: Dimens.gap_dp2,
                );
            }
          }),
          shape: MaterialStateProperty.all(_shape),
        ),
        child: child,
      ),
    );
  }
}

class _ButtonWithIcon extends CustomButton {
  final Icon icon;

  _ButtonWithIcon({
    Key? key,
    required this.icon,
    void Function()? onPressed,
    Color? foregroundColor,
    Color? backgroundColor,
    CustomButtonType type = CustomButtonType.filled,
    CustomButtonSize size = CustomButtonSize.medium,
    CustomButtonShape shape = CustomButtonShape.radius,
    double? width,
    double? height,
    EdgeInsetsGeometry? padding,
  }) : super(
          key: key,
          child: _ButtonWithIconChild(
            icon: icon,
            size: size,
            padding: padding,
          ),
          onPressed: onPressed,
          foregroundColor: foregroundColor,
          backgroundColor: backgroundColor ?? foregroundColor?.withOpacity(0.1),
          type: type,
          size: size,
          shape: shape,
          width: width,
          height: height,
          isIcon: true,
          padding: padding ?? const EdgeInsets.all(0),
        );
}

class _ButtonWithIconChild extends StatelessWidget {
  final Icon icon;
  final CustomButtonSize size;
  final EdgeInsetsGeometry? padding;

  const _ButtonWithIconChild({
    Key? key,
    required this.icon,
    required this.size,
    this.padding,
  }) : super(key: key);

  double? get _iconSize {
    switch (size) {
      case CustomButtonSize.large:
        return Dimens.gap_dp30;
      case CustomButtonSize.medium:
        return Dimens.gap_dp24;
      case CustomButtonSize.small:
        return Dimens.gap_dp18;
    }
  }

  double get _padding {
    switch (size) {
      case CustomButtonSize.large:
        return Dimens.gap_dp12;
      case CustomButtonSize.medium:
        return Dimens.gap_dp10;
      case CustomButtonSize.small:
        return Dimens.gap_dp8;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          padding == null ? EdgeInsets.all(_padding) : const EdgeInsets.all(0),
      child: IconTheme.merge(
        data: IconThemeData(size: _iconSize),
        child: icon,
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    this.style,
    this.onTap,
    this.borderRadius,
  });

  final String text;
  final TextStyle? style;
  final Function()? onTap;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: borderRadius ??
            BorderRadius.circular(
              Dimens.gap_dp12,
            ),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: Dimens.gap_dp10,
            vertical: Dimens.gap_dp6,
          ),
          child: Text(
            text,
            style: style ??
                TextStyle(
                  fontSize: Dimens.font_sp13,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
        ),
      ),
    );
  }
}
