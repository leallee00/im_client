import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:quliao/models/user/userinfo.dart';
import 'package:quliao/pb/pb_msg/community/community.pb.dart';
import 'package:quliao/pub/func.dart';

import '../../models/user/myinfo.dart';
import '../../pb/pb_pub/comm.pbenum.dart';
import '../../net/socket.dart';
import '../../pub/config.dart';

class ChangeTestUserPage extends StatefulWidget{
  static const name = "AddTestUserPage";
  @override
  _ChangeTestUserPageState createState()=>_ChangeTestUserPageState();
}

class _ChangeTestUserPageState extends State<ChangeTestUserPage>{
  AppUserInfo user = AppUserInfo();


  // 连接到哪里去
  // ENV_TYPE env_type = ConfigMgr().config!.envType;

  late TextEditingController ctrlAppId;// =  TextEditingController(text:"");
  late TextEditingController ctrlAppUid;// =  TextEditingController(text:"10100");
  late TextEditingController ctrlNickName;// =  TextEditingController(text:"test");
  late TextEditingController ctrlAppAvatar;// =  TextEditingController(text:"https://hbimg.huabanimg.com/09e5b6681284905cf134b6a951c991c47bdd284e744f1-AybObq_fw236");
  // TextEditingController ctrlSign;// =  TextEditingController(text:"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjowLCJpbV91c2VyX2lkIjozMDM0Mjc1MSwiYXBwX2lkIjoxMDEwMCwiYXBwX3VzZXJfaWQiOiIxMDEwMCIsImV4cCI6MTc1ODcxNjAwNSwiaWF0IjoxNjcyMzE2MDA1LCJpc3MiOiJZeklNIiwiYnVzaW5lc3NfaWQiOjB9.pKzbI_m2LdCS-pHMuSNDc0ggSrd0baUWzJ20FVlXYsk");
  late TextEditingController ctrlGender;// =  TextEditingController(text:"1");
  late TextEditingController ctrlLevel;// =  TextEditingController(text:"1");
  late TextEditingController ctrlImId;// =  TextEditingController(text:"30342751");
  late TextEditingController ctrlAppToken;// =  TextEditingController(text:"");
  late TextEditingController ctrlUniToken;// =  TextEditingController(text:"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjowLCJpbV91c2VyX2lkIjozMDM0Mjc1MSwiYXBwX2lkIjoxMDEwMCwiYXBwX3VzZXJfaWQiOiIxMDEwMCIsImV4cCI6MTc1ODcxNjAwNSwiaWF0IjoxNjcyMzE2MDA1LCJpc3MiOiJZeklNIiwiYnVzaW5lc3NfaWQiOjB9.pKzbI_m2LdCS-pHMuSNDc0ggSrd0baUWzJ20FVlXYsk");
  // TextEditingController ctrlClientType =  TextEditingController(text:"1");
  // TextEditingController ctrlPhone =  TextEditingController(text:"13100001111");

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    ctrlAppId =  TextEditingController(text:"10151");
    ctrlAppUid =  TextEditingController(text:user.appUid);
    ctrlNickName =  TextEditingController(text:user.nickName);
    ctrlAppAvatar =  TextEditingController(text:user.appAvatar);
    // ctrlSign =  TextEditingController(text:"uXI9jlok8DiiZykjrChSIZv");
    ctrlGender =  TextEditingController(text:"${user.gender}");
    ctrlLevel =  TextEditingController(text:"${user.level}");
    ctrlImId =  TextEditingController(text:"${user.imId}");
    ctrlAppToken =  TextEditingController(text:user.appToken);
    ctrlUniToken =  TextEditingController(text:user.uniToken);

    // user.appId = 10100;
    // user.appUid = "10100";
    // user.nickName = "test";//data["nickname"];
    // user.appAvatar = "";//data["appAvatar"];
    // user.sign = ""; //data["sign"];
    // user.gender = 1;//data["gender"];
    // user.level = 1;//data["level"];
    // user.imId = 100001;//imId.toInt();//data["imUserId"];
    // user.appToken = "";//data["appToken"]; /// app登录的token
    // user.uniToken = "";//data["uniToken"]; /// im登录token
    user.clientType = CLIENT_TYPE.PHONE;
    // user.phone = "13100001111";
  }

  int envType = ConfigMgr().config!.envType.index;

  void onEnvRadioChange(value){
    envType = value as int;

    // 改变环境
    // ConfigMgr().SetEnv( ENV_TYPE.values[envType]);
    ctrlAppId.text = ConfigMgr().config!.appId.toString();
    ctrlAppUid.text = AppUserInfo().appUid;
    ConfigMgr().saveToSp();

    // AppUserInfo().loadFromSp();
    log("---env change to ${ENV_TYPE.values[envType]}");
    setState(() {

    });
  }

  @override
  Widget build(BuildContext ctx){
    log("---envType:${envType}");
    return Scaffold(
      appBar: AppBar(
        title: Text("添加测试用户"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(children: [
              Column(
                children: [
                  Row(children: [
                    Text("env"),
                    Radio(
                      // 按钮的值
                      value: 0,
                      // 改变事件
                      onChanged:
                          (value){
                        onEnvRadioChange(value);
                        // setState(() {
                        //   // this.env_type = (value - 1) as ENV_TYPE;
                        //   envType = value as int;
                        // });
                      },
                      // 按钮组的值
                      // groupValue:this.env_type ,
                      groupValue: envType,
                    ),

                    SizedBox(width: 10,),
                    Text("prod"),
                    Radio(
                      value:1,
                      onChanged: (value){
                        onEnvRadioChange(value);
                        // setState(() {
                        //   // this.env_type = value - 1 as ENV_TYPE;
                        //   envType = value as int;
                        // });
                      },
                      // groupValue: this.env_type,
                      groupValue: envType,
                    ),

                    Text("aws"),
                    Radio(
                      // 按钮的值
                      value: 2,
                      // 改变事件
                      onChanged: (value){
                        onEnvRadioChange(value);
                        // setState(() {
                        //   // this.env_type = (value - 1) as ENV_TYPE;
                        //   envType = value as int;
                        // });
                      },
                      // 按钮组的值
                      // groupValue:this.env_type ,
                      groupValue: envType,
                    ),

                  ],),
                  Row(children: [

                    Text("aly"),
                    Radio(
                      value:3,
                      onChanged: (value){
                        onEnvRadioChange(value);
                      },
                      groupValue: envType,
                    ),
                    Text("commim_dev"),
                    Radio(
                      // 按钮的值
                      value: 4,
                      // 改变事件
                      onChanged: (value){
                        onEnvRadioChange(value);
                      },
                      // 按钮组的值
                      groupValue: envType,
                    ),
                  ],)
                ],
              )

            ],),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: TextField(
                autofocus: true,
                decoration: const InputDecoration(
                    labelText: "appId",
                    hintText: "请输入appId",
                    prefixIcon: Icon(Icons.mode_sharp)
                ),
                controller: ctrlAppId,
                keyboardType: TextInputType.number,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: TextField(
                autofocus: true,
                decoration: const InputDecoration(
                    labelText: "appUid",
                    hintText: "app用户id",
                    prefixIcon: Icon(Icons.numbers)
                ),
                controller: ctrlAppUid,
                keyboardType: TextInputType.number,
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: TextField(
                decoration: const InputDecoration(
                    labelText: "昵称",
                    hintText: "输入昵称",
                    prefixIcon: Icon(Icons.man_rounded)
                ),
                controller: ctrlNickName,
                keyboardType: TextInputType.phone,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: TextField(
                autofocus: true,
                decoration: InputDecoration(
                    labelText: "头像",
                    hintText: "请输入头像地址",
                    prefixIcon: Icon(Icons.phone)
                ),
                controller: ctrlAppAvatar,
                keyboardType: TextInputType.phone,
              ),
            ),
            // Container(
            //   padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
            //   child: TextField(
            //     autofocus: true,
            //     decoration: InputDecoration(
            //         labelText: "签名",
            //         hintText: "请输入签名",
            //         prefixIcon: Icon(Icons.phone)
            //     ),
            //     controller: ctrlSign,
            //     keyboardType: TextInputType.phone,
            //   ),
            // ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: TextField(
                autofocus: true,
                decoration: InputDecoration(
                    labelText: "IMId",
                    hintText: "请输入imid",
                    prefixIcon: Icon(Icons.numbers)
                ),
                controller: ctrlImId,
                keyboardType: TextInputType.number,
              ),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: TextField(
                autofocus: true,
                decoration: InputDecoration(
                    labelText: "app token",
                    hintText: "请输入apptoken",
                    prefixIcon: Icon(Icons.numbers)
                ),
                controller: ctrlAppToken,
                keyboardType: TextInputType.number,
              ),
            ),

//             OutlinedButton(
// //              margin: EdgeInsets.fromLTRB(150, 10, 150, 10),
// //               padding: EdgeInsets.fromLTRB(150, 0, 150, 0),
// //               color: Colors.blue,
//               child: Text(
//                 "保存",
//                 style: TextStyle(color: Colors.black, fontSize: 20),
//               ),
//               onPressed: () {
// //                dbMsg.update(dbFriendInfo, <String, dynamic>{
// //                  'frendId': 12345,
// //                  'nick':"游客12345",
// //                  'avatar':"",
// //                  'level':1,
// //                  'signName':"有一个人4",
// //                }, where: "frendId = 12345");
// //                dbMsg.update(dbFriendInfo, <String, dynamic>{
// //                  'frendId': 10252,
// //                  'nick':"游客10252",
// //                  'avatar':"",
// //                  'level':1,
// //                  'signName':"有一个人4",
// //                },where: "frendId=10252");
//                 user.appId = int.parse(ctrlAppId.text);
//                 user.appUid = ctrlAppUid.text;
//                 user.nickName = ctrlNickName.text;//data["nickname"];
//                 user.appAvatar = ctrlAppAvatar.text;//data["appAvatar"];
//                 // user.sign = ctrlSign.text; //data["sign"];
//                 user.gender = int.parse(ctrlGender.text);//data["gender"];
//                 user.level = int.parse(ctrlLevel.text);//data["level"];
//                 user.imId = int.parse(ctrlImId.text);//imId.toInt();//data["imUserId"];
//                 user.appToken = ctrlAppToken.text;//data["appToken"]; /// app登录的token
//                 user.uniToken = ctrlUniToken.text;//data["uniToken"]; /// im登录token
//                 user.clientType = CLIENT_TYPE.PHONE;
//                 // user.phone = "13100001111";
//                 user.saveToSp();
//                 // AppUserInfo().clientType = user.clientType;
//                 Navigator.pop(context);
//               }
//             ),
            OutlinedButton(
//              margin: EdgeInsets.fromLTRB(150, 10, 150, 10),
//               padding: EdgeInsets.fromLTRB(150, 0, 150, 0),
//               color: Colors.blue,
                child: Text(
                  "登录",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                onPressed: () {
                  Client.instance.Start();
                }
            ),
            OutlinedButton(
//              margin: EdgeInsets.fromLTRB(150, 10, 150, 10),
//               padding: EdgeInsets.fromLTRB(150, 0, 150, 0),
//               color: Colors.blue,
                child: Text(
                  "获取新用户",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                onPressed: () async {
                  // Client.instance.Start();
                  // var rsp =
                  var params = {
                    "appId":int.parse(ctrlAppId.text) ,
                    "secret":"uXI9jlok8DiiZykjrChSIZv",
                    "userId":ctrlAppUid.text,
                  };

                  // Response response =
                  var url = "${ConfigMgr().config!.cfgImInterApiUrl}/GetIMID?appId=${ctrlAppId.text}&secret=uXI9jlok8DiiZykjrChSIZv&userId=${ctrlAppUid.text}";
                  log(url);
                  Dio().get(url).then((value){
                    if (value.statusCode != 200) {
                      log("get gate error! userId=${user
                          .imId}, rsp=${value} rsp.statusCode=${value
                          .statusCode} rsp.data=${value.data}");
                      showToast("获取用户失败! err:${value.statusCode}");
                      return;
                    }

                    if (value.data["result"] != 0){
                      // Map<dynamic, dynamic> extendedData = jsonDecode(value.data);
                      // log("get gate error! userId=${user.imId}, result=${value.data['result']} ${extendedData}");
                      // _setNetState(NET_STATE.NET_STATE_INIT);
                      // break;
                      // Map<dynamic, dynamic> extendedData = jsonDecode(value.data);
                      log("get gate error! userId=${user.imId}, result=${value.data['result']} msg=${value.data["msg"]}");
                      // 赋值
                      showToast("获取用户失败:result:${value.data["result"]}->${value.data["msg"]}");
                      return;
                    }

                    user.appId = int.parse(ctrlAppId.text);
                    user.appUid = ctrlAppUid.text;
                    user.nickName = ctrlNickName.text;//data["nickname"];
                    user.appAvatar = ctrlAppAvatar.text;//data["appAvatar"];
                    // user.sign = ctrlSign.text; //data["sign"];
                    user.gender = int.parse(ctrlGender.text);//data["gender"];
                    user.level = int.parse(ctrlLevel.text);//data["level"];
                    user.appToken = ctrlAppToken.text;//data["appToken"]; /// app登录的token
                    user.clientType = CLIENT_TYPE.PHONE;

                    user.imId = value.data["data"]["userIds"]["imUserId"];
                    user.uniToken = value.data["data"]["token"];

                    user.saveToSp();

                    setState(() {
                      ctrlImId.text = user.imId.toString();
                      ctrlUniToken.text =  user.uniToken;
                    });
                  }).catchError((err){
                    showToast("get imiderror!${err}");
                  });
                }
            )
          ],
        ),
      ),
    );
  }
}