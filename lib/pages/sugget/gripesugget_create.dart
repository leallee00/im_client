import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/pb/google/protobuf/type.pbjson.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart' as $uaa;
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pb/pb_pub/service.pb.dart';
import 'package:quliao/utils/toast/toast.dart';
import 'package:quliao/widgets/app_bar.dart';
import 'package:quliao/widgets/button.dart';
import '../../pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import '../sugget/gripesugget_data.dart';

enum ComplaintPageType { ComplaintType, SuggetType }

class ComplaintPage extends StatefulWidget {
  late ComplaintPageType myType;

  static const name = "ComplaintPage";

  ComplaintPage({required this.myType});

  @override
  ComplaintPageView createState() => ComplaintPageView(myType: myType);
}

class ComplaintPageView extends State<ComplaintPage> {
  late String textString = '';
  late ComplaintPageType myType;

  ComplaintPageView({required this.myType});

  final TextEditingController myController = new TextEditingController();

  @override
  void dispose() {
    super.dispose();
    myController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: CustomAppBar(
          title: Text(getTitleString()),
        ),
        body: Column(
          children: <Widget>[
            HeadView(),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: TextField(
                controller: myController,
                keyboardType: TextInputType.text,
                maxLines: 6,
                maxLength: 800,
                onChanged: (String value) {
                  // log("${value}");
                  textString = value;
                },
                decoration: InputDecoration(
                  hintText: '请输入您的内容',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: Dimens.font_sp14,
                    textBaseline: TextBaseline.ideographic,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: Dimens.gap_dp24,
              ).copyWith(top: Dimens.gap_dp40),
              child: CustomButton(
                width: double.infinity,
                height: Dimens.gap_dp46,
                size: CustomButtonSize.medium,
                shape: CustomButtonShape.stadium,
                backgroundColor: Theme.of(context).colorScheme.primary,
                onPressed: () {
                  if (textString.isEmpty) {
                    ToastUtil.show('请输入内容');
                    return;
                  }
                  SubmitComplaintDataTool().putComplaintData(
                    context,
                    textString,
                    myType,
                  );
                },
                child: Text(
                  '提交',
                  style: TextStyle(
                    fontSize: Dimens.font_sp14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String getTitleString() {
    if (myType == ComplaintPageType.SuggetType) {
      return '建议';
    }
    return '投诉';
  }
}

class HeadView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white60,
      padding: EdgeInsets.only(left: 16, top: 14, bottom: 14),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          '请在框内输入您的内容',
          style: TextStyle(
            fontSize: Dimens.font_sp14,
          ),
        ),
      ),
    );
  }
}

class SubmitComplaintDataTool {
  void putComplaintData(
      BuildContext context, String str, ComplaintPageType type) {
    if (str.isEmpty) {
      showToast('输入的字符不能为空');
      return;
    }

    Refresh(context);
    var suggestReq = AddSuggestReq();
    suggestReq.type = type.index;
    suggestReq.suggest = str;
    var pbCommData = MakePBCommData(
        aimId: Int64(AppUserInfo.instance.imId), toService: Service.commim_uaa);
    RpcCallAppGateApi(
            "/pb_grpc_commim_uaa.UAA/AddSuggest", suggestReq, pbCommData)
        .then((value) {
      EndRefresh(context);
      final rsp = AddSuggestRsp()..mergeFromBuffer(value.bodyBytes);
      Navigator.pop(context, rsp.suggest);
    }).catchError((err) {
      // log("error:${err}");
      EndRefresh(context);
      showToast("提交失败：${err}");
    });
  }
}
