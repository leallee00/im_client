import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quliao/pages/community/create_community_group.dart';

class RuleGuid extends StatefulWidget {
  @override
  _RuleGuidState createState() => _RuleGuidState();
}

class _RuleGuidState extends State<RuleGuid> {
  @override
  void initState() {
    super.initState();
  }

  Widget Title1(String data) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Text(data, style: TextStyle(fontSize: 20),),
    );
  }

  Widget Title2(String data) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Text(data, style: TextStyle(fontSize: 16),),
    );
  }

  Widget Content1(String data) {
    return Container(
      child: Text(data, style: TextStyle(fontSize: 14, color: Colors.black54),),
    );
  }

  Widget Example(String data) {
    return Text(data, style: TextStyle(fontSize: 14, color: Colors.blue),);
  }

  Widget ExampleContent(String data, bool right) {
    if (right) {
      return Row(children: [
        Icon(Icons.check, color: Colors.blue,size: 14,),
        Text(data, style: TextStyle(color: Colors.grey, fontSize: 14),),
      ],);
    } else {
      return Row(children: [
        Icon(Icons.clear, color: Colors.red,size: 14,),
        Text(data, style: TextStyle(color: Colors.black54, fontSize: 14),),
      ],);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("话题规则填写指南"),
        ),
        body: Scrollbar( // 显示进度条
            child: SingleChildScrollView(
                padding: EdgeInsets.all(20.0),
                child:
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Title1("话题规则是什么"),
                      Content1(
                          "话题规则是话题的规章制度，是用户发帖的行为指南，是话题管理者移贴的重要依据，只有按照规章制度管理话题，话题才能有条不紊的发展"),
                      Title1("如何制定话题规则"),
                      Title2(
                          "负向规则："),
                      Content1(
                          "负向规则是话题不能发布的内容，一般指违反社区规范和与话题无关的帖子。"),
                      Content1(
                          "制定负向规则时，需对不能发布的内容进行分类，如自拍类、交友类、宣群类、日常打卡问候类等等，当不能明确罗列出所有负向规则时，可罗列出明显禁止的规则，再列出一个相对清晰的通用规则，如#王者荣耀#话题的通用规则"
                              "：不可发与王者荣耀无关的内容。~"),
                Title2(
                    "正向规则："),
                Content1("正向规则是话题鼓励发布的内容，一般是指与话题调性非常相关的帖子。"),
                      Content1("制定正向规则时，需对非常提倡的内容进行分类，如原创资源类、生活分享类、暖心正能量类等等。"),
                      Title1(
                          "注意事项"),
                      Title2(
                          "1、负向规则将用于移贴，移贴时需选择内容违反的负向规则，系统会私信通知用户违反了该条规则，所以负向规则要条理清晰、言语规范。"),
                      Title2(
                          "2、避免使用“水贴”、“无意义”、“与话题氛围不符”等模糊字眼。"),
                      Example("如“生活图片分享”类话题规则"),
                      ExampleContent("禁止发无意义水贴", false),
                      ExampleContent("禁止发与生活分享网关的视频、动图、纯文字", true),
                      Title2(
                          "3、避免将不同类别的规则混在一条里写。"),
                      Example("如“声控”类话题规则"),
                      ExampleContent("禁止交友宣群、连麦、早安晚安、求安慰、带自拍类帖子。", false),
                      ExampleContent("禁止发交友类内容，如：早安晚安、求安慰等", true),
                      Title2(
                          "4、避免语言口语化"),
                      Example("如“综艺”类话题规则"),
                      ExampleContent("不要在综艺A的话题里发别的综艺。", false),
                      ExampleContent("禁止发布与综艺A无关的内容。", true),
                      Title2(
                          "5、避免规则格式混乱、重点不突出"),
                      Example("如“减肥”类话题规则"),
                      ExampleContent("不要发广告，减肥没有捷径，减肥药相关的内容都算作广告。", false),
                      ExampleContent("禁止发布任何形式广告，如：减肥药、减肥课程。", true),
                      Title2(
                          "6、避免描述不明确、有歧义"),
                      Example("如“壁纸”类话题规则"),
                      ExampleContent("只能发原图。", false),
                      ExampleContent("禁止发布非原图，如：带个人水印、带锁屏时间的壁纸等。", true),
                    ])

            )
        )
    );
  }
}