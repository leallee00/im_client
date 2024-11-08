// 圈子广场
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quliao/pb/pb_msg/community/community.pb.dart' as $pbCommunity;
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/log.dart';

class VoteDialog extends StatefulWidget {
  VoteDialog({super.key, this.controllerOption, this.hasOption}) ;

  bool? hasOption;
  List<TextEditingController>? controllerOption = [TextEditingController(), TextEditingController()];

  @override
  VoteDialogState createState() => new VoteDialogState();
}

class VoteDialogState extends State<VoteDialog> with SingleTickerProviderStateMixin {

  @override
  void initState() {
    super.initState();

  }

  final _controllerContent = TextEditingController();
  // List<TextEditingController> controllerOption = [TextEditingController(), TextEditingController()];

  ScrollController membersScrollController = ScrollController();

  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: EdgeInsets.fromLTRB(10,0,10,10),
      insetPadding: EdgeInsets.fromLTRB(20,0,20,20),
      title: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: BackButton(
          color: Colors.black38,
          onPressed: () {
            widget.controllerOption?.clear();
            // if (!widget.hasOption) {
            //   widget.controllerOption.clear();
            // }
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text("投票", style: TextStyle(color: Colors.black87, fontSize: 14),),
        actions: [
          TextButton(
            style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(0, 0))),
            child: Text("添加", style: TextStyle(color: Colors.blue, fontSize: 12),),
            onPressed: () {
              // _doPublish();
              for (var v in widget.controllerOption!) {
                log("${v.text}");
                if(v.text.isEmpty) {
                  showToast("选项内容不能为空");
                  return;
                }
              }
              // widget.hasOption = true;
              Navigator.pop(context);
            },),
        ],
      ),
      titlePadding: EdgeInsets.fromLTRB(0,6,0,0),
      backgroundColor: Colors.white,
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(6))),
      children: <Widget>[
        Container(
          height: 185,
          width: 500,
          child: ListView.builder(
            itemCount: widget.controllerOption?.length,
            itemBuilder: (BuildContext context, int index) {
              // log("length:${widget.controllerOption.length}, index:${index}");
              return _BuildListMembers(context, index);
            }
          ),
        ),
        Padding(
            padding: EdgeInsets.fromLTRB(10,5,10,0),
            child:
            TextButton(
              // color: Color(0x0A000000),
              // // minWidth: 150,
              // highlightColor: Colors.black12,
              // colorBrightness: Brightness.dark,
              // splashColor: Colors.grey,
              child: Text("+ 添加一个选项", style: TextStyle(color: Colors.blue[400], fontSize: 14),),
              // shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              onPressed: () {
                // _controllerOption[0].text = (length+1).toString();
                // has3Option = true;
                // length ++;
                // _options.add("value");
                int? len = widget.controllerOption?.length??0;
                if (len! < 4) { // 模仿最右投票，最多添加4条，可以修改代码实现更多条
                  widget.controllerOption?.add(TextEditingController());
                  setState(() {

                  });
                }else {
                  showToast("最多添加4个选项");
                }
              },
            )
        ),
      ],
    );
  }



  Widget _BuildListMembers(BuildContext context, int index) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10,5,10,5),
      child: Container(
        padding: const EdgeInsets.all(0.0),
        alignment: Alignment.center,
        height: 36.0,
        decoration: new BoxDecoration(
            color: Color(0x0A000000),
            border: new Border.all(color: Color(0xA000000), width: 0),
            borderRadius: new BorderRadius.circular(18.0)),
        child: new TextFormField(
          controller:  widget.controllerOption![index],
          textAlign: TextAlign.center,
          decoration: InputDecoration.collapsed(hintText: '选项${index+1} （14个汉字以内）', hintStyle: TextStyle(color: Colors.black38)),
        ),
      ),
    );
  }
}
