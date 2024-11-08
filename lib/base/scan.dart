import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_qr_bar_scanner/qr_bar_scanner_camera.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oktoast/oktoast.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:quliao/utils/channel/src/response.dart';
import 'package:quliao/utils/permission.dart';
import 'package:quliao/utils/channel/channel.dart' as channel;

class ScanCodePage extends StatefulWidget {
  const ScanCodePage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _ScanCodePageState createState() => _ScanCodePageState();
}

class _ScanCodePageState extends State<ScanCodePage> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  bool _scanSuccess = false;

  @override
  void initState() {
    super.initState();
    channel.rhResponseEventHandler.listen((event) {
      if (event is QRCodeResponse) {
        final QRCodeResponse qrCodeResponse = event;
        if (event.isSuccessful) {
          if (qrCodeResponse.value.isNotEmpty) {
            Navigator.pop(context, qrCodeResponse.value);
          }
        } else {
          showToast('二维码识别失败，请重试');
        }
      }
    });
  }

  void onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      result = scanData;
      onQRScanSuccess(result);
    });
  }

  onQRScanSuccess(Barcode? result) {
    if (null == result || result.code?.isEmpty == true) {
      return;
    }

    if (_scanSuccess) {
      return;
    }
    _scanSuccess = true;

    Navigator.pop(context, result.code!);
  }

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller?.pauseCamera();
    }
    controller?.resumeCamera();
  }

  @override
  void dispose() {
    super.dispose();
    controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 180.0
        : 300.0;
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          (widget.title ?? ""),
          style: const TextStyle(color: Colors.black),
        ),
        actions: [
          Container(
            alignment: Alignment.center,
            height: double.infinity,
            margin: EdgeInsets.only(right: 12.5.w),
            child: GestureDetector(
              onTap: () async {
                bool hasPermission = await PermissionUtil().requestPhotoPermission();
                if (hasPermission) {
                  await channel.parseQRCode();
                } else {
                  showToast('权限申请不通过');
                }
              },
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.w),
                child: Text(
                  "相册",
                  style: TextStyle(fontSize: 14.sp, color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
      body: QRView(
        key: qrKey,
        onQRViewCreated: onQRViewCreated,
        overlay: QrScannerOverlayShape(
          borderColor: Theme.of(context).colorScheme.primary,
          borderRadius: 10,
          borderLength: 10,
          borderWidth: 10,
          cutOutSize: scanArea,
        ),
      ),
    );
  }
}
