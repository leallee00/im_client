/* 弹窗 可自定义按钮样式
* @Author: wanghongchao  
* @Date: 2021-12-14 15:50:08  
 * @Last Modified by: wanghongchao
 * @Last Modified time: 2022-05-09 11:59:30
*/

import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';

typedef IndexCallback = void Function(int index);

// 修改IndexCallback可选参数影响范围较大，新增ActionCallback
typedef ActionCallback = void Function(dynamic payload);

enum AlertViewStyle {
  normal,
  custom,
}

const defaultColor = Color.fromRGBO(51, 55, 88, 1);

const separatorColor = Color.fromRGBO(229, 229, 229, 1);

class CustomAlertView extends StatefulWidget {
  final String title;

  final String leftButtonText;
  final Color leftButtonColor;
  final String rightButtonText;
  final Color rightButtonColor;

  final AlertViewStyle style;

  final IndexCallback? selectAtIndex;

  final ActionCallback? actionPayload;

  final BuildContext context;

  final String content;

  final bool showContent;

  final String? hintText;

  final ShapeBorder shape;

  final int maxLength;

  final int maxLine;

  final EdgeInsetsGeometry contentPadding;

  final EdgeInsetsGeometry buttonPadding;

  final AlignmentGeometry titleAlignment;

  final Widget? customWidget;

  const CustomAlertView({
    super.key,
    required this.context,
    required this.title,
    required this.content,
    this.style = AlertViewStyle.normal,
    this.leftButtonColor = defaultColor,
    this.leftButtonText = '取消',
    this.rightButtonColor = defaultColor,
    this.rightButtonText = '确定',
    this.selectAtIndex,
    this.actionPayload,
    this.customWidget,
    this.hintText,
    this.maxLength = 100,
    this.maxLine = 7,
    this.titleAlignment = Alignment.center,
    this.showContent = true,
    this.shape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
    ),
    this.buttonPadding = EdgeInsets.zero,
    this.contentPadding = const EdgeInsets.fromLTRB(12, 12.0, 12.0, 12.0),
  });

  @override
  _CustomAlertViewState createState() => _CustomAlertViewState();
}

class _CustomAlertViewState extends State<CustomAlertView> {
  String inputText = "";

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: widget.shape,
      buttonPadding: widget.buttonPadding,
      contentPadding: widget.contentPadding,
      titlePadding: EdgeInsets.fromLTRB(
        12.0,
        12.0,
        12.0,
        widget.content == null ? 20.0 : 0.0,
      ),
      title: Container(
        alignment: widget.titleAlignment,
        child: Text(widget.title),
      ),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: _buildAlertViewBody(),
            ),
          ],
        ),
      ),
      actionsAlignment: MainAxisAlignment.spaceAround,
      actions: _buildActionButtons(),
    );
  }

  Widget _buildAlertViewBody() {
    if (widget.style == AlertViewStyle.custom) {
      return widget.customWidget ?? Container();
    } else {
      return Text(
        widget.content,
        style: TextStyle(
          fontSize: Dimens.font_sp14,
          color: Theme.of(context).colorScheme.onBackground,
        ),
      );
    }
  }

  List<Widget> _buildActionButtons() {
    return [
      Column(
        children: [
          Container(
            height: 1,
            color: separatorColor,
          ),
          Row(
            mainAxisAlignment: ((widget.leftButtonText ?? "").isEmpty ||
                    (widget.rightButtonText ?? "").isEmpty)
                ? MainAxisAlignment.center
                : MainAxisAlignment.spaceEvenly,
            children: [
              (widget.leftButtonText ?? "").isNotEmpty
                  ? MaterialButton(
                      elevation: 0,
                      child: Text(
                        widget.leftButtonText,
                        style: TextStyle(
                          color: widget.leftButtonColor,
                          fontSize: 16,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(widget.context).pop();
                        if (widget.selectAtIndex != null) {
                          widget.selectAtIndex!(0);
                        }
                      },
                    )
                  : Container(),
              (widget.leftButtonText ?? "").isNotEmpty
                  ? Container(
                      width: 1,
                      height: 50,
                      color: separatorColor,
                    )
                  : Container(),
              (widget.rightButtonText ?? "").isNotEmpty
                  ? MaterialButton(
                      elevation: 0,
                      onPressed: () {
                        if (widget.selectAtIndex != null) {
                          widget.selectAtIndex!(1);
                        }

                        if (widget.actionPayload != null) {
                          widget.actionPayload!(inputText);
                        }

                        if (widget.style == AlertViewStyle.normal) {
                          Navigator.of(widget.context).pop();
                        }
                      },
                      child: Text(
                        widget.rightButtonText,
                        style: TextStyle(
                          color: widget.rightButtonColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  : Container(),
            ],
          )
        ],
      ),
    ];
  }
}

// ignore: avoid_types_as_parameter_names
void showAlertView(
  String title,
  String content,
  BuildContext context, {
  String leftButtonText = "取消",
  Color leftButtonColor = defaultColor,
  String rightButtonText = "确定",
  Color rightButtonColor = defaultColor,
  IndexCallback? callBack,
  bool barrierDismissible = false,
}) {
  showDialog(
    context: context,
    barrierDismissible: barrierDismissible,
    builder: (BuildContext showContext) {
      return CustomAlertView(
        context: showContext,
        title: title,
        content: content,
        selectAtIndex: callBack,
        leftButtonColor: leftButtonColor,
        rightButtonColor: rightButtonColor,
        leftButtonText: leftButtonText,
        rightButtonText: rightButtonText,
      );
    },
  ).then(
    // ignore: avoid_print
    (value) => print(value),
  );
}
