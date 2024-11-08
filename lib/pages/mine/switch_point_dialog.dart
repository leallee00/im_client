import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/config/size_extension.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pub/config.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/pub/pub-def.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart' as $uaa;
import 'package:quliao/utils/log/manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SwitchPointDialog extends StatefulWidget {
  const SwitchPointDialog({
    super.key,
  });

  @override
  State<StatefulWidget> createState() => _SwitchPointDialogState();
}

class _SwitchPointDialogState extends State<SwitchPointDialog> {
  List<$uaa.ImEndPoint>? _endPoints;
  Config? configInfo = ConfigMgr().config;

  @override
  void initState() {
    super.initState();
    _getEndPoints();
  }

  Future<void> _getEndPoints() async {
    final response = await RpcCallAppGateApi(
      "/pb_grpc_commim_uaa.UAA/FetchEndPoint",
      FetchEndPointReq(),
      PBCommData(),
    );
    var rsp = $uaa.FetchEndPointRsp()
      ..mergeFromBuffer(
        response.bodyBytes,
      );
    LoggerManager().debug('FetchEndPoint ======> ${rsp.endPoints}');
    setState(() {
      _endPoints = rsp.endPoints;
    });
  }

  Future<void> _mapToConfig($uaa.ImEndPoint point) async {
    Config config = Config();
    config.cfgAllocatorUrl = '${point.cfgAllocatorUrl}/Allocater/GetTcpGate';
    config.urlUploadFile = point.urlUploadFile;
    config.cfgImInterApiUrl = point.cfgImInterApiUrl;
    config.cfgImOutApiUrl = point.cfgImOutApiUrl;
    config.cfgAppGateApiHost = point.cfgAppGateApiHost;
    config.cfgGrpcUrl = point.cfgGrpcUrl;

    /// 参数签名secret,登录前使用，登录后用signSecret签名
    config.initSecret = "9C168BCA26AFA2E404761A2FE43BF567";
    config.appId = point.appId;
    config.secret =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjowLCJpbV91c2VyX2lkIjowLCJhcHBfaWQiOjgwMDAsImFwcF91c2VyX2lkIjoiIiwiZXhwIjoxNzAwMTM5NTEzLCJpYXQiOjE2MDAxMzk1MTMsImlzcyI6Ill6SU0ifQ.2_3iuV9mHel8_O4ZNPybmzpg12EA2XnvFmqrAN63_qU';
    setState(() {
      configInfo = config;
    });
  }

  Future<void> _saveConfigInfo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(
      "config",
      json.encode(configInfo),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(8),
          ),
          width: 320,
          child: Container(
            padding: EdgeInsets.only(bottom: Dimens.gap_dp16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 46.h,
                  child: Stack(
                    children: [
                      Container(
                        height: 46.h,
                        alignment: Alignment.center,
                        child: const Text(
                          '切换节点',
                          style: TextStyle(
                            color: Color(0xFF262626),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          splashRadius: 20.r,
                          icon: const Icon(Icons.close),
                        ),
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(vertical: Dimens.gap_dp10),
                  itemCount: _endPoints?.length ?? 0,
                  itemBuilder: (context, index) {
                    final itemData = _endPoints![index];
                    final checked = configInfo?.cfgAppGateApiHost ==
                        itemData.cfgAppGateApiHost;
                    return _ListItem(
                      data: itemData,
                      checked: checked,
                      onTap: () => _mapToConfig(itemData),
                    );
                  },
                ),
                InkWell(
                  onTap: () {
                    _saveConfigInfo();
                    ConfigMgr().config = configInfo;
                    ConfigMgr().manualSwitch = true;
                    Client().switchEndPoint();
                    Navigator.pop(context);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 120,
                    height: 40,
                    child: const Text(
                      '确定',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ListItem extends StatelessWidget {
  const _ListItem({
    required this.data,
    this.checked = false,
    this.onTap,
  });

  final $uaa.ImEndPoint data;
  final bool checked;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: Dimens.gap_dp46,
          padding: EdgeInsets.symmetric(
            horizontal: Dimens.gap_dp16,
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  data.name,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Icon(
                checked ? Icons.check_box : Icons.check_box_outline_blank,
                color: checked
                    ? Theme.of(context).colorScheme.primary
                    : Colors.black38,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
