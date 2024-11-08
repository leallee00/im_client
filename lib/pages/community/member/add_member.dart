import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quliao/pages/community/member/search_member.dart';
import 'package:quliao/pb/pb_msg/community/community.pb.dart' as $pbCommunity;
class AddMember extends StatefulWidget {
  AddMember(this.communityDetail,  {super.key}) ;
  final $pbCommunity.Community communityDetail;

  @override
  AddMemberState createState() => new AddMemberState();
}

class AddMemberState extends State<AddMember> {

  @override
  void initState(){
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: BackButton(
          color: Colors.black54,
        ),
        backgroundColor: Colors.white,
        title: Text('添加朋友', style: TextStyle(color: Colors.black54)),
        centerTitle: true,
      ),
      // backgroundColor: Colors.white10,
      body:
      Column(
        children: [
          Expanded(
              flex: 0,
              child:Container(
                decoration: BoxDecoration(
                  // border: Border.all(color: Colors.white, width: 0.5),
                    color: Colors.black12,
                    borderRadius: new BorderRadius.circular((10.0))
                ),
                ///距离顶部
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(1),
                ///Alignment 用来对齐 Widget
                alignment: Alignment(0, 0),
                ///
                child: TextButton(onPressed: (){
                  // 跳转到搜索框
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                    return  SearchMember(widget.communityDetail);
                  }));
                },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.search,color: Colors.black54,),
                      Text("用户id/手机号/邮箱",style: TextStyle(color: Colors.black54),)
                    ],
                  ),
                ),
              ),
          ),
          Expanded(
            flex: 0,
            child:Center(
              widthFactor: 100,
                heightFactor: 2,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

              Text("${widget.communityDetail.name} [id:${widget.communityDetail.id}]"),
              // 二维码
            ],))

          ),
          // 群列表
          // Expanded(
          //   flex: 1,
          //   child:
          //   ListView(
          //     children: [
          //       Divider(color: Colors.blue,),
          //       ListTile(
          //         leading: Icon(Icons.vibration),
          //         title:Text("雷达加朋友"),
          //         subtitle: Text("添加身边的朋友"),
          //           trailing:IconButton(
          //             icon: Icon(Icons.chevron_right),
          //            onPressed: (){
          //
          //           },)
          //       ),
          //       Divider(color: Colors.blue,),
          //       ListTile(
          //           leading: Icon(Icons.crop_free),
          //           title:Text("扫一扫"),
          //           subtitle: Text("扫描二维码名片"),
          //           trailing:IconButton(
          //             icon: Icon(Icons.chevron_right),
          //             onPressed: ()async{
          //               log("dddd");
          //               // BarcodeS
          //               // String cameraScanResult = await scanner.scan();
          //               // log("scan string-> ${cameraScanResult}");
          //               final result=await RScan.scanImagePath('your file path');
          //             },)
          //       ),
          //       Divider(color: Colors.blue,),
          //       ListTile(
          //           leading: Icon(Icons.featured_play_list),
          //           title:Text("手机联系人"),
          //           subtitle: Text("添加通讯录中的朋友"),
          //           trailing:Icon(Icons.chevron_right),
          //         onTap: (){
          //
          //         },
          //       ),
          //       Divider(color: Colors.blue,),
          //       ListTile(
          //         leading: Icon(Icons.group),
          //         title:Text("面对面建群"),
          //         subtitle: Text("与身边的朋友进入同一个群聊"),
          //         trailing:Icon(Icons.chevron_right),
          //         onTap: (){
          //
          //         },
          //       ),
          //       Divider(color: Colors.blue,),
          //     ],
          //   ),
          // ),
        ],
      )
    );
  }

}