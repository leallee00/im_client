
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../db/db.dart';

class DBOptPage extends StatefulWidget{
  static const name = "DBOptPage";
  @override
  _DBOptPageState createState() {
    return _DBOptPageState();
  }
}

class _DBOptPageState extends State<DBOptPage>{
  int selectedIndex = 0;
  int newMsgCount = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(
      title: Text("db测试"),
    ),
    body: Column(
      children: [
        TextButton(
          onPressed: (){
            // 重置db
            resetDb();
          },
          child: Text("重置数据"),
        ),
        TextButton(
          onPressed: () {  },
          child: Text("还没有想好"),
        )
      ],
    ),
  );
  }
}