import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

typedef InputCompleteCallback = void Function(String content);

enum InputType { password, number, text }

class VerifyCode extends StatefulWidget {
  const VerifyCode({
    Key? key,
    this.cellCount = 6,
    this.inputType = InputType.number,
    this.autofocus = true,
    this.inputCompleteCallback,
    this.borderRadius,
    this.backgroundColor,
    this.strokeColor = Colors.blue,
    this.borderColor = Colors.grey,
    this.solidColor,
    this.textColor,
    this.fontSize = 22,
    this.size,
    this.margin = 6.0,
    this.controller,
    this.focusNode,
    this.onListen,
  }) : super(key: key);

  final int cellCount;
  final InputType inputType;
  final InputCompleteCallback? inputCompleteCallback;
  final bool autofocus;
  final BorderRadiusGeometry? borderRadius;
  final Color? backgroundColor;
  final Color strokeColor;
  final Color borderColor;
  final Color? textColor;
  final Color? solidColor;
  final double fontSize;
  final double? size;
  final double margin;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final Function()? onListen;

  @override
  State<StatefulWidget> createState() => _VerifyCodeState();
}

class _VerifyCodeState extends State<VerifyCode>
    with SingleTickerProviderStateMixin {
  String? inputStr;
  late AnimationController animationController;
  List<TextInputFormatter> inputFormatters = [];
  TextEditingController? _controller;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(microseconds: 800000),
    );
    animationController.repeat();

    super.initState();

    _controller = widget.controller ?? TextEditingController();

    _controller?.addListener(() {
      widget.onListen?.call();
      if (inputStr != _controller!.value.text) {
        setState(() {
          inputStr = _controller!.value.text;

          if (widget.inputType == InputType.number &&
              !RegExp(r'\d+').hasMatch(inputStr ?? '')) {
            inputStr = '';
          }

          if (inputStr?.length == widget.cellCount) {
            widget.inputCompleteCallback?.call(inputStr ?? '');
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    inputFormatters.add(LengthLimitingTextInputFormatter(widget.cellCount));
    if (widget.inputType == InputType.number) {
      inputFormatters.add(FilteringTextInputFormatter.digitsOnly);
    }

    return SizedBox(
      height: widget.size,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          LayoutBuilder(
            builder: (context, constraints) {
              final double margin = ((constraints.maxWidth -
                          (widget.size ?? 0) * widget.cellCount) ~/
                      (widget.cellCount - 1))
                  .toDouble();
              return Wrap(
                spacing: margin,
                alignment: WrapAlignment.start,
                children: List.generate(
                  widget.cellCount,
                  (i) {
                    return Stack(
                      alignment: AlignmentDirectional.center,
                      children: <Widget>[
                        Container(
                          width: widget.size,
                          height: widget.size,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: widget.solidColor,
                            border: Border.all(
                              color: getBoarderColor(i),
                            ),
                            borderRadius: widget.borderRadius,
                          ),
                          child: Text(
                            getIndexStr(i),
                            style: TextStyle(
                              fontSize: widget.fontSize,
                              color: widget.textColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        FadeTransition(
                          opacity: animationController,
                          child: Container(
                            alignment: Alignment.center,
                            width: widget.size,
                            height: widget.size,
                            child: Visibility(
                              visible: cursorVisible(i),
                              child: const Text('│'),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              );
            },
          ),
          SizedBox(
            height: widget.size,
            width: double.infinity,
            child: TextField(
              enableInteractiveSelection: false,
              enableSuggestions: false,
              keyboardType: _keyboardType(),
              inputFormatters: inputFormatters,
              decoration: const InputDecoration(border: InputBorder.none),
              cursorWidth: 0,
              style: const TextStyle(color: Colors.transparent),
              controller: _controller,
              autofocus: widget.autofocus,
              focusNode: widget.focusNode,
            ),
          ),
        ],
      ),
    );
  }

  String getIndexStr(int index) {
    if ((inputStr ?? '').isEmpty) {
      return '';
    }
    if ((inputStr ?? '').length > index) {
      if (widget.inputType == InputType.password) {
        return '●';
      } else {
        return inputStr![index];
      }
    } else {
      return '';
    }
  }

  TextInputType _keyboardType() {
    if (widget.inputType == InputType.number) {
      return TextInputType.number;
    } else if (widget.inputType == InputType.password) {
      return TextInputType.number;
    } else {
      return TextInputType.text;
    }
  }

  bool cursorVisible(int index) {
    debugPrint(
      'cursorVisible index: $index  ------  inputStr: $inputStr focusNode: ${widget.focusNode}',
    );
    if (inputStr == null || (inputStr ?? '').isEmpty) {
      if (index == 0) {
        return true;
      } else {
        return false;
      }
    } else {
      if (index == inputStr?.length) {
        return true;
      } else {
        return false;
      }
    }
  }

  Color getBoarderColor(int index) {
    if (inputStr == null || (inputStr ?? '').isEmpty) {
      if (index == 0) {
        return widget.strokeColor;
      } else {
        return widget.borderColor;
      }
    } else {
      if (index == inputStr?.length) {
        return widget.strokeColor;
      } else {
        return widget.borderColor;
      }
    }
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
