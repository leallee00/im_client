import 'package:flutter/cupertino.dart';

/// 对外暴露重绘函数，进行局部刷新，避免setstat刷新效率低下
typedef BuildWidget = Widget Function();

class PrivateInputWidget extends StatefulWidget {
  static const name = "PrivateInputWidget";
  PrivateInputWidget(Key key, this._child):super(key: key);

  BuildWidget _child;

  // final FriendInfo finfo;
  @override
  State<PrivateInputWidget> createState() => PrivateInputState(_child);
}

class PrivateInputState extends State<PrivateInputWidget> {
  BuildWidget child;
  PrivateInputState(this.child);

  @override
  Widget build(BuildContext context) {
    return child.call();
  }



  void update(){
    setState(() {

    });
  }
}