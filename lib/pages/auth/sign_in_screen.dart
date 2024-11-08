import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:fixnum/fixnum.dart';
import 'package:quliao/db/database.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/pages/auth/sign_up_screen.dart';
import 'package:quliao/pages/chat_private/chat.dart';
import 'package:quliao/pages/home/home_page.dart';
import 'package:quliao/pages/windows/home/window_home.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pb/pb_pub/service.pb.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quliao/utils/cache.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/widgets/countdown/countdown.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../db/db.dart';
import '../../models/user/myinfo.dart';
import '../../net/socket.dart';
import '../../pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import '../../pb/pb_pub/error_code.pbenum.dart';
import '../../pub/config.dart';
import '../../pub/func.dart';
import '../../pub/im_grpc_opt.dart';
import '../../pub/log.dart';
import 'package:grpc/src/generated/google/rpc/status.pb.dart' as $grpcStatus;
import 'auth_theme.dart';

TextEditingController phoneCtl = TextEditingController(
    text: AppUserInfo.instance.phone != "" ? AppUserInfo.instance.phone : "");
TextEditingController codeCtl = TextEditingController(text: "");
TextEditingController pwdCtl = TextEditingController(text: "");
TextEditingController emailCtl = TextEditingController(
    text: AppUserInfo.instance.email != "" ? AppUserInfo.instance.email : "");
TextEditingController accountCtl = TextEditingController(
    text:
        AppUserInfo.instance.account != "" ? AppUserInfo.instance.account : "");

bool isPhoneShow = false;
bool isCodeShow = false;
bool isPwdShow = false;
bool isEmailShow = false;
bool isAccountShow = false;

class SignInScreen extends StatefulWidget {
  static String name = "SignInScreen";

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen>
    with TickerProviderStateMixin {
  final double infoHeight = 364.0;
  AnimationController? animationController;
  Animation<double>? animation;
  double opacity1 = 0.0;
  double opacity2 = 0.0;
  double opacity3 = 0.0;

  CLIENT_TYPE _clientType = CLIENT_TYPE.PHONE;
  var loginTypeStr = ["账号密码登录", "邮箱验证码登录", "手机验证码登录"];

  // var loginTypeStr = ["账号密码登录", "邮箱验证码登录"];

  /// 0 账号密码登录 1 邮箱验证码 2 手机号验证码
  var loginType = AppUserInfo.instance.loginType;

  void onLoginTypeChange(int lType, {bool needRefresh = true}) {
    loginType = lType;
    switch (lType) {
      case 0: // 0 账号密码登录
        isAccountShow = true;
        isPwdShow = true;
        isEmailShow = false;
        isPhoneShow = false;
        isCodeShow = false;
        break;
      case 1: // 邮箱登录
        isAccountShow = false;
        isPwdShow = false;
        isEmailShow = true;
        isPhoneShow = false;
        isCodeShow = true;
        break;
      case 2: // 手机验证码登录
        isAccountShow = false;
        isPwdShow = false;
        isEmailShow = false;
        isPhoneShow = true;
        isCodeShow = true;
        break;
    }

    if (needRefresh) {
      setState(() {});
    }
  }

  var dio = Dio();

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
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

    onLoginTypeChange(AppUserInfo.instance.loginType, needRefresh: false);

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (null != ModalRoute.of(context)!.settings.arguments) {
        final arguments =
            ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
        if (arguments.containsKey('kickOff')) {
          final kickOff = arguments['kickOff'] as bool;
          if (kickOff) {
            showToast('您的账号在其他设备登录，您被迫下线');
          }
        }
      }
    });
  }

  Future<void> setData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    accountCtl = TextEditingController(text: prefs.getString("userName") ?? "");
    pwdCtl = TextEditingController();
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

  // 登录方式链接文字样式
  TextStyle _textStyle(int textLoc) {
    return TextStyle(
        color: loginType == textLoc ? Colors.grey : Colors.blue, fontSize: 12);
  }

  @override
  Widget build(BuildContext context) {
    double tempHeight = MediaQuery.of(context).size.height -
        (MediaQuery.of(context).size.width / 1.2) +
        24.0 +
        ((MediaQuery.of(context).size.height /
                    MediaQuery.of(context).size.width) >
                (1334.00 / 750.00)
            ? 0
            : 65.0);

    double loginTop = 0.0;
    if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
      loginTop = 100;
      tempHeight = MediaQuery.of(context).size.height - loginTop - 20;
    } else {
      loginTop = (MediaQuery.of(context).size.width / 1.2) - 60.0;
    }

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
                ),
              ],
            ),
            Positioned(
              top: loginTop,
              //(MediaQuery.of(context).size.width / 1.2) - 24.0,
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
                        // top: 40,
                        right: 35,
                        child: ScaleTransition(
                          alignment: Alignment.center,
                          scale: CurvedAnimation(
                              parent: animationController!,
                              curve: Curves.fastOutSlowIn),
                          child: SizedBox(
                            width: 100,
                            height: 100,
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
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10.0, left: 18, right: 0),
                              child: Text(
                                loginTypeStr[loginType].toString(),
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22,
                                  letterSpacing: 0.27,
                                  color: AuthTheme.darkerText,
                                ),
                              ),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.only(
                            //       left: 16, right: 16, bottom: 8, top: 0),
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
                                  left: 16, right: 16, bottom: 8, top: 0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    resultStr,
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
                                        left: 16, right: 16, top: 0, bottom: 0),
                                    child: Column(
                                      children: [
                                        Column(
                                          children: [
                                            Offstage(
                                              // account
                                              offstage: !isAccountShow,
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        20, 0, 20, 10),
                                                child: TextField(
                                                  autofocus: true,
                                                  // maxLength: 30,
                                                  decoration: InputDecoration(
                                                    labelText: loginTypeStr[0],
                                                    hintText: GlobalController
                                                                .to
                                                                .systemConfig
                                                                .value
                                                                ?.emailLogin ==
                                                            true
                                                        ? "请输入账号/邮箱地址/手机号码"
                                                        : "请输入账号/手机号码",
                                                    prefixIcon: const Icon(
                                                      Icons
                                                          .account_circle_outlined,
                                                    ),
                                                  ),
                                                  controller: accountCtl,
                                                ),
                                              ),
                                            ),
                                            Offstage(
                                              // email
                                              offstage: !isEmailShow,
                                              child: Container(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          20, 0, 20, 10),
                                                  child: TextField(
                                                    autofocus: true,
                                                    maxLength: 30,
                                                    decoration: InputDecoration(
                                                        labelText:
                                                            loginTypeStr[1],
                                                        hintText: "请输入邮箱地址",
                                                        prefixIcon: const Icon(
                                                            Icons.email)),
                                                    controller: emailCtl,
                                                    keyboardType: TextInputType
                                                        .emailAddress,
                                                  )),
                                            ),
                                            Offstage(
                                              //phone
                                              offstage: !isPhoneShow,
                                              child: Container(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          20, 0, 20, 10),
                                                  child: TextField(
                                                    autofocus: true,
                                                    maxLength: 15,
                                                    decoration: InputDecoration(
                                                        labelText:
                                                            loginTypeStr[2],
                                                        hintText: "请输入手机号码",
                                                        prefixIcon: const Icon(
                                                            Icons.phone)),
                                                    controller: phoneCtl,
                                                    keyboardType:
                                                        TextInputType.phone,
                                                  )),
                                            ),
                                            Offstage(
                                              //验证码
                                              offstage: !isCodeShow,
                                              child: Container(
                                                padding: EdgeInsets.fromLTRB(
                                                    20, 0, 20, 10),
                                                child: Row(
                                                  children: <Widget>[
                                                    Expanded(
                                                      child: TextField(
                                                        autofocus: false,
                                                        maxLength: 6,
                                                        decoration:
                                                            const InputDecoration(
                                                          labelText: "验证码",
                                                          hintText: "请输入验证码",
                                                          prefixIcon:
                                                              Icon(Icons.lock),
                                                        ),
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        controller: codeCtl,
                                                      ),
                                                    ),
                                                    CountdownWidget(
                                                      onComplete: () {},
                                                      childBuilder:
                                                          (context, seconds) {
                                                        LoggerManager().debug(
                                                            'seconds ======> $seconds');
                                                        bool idleState =
                                                            seconds == 60 ||
                                                                seconds == 0;
                                                        CountdownCubit cubit =
                                                            BlocProvider.of<
                                                                    CountdownCubit>(
                                                                context);
                                                        return Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        4.r),
                                                            color: idleState
                                                                ? Theme.of(
                                                                        context)
                                                                    .colorScheme
                                                                    .primary
                                                                : Theme.of(
                                                                        context)
                                                                    .colorScheme
                                                                    .primary
                                                                    .withOpacity(
                                                                        0.5),
                                                          ),
                                                          child: Material(
                                                            color: Colors
                                                                .transparent,
                                                            child: InkWell(
                                                              onTap: idleState
                                                                  ? () {
                                                                      if (loginType ==
                                                                          1) {
                                                                        SendEmailCodeReq
                                                                            sendEmailCodeReq =
                                                                            SendEmailCodeReq();
                                                                        sendEmailCodeReq.emailAddr =
                                                                            emailCtl.text;
                                                                        sendEmailCodeReq.code =
                                                                            codeCtl.text;
                                                                        _onSendEmailCode(
                                                                            sendEmailCodeReq,
                                                                            cubit);
                                                                      } else if (loginType ==
                                                                          2) {
                                                                        if (!isChinaPhoneLegal(
                                                                            phoneCtl.text)) {
                                                                          showToast(
                                                                              "请正确输入手机号码");
                                                                          return;
                                                                        }
                                                                        // 发送短信验证码
                                                                        SendPhoneCodeReq
                                                                            sendPhoneCodeReq =
                                                                            SendPhoneCodeReq();
                                                                        sendPhoneCodeReq.phoneNo =
                                                                            phoneCtl.text;
                                                                        sendPhoneCodeReq.code =
                                                                            codeCtl.text;
                                                                        _onSendPhoneCode(
                                                                            sendPhoneCodeReq,
                                                                            cubit);
                                                                      }
                                                                    }
                                                                  : null,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4.r),
                                                              child: Container(
                                                                width: 80.w,
                                                                height: 24.h,
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Text(
                                                                  idleState
                                                                      ? '获取验证码'
                                                                      : '${seconds}s',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        13.sp,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ),
/*                                                    OutlinedButton(
                                                      // color: Colors.blue,
                                                      child: const Text(
                                                        "获取验证码",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.black),
                                                      ),
                                                      onPressed: () {
                                                        // todo 点击事件
                                                        log("获取验证码!!! ${phoneCtl.text}");
                                                        if (loginType == 2) {
                                                          if (!isChinaPhoneLegal(
                                                              phoneCtl.text)) {
                                                            showToast(
                                                                "请正确输入手机号码");
                                                            return;
                                                          }
                                                          // 发送短信验证码
                                                          SendPhoneCodeReq
                                                              sendPhoneCodeReq =
                                                              SendPhoneCodeReq();
                                                          sendPhoneCodeReq
                                                                  .phoneNo =
                                                              phoneCtl.text;
                                                          sendPhoneCodeReq
                                                                  .code =
                                                              codeCtl.text;
                                                          _onSendPhoneCode(
                                                              sendPhoneCodeReq);
                                                        } else if (loginType ==
                                                            1) {
                                                          if (!isEmail(
                                                              emailCtl.text)) {
                                                            showToast(
                                                                "请正确输入邮箱地址");
                                                            return;
                                                          }
                                                          SendEmailCodeReq
                                                              sendEmailCodeReq =
                                                              SendEmailCodeReq();
                                                          sendEmailCodeReq
                                                                  .emailAddr =
                                                              emailCtl.text;
                                                          sendEmailCodeReq
                                                                  .code =
                                                              codeCtl.text;
                                                          _onSendEmailCode(
                                                              sendEmailCodeReq);
                                                        }
                                                      },
                                                    ),*/
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Offstage(
                                              // 密码
                                              offstage: !isPwdShow,
                                              child: Container(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          20, 0, 20, 10),
                                                  child: TextField(
                                                    autofocus: true,
                                                    obscureText: true,
                                                    maxLength: 30,
                                                    decoration: InputDecoration(
                                                        labelText: "请输入密码",
                                                        hintText: "请输入密码",
                                                        prefixIcon: const Icon(
                                                            Icons.lock)),
                                                    controller: pwdCtl,
                                                    keyboardType:
                                                        TextInputType.text,
                                                  )),
                                            ),
                                          ],
                                        ),
                                        // SizedBox(
                                        //   height: 40,
                                        // ),
                                        Row(
                                          children: [
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              margin: const EdgeInsets.only(
                                                  bottom: 0, left: 20, top: 10),
                                              child: InkWell(
                                                onTap: () {
                                                  onLoginTypeChange(0);
                                                  // setState(() {
                                                  //   if (loginType == 1) {
                                                  //     loginType = 2;
                                                  //   } else {
                                                  //     loginType = 1;
                                                  //   }
                                                  // });
                                                },
                                                child: Text(
                                                  "账号密码登录",
                                                  style: _textStyle(0),
                                                  // TextStyle(
                                                  //     color: loginType == 0?Colors.grey:Colors.blue),
                                                ),
                                              ),
                                            ),
                                            if (GlobalController.to.systemConfig
                                                    .value?.emailLogin ==
                                                true)
                                              Container(
                                                alignment: Alignment.centerLeft,
                                                margin: const EdgeInsets.only(
                                                    bottom: 0,
                                                    left: 20,
                                                    top: 10),
                                                child: InkWell(
                                                  onTap: () {
                                                    onLoginTypeChange(1);
                                                  },
                                                  child: Text(
                                                    "邮箱验证码登录",
                                                    // loginType == 1 ? "用邮箱验证码登录" : "用短信验证码登录",
                                                    style: _textStyle(1),
                                                    // TextStyle(
                                                    //     color: loginType == 1?Colors.grey:Colors.blue),
                                                  ),
                                                ),
                                              ),
                                            if (GlobalController.to.systemConfig
                                                    .value?.phoneLogin ==
                                                true)
                                              Container(
                                                alignment: Alignment.centerLeft,
                                                margin: const EdgeInsets.only(
                                                    bottom: 0,
                                                    left: 20,
                                                    top: 10),
                                                child: InkWell(
                                                  onTap: () {
                                                    onLoginTypeChange(2);
                                                  },
                                                  child: Text(
                                                    "手机验证码登录",
                                                    // loginType == 1 ? "用邮箱验证码登录" : "用短信验证码登录",
                                                    style: _textStyle(2),
                                                    // TextStyle(
                                                    //     color: loginType == 2?Colors.grey:Colors.blue),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),

                                        Container(
                                          margin: const EdgeInsets.all(20),
                                          child: TextButton(
                                            onPressed: onLoginPressed,
                                            child: Container(
                                              height: 48,
                                              // width: 200,
                                              decoration: BoxDecoration(
                                                color: AuthTheme.nearlyBlue,
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  Radius.circular(16.0),
                                                ),
                                                boxShadow: <BoxShadow>[
                                                  BoxShadow(
                                                      color: AuthTheme
                                                          .nearlyBlue
                                                          .withOpacity(0.5),
                                                      offset: const Offset(
                                                          1.1, 1.1),
                                                      blurRadius: 10.0),
                                                ],
                                              ),
                                              child: const Center(
                                                child: Text(
                                                  '登录',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 18,
                                                    letterSpacing: 0.0,
                                                    color:
                                                        AuthTheme.nearlyWhite,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                            ),
                            AnimatedOpacity(
                              duration: const Duration(milliseconds: 500),
                              opacity: opacity3,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, bottom: 16, right: 16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text("还没有账号?"),
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    Expanded(
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (BuildContext ctx) {
                                            return SignUpScrean();
                                          }));
                                        },
                                        child: const Text(
                                          "注册一个",
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).padding.bottom,
                            )
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getTimeBoxUI(String text1, String txt2) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: AuthTheme.nearlyWhite,
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: AuthTheme.grey.withOpacity(0.2),
                offset: const Offset(1.1, 1.1),
                blurRadius: 8.0),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              left: 18.0, right: 18.0, top: 12.0, bottom: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                text1,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  letterSpacing: 0.27,
                  color: AuthTheme.nearlyBlue,
                ),
              ),
              Text(
                txt2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 14,
                  letterSpacing: 0.27,
                  color: AuthTheme.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onLoginPressed() {
    // todo 点击事件
    log("登录!!! ${phoneCtl.text}}");

    Map<String, dynamic> params = {
      // "phoneCode": codeCtl.text,
      // "code": codeCtl.text,
      "appId": ConfigMgr().config!.appId.toInt(),
      "secret": ConfigMgr().config!.secret,
      "clientType": _clientType
    };

    switch (loginType) {
      case 0: //账密登录
        if (!isAccount(accountCtl.text) &&
            !isEmail(accountCtl.text) &&
            !isChinaPhoneLegal(accountCtl.text)) {
          showToast("请正确输入账号，由数字和字母组成");
          return;
        }

        if (pwdCtl.text.length < 6 || pwdCtl.text.length > 30) {
          // if (!isPwd(pwdCtl.text)){
          showToast("请正确输入密码，6到30个字符");
          //   return;
          // }
        }
        params["account"] = accountCtl.text;
        params["password"] = pwdCtl.text;
        break;
      case 1: // 邮箱登录
        log("emailCtl.text：${emailCtl.text}");
        if (!isEmail(emailCtl.text)) {
          showToast("请正确输入邮箱地址");
          return;
        }

        if (!isCode(codeCtl.text)) {
          showToast("请正确输入验证码，发送到您邮箱的6位数字");
          return;
        }

        if (codeCtl.text.length < 6) {
          showToast("请填写验证码");
          return;
        }

        params["email"] = emailCtl.text;
        params["code"] = codeCtl.text;
        break;
      case 2: //手机登录
        if (!isChinaPhoneLegal(phoneCtl.text)) {
          showToast("请正确输入手机号码");
          return;
        }

        if (!isCode(codeCtl.text)) {
          showToast("请正确输入验证码，发送到您手机的6位数字");
          return;
        }

        if (codeCtl.text.length < 6) {
          showToast("请填写验证码");
          return;
        }

        params["phone"] = phoneCtl.text;
        params["code"] = codeCtl.text;
        break;
    }
    _onLogin(context, params);
  }

  // 发送手机验证码
  void _onSendPhoneCode(
      SendPhoneCodeReq sendPhoneCodeReq, CountdownCubit cubit) {
    //Map<String,String> params){
    log("------${sendPhoneCodeReq}");
    // var sendPhoneCodeReq = SendPhoneCodeReq();
    // Map<String,dynamic>params = action.payload;
    // sendPhoneCodeReq.phoneNo = params["phoneNo"]!;
    // sendPhoneCodeReq.code = params["code"]!;

    cubit.startCountdown();

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

  // 发送邮箱验证码
  void _onSendEmailCode(
      SendEmailCodeReq sendEmailCodeReq, CountdownCubit cubit) {
    if (!isEmail(emailCtl.text)) {
      showToast("请正确输入邮箱地址");
      return;
    }

    cubit.startCountdown();

    var pbCommData = MakePBCommData(
        aimId: Int64(AppUserInfo.instance.imId), toService: Service.commim_uaa);
    RpcCallAppGateApi("/pb_grpc_commim_uaa.UAA/SendEmailCode", sendEmailCodeReq,
            pbCommData)
        .then((value) {
      if (value.statusCode == 200) {
        var commRsp = CommRsp()..mergeFromBuffer(value.bodyBytes);
        if (commRsp.result == ErrCode.SUCCESS) {
          showToast("验证码已发送到您的邮箱，请注意查收");
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

  Future<void> _onLogin(BuildContext ctx, Map<String, dynamic> params) async {
    log("------${params}");
    var loginReq = LoginReq();
    loginReq.phone = params["phone"] ?? "";
    loginReq.email = params["email"] ?? "";
    loginReq.username = params["account"] ?? "";
    loginReq.password = params["password"] ?? "";
    loginReq.code = int.parse(params["code"] ?? "0");

    var pbCommData = MakePBCommData(
        aimId: Int64(AppUserInfo.instance.imId), toService: Service.commim_uaa);
    RpcCallAppGateApi("/pb_grpc_commim_uaa.UAA/Login", loginReq, pbCommData)
        .then((value) async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString("userName", loginReq.username);
      prefs.setString("password", loginReq.password);
      _onLoginCallBack(ctx, loginReq, value);
    }).catchError((err) {
      // 登录错误
      log("err:$err");
      showToast("登录失败:$err");
    });
  }

  String resultStr = "";

  void _onLoginCallBack(
      BuildContext ctx, LoginReq req, http.Response rsp) async {
    if (rsp.statusCode != 200) {
      if (rsp.statusCode == 500) {
        var status = $grpcStatus.Status();
        status.mergeFromBuffer(rsp.bodyBytes);
        log("login err:${req}, rsp:${rsp}");
        // 业务错误，跟进错误码展示错误信息
        resultStr = "${status.code}:${status.message}";
        // showToast("登录失败，errno:${status.code} errmsg:${status.message}",
        //     toastLength: Toast.LENGTH_LONG);
        showToast("登录失败，errno:${status.code} errmsg:${status.message}");
      } else {
        resultStr = "登录失败， ${rsp.body}";
        // showToast("登录失败， ${rsp.body}", toastLength: Toast.LENGTH_LONG);
        showToast(resultStr);
      }
      setState(() {});
      return;
    }

    var loginRsp = LoginRsp()..mergeFromBuffer(rsp.bodyBytes);
    log("登录返回:${rsp} loginRsp:${loginRsp}");

    AppUserInfo().reset();
    groupInfoMap.clear();
    // await AppDatabase().reset();
    // await AppDatabase().dbMsg?.close();

    // 设置用户信息
    var user = AppUserInfo();
    user.appId = ConfigMgr().config!.appId;
    user.appUid = loginRsp.info.userId.toString();
    user.userName = loginRsp.info.username.toString();
    user.nickName = loginRsp.info.nickname; //data["nickname"];
    user.appAvatar = loginRsp.info.avatar; //data["appAvatar"];
    user.sign = loginRsp.info.sign; //data["sign"];
    user.gender = loginRsp.info.gender; //data["gender"];
    //
    user.level = loginRsp.info.level; //data["level"];
    user.imId = loginRsp.info.imId.toInt(); //imId.toInt();//data["imUserId"];

    user.appToken = loginRsp.token; //data["appToken"]; /// app登录的token
    user.uniToken = loginRsp.imToken; //data["uniToken"]; /// im登录token
    // signSecret = value["signSecret"];  /// 会被利用，还是不要了
    user.clientType = CLIENT_TYPE.valueOf(_clientType.value)!;
    user.phone = loginRsp.info.phone;
    user.loginType = loginType;
    user.email = loginRsp.info.email;
    log("+++++++++++++++++++++++++++++++++++$user");
    // 进行im登录
    await user.saveToSp();

    // 初始化db
    // initDb(Int64(user.imId));
    try {
      await AppDatabase().objectBox.close();
    } catch (error) {}
    await AppDatabase().init(user.imId);

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
