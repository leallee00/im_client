import 'package:flutter/material.dart';
import '../sugget/gripesugget_head.dart';
import '../../pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import '../sugget/gripesugget_detail.dart';
import '../sugget/gripesugget_data.dart';
import '../sugget/gripesugget_create.dart';


class ComplaintSuggetPage extends StatefulWidget {
  static const name = "ComplaintSuggetPage";
  @override
  ComplaintListView createState() => ComplaintListView();
}

class ComplaintListView extends  State<ComplaintSuggetPage> {
  late bool isLoading = true;
  GetSuggestListRsp datas = GetSuggestListRsp();

  @override
  void initState() {
    getData();
  }

  @override
  Widget build(BuildContext context){
    // getData(context);
    return Scaffold(
      appBar:  AppBar(
        title: Text('投诉建议',style: TextStyle(fontSize: 18)),
      ),
      body:Column (
        children: [
          ComplaintSuggetHeadView(block: headTapActiong),
          Divider(color: Colors.blueGrey, height: 2),
          Expanded(
            child: isLoading? Center(child: CircularProgressIndicator()) : ListView.separated(
              itemCount: datas.suggestList.length,
              itemBuilder: (BuildContext context, int index) {
                return MyCustomCell(suggestModel: datas.suggestList[index],);
              },
              separatorBuilder: (context, index){
                return Divider();
              },
            ),
          ),
        ],
      ),
    );
  }

  void headTapActiong(ComplaintPageType type){

    final result =  Navigator.push(context, MaterialPageRoute(builder: (context) => ComplaintPage(myType: type)));
    if(result != null){
      getData();// 更新数据
    }
  }


  void getData(){

    ComplaintSuggetNetworkRequest((response) {
      setState(() {
        isLoading = false;
        datas = response;
      });
    });
  }
}


class MyCustomCell extends StatelessWidget {
  final Suggest suggestModel;
  @override
  MyCustomCell({required this.suggestModel});
  // List<Widget> _list = new List();
  @override
  Widget build(BuildContext context) {

    return Container(
        padding: EdgeInsets.only(left: 8.0, right: 11),
        child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ComplaintSuggetDetailPage(mySuggest: suggestModel)));
            // print(title);
          },
          child: ListTile(
            title: Text(
              suggestModel.suggest,
              maxLines: 2,
              style: TextStyle(fontSize: 16),
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(
                timestampToDate(suggestModel.createdAt.toString()),
                style: TextStyle(fontSize: 12)
            ),
            leading: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  decoration: BoxDecoration(
                    color: getMylableColor(),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: EdgeInsets.all(4),
                  child: Text(
                    getMylableString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }

  Color getMylableColor(){
    if(suggestModel.type == 1){
      return Colors.green;
    }
    return Colors.grey;
  }

  String getMylableString(){
    if(suggestModel.type == 1){
      return '建议';
    }
    return '投诉';
  }
}




