import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:quliao/pb/pb_pub/comm.pb.dart' as pb_comm;
import 'package:basic_utils/basic_utils.dart';
import 'package:cherry_toast/resources/arrays.dart';
import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:cherry_toast/cherry_toast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:protobuf/protobuf.dart';
import 'package:quliao/app.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pub/config.dart';
import 'package:quliao/pub/log.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'package:quliao/utils/http/http.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/utils/toast/toast.dart';
import 'package:quliao/widgets/rh_extended_image.dart';

// import 'package:sqflite/utils/utils.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import '../pb/pb_msg/gate/gate.pb.dart';
import '../pb/pb_msg/group/group.pb.dart';
import 'package:quliao/models/user/userinfo.dart' as $locUinfo;

///大陆手机号码11位数，匹配格式：前三位固定格式+后8位任意数
/// 此方法中前三位格式有：
/// 13+任意数 * 15+除4的任意数 * 18+除1和4的任意数 * 17+除9的任意数 * 147
bool isChinaPhoneLegal(String str) {
  return RegExp(
          '^((13[0-9])|(15[^4])|(166)|(17[0-8])|(18[0-9])|(19[0-9])|(147,145))\\d{8}\$')
      .hasMatch(str);
}

bool isAccount(String str) {
  return RegExp('^[_a-zA-Z0-9]{6,30}\$').hasMatch(str);
}

// String safeAvata(String avata) =>
//     avata.isNotEmpty ? avata : ConfigMgr().config!.defaultGirlAvatar;

// bool isPwd(String str){
//   return RegExp(
//       '^([a-z0-9A-Z])|(/[`~!@#%^&*()_\$-+=<>?:"{}|,./;\\[]·~！@#)\$')
//       .hasMatch(str);
// }

bool isCode(String str) {
  return RegExp('^\\d{6}\$').hasMatch(str);
}

bool isMySendMsg(Int64 srcUserId) {
  return AppUserInfo().imId == srcUserId.toInt();
}

bool isEmail(String? input) {
  String regexEmail =
      "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}\$";
  if (input == null || input.isEmpty) return false;
  return RegExp(regexEmail).hasMatch(input);
}

BuildContext? toastContext = topNavigatorkey.currentState?.overlay?.context;

void showToast(String text, {BuildContext? context}) {
  // Fluttertoast.showToast(
  //   msg: text,
  //   toastLength: toastLength,
  //   gravity: gravity,
  //   timeInSecForIosWeb: 1,
  //   backgroundColor: Colors.grey[600],
  //   fontSize: 16.0,
  // );
  ToastUtil.show(text);
  // context = context ?? toastContext;
  // log("toast context = $context");
  // if (context != null) {
  //   CherryToast.info(
  //     title: Text(
  //       text,
  //       style: const TextStyle(fontSize: 16, color: Colors.black),
  //     ),
  //     backgroundColor: Colors.white,
  //     animationType: AnimationType.fromTop,
  //     animationDuration: const Duration(milliseconds: 500),
  //     displayCloseButton: false,
  //   ).show(context);
  // }
}

// ////////
// // 获取当前秒精度整数时间
// int getDateTimeNow(){
//   dateFor
// }
// //////////////////////////////

// String MD5(String data) {
//   var content = Utf8Encoder().convert(data);
//   var digest = md5.convert(content);
//   // 这里其实就是 digest.toString()
//   return hex(digest.bytes);
// }

// 全参数签名
// String signParams(Map<String,dynamic>params, int salt, {String secret = initSecret }){
String signParams(Map<String, dynamic> params, int salt, {String? secret}) {
  String data = secret == null ? ConfigMgr().config!.initSecret : secret;
  params.forEach((key, value) {
    data += "$value";
  });
  data += "$salt";
  return md5.convert(data.codeUnits).toString();
}

int serverTimeOffSet = 0;

Int64 GetServerTime() {
  return Int64((DateTime.now()
              .add(Duration(seconds: serverTimeOffSet))
              .millisecondsSinceEpoch /
          1000)
      .toInt());
}

// 更新差值
UpdateTimeOffSet(Int64 serverTime) {
  // DateTime.fromMillisecondsSinceEpoch(serverTime.toInt())
  var offset = serverTime.toInt() -
      (DateTime.now().millisecondsSinceEpoch / 1000).toInt();
  if (serverTimeOffSet == 0) {
    serverTimeOffSet = offset;
  } else {
    // 取小
    serverTimeOffSet =
        serverTimeOffSet.abs() < offset.abs() ? serverTimeOffSet : offset;
  }
}

Widget avatar(
  String url,
  double iWidth,
  double iHeight, {
  String nick = "",
  String defaultAvStr = '',
}) {
  log('头像链接-$url');
  Image img;
  if (url != "") {
    img = url.startsWith('http')
        ? Image.network(
            "$url?x-oss-process=image/resize,m_fill,h_100,w_100",
            fit: BoxFit.fill,
          )
        : Image.asset(
            url,
            fit: BoxFit.fill,
          );
    img ??= Image.asset(
      defaultAvStr == '' ? ConfigMgr().config!.defaultAvatar : defaultAvStr,
      fit: BoxFit.fill,
    );
    return Container(
      width: iWidth,
      height: iHeight,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(iHeight / 2),
      ),
      child: RHExtendedImage.network(url, fit: BoxFit.fill,),
    );
  }
  // else {
  //   img = Image.asset(
  //     ConfigMgr().config!.defaultAvatar,
  //     fit: BoxFit.fill,
  //   );
  // }

  if (nick != "") {
    return Container(
        alignment: Alignment(0, 0),
        width: iWidth,
        height: iHeight,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(iHeight / 2),
          color: Colors.blue,
        ),
        child: Text(
          nick.substring(0, 1),
          style: const TextStyle(color: Colors.white),
        ));
  }

  return Container(
      width: iWidth,
      height: iHeight,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(iHeight / 2),
        color: Colors.blue,
      ),
      child: const Text("?"));
}

Map<int, String> weekDayMap = <int, String> {
  1: "一",
  2: "二",
  3: "三",
  4: "四",
  5: "五",
  6: "六",
  7: "天",
};

// 根据给定时间获取时间描述
String GetChatTime(DateTime dt) {
  // log("dt->$dt");
  var df = DateTime.now().difference(dt);
  if (df.inDays < 1) {
    return "${dt.hour}:${dt.minute}";
  }

  if (df.inDays < 2) {
    return "昨天 ${dt.hour}:${dt.minute}";
  }

  if (df.inDays < 3) {
    return "前天 ${dt.hour}:${dt.minute}";
  }

  if (df.inDays < 7) {
    return "星期${weekDayMap[dt.weekday]} ${dt.hour}:${dt.minute}";
  }

  return "${dt.year}-${dt.month}-${dt.day} ${dt.hour}:${dt.minute}";
}

String GetMsgState(MSG_STATE state) {
  // log("GetMsgState->${state}");
  switch (state) {
    case MSG_STATE.INIT:
      return "发送中";
    case MSG_STATE.SEND:
      return "已发";
    case MSG_STATE.RECEIVED:
      return "已收";
    case MSG_STATE.READ:
      return "已读";
    case MSG_STATE.END:
      return "结束";
    case MSG_STATE.IN_BLACK_LIST:
      return "黑名单";
    case MSG_STATE.FAULT:
      return "未发出";
  }
  return "未知";
}

// Future<Response> UpLoadImage(File pickerFile) async {
//   String path = pickerFile.path; //image.path;
//   var resp = await UpLoadImageWithLocalPath(path);
//   return resp;

// var name = path.substring(path.lastIndexOf("/") + 1, path.length);
// // var suffix = name.substring(name.lastIndexOf(".") + 1, name.length);
// FormData formData = FormData.fromMap({
//   "image": await MultipartFile.fromFile(path,
//       filename: name), //Upload(new File(path), name,
//   // contentType: ContentType.parse("image/$suffix"))
// });
//
// var dio = Dio();
// dio.options.baseUrl = ConfigMgr().config!.urlUploadImage;
// // (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
// // (HttpClient client) {
// // client.findProxy = (uri) {
// // //proxy all request to localhost:8888
// // return "PROXY localhost:8888";
// // };
// // client.badCertificateCallback =
// // (X509Certificate cert, String host, int port) => true;
// // };
// // dio.interceptors.add(LogInterceptor());
//
// // 多文件传输
// // FormData.fromMap({
// //   "files": [
// //     MultipartFile.fromFileSync("./example/upload.txt",
// //         filename: "upload.txt"),
// //     MultipartFile.fromFileSync("./example/upload.txt",
// //         filename: "upload.txt"),
// //   ]
// // });
//
// // Dio dio = new Dio();
// // var respone = await dio.post<String>(Config.urlUploadImage, data: formData, options: Options(headers:{}));
// // if (respone.statusCode == 200) {
// //   Fluttertoast.showToast(
// //       msg: "图片上传成功",
// //       gravity: ToastGravity.CENTER,
// //       textColor: Colors.grey);
// // }
//
// log("开始上传");
// Response response = await dio.post(ConfigMgr().config!.urlUploadImage,
//     data: formData,
//     options: Options(headers: {}), onSendProgress: (received, total) {
//   if (total != -1) {
//     print((received / total * 100).toStringAsFixed(0) + "%");
//   }
// }, onReceiveProgress: (count, total) {
//   print((count / total * 100).toStringAsFixed(0) + "%");
// });
//
// log("请求结果:${response} image path:${response.data['image_url']}");
// if (response.statusCode == 200) {
//   showToast("图片上传成功");
//   if (response.data["result"] != 0) {
//     showToast("上传失败:result=${response.data["result"]}");
//   }
// }
//
// return response;
// }

Future<Response> upLoadAudioWithLocalPath(String path, String ossDir) async {
  final name = path.substring(path.lastIndexOf("/") + 1, path.length);
  await MultipartFile.fromFile(
    path,
    filename: name,
  );
  final response = await upLoadAudioWithFile(
    await MultipartFile.fromFile(path, filename: name),
    ossDir,
  );
  return response;
}

Future<Response> UpLoadImageWithLocalPath(String path, String ossDir) async {
  // String path = pickerFile.path;//image.path;
  var name = path.substring(path.lastIndexOf("/") + 1, path.length);
  await MultipartFile.fromFile(path,
      filename: name); //Upload(new File(path), name,
  var response = await UpLoadImageWithFile(
      await MultipartFile.fromFile(path, filename: name), ossDir);
  return response;
  // var suffix = name.substring(name.lastIndexOf(".") + 1, name.length);
  // FormData formData = FormData.fromMap({
  //   "image": await MultipartFile.fromFile(path,filename: name),//Upload(new File(path), name,
  //   // contentType: ContentType.parse("image/$suffix"))
  // });
  //
  // var dio = Dio();
  // dio.options.baseUrl = Config.urlUploadImage;
  // // (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
  // // (HttpClient client) {
  // // client.findProxy = (uri) {
  // // //proxy all request to localhost:8888
  // // return "PROXY localhost:8888";
  // // };
  // // client.badCertificateCallback =
  // // (X509Certificate cert, String host, int port) => true;
  // // };
  // // dio.interceptors.add(LogInterceptor());
  //
  //
  // // 多文件传输
  // // FormData.fromMap({
  // //   "files": [
  // //     MultipartFile.fromFileSync("./example/upload.txt",
  // //         filename: "upload.txt"),
  // //     MultipartFile.fromFileSync("./example/upload.txt",
  // //         filename: "upload.txt"),
  // //   ]
  // // });
  //
  // // Dio dio = new Dio();
  // // var respone = await dio.post<String>(Config.urlUploadImage, data: formData, options: Options(headers:{}));
  // // if (respone.statusCode == 200) {
  // //   Fluttertoast.showToast(
  // //       msg: "图片上传成功",
  // //       gravity: ToastGravity.CENTER,
  // //       textColor: Colors.grey);
  // // }
  //
  // log("开始上传");
  // Response response = await dio.post(Config.urlUploadImage,
  //     data: formData,
  //     options: Options(headers:{}),
  //     onSendProgress: (received, total){
  //       if (total != -1) {
  //         print((received / total * 100).toStringAsFixed(0) + "%");
  //       }
  //     },
  //     onReceiveProgress: (count, total){
  //       print((count / total * 100).toStringAsFixed(0) + "%");
  //     }
  // );
  //
  // log("请求结果:${response} image path:${response.data['image_url']}");
  // if (response.statusCode == 200) {
  //   showToast( "图片上传成功");
  //   if (response.data["result"] != 0){
  //     showToast("上传失败:result=${response.data["result"]}");
  //   }
  // }
  //
  // return response;
}

Future<Response> upLoadAudioWithFile(
  MultipartFile multipartFile,
  String ossDir,
) async {
  FormData formData = FormData.fromMap({
    "file": multipartFile,
    "loc": "local",
  });

  var dio = Dio();
  // dio.options.baseUrl = ConfigMgr().config!.urlUploadImage;
  dio.options.baseUrl = ConfigMgr().config!.urlUploadFile;
  log("语音开始上传->${ConfigMgr().config!.urlUploadFile}");
  // Response response = await dio.post(ConfigMgr().config!.urlUploadImage,
  var headerParam = {
    "ObjectDir": ossDir.isNotEmpty ? ossDir : "im-msg",
    "Authorization": AppUserInfo().uniToken,
    "UserID": AppUserInfo().imId,
    "Bucket": "commim",
  };
  Response response = await dio.post(ConfigMgr().config!.urlUploadFile,
      data: formData, options: Options(headers: headerParam),
      onSendProgress: (received, total) {
    if (total != -1) {
      LoggerManager().debug("${(received / total * 100).toStringAsFixed(0)}%");
    }
  }, onReceiveProgress: (count, total) {
    LoggerManager().debug("${(count / total * 100).toStringAsFixed(0)}%");
  });

  log("请求结果:$response ${response.data}");
  if (response.statusCode == 200) {
    showToast("语音上传成功");
    if (response.data["result"] != 0) {
      showToast("语音上传失败:result=${response.data["result"]}");
    }
  }

  return response;
}

Future<Response> UpLoadImageWithFile(
    MultipartFile multipartFile, String ossDir) async {
  // String path = pickerFile.path;//image.path;
  // var name = path.substring(path.lastIndexOf("/") + 1, path.length);
  // var suffix = name.substring(name.lastIndexOf(".") + 1, name.length);
  FormData formData = FormData.fromMap({
    // "image": await MultipartFile.fromFile(path,filename: name),//Upload(new File(path), name,
    // contentType: ContentType.parse("image/$suffix"))
    // "image": multipartFile,
    "file": multipartFile,
    "loc": "local",
    // or oss
  });

  // var dio = Dio();
  // // dio.options.baseUrl = ConfigMgr().config!.urlUploadImage;
  // dio.options.baseUrl = ConfigMgr().config!.urlUploadFile;
  // (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
  // (HttpClient client) {
  // client.findProxy = (uri) {
  // //proxy all request to localhost:8888
  // return "PROXY localhost:8888";
  // };
  // client.badCertificateCallback =
  // (X509Certificate cert, String host, int port) => true;
  // };
  // dio.interceptors.add(LogInterceptor());

  // 多文件传输
  // FormData.fromMap({
  //   "files": [
  //     MultipartFile.fromFileSync("./example/upload.txt",
  //         filename: "upload.txt"),
  //     MultipartFile.fromFileSync("./example/upload.txt",
  //         filename: "upload.txt"),
  //   ]
  // });

  // Dio dio = new Dio();
  // var respone = await dio.post<String>(Config.urlUploadImage, data: formData, options: Options(headers:{}));
  // if (respone.statusCode == 200) {
  //   Fluttertoast.showToast(
  //       msg: "图片上传成功",
  //       gravity: ToastGravity.CENTER,
  //       textColor: Colors.grey);
  // }

  // log("开始上传->${ConfigMgr().config!.urlUploadImage}");
  log("开始上传->${ConfigMgr().config!.urlUploadFile}");
  // Response response = await dio.post(ConfigMgr().config!.urlUploadImage,
  var headerParam = {
    "ObjectDir": ossDir.isNotEmpty ? ossDir : "im-msg",
    // "Authorization": AppUserInfo().uniToken,
    "UserID": AppUserInfo().imId,
    "Bucket": "commim",
  };
  final Response response = await http.post(
    ConfigMgr().config!.urlUploadFile,
    data: formData,
    options: Options(
      headers: headerParam,
    ),
    onSendProgress: (received, total) {
      if (total != -1) {
        LoggerManager().debug("onSendProgress ===> ${(received / total * 100).toStringAsFixed(0)}%啊啊啊啊啊");
      }
    },
    onReceiveProgress: (count, total) {
      LoggerManager().debug("onReceiveProgress ===> ${(count / total * 100).toStringAsFixed(0)}%啊啊啊啊啊");
    }
  );
  // Response response = await dio.post(ConfigMgr().config!.urlUploadFile,
  //     data: formData,
  //     options: Options(headers: headerParam
  //         //     {
  //         //   "ObjectDir":"im-msg",
  //         //   "Authorization":AppUserInfo().appToken,
  //         //   "UserID":AppUserInfo().imId,
  //         //   "Bucket":"commim",
  //         // }
  //         ), onSendProgress: (received, total) {
  //   if (total != -1) {
  //     print((received / total * 100).toStringAsFixed(0) + "%啊啊啊啊啊");
  //   }
  // }, onReceiveProgress: (count, total) {
  //   print((count / total * 100).toStringAsFixed(0) + "%啊啊啊啊啊");
  // });

  log("请求结果:${response} ${response.data}"); // image path:${response.data['image_url']}");
  if (response.statusCode == 200) {
    showToast("图片上传成功");
    if (response.data["result"] != 0) {
      showToast("上传失败:result=${response.data["result"]}");
    }
  }

  return response;
}

String listToString(List<String> list, String Split) {
  String result = "";
  list.forEach((item) =>
      {if (result == "") result = item else result = '$result$Split$item'});
  return result;
}

// 选取图片
// ImagePicker.pickImage(source: ImageSource.camera); // 拍照
// ImagePicker.pickImage(source: ImageSource.gallery); // 选取照片
// ImagePicker.pickVideo(source: ImageSource.gallery); // 拍视频
// ImagePicker.pickVideo(source: ImageSource.camera); // 选取视频

Future<List<Asset>> pubPicImages(List<Asset> selectedImages) async {
  List<Asset> resultList = <Asset>[];
  String error = 'No Error Detected';

  try {
    resultList = await MultiImagePicker.pickImages(
      maxImages: 9,
      enableCamera: true,
      selectedAssets: selectedImages,
      cupertinoOptions: CupertinoOptions(takePhotoIcon: "chat"),
      materialOptions: MaterialOptions(
        actionBarColor: "#abcdef",
        actionBarTitle: "选取照片",
        allViewTitle: "所有",
        selectionLimitReachedText: "最多可选9张照片",
        textOnNothingSelected: "您还没有选择照片",
        useDetailsView: true,
        selectCircleStrokeColor: "#000000",
      ),
    );
  } on Exception catch (e) {
    error = e.toString();
  }

  // If the widget was removed from the tree while the asynchronous platform
  // message was in flight, we want to discard the reply rather than calling
  // setState to update our non-existent appearance.
  // if (!mounted) return;

  // setState(() {
  //   _images = resultList;
  // });
  return resultList;
}

/// 获取群消息tips，消息外部展示用
Future<String> tipsFromGropMsg(PBMessage msg, bool isMine) async {
  LoggerManager().debug('tipsFromGropMsg msg.pbName ======> ${msg.pbName}');
  if (msg.pbName.contains("CreateGroupReq")) {
    CreateGroupReq newMsg = CreateGroupReq()..mergeFromBuffer(msg.pbData);
    return "abc 邀请 ${newMsg.name} 加入群聊 ";
  } else if (msg.pbName.contains("GroupChat")) {
    // return Text(msg.text);
    GroupChat newMsg = GroupChat()..mergeFromBuffer(msg.pbData);
    if (newMsg.chatType == TextChatType.PIC) {
      return "[图片]";
    } else if (newMsg.chatType == TextChatType.AUDIO) {
      return "[语音]";
    } else if (newMsg.chatType == TextChatType.FILE) {
      return "[文件]";
    } else if (newMsg.chatType == TextChatType.VIDEO) {
      return "[视频]";
    } else if (newMsg.chatType == TextChatType.CUSTOMIZE) {
      LoggerManager().error('自定义消息 exp ===> ${newMsg.exp}');
      final customType = newMsg.exp['customType'];
      if (customType == 'mergeForward') {
        return '[聊天记录]';
      } else if (customType == 'redPacket') {
        return '[红包消息]';
      } else if (customType == 'businessCard') {
        final name = newMsg.exp['name'];
        return '[个人名片]$name';
      }
      return '[自定义消息]';
    } {
      return newMsg.text;
    }
  } else if (msg.pbName.contains("GroupEmoticon")) {
    // 展示表情
    return "一个表情";
  } else if (msg.pbName.contains("GroupMedia")) {
    // 展示媒体
    return "一个媒体";
  } else if (msg.pbName.contains("GroupGift")) {
    // 展示图片
    return "一个图片";
  } else if (msg.pbName.contains("InviteReq")) {
    return "邀请入群";
  } else if (msg.pbName.contains("InviteAnswerReq")) {
    return "入群应答";
  } else if (msg.pbName.contains("NameChangeNotify")) {
    NameChangeNotify newMsg = NameChangeNotify()..mergeFromBuffer(msg.pbData);
    return "群名称更改为:${newMsg.name}";
  }

  else if (msg.pbName.contains('KickoutNotify')) {
    KickoutNotify notify = KickoutNotify()..mergeFromBuffer(msg.pbData);
    final srcId = msg.pbCommData.srcId.toInt();
    $locUinfo.UserInfo srcUserInfo =
    await $locUinfo.GetUserInfo(srcId);
    final String srcNickname = srcUserInfo.nickName.isEmpty
        ? '$srcId'
        : srcUserInfo.nickName;

    final memberId = notify.memberId.toInt();
    $locUinfo.UserInfo memberUserInfo =
    await $locUinfo.GetUserInfo(memberId);
    final String memberNickname = memberUserInfo.nickName.isEmpty
        ? '$memberId'
        : memberUserInfo.nickName;

    if (srcId == AppUserInfo().imId) {
      return '您把$memberNickname移除群聊';
    } else {
      if (memberId == AppUserInfo().imId) {
        return '您被$srcNickname移除群聊';
      } else {
        return '$srcNickname将$memberNickname移除群聊';
      }
    }
  }

  else if (msg.pbName.contains('InviteesAgreedNotify')) {
    InviteesAgreedNotify notify = InviteesAgreedNotify()..mergeFromBuffer(msg.pbData);

    final inviterId = notify.inviterId;
    $locUinfo.UserInfo srcUserInfo =
    await $locUinfo.GetUserInfo(inviterId.toInt());
    final String srcNickname =
    srcUserInfo.nickName.isEmpty ? '$inviterId' : srcUserInfo.nickName;

    final inviteeNames = notify.inviteeNames.join('，');

    if (inviterId == Int64(AppUserInfo().imId)) {
      return '您邀请$inviteeNames进入群聊';
    } else {
      return '$srcNickname邀请$inviteeNames进入群聊';
    }
  }

  else if (msg.pbName.contains('InviteeAgreedNotify')) {
    InviteeAgreedNotify notify = InviteeAgreedNotify()..mergeFromBuffer(msg.pbData);
    final inviterId = notify.inviterId;
    final inviteeId = notify.inviteeId;
    $locUinfo.UserInfo srcUserInfo =
    await $locUinfo.GetUserInfo(inviterId.toInt());
    final String srcNickname =
    srcUserInfo.nickName.isEmpty ? '$inviterId' : srcUserInfo.nickName;

    final $locUinfo.UserInfo inviteeUserInfo =
    await $locUinfo.GetUserInfo(inviteeId.toInt());

    final String inviteeNickname = inviteeUserInfo.nickName.isEmpty
        ? '${inviteeUserInfo.appId}'
        : inviteeUserInfo.nickName;

    if (inviterId == Int64(AppUserInfo().imId)) {
      return '您邀请$inviteeNickname进入群聊';
    } else {
      if (inviteeId == Int64(AppUserInfo().imId)) {
        return '$srcNickname邀请您进入群聊';
      } else {
        return '$srcNickname邀请$inviteeNickname进入群聊';
      }
    }
  }
  else if (msg.pbName.contains('approverApprovedNotify')) {
    approverApprovedNotify notify = approverApprovedNotify()..mergeFromBuffer(msg.pbData);
    final applicantId = notify.applicantId;
    final approverId = notify.approverId;
    LoggerManager().debug('approverApprovedNotify applicantId: $applicantId approverId: $approverId enterGroutType: ${notify.enterGroutType}');
    $locUinfo.UserInfo? srcUserInfo;
    if (approverId != 0) {
      srcUserInfo = await $locUinfo.GetUserInfo(approverId.toInt());
    }
    String? srcNickname;
    if (approverId != 0) {
      srcNickname = srcUserInfo?.nickName.isEmpty == true
          ? '$approverId'
          : srcUserInfo?.nickName;
    }

    $locUinfo.UserInfo aimUserInfo =
    await $locUinfo.GetUserInfo(applicantId.toInt());
    final String aimNickname = aimUserInfo.nickName.isEmpty
        ? '$applicantId'
        : aimUserInfo.nickName;

    if (notify.enterGroutType == EnterGroupType.ScanCode) {
      if (applicantId == AppUserInfo().imId) {
        return '您通过扫描二维码进入群聊';
      } else {
        return '$aimNickname通过扫描二维码进入群聊';
      }
    } else {
      if (approverId == Int64(AppUserInfo().imId)) {
        return '您同意$aimNickname的入群申请';
      } else {
        if (applicantId == Int64(AppUserInfo().imId)) {
          return '$srcNickname同意您的入群申请';
        } else {
          return '$srcNickname同意$aimNickname的入群申请';
        }
      }
    }
  } else if (msg.pbName.contains('TakeScreenShotNotify')) {
    TakeScreenShotNotify notify = TakeScreenShotNotify()..mergeFromBuffer(msg.pbData);
    final groupId = msg.pbCommData.groupId;
    final srcId = msg.pbCommData.srcId.toInt();
    LoggerManager().debug(
      'TakeScreenShotNotify ======> groupId: $groupId srcId: $srcId}',
    );
    if (srcId == AppUserInfo().imId) {
      return '您在聊天中截屏了';
    } else {
      $locUinfo.UserInfo userInfo = await $locUinfo.GetUserInfo(srcId);
      final String srcNickname =
      userInfo.nickName.isEmpty ? '${userInfo.appId}' : userInfo.nickName;
      return '$srcNickname在聊天中截屏了';
    }
  }
  else if (msg.pbName.contains('MemberChatBannedStatusChangeNotify')) {
    MemberChatBannedStatusChangeNotify notify = MemberChatBannedStatusChangeNotify()..mergeFromBuffer(msg.pbData);
    final srcId = msg.pbCommData.srcId.toInt();
    bool banned = notify.bannedStatus > 0;
    if (srcId == AppUserInfo().imId) {
      if (banned) {
        return '您设置了群禁言';
      } else {
        return '您取消了群禁言';
      }
    } else {
      $locUinfo.UserInfo userInfo = await $locUinfo.GetUserInfo(srcId);
      final String srcNickname =
      userInfo.nickName.isEmpty ? '${userInfo.appId}' : userInfo.nickName;
      if (banned) {
        return '管理员$srcNickname设置了群禁言';
      } else {
        return '管理员$srcNickname取消了群禁言';
      }
    }
  } else if (msg.pbName.contains("AddAdminsNotify")) {
    ///AddAdminsNotify
    AddAdminsNotify newMsg = AddAdminsNotify()..mergeFromBuffer(msg.pbData);

    final List<$locUinfo.UserInfo> memberUsers = [];
    for (final element in newMsg.memberIds) {
      $locUinfo.UserInfo memberUserInfo = await $locUinfo.GetUserInfo(element.toInt());
      memberUsers.add(memberUserInfo);
    }

    var info = '';
    for (final element in memberUsers) {
      final String srcNickname = element.nickName.isEmpty ? '${element.appId}' : element.nickName;
      info += "$srcNickname ";
    }
    info += " 升级为管理员";

    return info;
  } else if (msg.pbName.contains("RemoveAdminsNotify")) {
    /// RemoveAdminsNotify
    RemoveAdminsNotify newMsg = RemoveAdminsNotify()
      ..mergeFromBuffer(msg.pbData);

    final List<$locUinfo.UserInfo> memberUsers = [];
    for (final element in newMsg.memberIds) {
      $locUinfo.UserInfo memberUserInfo = await $locUinfo.GetUserInfo(element.toInt());
      memberUsers.add(memberUserInfo);
    }

    var info = '收回';
    for (final element in memberUsers) {
      final String srcNickname = element.nickName.isEmpty ? '${element.appId}' : element.nickName;
      info += "$srcNickname ";
    }
    info += "的管理员权限";

    return info;
  } else if (msg.pbName.contains("GroupTransferNotify")) {
    /// GroupTransferNotify
    GroupTransferNotify newMsg = GroupTransferNotify()
      ..mergeFromBuffer(msg.pbData);

    $locUinfo.UserInfo srcUserInfo = await $locUinfo.GetUserInfo(newMsg.ownerId.toInt());
    final String srcNickname = srcUserInfo.nickName.isEmpty ? '${srcUserInfo.appId}' : srcUserInfo.nickName;

    return "群主转让给$srcNickname";
  } else if (msg.pbName.contains("GroupDisbandedNotify")) {
    ///GroupDisbandedNotify
    return "群解散了";
  } else if (msg.pbName.contains("QuitNotify")) {
    QuitNotify newMsg = QuitNotify()..mergeFromBuffer(msg.pbData);

    $locUinfo.UserInfo srcUserInfo = await $locUinfo.GetUserInfo(newMsg.memberId.toInt());
    final String srcNickname = srcUserInfo.nickName.isEmpty ? '${srcUserInfo.appId}' : srcUserInfo.nickName;

    return "$srcNickname退出了群";
  } else if (msg.pbName.contains("BanMemberNotify")) {
    BanMemberNotify newMsg = BanMemberNotify()..mergeFromBuffer(msg.pbData);
    $locUinfo.UserInfo srcUserInfo =
    await $locUinfo.GetUserInfo(msg.pbCommData.srcId.toInt());
    final String srcNickname = srcUserInfo.nickName.isEmpty
        ? '${msg.pbCommData.srcId}'
        : srcUserInfo.nickName;

    $locUinfo.UserInfo aimUserInfo =
    await $locUinfo.GetUserInfo(msg.pbCommData.aimId.toInt());
    final String aimNickname = aimUserInfo.nickName.isEmpty
        ? '${msg.pbCommData.aimId}'
        : aimUserInfo.nickName;

    if (srcUserInfo.imId == AppUserInfo().imId) {
      return "您将$aimNickname关进小黑屋";
    } else if (aimUserInfo.imId == AppUserInfo().imId) {
      return "$srcNickname将您关进小黑屋";
    }
    return "$srcNickname将$aimNickname关进小黑屋";
  } else if (msg.pbName.contains("UnbanMemberNotify")) {
    UnbanMemberNotify newMsg = UnbanMemberNotify()..mergeFromBuffer(msg.pbData);

    $locUinfo.UserInfo srcUserInfo =
    await $locUinfo.GetUserInfo(msg.pbCommData.srcId.toInt());
    final String srcNickname = srcUserInfo.nickName.isEmpty
        ? '${msg.pbCommData.srcId}'
        : srcUserInfo.nickName;

    $locUinfo.UserInfo aimUserInfo =
    await $locUinfo.GetUserInfo(msg.pbCommData.aimId.toInt());
    final String aimNickname = aimUserInfo.nickName.isEmpty
        ? '${msg.pbCommData.aimId}'
        : aimUserInfo.nickName;

    if (srcUserInfo.imId == AppUserInfo().imId) {
      return "您将$aimNickname从小黑屋请了出来";
    } else if (aimUserInfo.imId == AppUserInfo().imId) {
      return "$srcNickname将您从小黑屋请了出来";
    }

    return "$srcNickname将$aimNickname从小黑屋请了出来";
  } else if (msg.pbName.contains("KickoutReq")) {
    return "请出了房间";
  } else if (msg.pbName.contains("QuitReq")) {
    // return Text("您退出了房间");
  } else if (msg.pbName.contains("QuitRsp")) {
    return "您退出了群";
  } else if (msg.pbName.contains("NoticeChangeNotify")) {
    return "修改了公告";
  } else if (msg.pbName.contains("NameChangeNotify")) {
    NameChangeNotify newMsg = NameChangeNotify()..mergeFromBuffer(msg.pbData);
    return "群名称改为 ${newMsg.name}";
  } else if (msg.pbName.contains("RemarkChangeNotify")) {
    // if (gmsg.pbHeadMsg.pbCommData.srcId == gmsg.pbHeadMsg.pbCommData.aimId){
    //   // 自己改的
    //   return Text("${gmsg.pbHeadMsg.pbCommData.srcId} 更改名称为 ${msg.remark}");
    // }else{
    //   // 别人改的
    //   return Text("${gmsg.pbHeadMsg.pbCommData.srcId} 更改 ${gmsg.pbHeadMsg.pbCommData.aimId} 的群名称为 ${msg.remark}");
    // }
  } else if (msg.pbName.contains("GroupBannedNotify")) {
    // 被封禁
    return "该群被管理员封禁";
  } else if (msg.pbName.contains("GroupUnbannedNotify")) {
    return "该群被管理员解禁了";
  } else if (msg.pbName.contains("AvatarChangeNotify")) {

    $locUinfo.UserInfo srcUserInfo = await $locUinfo.GetUserInfo(msg.pbCommData.srcId.toInt());
    final String srcNickname = srcUserInfo.nickName.isEmpty ? '${srcUserInfo.appId}' : srcUserInfo.nickName;

    return "$srcNickname 修改了群头像";
  } else if (msg.pbName == 'pb_msg_group.RemarkChangeNotify') {
    LoggerManager().debug('pb_msg_group.RemarkChangeNotify =======================');
    RemarkChangeNotify newMsg = RemarkChangeNotify()..mergeFromBuffer(msg.pbData);
    if (msg.pbCommData.srcId == msg.pbCommData.aimId) {
      // 自己改的
      $locUinfo.UserInfo srcUserInfo =
      await $locUinfo.GetUserInfo(msg.pbCommData.srcId.toInt());
      final String srcNickname = srcUserInfo.nickName.isEmpty
          ? '${msg.pbCommData.srcId}'
          : srcUserInfo.nickName;
      return "$srcNickname 更改群昵称为 ${newMsg.remark}";
    } else {
      // 别人改的
      $locUinfo.UserInfo srcUserInfo =
      await $locUinfo.GetUserInfo(msg.pbCommData.srcId.toInt());
      final String srcNickname = srcUserInfo.nickName.isEmpty
          ? '${msg.pbCommData.srcId}'
          : srcUserInfo.nickName;

      $locUinfo.UserInfo aimUserInfo =
      await $locUinfo.GetUserInfo(msg.pbCommData.aimId.toInt());
      final String aimNickname = aimUserInfo.nickName.isEmpty
          ? '${msg.pbCommData.aimId}'
          : aimUserInfo.nickName;
      return "$srcNickname 更改 $aimNickname 的群昵称为 ${newMsg.remark}";
    }
  }

  return '';
  return "未知消息${msg.pbName}";
}

Future<String> tipsFromChatText(PBMessage msg, bool isMine) async {
  // 获取tips
  var chatText = ChatText()..mergeFromBuffer(msg.pbData);
  String msgTips = chatText.text;
  switch (chatText.chatType) {
    case pb_comm.TextChatType.TEXT:
      msgTips = chatText.text.length > 10
          ? "${chatText.text.substring(0, 7)}..."
          : chatText.text;
      break;
    case pb_comm.TextChatType.PIC:
      msgTips = "[图片]";
      break;
    case pb_comm.TextChatType.VIDEO:
      msgTips = "[视频]";
      break;
    case pb_comm.TextChatType.AUDIO:
      msgTips = "[语音]";
      break;
    case pb_comm.TextChatType.FILE:
      msgTips = "[文件]";
      break;
    case pb_comm.TextChatType.GIFT:
      msgTips = "[礼物]";
      break;
    case pb_comm.TextChatType.PACT:
      msgTips = "[包裹]";
      break;
    case pb_comm.TextChatType.VIDEO_INVITE:
      msgTips = "[视频邀请]";
      break;
    case pb_comm.TextChatType.CUSTOMIZE:
      msgTips = "[自定义消息]";
      break;
    case pb_comm.TextChatType.RED_PACKET:
      msgTips = "[红包消息]";
      break;
    default:
      msgTips = "[未知类型消息]";
      log("未知的私聊消息类型 ${chatText.chatType}");
  }
  return msgTips;
}

var pbMsgChatTextName = ChatText().info_.qualifiedMessageName;

Future<String> tipsFromMsg(PBMessage msg) async {
  bool isMine = msg.pbCommData.srcId.toInt() == AppUserInfo().imId;
  if (msg.pbCommData.groupId > 0) {
    return tipsFromGropMsg(msg, isMine);
  }

  if (msg.pbName == pbMsgChatTextName) {
    var chatText = ChatText()..mergeFromBuffer(msg.pbData);
    return tipsFromChatText(msg, isMine);
  }

  return "";
}
