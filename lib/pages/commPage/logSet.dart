import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/pub/pub-def.dart';

class LogSet extends StatefulWidget {
  static const name = "LogSet";
  const LogSet({
    super.key,
  });

  @override
  LogSetState createState() => new LogSetState();
}



class LogSetState  extends State<LogSet> {
  late LOG_LEVEL logLevel;
  late LOG_MODEL logModel;
  Widget MakeLevelCheckBox(LOG_LEVEL level){
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Row(
        children: [
          Checkbox(
            value: curLogLevel == level,
            activeColor: Colors.red, //选中时的颜色
            onChanged: (value){
              curLogLevel = level;
              setState(() {

              });
            },
          ),
          Text("${level}"),
        ],
      ),
    );
  }

  Widget MakeModelCheckBox(LOG_MODEL model){
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Row(
        children: [
          Checkbox(
            value: curLogModel == model,
            activeColor: Colors.red, //选中时的颜色
            onChanged: (value){
              curLogModel = model;
              setState(() {

              });
            },
          ),
          Text("${model}"),
        ],
      ),
    );
  }
  @override
  void initState() {
    super.initState();
    logLevel = curLogLevel;
    logModel = curLogModel;
  }

  TextEditingController logLevelCtl = TextEditingController(
      text: "${curLogLevel.index}");
  TextEditingController logModelCtl = TextEditingController(
      text: "${curLogModel.index}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("调整日志设置"),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red, width: 1),

                ),
                child: Wrap(

                  // spacing: 8.0, // 主轴(水平)方向间距
                  // runSpacing: 4.0, // 纵轴（垂直）方向间距
                  // alignment: WrapAlignment.center, //沿主轴方向居中
                  children: [
                    Text("输出日志级别"),
                    MakeLevelCheckBox(LOG_LEVEL.DEBUG),
                    MakeLevelCheckBox(LOG_LEVEL.INFO),
                    MakeLevelCheckBox(LOG_LEVEL.WARN),
                    MakeLevelCheckBox(LOG_LEVEL.ERROR),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red, width: 1),

                ),
                child: Wrap(
                  children: [
                    Text("要打印信息的模块"),
                    MakeModelCheckBox(LOG_MODEL.ALL),
                    MakeModelCheckBox(LOG_MODEL.PRIVATE),
                    MakeModelCheckBox(LOG_MODEL.GROUP),
                    MakeModelCheckBox(LOG_MODEL.LIVE),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}