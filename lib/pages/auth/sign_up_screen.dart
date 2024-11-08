import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:fixnum/fixnum.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/db/database.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/pages/home/home_page.dart';
import 'package:quliao/pages/windows/home/window_home.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quliao/pb/pb_pub/service.pbenum.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/widgets/countdown/countdown.dart';
import '../../db/db.dart';
import '../../models/user/myinfo.dart';
import '../../net/socket.dart';
import '../../pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import '../../pb/pb_pub/comm.pb.dart';
import '../../pb/pb_pub/comm.pbenum.dart';
import '../../pb/pb_pub/error_code.pbenum.dart';
import '../../pub/config.dart';
import '../../pub/func.dart';
import '../../pub/im_grpc_opt.dart';
import '../../pub/log.dart';
import '../../pub/pub-def.dart';
import 'package:grpc/src/generated/google/rpc/status.pb.dart' as $grpcStatus;
import 'auth_theme.dart';

TextEditingController phoneCtl = TextEditingController(
    text: AppUserInfo.instance.phone != "" ? AppUserInfo.instance.phone : "");
TextEditingController codeCtl = TextEditingController(text: "");
TextEditingController pwdCtl = TextEditingController(text: "");
TextEditingController nickNameCtl = TextEditingController(text: "");
TextEditingController emailCtl = TextEditingController(
    text: AppUserInfo.instance.email != "" ? AppUserInfo.instance.email : "");
TextEditingController inviteCodeCtl = TextEditingController();
TextEditingController accountCtl = TextEditingController(
    text:
        AppUserInfo.instance.account != "" ? AppUserInfo.instance.account : "");

class SignUpScrean extends StatefulWidget {
  static String name = "SignUpScreen";

  @override
  _SignUpScreanState createState() => _SignUpScreanState();
}

class _SignUpScreanState extends State<SignUpScrean>
    with TickerProviderStateMixin {
  // 到哪一步了,从1开始
  int step = 1;
  int confirmType = 0; //0:邮箱验证码 1:手机验证码

  var nickNameFocusNode = FocusNode();

  void setStep(int stepNo) {
    if (stepNo == 2) {
      nickNameFocusNode.requestFocus();
    }
    step = stepNo;
    setState(() {});
  }

  final double infoHeight = 364.0;
  AnimationController? animationController;
  Animation<double>? animation;
  double opacity1 = 0.0;
  double opacity2 = 0.0;
  double opacity3 = 0.0;

  CLIENT_TYPE _clientType = CLIENT_TYPE.PHONE;

  // var dio = Dio();

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 8));
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: animationController!,
        curve: Interval(0, 1.0, curve: Curves.fastOutSlowIn)));
    setData();
    super.initState();

    if (kIsWeb) {
      _clientType = CLIENT_TYPE.H5;
    } else {
      switch (Platform.operatingSystem) {
        case "android":
          _clientType = CLIENT_TYPE.PHONE;
          break;
        case "fuchsia":
          _clientType = CLIENT_TYPE.PHONE;
          break; // 谷歌新开发的系统，代替Android
        case "ios":
          _clientType = CLIENT_TYPE.PHONE;
          break;
        case "linux":
          _clientType = CLIENT_TYPE.PC;
          break;
        case "macos":
          _clientType = CLIENT_TYPE.PC;
          break;
        case "windows":
          _clientType = CLIENT_TYPE.PC;
          break;
        default:
          _clientType = CLIENT_TYPE.PHONE;
      }
    }

    // onLoginTypeChange(AppUserInfo.instance.loginType, needRefresh: false);
  }

  @override
  void dispose() {
    nickNameFocusNode.dispose();
    super.dispose();
  }

  Future<void> setData() async {
    animationController?.forward();
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity1 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity2 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity3 = 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double tempHeight = MediaQuery.of(context).size.height;

    return Container(
      color: AuthTheme.nearlyWhite,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 1.2,
                  child: Image.asset('assets/design_course/webInterFace.png'),
                  // child: Image.asset("images/logo.png"),
                ),
              ],
            ),
            Positioned(
              top: 100,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: AuthTheme.nearlyWhite,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(32.0),
                      topRight: Radius.circular(32.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: AuthTheme.grey.withOpacity(0.2),
                        offset: const Offset(1.1, 1.1),
                        blurRadius: 10.0),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: SingleChildScrollView(
                    child: Stack(children: [
                      Positioned(
                        top: 0,
                        right: 35,
                        child: ScaleTransition(
                          alignment: Alignment.center,
                          scale: CurvedAnimation(
                              parent: animationController!,
                              curve: Curves.fastOutSlowIn),
                          child: Container(
                            width: 120,
                            height: 120,
                            child: Center(
                              child: Image.asset("images/logo.png"),
                            ),
                          ),
                        ),
                        // ),
                      ),
                      Container(
                        constraints: BoxConstraints(
                            minHeight: infoHeight,
                            maxHeight: tempHeight > infoHeight
                                ? tempHeight
                                : infoHeight),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsets.only(
                                  top: 32.0, left: 18, right: 16),
                              child: Text(
                                // loginTypeStr[loginType].toString(),
                                "账号注册",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22,
                                  letterSpacing: 0.27,
                                  color: AuthTheme.darkerText,
                                ),
                              ),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.only(
                            //       left: 16, right: 16, bottom: 8, top: 16),
                            //   child: Row(
                            //     mainAxisAlignment:
                            //         MainAxisAlignment.spaceBetween,
                            //     crossAxisAlignment: CrossAxisAlignment.center,
                            //     children: const <Widget>[
                            //       Text(
                            //         '有事常来往，没事常联系',
                            //         textAlign: TextAlign.left,
                            //         style: TextStyle(
                            //           fontWeight: FontWeight.w200,
                            //           fontSize: 12,
                            //           letterSpacing: 0.27,
                            //           color: AuthTheme.nearlyBlue,
                            //         ),
                            //       ),
                            //     ],
                            //   ),
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, right: 16, bottom: 8, top: 16),
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    resultStr + "提示",
                                    textAlign: TextAlign.left,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w200,
                                      fontSize: 12,
                                      letterSpacing: 0.27,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: AnimatedOpacity(
                                duration: const Duration(milliseconds: 500),
                                opacity: opacity2,
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, right: 16, top: 8, bottom: 8),
                                    child: Column(
                                      children: [
                                        Column(
                                          // mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  width: 40,
                                                  height: 40,
                                                  child: Icon(
                                                      Icons.account_circle),
                                                ),
                                                const Text("注册信息"),
                                              ],
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  left: 20),
                                              decoration: const BoxDecoration(
                                                border: Border(
                                                    left: BorderSide(
                                                        width: 1,
                                                        color: Colors.black26)),
                                              ),
                                              child: Offstage(
                                                // account
                                                offstage: step != 1,
                                                child: Container(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(20, 0, 20, 0),
                                                    child: Column(
                                                      children: [
                                                        TextField(
                                                          // autofocus: true,
                                                          maxLength: 30,
                                                          // style: const TextStyle(fontSize: 15),
                                                          decoration:
                                                              const InputDecoration(
                                                                  labelText:
                                                                      "设置账号",
                                                                  hintText:
                                                                      "请输入账号",
                                                                  prefixIcon:
                                                                      Icon(Icons
                                                                          .account_circle_outlined)),
                                                          controller:
                                                              accountCtl,
                                                        ),
                                                        TextField(
                                                          // autofocus: true,
                                                          obscureText: true,
                                                          maxLength: 30,
                                                          // style: const TextStyle(fontSize: 12),
                                                          decoration:
                                                              const InputDecoration(
                                                                  labelText:
                                                                      "请输入密码",
                                                                  hintText:
                                                                      "请输入密码",
                                                                  prefixIcon:
                                                                      Icon(Icons
                                                                          .lock)),
                                                          controller: pwdCtl,
                                                          keyboardType:
                                                              TextInputType
                                                                  .text,
                                                        ),
                                                        Visibility(
                                                          // account
                                                          visible: GlobalController
                                                                  .to
                                                                  .systemConfig
                                                                  .value
                                                                  ?.showInvite ==
                                                              true,
                                                          child: TextField(
                                                            // autofocus: true,
                                                            maxLength: 6,
                                                            decoration:
                                                                const InputDecoration(
                                                                    labelText:
                                                                        "邀请码",
                                                                    hintText:
                                                                        "请输入邀请码",
                                                                    prefixIcon:
                                                                        Icon(Icons
                                                                            .insert_invitation)),
                                                            controller:
                                                                inviteCodeCtl,
                                                            keyboardType:
                                                                TextInputType
                                                                    .number,
                                                          ),
                                                        ),
                                                        Offstage(
                                                          // account
                                                          offstage:
                                                              confirmType != 1,
                                                          child: TextField(
                                                            // autofocus: true,
                                                            maxLength: 15,
                                                            decoration: const InputDecoration(
                                                                labelText:
                                                                    "手机号码",
                                                                hintText:
                                                                    "请输入手机号码",
                                                                prefixIcon:
                                                                    Icon(Icons
                                                                        .phone)),
                                                            controller:
                                                                phoneCtl,
                                                            keyboardType:
                                                                TextInputType
                                                                    .phone,
                                                          ),
                                                        ),
                                                        Row(
                                                          children: [
                                                            // InkWell(
                                                            //   borderRadius: BorderRadius
                                                            //       .circular(AppBar()
                                                            //       .preferredSize
                                                            //       .height),
                                                            //   child: Text(
                                                            //     "使用邮箱验证",
                                                            //     style: confirmType ==
                                                            //         0
                                                            //         ? const TextStyle(
                                                            //         color: Colors
                                                            //             .grey)
                                                            //         : TextStyle(
                                                            //         color: Colors
                                                            //             .blue),
                                                            //   ),
                                                            //   onTap: () {
                                                            //     confirmType = 0;
                                                            //     setState(() {});
                                                            //   },
                                                            // ),
                                                            // SizedBox(
                                                            //   width: 20,
                                                            // ),
                                                            // InkWell(
                                                            //   borderRadius: BorderRadius
                                                            //       .circular(AppBar()
                                                            //       .preferredSize
                                                            //       .height),
                                                            //   child: Text(
                                                            //     "使用手机验证",
                                                            //     style: confirmType ==
                                                            //         1
                                                            //         ? TextStyle(
                                                            //         color: Colors
                                                            //             .grey)
                                                            //         : TextStyle(
                                                            //         color: Colors
                                                            //             .blue),
                                                            //   ),
                                                            //   onTap: () {
                                                            //     confirmType = 1;
                                                            //     setState(() {});
                                                            //   },
                                                            // ),
                                                          ],
                                                        ),
                                                        Container(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: OutlinedButton(
                                                              onPressed: () {
                                                                onSignUpClick();
                                                              },
                                                              child:
                                                                  Text("注册")),
                                                        ),
                                                      ],
                                                    )),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  width: 40,
                                                  height: 40,
                                                  child: Icon(
                                                      Icons.accessibility_new),
                                                ),
                                                const Text("确认信息"),
                                              ],
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  left: 20),
                                              decoration: const BoxDecoration(
                                                border: Border(
                                                    left: BorderSide(
                                                        width: 1,
                                                        color: Colors.black26)),
                                              ),
                                              child: Offstage(
                                                offstage: step != 2,
                                                child: Container(
                                                    padding: const EdgeInsets
                                                            .fromLTRB(
                                                        20, 0, 20, 10),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        TextField(
                                                          focusNode:
                                                              nickNameFocusNode,
                                                          maxLength: 30,
                                                          decoration:
                                                              const InputDecoration(
                                                                  labelText:
                                                                      "您的昵称",
                                                                  prefixIcon:
                                                                      Icon(Icons
                                                                          .account_circle_outlined)),
                                                          controller:
                                                              nickNameCtl,
                                                        ),
                                                        if (GlobalController
                                                                .to
                                                                .systemConfig
                                                                .value
                                                                ?.emailLogin ==
                                                            true)
                                                          TextField(
                                                            // autofocus: true,
                                                            maxLength: 30,
                                                            decoration: const InputDecoration(
                                                                labelText: "邮箱",
                                                                hintText:
                                                                    "请输入邮箱地址",
                                                                prefixIcon:
                                                                    Icon(Icons
                                                                        .email)),
                                                            controller:
                                                                emailCtl,
                                                            keyboardType:
                                                                TextInputType
                                                                    .emailAddress,
                                                          )
                                                        else
                                                          TextField(
                                                            // autofocus: true,
                                                            maxLength: 30,
                                                            decoration: const InputDecoration(
                                                                labelText: "手机",
                                                                hintText:
                                                                "请输入手机号码",
                                                                prefixIcon:
                                                                Icon(Icons
                                                                    .phone)),
                                                            controller:
                                                            emailCtl,
                                                            keyboardType:
                                                            TextInputType
                                                                .emailAddress,
                                                          ),
                                                        Row(
                                                          children: [
                                                            Expanded(
                                                              child: TextField(
                                                                autofocus: true,
                                                                maxLength: 6,
                                                                decoration: const InputDecoration(
                                                                    labelText:
                                                                        "请输入验证码",
                                                                    hintText:
                                                                        "请输入验证码",
                                                                    prefixIcon:
                                                                        Icon(Icons
                                                                            .lock)),
                                                                controller:
                                                                    codeCtl,
                                                                keyboardType:
                                                                    TextInputType
                                                                        .text,
                                                              ),
                                                            ),
                                                            CountdownWidget(
                                                              onComplete: () {},
                                                              childBuilder:
                                                                  (context,
                                                                      seconds) {
                                                                LoggerManager().debug(
                                                                    'seconds ======> $seconds');
                                                                bool idleState =
                                                                    seconds ==
                                                                            60 ||
                                                                        seconds ==
                                                                            0;
                                                                CountdownCubit
                                                                    cubit =
                                                                    BlocProvider.of<
                                                                            CountdownCubit>(
                                                                        context);
                                                                return Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.r),
                                                                    color: idleState
                                                                        ? Theme.of(context)
                                                                            .colorScheme
                                                                            .primary
                                                                        : Theme.of(context)
                                                                            .colorScheme
                                                                            .primary
                                                                            .withOpacity(0.5),
                                                                  ),
                                                                  child:
                                                                      Material(
                                                                    color: Colors
                                                                        .transparent,
                                                                    child:
                                                                        InkWell(
                                                                      onTap: idleState
                                                                          ? () {
                                                                              sendSmsEmailCode(cubit);
                                                                            }
                                                                          : null,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              4.r),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            80.w,
                                                                        height:
                                                                            24.h,
                                                                        alignment:
                                                                            Alignment.center,
                                                                        child:
                                                                            Text(
                                                                          idleState
                                                                              ? '获取验证码'
                                                                              : '${seconds}s',
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                13.sp,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                        Container(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: confirmType ==
                                                                  0
                                                              ? Gaps.empty
                                                              // Text(
                                                              //         "您的验证码已经通过邮件发送到您刚刚填写的邮箱里!!",
                                                              //         style: TextStyle(
                                                              //             color: Colors
                                                              //                 .amber,
                                                              //             fontSize:
                                                              //                 12),
                                                              //       )
                                                              : Text(
                                                                  "您的验证码已经通过短信发送到您刚刚填写的手机上!!",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .amber,
                                                                      fontSize:
                                                                          12),
                                                                ),
                                                        ),
                                                        Container(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              InkWell(
                                                                onTap: () {
                                                                  setStep(1);
                                                                },
                                                                child: Text(
                                                                    "返回修改信息",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .blue,
                                                                        fontSize:
                                                                            12)),
                                                              ),
                                                              OutlinedButton(
                                                                  onPressed:
                                                                      () {
                                                                    onConfirmClick(
                                                                        context);
                                                                  },
                                                                  child: Text(
                                                                      "提交")),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    )),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  width: 40,
                                                  height: 40,
                                                  child: Icon(
                                                      Icons.remove_red_eye),
                                                ),
                                                const Text("完成注册"),
                                              ],
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  left: 20),
                                              decoration: const BoxDecoration(
                                                border: Border(
                                                    left: BorderSide(
                                                        width: 1,
                                                        color: Colors.black26)),
                                              ),
                                              child: Offstage(
                                                // account
                                                offstage: step != 3,
                                                child: Container(
                                                    padding: const EdgeInsets
                                                            .fromLTRB(
                                                        20, 0, 20, 10),
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          margin:
                                                              EdgeInsets.all(
                                                                  20),
                                                          child: const Text(
                                                            "账号注册成功",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 20),
                                                          ),
                                                        ),
                                                        Container(
                                                            // margin: EdgeInsets.all(20),
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: const Text(
                                                              "以下是您的账号信息，请妥善保管",
                                                              style: TextStyle(
                                                                color:
                                                                    Colors.blue,
                                                              ),
                                                            )),
                                                        Container(
                                                          margin:
                                                              EdgeInsets.all(
                                                                  10),
                                                          child: Row(
                                                            children: [
                                                              Text("账号:"),
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Text(
                                                                  "${accountCtl.text}",
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .blue,
                                                                  )),
                                                            ],
                                                          ),
                                                        ),
                                                        Offstage(
                                                          // account
                                                          offstage:
                                                              confirmType != 0,
                                                          child: Container(
                                                            margin:
                                                                EdgeInsets.all(
                                                                    10),
                                                            child: Row(
                                                              children: [
                                                                Text("邮箱:"),
                                                                SizedBox(
                                                                  width: 10,
                                                                ),
                                                                Text(
                                                                    "${emailCtl.text}",
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .blue,
                                                                    )),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Offstage(
                                                          // account
                                                          offstage:
                                                              confirmType != 1,
                                                          child: Container(
                                                            margin:
                                                                EdgeInsets.all(
                                                                    10),
                                                            child: Row(
                                                              children: [
                                                                Text("手机号码:"),
                                                                SizedBox(
                                                                  width: 10,
                                                                ),
                                                                Text(
                                                                    "${phoneCtl.text}",
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .blue,
                                                                    )),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: OutlinedButton(
                                                              onPressed: () {
                                                                onIntoClick();
                                                              },
                                                              child:
                                                                  Text("开始体验")),
                                                        ),
                                                      ],
                                                    )),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: SizedBox(
                width: AppBar().preferredSize.height,
                height: AppBar().preferredSize.height,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius:
                        BorderRadius.circular(AppBar().preferredSize.height),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: AuthTheme.nearlyBlack,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void sendSmsEmailCode(CountdownCubit cubit) {
    if (GlobalController.to.systemConfig.value?.emailLogin == true) {
      if (!isEmail(emailCtl.text)) {
        showToast("请正确输入邮箱地址");
        return;
      }

      cubit.startCountdown();

      /// 发送验证码到邮箱
      SendEmailCodeReq sendEmailCodeReq = SendEmailCodeReq();
      sendEmailCodeReq.emailAddr = emailCtl.text;
      _onSendEmailCode(sendEmailCodeReq, cubit);
      return;
    }
    if (!isChinaPhoneLegal(emailCtl.text)) {
      showToast("请输入正确手机号");
      return;
    }

    cubit.startCountdown();

    // 发送短信验证码
    SendPhoneCodeReq sendPhoneCodeReq = SendPhoneCodeReq();
    sendPhoneCodeReq.phoneNo = emailCtl.text;

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
          cubit.cancel();
        }
      } else {
        showToast("发送验证码失败：${value.statusCode}");
        cubit.cancel();
      }
    }).catchError((err) {
      // 登录错误
      log("err:$err");
      showToast("发送验证码失败:$err");
      cubit.cancel();
    });
  }

  void onSignUpClick() {
    // 发送验证码，成功则跳到下一步
    if (!isAccount(accountCtl.text)) {
      showToast("请正确输入账号，由6~30位数字和字母组成");
      return;
    }

    if (pwdCtl.text.length < 6 || pwdCtl.text.length > 30) {
      showToast("请正确输入密码，6到30个字符");
      return;
    }

    if (confirmType == 0) {
      // 需要邮箱
      // if (!isEmail(emailCtl.text)) {
      //   showToast("请正确输入邮箱地址");
      //   return;
      // }
      //
      // // 发送验证码到邮箱
      // SendEmailCodeReq sendEmailCodeReq = SendEmailCodeReq();
      // sendEmailCodeReq.emailAddr = emailCtl.text;
      // _onSendEmailCode(sendEmailCodeReq);
      setStep(2);
    } else {
      // 需要手机号
      if (!isChinaPhoneLegal(phoneCtl.text)) {
        showToast("请正确输入手机号码");
        return;
      }

      // 发送验证码到手机
      SendPhoneCodeReq sendPhoneCodeReq = SendPhoneCodeReq();
      sendPhoneCodeReq.phoneNo = phoneCtl.text;
      _onSendPhoneCode(sendPhoneCodeReq);

      showToast("正在请求发送验证码");
    }
  }

  void onConfirmClick(BuildContext ctx) {
    if (nickNameCtl.text.isEmpty) {
      showToast("请输入昵称");
      return;
    }

    if (!isCode(codeCtl.text)) {
      if (confirmType == 0) {
        showToast("请正确输入验证码，发送到您邮箱的6位数字");
      } else {
        showToast("请正确输入验证码，发送到您手机的6位数字");
      }
      return;
    }

    var params = <String, dynamic>{
      "appId": ConfigMgr().config!.appId.toInt(),
      "secret": ConfigMgr().config!.secret,
      "clientType": _clientType
    };

    if (GlobalController.to.systemConfig.value?.emailLogin == true) {
      params["email"] = emailCtl.text;
    } else {
      params["phone"] = emailCtl.text;
    }

    // confirmType == 0
    //     ? params["email"] = emailCtl.text
    //     : params["phone"] = phoneCtl.text;
    params["code"] = codeCtl.text;
    params["nickname"] = nickNameCtl.text;
    params["username"] = accountCtl.text;
    params["password"] = pwdCtl.text;

    _doSignUp(ctx, params);

    // step = 3;
    // setState(() {
    //
    // });
  }

  void onIntoClick() {
    // 跳到主页面
    if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
      Navigator.popUntil(context, ModalRoute.withName(WindowHomePage.name));
    } else {
      Navigator.popUntil(context, ModalRoute.withName(MainPage.name));
    }
  }

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
          setStep(2);

          return;
        } else {
          showToast("发送验证码失败：${commRsp.result}");
          resultStr = "发送验证码失败：${commRsp.result}";
        }
      } else {
        showToast("发送验证码失败：${value.statusCode}");
        resultStr = "发送验证码失败：${value.statusCode}";
      }
    }).catchError((err) {
      // 登录错误
      log("err:$err");
      showToast("发送验证码失败:$err");
      resultStr = "发送验证码失败:$err";
    });

    setState(() {});
  }

  // 发送邮箱验证码
  void _onSendEmailCode(
      SendEmailCodeReq sendEmailCodeReq, CountdownCubit cubit) {
    var pbCommData = MakePBCommData(
        aimId: Int64(AppUserInfo.instance.imId), toService: Service.commim_uaa);
    RpcCallAppGateApi("/pb_grpc_commim_uaa.UAA/SendEmailCode", sendEmailCodeReq,
            pbCommData)
        .then((value) {
      if (value.statusCode == 200) {
        var commRsp = CommRsp()..mergeFromBuffer(value.bodyBytes);
        if (commRsp.result == ErrCode.SUCCESS) {
          showToast("验证码已发送到您的邮箱，请注意查收");

          // setStep(2);

          return;
        } else {
          showToast("发送验证码失败：${commRsp.result}");
          resultStr = "发送验证码失败：${commRsp.result}";
          cubit.cancel();
        }
      } else {
        showToast("发送验证码失败：${value.statusCode}");
        resultStr = "发送验证码失败：${value.statusCode}";
        cubit.cancel();
      }
    }).catchError((err) {
      // 登录错误
      log("err:$err");
      showToast("发送验证码失败:$err");
      resultStr = "发送验证码失败:$err";
      cubit.cancel();
    });

    setState(() {});
  }

  Future<void> _doSignUp(BuildContext ctx, Map<String, dynamic> params) async {
    log("------${params}");
    var signupReq = SignupReq();
    // Map<String,dynamic>params = action.payload;
    signupReq.phone = params["phone"] ?? "";
    signupReq.email = params["email"] ?? "";
    signupReq.username = params["username"] ?? "";
    signupReq.nickname = params["nickname"] ?? "";
    signupReq.password = params["password"] ?? "";
    signupReq.code = int.parse(params["code"] ?? "0");

    final inviteCode = inviteCodeCtl.text.toString();
    final systemConfig = GlobalController.to.systemConfig.value;

    if (systemConfig?.showInvite == true) {
      if (systemConfig?.forceInvite == true) {
        /// 邀请码必填
        if (inviteCode.isEmpty) {
          showToast('请输入邀请码');
          return;
        } else {
          signupReq.sysInviteCode = inviteCode;
        }
      } else {
        /// 邀请码非必填
        if (inviteCode.isNotEmpty) {
          signupReq.sysInviteCode = inviteCode;
        }
      }
    }

    var pbCommData = MakePBCommData(
        aimId: Int64(AppUserInfo.instance.imId), toService: Service.commim_uaa);
    RpcCallAppGateApi("/pb_grpc_commim_uaa.UAA/Signup", signupReq, pbCommData)
        .then((value) {
      _onSignupCallBack(ctx, signupReq, value);
    }).catchError((err) {
      // 登录错误
      log("err:$err");
      showToast("登录失败:$err");
      resultStr = "登录失败:$err";
      setState(() {});
    });
  }

  String resultStr = "";

  void _onSignupCallBack(
      BuildContext ctx, SignupReq req, http.Response rsp) async {
    if (rsp.statusCode != 200) {
      if (rsp.statusCode == 500) {
        var status = $grpcStatus.Status();
        status.mergeFromBuffer(rsp.bodyBytes);
        log("login err:${req}, rsp:${rsp}");
        // 业务错误，跟进错误码展示错误信息
        resultStr = "${status.code}:${status.message}";
        // showToast("注册失败，errno:${status.code} errmsg:${status.message}",
        //     toastLength: Toast.LENGTH_LONG);
        showToast("注册失败，errno:${status.code} errmsg:${status.message}");
        setState(() {});
        return;
      } else {
        resultStr = "注册失败， ${rsp.body}";
        // showToast("注册失败， ${rsp.body}", toastLength: Toast.LENGTH_LONG);
        showToast("注册失败， ${rsp.body}");
      }
      setState(() {});
      return;
    }

    var signupRsp = SignupRsp()..mergeFromBuffer(rsp.bodyBytes);
    log("注册返回:${rsp} SignupRsp:${signupRsp}");

    // 设置用户信息
    var user = AppUserInfo();
    user.appId = ConfigMgr().config!.appId;
    user.appUid = signupRsp.info.userId.toString();
    user.nickName = signupRsp.info.nickname; //data["nickname"];
    user.userName = signupRsp.info.username;
    user.appAvatar = signupRsp.info.avatar; //data["appAvatar"];
    user.sign = signupRsp.info.sign; //data["sign"];
    user.gender = signupRsp.info.gender; //data["gender"];
    //
    user.level = signupRsp.info.level; //data["level"];
    user.imId = signupRsp.info.imId.toInt(); //imId.toInt();//data["imUserId"];

    // 初始化db
    // initDb(Int64(user.imId));
    try {
      await AppDatabase().objectBox.close();
    } catch (error) {}
    await AppDatabase().init(user.imId);

    user.appToken = signupRsp.token; //data["appToken"]; /// app登录的token
    user.uniToken = signupRsp.imToken; //data["uniToken"]; /// im登录token
    // signSecret = value["signSecret"];  /// 会被利用，还是不要了
    user.clientType = CLIENT_TYPE.valueOf(_clientType.value)!;
    user.phone = req.phone;
    user.email = signupRsp.info.email;
    // user.loginType = loginType;
    log("+++++++++++++++++++++++++++++++++++$user");
    // 进行im登录
    user.saveToSp();

    AppUserInfo().clientType = _clientType;

    // token获取到了，重置触发登录IM
    Client.instance.Start();

    if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
      Navigator.of(context).pushNamedAndRemoveUntil(
          WindowHomePage.name, (Route<dynamic> route) => false);
    } else {
      Navigator.of(context).pushNamedAndRemoveUntil(
          MainPage.name, (Route<dynamic> route) => false);
    }
  }
}
