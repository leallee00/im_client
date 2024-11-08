// 嵌入到其他页面的topic条
import 'package:fixnum/fixnum.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quliao/pages/community/user_info.dart';
import 'package:quliao/pub/config.dart';

import '../community.dart';

class TopicInsertBar extends StatelessWidget {
  TopicInsertBar(this.tId, this.cover, this.tName, {super.key});
  final String cover;
  final String tName;
  final Int64 tId;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              child: SizedBox(
                width: 40,
                height: 40,
                child: Image.network(cover.isEmpty ? ConfigMgr().config!.defaultGirlAvatar : cover),
              ),
            ),

            Expanded(
              flex: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("#${tName}", style: TextStyle(fontSize: 20),),
                  Text(
                    "${tId}",
                    style: TextStyle(fontSize: 18, color: Colors.grey),),
                  // Text(""),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child:
              SizedBox(
                width: 100,
                child:
                OutlinedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                      return Community(communityId: tId.toInt(),);
                    }));
                  },
                  // style: ButtonStyle(shape: OutlinedBorder()),
                  child:Text("进入", style: TextStyle(color: Colors.blue),),
                  // Container(
                  //   height: 25,
                  //   // width: 65,
                  //   alignment: Alignment.center,
                  //   // padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  //   decoration: BoxDecoration(
                  //     color: Colors.white,
                  //     borderRadius: BorderRadius.all(Radius.circular(20)),
                  //     border: Border.all(width: 1, color: Colors.blue),
                  //   ),
                  //   child: Text("进入", style: TextStyle(color: Colors.blue),),
                  // ),
                ),
              ),
            ),
          ],
        ),),
    );
  }
}