
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommErrPage404 extends StatelessWidget{
  @override
  Widget build(BuildContext ctx){
    return Scaffold(
      appBar: AppBar(
        title: Text("页面未找到"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text("建设中。。。。"),
      ),
    );
  }
}