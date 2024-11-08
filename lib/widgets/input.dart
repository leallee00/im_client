import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomInput extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String? helper;
  final String? hintText;
  final String? error;
  final bool required;
  final bool readOnly;
  final bool obscureText;
  final IconData? iconData;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final void Function()? onTap;
  final void Function()? onIcon;
  final ValueChanged<String>? onChanged;
  final InputDecoration decoration;
  final TextInputType? keyboardType;
  final bool autofocus;
  final List<TextInputFormatter>? inputFormatters;

  const CustomInput({
    Key? key,
    this.controller,
    this.label,
    this.helper,
    this.hintText,
    this.error,
    this.required = false,
    this.readOnly = false,
    this.obscureText = false,
    this.onTap,
    this.onIcon,
    this.iconData,
    this.onChanged,
    this.decoration = const InputDecoration(),
    this.minLines,
    this.maxLines = 1,
    this.maxLength,
    this.keyboardType,
    this.autofocus = false,
    this.inputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final decorationTheme = theme.inputDecorationTheme;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (label != null || required)
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: (decorationTheme.contentPadding?.horizontal ?? 0) / 2,
              vertical: 10.w,
            ).copyWith(top: 0),
            child: RichText(
              text: TextSpan(
                text: label,
                style: decorationTheme.labelStyle,
                children: [
                  if (required)
                    TextSpan(
                      text: label != null ? ' *' : '*',
                      style:
                          TextStyle(color: Theme.of(context).colorScheme.error),
                    ),
                ],
              ),
            ),
          ),
        DecoratedBox(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: theme.colorScheme.shadow,
                offset: Offset(0, 20.w),
                blurRadius: 10.w,
                spreadRadius: -10.w,
              ),
            ],
          ),
          child: TextField(
            autofocus: autofocus,
            controller: controller,
            readOnly: readOnly,
            onTap: onTap,
            obscureText: obscureText,
            onChanged: onChanged,
            minLines: minLines,
            maxLines: maxLines,
            maxLength: maxLength,
            inputFormatters: inputFormatters,
            keyboardType: keyboardType,
            style: TextStyle(
              fontFamily: 'Sans',
              fontSize: 16.w,
              height: 1.3,
              fontWeight: FontWeight.w600,
            ),
            decoration: decoration.copyWith(
              filled: true,
              hintText: hintText,
              hintStyle: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 16.sp,
              ),
              counterText: '',
              suffixIconConstraints: const BoxConstraints(),
              suffixIcon: _suffixIcon(decorationTheme),
            ),
          ),
        ),
        // AnimatedSize(
        //   duration: const Duration(milliseconds: 180),
        //   alignment: Alignment.topCenter,
        //   child: error != null
        //       ? Padding(
        //           padding: EdgeInsets.only(top: 10.w),
        //           child: CustomAlert.error(
        //             size: CustomAlertSize.mini,
        //             text: Text(error!),
        //           ),
        //         )
        //       : const SizedBox.shrink(),
        // ),
        if (helper != null)
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: (decorationTheme.contentPadding?.horizontal ?? 0) / 2,
              vertical: 10.w,
            ).copyWith(bottom: 0),
            child: Text(
              helper!,
              style: decorationTheme.helperStyle,
            ),
          )
      ],
    );
  }

  Widget? _suffixIcon(InputDecorationTheme decorationTheme) {
    if (iconData == null) return null;
    return Padding(
      padding: EdgeInsetsDirectional.only(
        end: (decorationTheme.contentPadding?.horizontal ?? 0) / 2,
      ),
      child: GestureDetector(
        onTap: onIcon,
        child: Icon(iconData!, size: 24.w),
      ),
    );
  }
}

class CustomInputSearch extends StatelessWidget {
  final IconData iconData;
  final String? hintText;
  final TextEditingController? controller;
  final bool readOnly;
  final void Function()? onTap;
  final void Function(String)? onChanged;
  final EdgeInsets? padding;

  const CustomInputSearch({
    Key? key,
    this.iconData = Icons.search_rounded,
    this.hintText,
    this.controller,
    this.readOnly = false,
    this.onTap,
    this.padding,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputDecoration = Theme.of(context).inputDecorationTheme;
    final _padding = padding ??
        EdgeInsets.symmetric(
          vertical: 13.w,
          horizontal: 20.w,
        );
    return TextField(
      readOnly: readOnly,
      controller: controller,
      onTap: onTap,
      style: TextStyle(
        fontFamily: 'Sans',
        fontSize: 14.sp,
        height: 1.2,
      ),
      onChanged: onChanged,
      decoration: InputDecoration(
        isCollapsed: true,
        border: InputBorder.none,
        filled: true,
        fillColor: const Color(0xFFF4F6F9),
        contentPadding: _padding.subtract(
          EdgeInsets.symmetric(
            horizontal: _padding.horizontal / 4,
          ),
        ),
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: _padding.horizontal / 4,
          ),
          child: Icon(
            iconData,
            size: 22.w,
            color: const Color(0xFF858C94),
          ),
        ),
        prefixIconConstraints: const BoxConstraints(),
        hintText: hintText ?? 'Search',
      ),
    );
  }
}

class CustomInputNormal extends StatelessWidget {
  const CustomInputNormal({
    super.key,
    required this.controller,
    this.textAlign,
    this.style,
    this.hintStyle,
    this.hintText,
    this.keyboardType,
    this.maxLines,
    this.focusNode,
    this.inputFormatters,
  });

  final TextEditingController controller;
  final TextAlign? textAlign;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final String? hintText;
  final TextInputType? keyboardType;
  final int? maxLines;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return TextField(
      controller: controller,
      maxLines: maxLines,
      focusNode: focusNode,
      textAlign: textAlign ?? TextAlign.start,
      inputFormatters: inputFormatters,
      style: style ??
          TextStyle(
            fontFamily: 'Sans',
            fontSize: 14.sp,
            height: 1.3,
            fontWeight: FontWeight.w600,
          ),
      keyboardType: keyboardType ?? TextInputType.text,
      decoration: InputDecoration(
        isCollapsed: true,
        border: InputBorder.none,
        hintText: hintText ?? '请输入',
        hintStyle: hintStyle ??
            TextStyle(
              fontSize: 16.sp,
              color: colorScheme.onBackground.withOpacity(0.7),
            ),
        contentPadding: EdgeInsets.zero,
      ),
    );
  }
}

class MyNumberTextInputFormatter extends TextInputFormatter {
  static const defaultDouble = 0.001;

  ///允许的小数位数，-1代表不限制位数
  int digit;
  MyNumberTextInputFormatter({this.digit = -1});
  static double strToFloat(String str, [double defaultValue = defaultDouble]) {
    try {
      return double.parse(str);
    } catch (e) {
      return defaultValue;
    }
  }

  ///获取目前的小数位数
  static int getValueDigit(String value) {
    if (value.contains(".")) {
      return value.split(".")[1].length;
    } else {
      return -1;
    }
  }

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    String value = newValue.text;
    int selectionIndex = newValue.selection.end;
    if (value == ".") {
      value = "0.";
      selectionIndex++;
    } else if (value == "-") {
      value = "-";
      selectionIndex++;
    } else if (value != "" && value != defaultDouble.toString() && strToFloat(value, defaultDouble) == defaultDouble || getValueDigit(value) > digit) {
      value = oldValue.text;
      selectionIndex = oldValue.selection.end;
    }
    return TextEditingValue(
      text: value,
      selection: TextSelection.collapsed(offset: selectionIndex),
    );
  }
}