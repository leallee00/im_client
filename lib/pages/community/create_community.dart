import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quliao/pages/community/create_community_group.dart';

class CreateCommunity extends StatefulWidget {
  @override
  _CreateCommunityState createState() => _CreateCommunityState();
}

class _CreateCommunityState extends State<CreateCommunity> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black87,
        ),
        elevation: 0,
        backgroundColor: Colors.white,

        centerTitle: true,
        title: Text("创建圈子", style: TextStyle(color: Colors.black87),),
      ),
      body: Container(margin: EdgeInsets.all(20), child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Text("欢迎创建圈子~", style: TextStyle(fontSize: 18),),
          SizedBox(height: 5),
          Text("圈子是同好聚集地。您可以通过圈子和好友组织兴趣社团、分享内容、交流兴趣、倾诉感情、记录生活……",
            style: TextStyle(color: Colors.black54),),
          SizedBox(height: 20),
          TextButton(
            child: Card(
              child: Column(
                children: [
                  Container(
                    height: 80,
                    width: 1100,
//                    color: Colors.orange,
                    child: ClipRRect(
                      child: Image.asset(
                        "images/quanzi.png",
                        scale: 5,
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)
                      ),
//                      children: [
//                        Center(child: Text("圈子", style: TextStyle(color: Colors.white, fontSize: 50, fontFamily: "AaJieMoDun"),),),
////                        Positioned(
////                          right: 0,
////                          child: Container(
////                            margin: EdgeInsets.all(1),
////                            color: Colors.white,
////                            child: Row(children: [
////                              Icon(Icons.stars, color: Colors.red,),
////                              Text("开放申请中", style: TextStyle(
////                                  fontSize: 15, color: Colors.red, fontFamily: "AaJieMoDun"),)
////                            ],
////                            ),
////                          ),
////                        )
//                      ],
                    ),),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 12, 10, 10),
                    child: Column(
                      children: [
                        Row(children: [
                          Text("兴趣爱好社团，组织一群志同道合的伙伴",
                            style: TextStyle(fontSize: 16),),
                        ]),

                        SizedBox(height: 5),
                        Row(children: [
                          Icon(Icons.chat, color: Colors.orange, size: 12,),
                          SizedBox(width: 5),
                          Text("开放聊天室功能，和朋友及时交流",
                            style: TextStyle(color: Colors.black54, fontSize: 12),),
                        ],),
                        Row(children: [
                          Icon(
                            Icons.person_add, color: Colors.orange, size: 12,),
                          SizedBox(width: 5),
                          Text("可自由设置成员加入方式，更好组织社团成员",
                            style: TextStyle(color: Colors.black54, fontSize: 12),),
                        ],),
                        Row(children: [
                          Icon(Icons.font_download, color: Colors.orange,
                            size: 13,),
                          SizedBox(width: 5),
                          Text("标题样式，方便交流兴趣观点",
                            style: TextStyle(color: Colors.black54, fontSize: 12),),
                        ],)
                      ],
                    ),
                  ),

                ],
              ),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (BuildContext context) {
                return CreateCommunityGroup();
              }));

            },
          ),
        ],
      ),),

    );
  }
}