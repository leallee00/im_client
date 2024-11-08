import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Echo extends StatelessWidget {
  static const name = "Echo";
  const Echo({
    super.key,
    required this.text,
    this.backgroundColor:Colors.grey,
  });

  final String text;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
//    return Center(
//      child: Container(
//        color: backgroundColor,
//        child: Text(text),
//      ),
//    );
    return Scaffold(
      appBar: AppBar(
        title: Text("非fish redux page 测试"),
      ),
      body: Container(
        child: Builder(builder: (context) {
          // 在Widget树中向上查找最近的父级`Scaffold` widget
          // Scaffold? scaffold = context.findAncestorWidgetOfExactType<Scaffold>();
          // 直接返回 AppBar的title， 此处实际上是Text("Context测试")
          return Text("Context测试");//(scaffold?.appBar? as AppBar()).title (scaffold?.appBar as AppBar).title;
        }),
      ),
    );
  }
}