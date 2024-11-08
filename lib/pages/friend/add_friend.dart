import 'dart:convert';

import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pb/pb_msg/friend/friend.pb.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/pb/pb_pub/service.pb.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/pub/view.dart';
import 'package:qr_flutter/qr_flutter.dart';

// import 'package:qrscan/qrscan.dart' as scanner;
// import 'package:r_scan/r_scan.dart';
import 'package:flutter_qr_bar_scanner/qr_bar_scanner_camera.dart';

import '../../base/scan.dart';

class AddFriend extends StatefulWidget {
  static const name = "AddFriend";

  AddFriend({super.key});

  @override
  AddFriendState createState() => new AddFriendState();
}

class AddFriendState extends State<AddFriend> {
  @override
  void initState() {}

  _qrCallBack(String? code) {
    log("dddd");
    // String? cameraScanResult = await scanner.scan(); //通过扫码获取二维码中的数据
    // getScan(cameraScanResult); //将获取到的参数通过HTTP请求发送到服务器
    // log(code!); //在控制台打印
    log(AppUserInfo.instance.imId); //在控制台打印

    if (null == code) {
      return;
    }

    int targetId = 0;

    final data = jsonDecode(code) as Map<String, dynamic>;
    if (data['type'] == 0) {
      targetId = data['data'] as int;
    }

    if (targetId == AppUserInfo.instance.imId.toString()) {
      //
      showToast("不能加自己为好友");
      return;
    }

    var needAdd = true;
    GetFriendInfo(targetId).then((value) {
      log("get friend ok ${value}");
      Client.instance.sendMsg(
        ApplyReq(),
        Int64(AppUserInfo.instance.imId),
        MakePBCommData(
          aimId: Int64(value.userInfo.imId),
          toService: Service.friend,
        ),
      );
      showToast("申请已发出，等待对方确认");
      // AddToFriendList(value);
      // setState(() {
      //   Filt(cameraScanResult.trim());
      // });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: BackButton(
            color: Colors.black87,
          ),
          backgroundColor: Colors.white,
          title: Text(
            '添加朋友',
            style: TextStyle(color: Colors.black87),
          ),
          centerTitle: true,
        ),
        // backgroundColor: Colors.white10,
        body: Column(
          children: [
            Expanded(flex: 0, child: SearchFriendButton(context)),
            Expanded(
                flex: 0,
                child: Center(
//              widthFactor: 100,
//                heightFactor: 2,
                    child: Column(
//                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // 二维码
//                     QrImage(
//                       data: AppUserInfo.instance.imId.toString(),
//                       size: 200,
// //                      // 二维码中心添加图片
// //                      embeddedImage: NetworkImage(AppUserInfo.instance.appAvatar),
// //                      embeddedImageStyle: QrEmbeddedImageStyle(
// //                        size: Size(40, 40),
// //                      ),
//                     ),
                    Text(
                      "我的账号：${AppUserInfo.instance.userName}",
                      style: TextStyle(
                        fontSize: Dimens.font_sp1 * 15,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                  ],
                ))),
            // 群列表
            Expanded(
              flex: 1,
              child: ListView(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  // Divider(color: Color(0x28808080), height: 1, thickness: 1,),
                  // ListTile(
                  //     leading: Icon(Icons.vibration),
                  //     title:Text("雷达加朋友"),
                  //     subtitle: Text("添加身边的朋友"),
                  //     // trailing:IconButton(
                  //     //   icon: Icon(Icons.chevron_right),
                  //     //   onPressed: (){
                  //     //
                  //     //   },)
                  //     trailing:Icon(Icons.chevron_right),
                  //     onTap: (){

                  //     },
                  // ),
                  Divider(
                    color: Color(0x28808080),
                    height: 1,
                    thickness: 1,
                  ),
                  ListTile(
                      leading: Icon(Icons.crop_free),
                      title: Text("扫一扫"),
                      subtitle: Text("扫描二维码名片"),
                      // trailing:IconButton(
                      //   icon: Icon(Icons.chevron_right),
                      //   onPressed: ()async{
                      trailing: Icon(Icons.chevron_right),
                      onTap: () async {
                        var code = await Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ScanCodePage(title: "添加好友");
                        }));

                        _qrCallBack(code);
                        //跳转到扫码框
                        // QRBarScannerCamera(
                        //   onError: (context, error) => Text(
                        //     error.toString(),
                        //     style: TextStyle(color: Colors.red),
                        //   ),
                        //   qrCodeCallback: (code) {
                        //     // _qrCallback(code);
                        //     _qrCallBack(code);
                        //   },
                        // );
                      }
//
//                           // 编译不过，先去掉
//                           log("dddd");
//                           // String? cameraScanResult = await scanner.scan(); //通过扫码获取二维码中的数据
//                           // getScan(cameraScanResult); //将获取到的参数通过HTTP请求发送到服务器
//                           log(cameraScanResult!); //在控制台打印
//                           log(AppUserInfo.instance.imId); //在控制台打印
//
//                           if (cameraScanResult == AppUserInfo.instance.imId.toString()) {
//                             //
//                             showToast("不能加自己为好友");
//                             return;
//                           }
//
//                           var needAdd = true;
//                           GetFriendInfo(int.parse(cameraScanResult)).then((value) {
//                             log("get friend ok ${value}");
//                             Client.instance.sendMsg(ApplyReq(), Int64(AppUserInfo.instance.imId), MakePBCommData(aimId: Int64(value.userInfo.imId), toService: Service.friend));
//                             showToast("申请已发出，等待对方确认");
//                             // AddToFriendList(value);
//                             // setState(() {
//                             //   Filt(cameraScanResult.trim());
//                             // });
//                           });
//
//                           // BarcodeS
//                           // String cameraScanResult = await scanner.scan();
//                           // log("scan string-> ${cameraScanResult}");
// //                        final result=await RScan.scanImagePath('your file path');
//                         },

                      // ),
                      ),
                  // Divider(
                  //   color: Color(0x28808080),
                  //   height: 1,
                  //   thickness: 1,
                  // ),
                  // ListTile(
                  //   leading: Icon(Icons.featured_play_list),
                  //   title: Text("手机联系人"),
                  //   subtitle: Text("添加通讯录中的朋友"),
                  //   trailing: Icon(Icons.chevron_right),
                  //   onTap: () {},
                  // ),
                  // Divider(
                  //   color: Color(0x28808080),
                  //   height: 1,
                  //   thickness: 1,
                  // ),
                  // ListTile(
                  //   leading: Icon(Icons.group),
                  //   title: Text("面对面建群"),
                  //   subtitle: Text("与身边的朋友进入同一个群聊"),
                  //   trailing: Icon(Icons.chevron_right),
                  //   onTap: () {},
                  // ),
                  Divider(
                    color: Color(0x28808080),
                    height: 1,
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
