import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:fixnum/fixnum.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:cherry_toast/cherry_toast.dart';
import 'package:quliao/db/database.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/pub/config.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pb/pb_pub/service.pb.dart';

import '../../net/socket.dart';
import '../../pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import '../../pb/pb_pub/error_code.pbenum.dart';
import '../../pub/im_grpc_opt.dart';
import '../../pub/pub-def.dart';
import 'change_test_user.dart';

TextEditingController phoneCtl = TextEditingController(
    text: AppUserInfo.instance.phone != ""
        ? AppUserInfo.instance.phone
        : "15300001111");
TextEditingController codeCtl = TextEditingController(text: "999999");
bool _checkboxSelected = true; //维护复选框状态

class LoginPage extends StatefulWidget {
  static const name = "LoginPage";
  @override
  _LoginPageState createState() => _LoginPageState();
}

// enum CLIENT_TYPE{
//   PHONE,
//   H5,
//   PC,
// }

class _LoginPageState extends State<LoginPage> {
  // 多端登录类型, [手机，h5，电脑]
  // List<bool> checkValue = [false,false,false];
  CLIENT_TYPE _clientType = CLIENT_TYPE.PHONE;

  /// 1 手机号验证码 2邮箱验证码
  var loginType = AppUserInfo.instance.loginType;

  var dio = Dio();
  // 发送手机验证码
  void _onSendPhoneCode(SendPhoneCodeReq sendPhoneCodeReq) {
    //Map<String,String> params){
    log("------${sendPhoneCodeReq}");
    // var sendPhoneCodeReq = SendPhoneCodeReq();
    // Map<String,dynamic>params = action.payload;
    // sendPhoneCodeReq.phoneNo = params["phoneNo"]!;
    // sendPhoneCodeReq.code = params["code"]!;

    // var url = cfgCommImGateUrl + "/rpc/:pb_grpc_commim_uaa.UUA/:UpdateUserInfo";
    var pbCommData = MakePBCommData(
        aimId: Int64(AppUserInfo.instance.imId), toService: Service.commim_uaa);
    // /pb_grpc_commim_uaa.UUA/BanUser
    RpcCallAppGateApi("/pb_grpc_commim_uaa.UAA/SendPhoneCode", sendPhoneCodeReq,
            pbCommData)
        .then((value) {
      // _onLoginSuccess(loginReq,value);
      if (value.statusCode == 200) {
        var commRsp = CommRsp()..mergeFromBuffer(value.bodyBytes);
        if (commRsp.result == ErrCode.SUCCESS) {
          showToast("验证码已发送到您的手机，请注意查收");
          // todo
          // 设置发送按钮1分钟计时，不可点
          return;
        } else {
          showToast("发送验证码失败：${commRsp.result}");
        }
      } else {
        showToast("发送验证码失败：${value.statusCode}");
      }
    }).catchError((err) {
      // 登录错误
      log("err:$err");
      showToast("发送验证码失败:$err");
    });
  }

  // 发送邮箱验证码
  void _onSendEmailCode(SendEmailCodeReq sendEmailCodeReq) {
    //Map<String,String> params){
    log("------${sendEmailCodeReq}");
    // var sendEmailCodeReq = SendEmailCodeReq();
    // Map<String,dynamic>params = action.payload;
    // sendEmailCodeReq.emailAddr = params["phoneNo"]!;
    // sendEmailCodeReq.code = params["code"]!;

    // var url = cfgCommImGateUrl + "/rpc/:pb_grpc_commim_uaa.UUA/:UpdateUserInfo";
    var pbCommData = MakePBCommData(
        aimId: Int64(AppUserInfo.instance.imId), toService: Service.commim_uaa);
    // /pb_grpc_commim_uaa.UUA/BanUser
    RpcCallAppGateApi("/pb_grpc_commim_uaa.UAA/SendEmailCode", sendEmailCodeReq,
            pbCommData)
        .then((value) {
      // _onLoginSuccess(loginReq,value);
      if (value.statusCode == 200) {
        var commRsp = CommRsp()..mergeFromBuffer(value.bodyBytes);
        if (commRsp.result == ErrCode.SUCCESS) {
          showToast("验证码已发送到您的邮箱，请注意查收");
          // todo
          // 设置发送按钮1分钟计时，不可点
          return;
        } else {
          showToast("发送验证码失败：${commRsp.result}");
        }
      } else {
        showToast("发送验证码失败：${value.statusCode}");
      }
    }).catchError((err) {
      // 登录错误
      log("err:$err");
      showToast("发送验证码失败:$err");
    });
  }

  Future<void> _onAileLoginWithPhone(
      Map<String, dynamic> params, BuildContext ctx) async {
    log("------${params}");
    var loginReq = LoginReq();
    // Map<String,dynamic>params = action.payload;
    loginReq.phone = params["phoneNo"];
    loginReq.email = params["email"];
    loginReq.password = params["phoneCode"];
    loginReq.code = int.parse(params["code"]);

    // var url = cfgCommImGateUrl + "/rpc/:pb_grpc_commim_uaa.UUA/:UpdateUserInfo";
    var pbCommData = MakePBCommData(
        aimId: Int64(AppUserInfo.instance.imId), toService: Service.commim_uaa);
    // /pb_grpc_commim_uaa.UUA/BanUser
    RpcCallAppGateApi("/pb_grpc_commim_uaa.UAA/Login", loginReq, pbCommData)
        .then((value) {
      _onLoginSuccess(loginReq, value);
      // 切换到原来的页面
      Navigator.pop(ctx);
    }).catchError((err) {
      // 登录错误
      log("err:$err");
      showToast("登录失败:$err");
    });
  }

  void _onLoginSuccess(LoginReq req, http.Response rsp) async {
    var loginRsp = LoginRsp()..mergeFromBuffer(rsp.bodyBytes);
    log("登录返回:${rsp} loginRsp:${loginRsp}");
    // 设置用户信息
    var user = AppUserInfo();
    // var data = value["data"];
    // log("*********data: $data");
    //    user.appId = Int64(8000);
    user.appId = ConfigMgr().config!.appId;
    user.appUid = loginRsp.info.userId.toString();
    user.nickName = loginRsp.info.nickname; //data["nickname"];
    user.appAvatar = loginRsp.info.avatar; //data["appAvatar"];
    user.sign = loginRsp.info.sign; //data["sign"];
    user.gender = loginRsp.info.gender; //data["gender"];
    //
    user.level = loginRsp.info.level; //data["level"];
    user.imId = loginRsp.info.imId.toInt(); //imId.toInt();//data["imUserId"];
    user.userSourceVersion = loginRsp.info.userSourceVersion;
    user.userName = loginRsp.info.username;

    // 初始化db
    // initDb(Int64(user.imId));
    try {
      await AppDatabase().objectBox.close();
    } catch (error) {}
    await AppDatabase().init(user.imId);

    user.appToken = loginRsp.token; //data["appToken"]; /// app登录的token
    user.uniToken = loginRsp.imToken; //data["uniToken"]; /// im登录token
    // signSecret = value["signSecret"];  /// 会被利用，还是不要了
    user.clientType = CLIENT_TYPE.valueOf(_clientType.value)!;
    user.phone = req.phone;
    user.loginType = loginType;
    log("+++++++++++++++++++++++++++++++++++$user");
    // 进行im登录
    user.saveToSp();
    //    Client().SetNetState(NET_STATE.NET_STATE_INIT);
    //   for (int i=0; i < ctx.state.checkValue.length; i ++){
    //     if (ctx.state.checkValue[i] == true){
    //       AppUserInfo().clientType = CLIENT_TYPE.valueOf(i)!;
    //       break;
    //     }
    //   }

    AppUserInfo().clientType = _clientType;

    // token获取到了，重置触发登录IM
    Client.instance.Start();
  }



  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        title: Text('登录入口'),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
        child: Center(
          child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "欢迎使用IM",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: Row(
                  children: [
                    Checkbox(
                      value: _clientType == CLIENT_TYPE.PHONE
                          ? true
                          : false, //state.checkValue[0],
                      activeColor: Colors.red, //选中时的颜色
                      onChanged: (value) {
                        // dispatch(loginActionCreator.onClientTypeChange(0));
                        log("${value}+${_clientType}");
                        if (value == true) {
                          setState(() {
                            _clientType = CLIENT_TYPE.PHONE;
                          });
                        }
                      },
                    ),
                    Text("手机"),
                    Checkbox(
                      value: _clientType == CLIENT_TYPE.H5 ? true : false,
                      activeColor: Colors.red, //选中时的颜色
                      onChanged: (value) {
                        if (value == true) {
                          setState(() {
                            _clientType = CLIENT_TYPE.H5;
                          });
                          // _clientType = CLIENT_TYPE.H5;
                        }
                        // dispatch(loginActionCreator.onClientTypeChange(1));
                      },
                    ),
                    Text("h5"),
                    Checkbox(
                      value: _clientType == CLIENT_TYPE.PC ? true : false,
                      activeColor: Colors.red, //选中时的颜色
                      onChanged: (value) {
                        if (value == true) {
                          setState(() {
                            _clientType = CLIENT_TYPE.PC;
                          });
                          // _clientType = CLIENT_TYPE.PC;
                        }
                        // dispatch(loginActionCreator.onClientTypeChange(2));
                      },
                    ),
                    Text("电脑端"),
                  ],
                ),
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                  child: TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                        labelText: loginType == 1 ? "手机号码" : "邮箱",
                        hintText: loginType == 1 ? "请输入手机号码" : "请输入邮箱",
                        prefixIcon: (loginType == 1)
                            ? const Icon(Icons.phone)
                            : const Icon(Icons.email)),
                    controller: phoneCtl,
                    keyboardType: TextInputType.phone,
                  )),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        autofocus: false,
                        decoration: InputDecoration(
                          labelText: "验证码",
                          hintText: "请输入验证码",

//                  prefixIcon: Icon(Icons.)
                        ),
                        keyboardType: TextInputType.number,
                        controller: codeCtl,
                      ),
                    ),
                    OutlinedButton(
                      // color: Colors.blue,
                      child: Text(
                        "获取验证码",
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {
                        // todo 点击事件
                        log("获取验证码!!! ${phoneCtl.text}");
                        if (loginType == 1) {
                          if (!isChinaPhoneLegal(phoneCtl.text)) {
                            showToast("请正确输入手机号码");
                            return;
                          }
                          // 发送短信验证码
                          SendPhoneCodeReq sendPhoneCodeReq =
                              SendPhoneCodeReq();
                          sendPhoneCodeReq.phoneNo = phoneCtl.text;
                          sendPhoneCodeReq.code = codeCtl.text;
                          _onSendPhoneCode(sendPhoneCodeReq);
                        } else if (loginType == 2) {
                          if (!isEmail(phoneCtl.text)) {
                            showToast("请正确输入邮箱");
                            return;
                          }
                          SendEmailCodeReq sendEmailCodeReq =
                              SendEmailCodeReq();
                          sendEmailCodeReq.emailAddr = phoneCtl.text;
                          sendEmailCodeReq.code = codeCtl.text;
                          _onSendEmailCode(sendEmailCodeReq);
                        }

                        // 发送email验证码
                        // SendEmailCodeReq sendEmailCodeReq = SendEmailCodeReq();
                        // sendEmailCodeReq.emailAddr = emailCtl.text;
                        // sendEmailCodeReq.code = codeCtl.text;
                        // _onSendEmailCode(sendEmailCodeReq);

                        // dispatch(loginActionCreator.onGetPhoneCode(<
                        //     String,
                        //     dynamic>{"phoneNo": phoneCtl.text}));
                      },
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(bottom: 30, left: 20),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (loginType == 1) {
                        loginType = 2;
                      } else {
                        loginType = 1;
                      }
                    });
                  },
                  child: Text(
                    loginType == 1 ? "用邮箱验证码登录" : "用短信验证码登录",
                    style: const TextStyle(color: Colors.blue),
                  ),
                ),
              ),
              OutlinedButton(
//              margin: EdgeInsets.fromLTRB(150, 10, 150, 10),
//               padding: EdgeInsets.fromLTRB(150, 0, 150, 0),
//               color: Colors.blue,
                child: Text(
                  "登录",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                onPressed: () {
//                dbMsg.update(dbFriendInfo, <String, dynamic>{
//                  'frendId': 12345,
//                  'nick':"游客12345",
//                  'avatar':"",
//                  'level':1,
//                  'signName':"有一个人4",
//                }, where: "frendId = 12345");
//                dbMsg.update(dbFriendInfo, <String, dynamic>{
//                  'frendId': 10252,
//                  'nick':"游客10252",
//                  'avatar':"",
//                  'level':1,
//                  'signName':"有一个人4",
//                },where: "frendId=10252");

                  // todo 点击事件
                  log("登录!!! ${phoneCtl.text}}");
                  if (loginType == 1) {
                    if (!isChinaPhoneLegal(phoneCtl.text)) {
                      showToast("请正确输入手机号码");
                      return;
                    }
                  } else if (loginType == 2) {
                    if (!isEmail(phoneCtl.text)) {
                      showToast("请正确输入邮箱");
                      return;
                    }
                  }

                  if (codeCtl.text.length < 4) {
                    showToast("请填写验证码");
                    return;
                  }
                  Map<String, dynamic> params = {
                    "phoneCode": codeCtl.text,
                    "code": codeCtl.text,
                    "appId": ConfigMgr().config!.appId.toInt(),
                    "secret": ConfigMgr().config!.secret,
                    "clientType": _clientType
                  };
                  if (loginType == 1) {
                    params["phoneNo"] = phoneCtl.text;
                    params["email"] = "";
                  } else if (loginType == 2) {
                    params["email"] = phoneCtl.text;
                    params["phoneNo"] = "";
                  }

                  _onAileLoginWithPhone(params, ctx);
                  // dispatch(loginActionCreator.onLogin(
                  //     {"phoneNo":phoneCtl.text,"phoneCode":codeCtl.text,"appId":appId.toInt(),
                  //       "secret":secret, "clientType":state.GetClientType()}));
                },
              ),
              OutlinedButton(
                child: Text(
                  "直接更改用户信息",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .popAndPushNamed(ChangeTestUserPage.name);
                },
              )
            ],
          ),
//        child: TextButton(
//          padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
//          color: Colors.green,
//          child: Text(
//            "返回首页",
//            style: TextStyle(color: Colors.white),
//          ),
//          onPressed: (){
//            // todo 点击事件
//            log("view clicked me go home!!!");
//            dispatch(loginActionCreator.loginActionGoHome());
//          },
//        ),
        ),
      ),
    );
  }
}
