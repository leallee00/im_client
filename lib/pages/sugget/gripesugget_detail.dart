import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/pages/sugget/gripesugget_data.dart';
import 'package:quliao/widgets/app_bar.dart';
import 'package:quliao/widgets/button.dart';
import 'package:quliao/widgets/input.dart';
import '../sugget/gripesugget_cell.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import '../../pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/pub/func.dart';

class ComplaintSuggetDetailPage extends StatefulWidget {
  static const name = "ComplaintSuggetDetailPage";
  final Suggest mySuggest;

  ComplaintSuggetDetailPage({required this.mySuggest});

  @override
  ComplaintSuggetDetailListView createState() =>
      ComplaintSuggetDetailListView(mySuggest: mySuggest);
}

class ComplaintSuggetDetailListView extends State<ComplaintSuggetDetailPage> {
  late Suggest mySuggest;
  late bool isLoading = true;
  ScrollController _scrollController = ScrollController();
  final TextEditingController editingController = TextEditingController();

  GetSuggestReplyListRsp suggestReplyList =
      GetSuggestReplyListRsp(); // GetSuggestReplyListReq
  ComplaintSuggetDetailListView({required this.mySuggest});

  @override
  void initState() {
    // 多此一举 可以重外面传数据过来，再次又请求一次一样的数据
    //    ComplaintSuggetDetailNetworkRequest(mySuggest.id.toString(), (rsp){
    //        mySuggest = rsp.suggest;
    //    });
    getSuggestListData();
  }

  Future<void> hideKeyboard(
    BuildContext context,
  ) async {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        hideKeyboard(context);
      },
      child: Scaffold(
        appBar: CustomAppBar(
          title: Text(getTitleString()),
          actionPadding: EdgeInsets.zero,
          // actions: [
          //   CustomTextButton(
          //     text: '完成',
          //     onTap: () {
          //       ComplaintSuggetDetailReplyComplete();
          //     },
          //   ),
          // ],
        ),
        body: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    mySuggest.suggest.toString(),
                    style: TextStyle(
                      fontSize: Dimens.font_sp16,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    timestampToDate(mySuggest.createdAt.toString()),
                    style: TextStyle(
                      fontSize: Dimens.font_sp12,
                      color: Theme.of(context)
                          .colorScheme
                          .onBackground
                          .withOpacity(0.6),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 5),
            ),
            Gaps.vGap12,
            Expanded(
              child: isLoading
                  ? Center(child: CircularProgressIndicator())
                  : ListView.separated(
                      controller: _scrollController,
                      itemCount: suggestReplyList.suggestReplyList.length,
                      // suggestDetaildata.suggest,
                      itemBuilder: (BuildContext context, int index) {
                        // SuggestReply repy =
                        return ComplaintSuggetDetailListCell(
                          suggestModel:
                              suggestReplyList.suggestReplyList[index],
                        );
                        // return Text('sdfdgnjhm');
                      },
                      separatorBuilder: (context, index) {
                        return Divider(
                          indent: Dimens.gap_dp16,
                        );
                      },
                    ),
            ),
            Divider(),
            Container(
              height: Dimens.gap_dp48,
              padding: EdgeInsets.symmetric(
                horizontal: Dimens.gap_dp16,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: CustomInputNormal(
                      controller: editingController,
                      hintText: '请输入您的内容',
                      hintStyle: TextStyle(
                        fontSize: Dimens.font_sp14,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(
                        Dimens.gap_dp20,
                      ),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(
                          Dimens.gap_dp20,
                        ),
                        onTap: () {
                          replyData(context);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: Dimens.gap_dp14,
                            vertical: Dimens.gap_dp4,
                          ),
                          child: Text(
                            '回复',
                            style: TextStyle(
                              fontSize: Dimens.font_sp14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        // floatingActionButton: ElevatedButton.icon(
        //   icon: Icon(Icons.send),
        //   label:
        //       Text("回复", style: TextStyle(fontSize: 20, color: Colors.black87)),
        //   onPressed: () {
        //     replyData(context);
        //   },
        // ),
      ),
    );
  }

  String getTitleString() {
    if (mySuggest.type == 1) {
      return '建议详情';
    }
    return '投诉详情';
  }

  void getSuggestListData() {
    // GetSuggestReplyListRsp
    ComplaintSuggetDetailListNetworkRequest(mySuggest.id.toString(), (rsp) {
      // print('*******************666******* $rsp');
      setState(() {
        isLoading = false;
        suggestReplyList = rsp;
      });
    });
  }

  void replyData(BuildContext context) async {
    hideKeyboard(context);
    if (editingController.text.isEmpty) {
      showToast('输入的字符不能为空');
      return;
    }
    Refresh(context);

    ComplaintSuggetDetailReplyNetworkRequest(
      mySuggest.id.toString(),
      editingController.text,
      (rsp) {
        EndRefresh(context);
        editingController.clear();
        suggestReplyList.suggestReplyList.add(rsp);
        setState(() {});
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: Duration(milliseconds: 5),
          curve: Curves.fastOutSlowIn,
        );
      },
    );
  }

  void ComplaintSuggetDetailReplyComplete() {
    ComplaintSuggetDetailReplyCompleteNetworkRequest(mySuggest.id.toString(),
        (rsp) {
      String s = '该投诉';
      if (mySuggest.type == 1) {
        s = '该建议';
      }
      s = s + ' 已完成 ！';
      showToast(s);
    });
  }
}
