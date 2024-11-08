import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/community/community.dart';
import 'package:quliao/pages/community/rule_guide.dart';
import 'package:quliao/pages/windows/client/window_client.dart';
import 'package:quliao/pages/windows/client/window_image_upload.dart';
import 'package:quliao/pb/pb_msg/community/community.pb.dart' as $pbCommunity;
import 'package:quliao/pb/pb_pub/service.pb.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/pub/log.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum EnJoninType {
  FreeJoin, // 0. 是否开启自由入团
  ApplyJoin, // 1. 是否开启申请入团,如果开启自由入团此种方式无效
  InviteJoin, // 2. 是否开启邀请入团
  PasswordJoin, // 3. 是否开启口令入团,如果开启自由入团此种方式无效
  AnswerJoin, // 4. 是否开启答题入团,如果开启自由入团此种方式无效
}

class CommunitySettingRule extends StatefulWidget {
  CommunitySettingRule(this._community, {super.key});

  @override
  _CommunitySettingRuleState createState() => _CommunitySettingRuleState();

  final $pbCommunity.Community _community;
}

class _CommunitySettingRuleState extends State<CommunitySettingRule> {
  final ImagePicker _picker = ImagePicker();

  // 头像
  String avatarUrl = ""; // 圈子头像
  String avatarLocPath = "";
  String gname = ""; // 圈子名称
  String followerTitle = ""; // 给成员取得称号
  String describe = ""; // 描述信息
  int postsType =
      0; // 允许发布的帖子类型 1:任何帖子类型均支持 2:仅可发布视频 3:仅可发布图片 4:仅可发布语言 5:仅可发布纯文字
  EnJoninType joinType = EnJoninType
      .FreeJoin; // 成员加入方式 0:自由加入 1：需申请，管理员通过后可加 2：需回答问题，答案正确后加入 3：需邀请，必须通过成员邀请加入
  String reqReason = ""; // 加入时向申请问的问题
  String reqQustion = ""; // 加入需要答题的问题
  String reqAnswer = ""; // 加入需要答题的答案
  bool memberInvite = true; // 开启后，成员可以直接邀请其他人加入圈子，被邀请者不需要申请和答题

  // final imagePicker = ImagePicker();
  final _controllerGName = TextEditingController();
  final _controllerFollowerTitle = TextEditingController();
  final _controllerDescribe = TextEditingController();
  final _controllerReqReason = TextEditingController();
  final _controllerReqQustion = TextEditingController();
  final _controllerReqAnswer = TextEditingController();

  // 属性写入本地数据库
  // void SyncToSP()async{
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   var prefix = "${AppUserInfo.instance.imId}_community_group_new_";
  //   prefs.setString(prefix+"avatarUrl", avatarUrl); // 圈子头像
  //   prefs.setString(prefix+"avatarLocPath",avatarLocPath);
  //   prefs.setString(prefix+"gname",gname); // 圈子名称
  //   prefs.setString(prefix+"followerTitle",followerTitle); // 给成员取得称号
  //   prefs.setString(prefix+"describe", describe); // 描述信息
  //   prefs.setInt(prefix+"joinType", joinType); // 成员加入方式 0:自由加入 1：需申请，管理员通过后可加 2：需回答问题，答案正确后加入 3：需邀请，必须通过成员邀请加入
  //   prefs.setString(prefix+"reqReason", reqReason); // 加入时向申请问的问题
  //   prefs.setString(prefix+"reqQustion", reqQustion); // 加入需要答题的问题
  //   prefs.setString(prefix+"reqAnswer", reqAnswer); // 加入需要答题的答案
  //   prefs.setBool(prefix+"memberInvite", memberInvite); // 开启后，成员可以直接邀请其他人加入圈子，被邀请者不需要申请和答题
  //   // log("save over");
  // }
  //
  // // 从本地数据库加载
  void UpdateData() async {
    avatarUrl = widget._community.avatar; // 圈子头像
    avatarLocPath = "";
    gname = widget._community.name; // 圈子名称
    _controllerGName.text = gname;
    // followerTitle = widget._community.; // 给成员取得称号
    // _controllerFollowerTitle.text = followerTitle;
    describe = widget._community.describe; // 描述信息
    _controllerDescribe.text = describe;
    // joinType = widget._community.; // 成员加入方式 0:自由加入 1：需申请，管理员通过后可加 2：需回答问题，答案正确后加入 3：需邀请，必须通过成员邀请加入

    // if (widget._community.freeJoin) joinType = EnJoninType.FreeJoin;
    // if (widget._community.applyJoin) joinType = EnJoninType.ApplyJoin;
    // if (widget._community.answerJoin) joinType = EnJoninType.AnswerJoin;
    if (widget._community.joinType == $pbCommunity.JoinType.APPLY)
      joinType = EnJoninType.ApplyJoin;
    if (widget._community.joinType == $pbCommunity.JoinType.ANSWER)
      joinType = EnJoninType.AnswerJoin;
    if (widget._community.joinType == $pbCommunity.JoinType.PASSWORD)
      joinType = EnJoninType.PasswordJoin;
    // if (widget._community.inviteJoin) joinType = EnJoninType.InviteJoin;
    // if (widget._community.passwordJoin) joinType = EnJoninType.PasswordJoin;

    reqReason = widget._community.question; // 加入时向申请问的问题
    _controllerReqReason.text = reqReason;
    reqQustion = widget._community.question; // 加入需要答题的问题
    _controllerReqQustion.text = reqQustion;
    reqAnswer = widget._community.answer; // 加入需要答题的答案
    _controllerReqAnswer.text = reqAnswer;
    memberInvite =
        widget._community.inviteJoin; // 开启后，成员可以直接邀请其他人加入圈子，被邀请者不需要申请和答题

    if (widget._community.positiveRules.length > 0) {
      listRuleR = widget._community.positiveRules.split("|");
    }
    if (widget._community.negativeRules.length > 0) {
      listRuleL = widget._community.negativeRules.split("|");
    }
    // log("load over");
    setState(() {});
  }

  // void RestToSP()async{
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   var prefix = "${AppUserInfo.instance.imId}_community_group_new_";
  //   prefs.remove(prefix+"avatarUrl"); // 圈子头像
  //   prefs.remove(prefix+"avatarLocPath");
  //   prefs.remove(prefix+"gname"); // 圈子名称
  //   prefs.remove(prefix+"followerTitle"); // 给成员取得称号
  //   prefs.remove(prefix+"describe"); // 描述信息
  //   prefs.remove(prefix+"joinType"); // 成员加入方式 0:自由加入 1：需申请，管理员通过后可加 2：需回答问题，答案正确后加入 3：需邀请，必须通过成员邀请加入
  //   prefs.remove(prefix+"reqReason"); // 加入时向申请问的问题
  //   prefs.remove(prefix+"reqQustion"); // 加入需要答题的问题
  //   prefs.remove(prefix+"reqAnswer"); // 加入需要答题的答案
  //   prefs.remove(prefix+"memberInvite"); // 开启后，成员可以直接邀请其他人加入圈子，被邀请者不需要申请和答题
  // }

  @override
  void initState() {
    super.initState();

    UpdateData();
    log(widget._community);
    log(widget._community.joinType);
    // log(listRuleL);
    // log(listRuleR);

    log("jointype:${joinType}");
  }

  Uint8List encode(String s) {
    var encodedString = utf8.encode(s);
    var encodedLength = encodedString.length;
    var data = ByteData(encodedLength + 4);
    data.setUint32(0, encodedLength, Endian.big);
    var bytes = data.buffer.asUint8List();
    bytes.setRange(4, encodedLength + 4, encodedString);
    return bytes;
  }

  Future<void> SaveData() async {
    // 检查有效性
    // avatarUrl = ""; // 圈子头像
    if (avatarLocPath.trim() == "" && avatarUrl.trim() == "") {
      showToast("请选择头像");
      return;
    }

    if (gname.trim() == "") {
      // 圈子名称
      showToast("请给圈子取个好听的名字吧");
      // FocusScope.of(context).requestFocus();
      return;
    }

    if (followerTitle.trim() == "") {
      // 给成员取得称号
      showToast("请给成员取个称号");
      return;
    }

    if (describe.trim() == "") {
      // 描述信息
      showToast("请输入描述信息");
      return;
    }
    // int joinType = 0; // 成员加入方式 0:自由加入 1：需申请，管理员通过后可加 2：需回答问题，答案正确后加入 3：需邀请，必须通过成员邀请加入
    // switch(joinType) {
    //   case 1:
    //     if (reqReason == "") {
    //       showToast("请输入一个加入原因问题");
    //       return;
    //     }
    //     break;
    //   case 2:
    //     if (reqQustion == "") {
    //       showToast("请输入一个问题");
    //       return;
    //     }
    //
    //     if (reqAnswer == "") {
    //       showToast("请输入问题答案");
    //       return;
    //     }
    //     break;
    // }

    // 限制重复点击
    // 弹出等待窗口

    // 展示等待动画

    // 上传图片
    if (avatarUrl.trim() == "") {
      var result =
          await UpLoadImageWithLocalPath(avatarLocPath, "app-community");
      // log("get image of path ${value.path}");
      if (result.statusCode != 200) {
        showToast("图片上传失败！！${result.statusCode}");
        return;
      }

      avatarUrl = result.data["data"]["url"];
    }

    // 提交申请
    var updateReq = $pbCommunity.UpdateCommunityReq();
    updateReq.community = $pbCommunity.Community();
    if (gname != widget._community.name) {
      updateReq.community.name = gname;
      updateReq.keys.add("name");
    }

    if (avatarUrl != widget._community.avatar) {
      updateReq.community.avatar = avatarUrl;
      updateReq.keys.add("avatar");
    }

    if (describe != widget._community.describe) {
      updateReq.community.describe = describe;
      updateReq.keys.add("describe");
    }

    updateReq.community.positiveRules = listToString(listRuleR, "|");
    updateReq.community.negativeRules = listToString(listRuleL, "|");
    if (updateReq.community.positiveRules != widget._community.positiveRules) {
      updateReq.keys.add("positiveRules");
    }
    if (updateReq.community.negativeRules != widget._community.negativeRules) {
      updateReq.keys.add("negativeRules");
    }

    // log("memberInvite: ${memberInvite}, \ninviteJoin: ${widget._community.inviteJoin}");
    if (memberInvite != widget._community.inviteJoin) {
      updateReq.community.inviteJoin = memberInvite;
      updateReq.keys.add("inviteJoin");
    }

    switch (joinType) {
      case EnJoninType.FreeJoin: // 0. 是否开启自由入团
        // updateReq.community.freeJoin = true;
        // updateReq.community.inviteJoin = false;
        // updateReq.community.applyJoin = false;
        // updateReq.community.passwordJoin = false;
        // updateReq.community.answerJoin = false;
        updateReq.community.joinType = $pbCommunity.JoinType.FREE;
        break;
      case EnJoninType.ApplyJoin: // 1. 是否开启申请入团,如果开启自由入团此种方式无效
        // updateReq.community.freeJoin = false;
        // updateReq.community.inviteJoin = false;
        // updateReq.community.applyJoin = true;
        // updateReq.community.passwordJoin = false;
        // updateReq.community.answerJoin = false;
        updateReq.community.joinType = $pbCommunity.JoinType.APPLY;
        break;
      case EnJoninType.InviteJoin: // 2. 是否开启邀请入团
        // updateReq.community.freeJoin = false;
        // updateReq.community.inviteJoin = true;
        // updateReq.community.applyJoin = false;
        // updateReq.community.passwordJoin = false;
        // updateReq.community.answerJoin = false;
        break;
      case EnJoninType.PasswordJoin: // 3. 是否开启口令入团,如果开启自由入团此种方式无效
        // updateReq.community.freeJoin = false;
        // updateReq.community.inviteJoin = false;
        // updateReq.community.applyJoin = false;
        // updateReq.community.passwordJoin = true;
        // updateReq.community.answerJoin = false;
        updateReq.community.joinType = $pbCommunity.JoinType.PASSWORD;
        break;
      case EnJoninType.AnswerJoin: // 4. 是否开启答题入团,如果开启自由入团此种方式无效
        // updateReq.community.freeJoin = false;
        // updateReq.community.inviteJoin = false;
        // updateReq.community.applyJoin = false;
        // updateReq.community.passwordJoin = false;
        // updateReq.community.answerJoin = true;
        updateReq.community.joinType = $pbCommunity.JoinType.ANSWER;
        break;
    }

    // // 自由加入
    // if (widget._community.freeJoin != updateReq.community.freeJoin){
    //   updateReq.community.freeJoin = updateReq.community.freeJoin;
    //   updateReq.keys.add("freeJoin");
    // }
    //
    // if (widget._community.applyJoin != updateReq.community.applyJoin){
    //   updateReq.community.applyJoin = updateReq.community.applyJoin;
    //   updateReq.keys.add("applyJoin");
    // }

    // if (widget._community.inviteJoin != updateReq.community.inviteJoin){
    //   updateReq.community.inviteJoin = updateReq.community.inviteJoin;
    //   updateReq.keys.add("inviteJoin");
    // }

    // if (widget._community.passwordJoin != updateReq.community.passwordJoin){
    //   updateReq.community.passwordJoin = updateReq.community.passwordJoin;
    //   updateReq.keys.add("passwordJoin");
    // }
    //
    // if (widget._community.answerJoin != updateReq.community.answerJoin){
    //   updateReq.community.answerJoin = updateReq.community.answerJoin;
    //   updateReq.keys.add("answerJoin");
    // }

    // updateReq.community.joinType = updateReq.community.joinType;
    switch (widget._community.joinType) {
      case $pbCommunity.JoinType.FREE:
        updateReq.keys.add("joinType");
        break;
      case $pbCommunity.JoinType.APPLY:
        updateReq.keys.add("joinType");
        break;
      case $pbCommunity.JoinType.PASSWORD:
        updateReq.keys.add("joinType");
        break;
      case $pbCommunity.JoinType.ANSWER:
        updateReq.keys.add("joinType");
        break;
    }

    if (widget._community.question != reqQustion) {
      updateReq.community.question = reqQustion;
      updateReq.keys.add("question");
    }

    if (widget._community.answer != reqAnswer) {
      updateReq.community.answer = reqAnswer;
      updateReq.keys.add("answer");
    }

    // updateReq.community.id = widget._community.id;
    log(updateReq);
    var response = await RpcCallImOuterApi(
            "/pb_grpc_community.Community/UpdateCommunity",
            updateReq,
            MakePBCommData(
                aimId: Int64(AppUserInfo.instance.imId),
                toService: Service.community,
                groupId: widget._community.id))
        .catchError((err) {
      log("err msg ${err}");
      showToast("更新圈子失败, ${err.toString()}");

      return widget._community;
    });
    // log(response.body);

    // 更改到圈子数据
    setState(() {});

    Navigator.pop(context);
  }

  void pickerPic() {
    // 拍照
    //   imagePicker.getImage(source: ImageSource.camera).then((value)async{
    //     if (value==null || value.path == null || value.path.length < 3){
    //       showToast("请选择图片");
    //       return ;
    //     }
    //
    //     widget.finfo.userInfo.widget.finfo.fpMsgSet.backPic = value.path;
    //     widget.finfo.userInfo.widget.finfo.fpMsgSet.saveToDb(widget.finfo.userInfo.imId);
    //     setState(() {
    //
    //     });
    //   });
    //
    // // 从相机选择
    if (WindowClient.instance.isPC()) {
      chooseLocalImage().then((value) {
        if (value == null || value.path == null || value.path.length < 3) {
          showToast("请选择图片");
          return;
        }

        // widget.finfo.fpMsgSet.backPic = value.path;
        // widget.finfo.fpMsgSet.saveToDb(widget.finfo.userInfo.imId);
        if (avatarLocPath != value.path) {
          avatarLocPath = value.path;
          avatarUrl = "";
          // SyncToSP();
          setState(() {});
        }
      });
    } else {
      _picker.getImage(source: ImageSource.gallery).then((value) async {
        if (value == null || value.path == null || value.path.length < 3) {
          showToast("请选择图片");
          return;
        }

        // widget.finfo.fpMsgSet.backPic = value.path;
        // widget.finfo.fpMsgSet.saveToDb(widget.finfo.userInfo.imId);
        if (avatarLocPath != value.path) {
          avatarLocPath = value.path;
          avatarUrl = "";
          // SyncToSP();
          setState(() {});
        }
      });
    }
  }

  List<String> listRuleRSet = [
    "提倡发布积极向上正能量的内容",
    "提倡发布原创优质内容",
    "提倡发布无水印资源",
    // "以上全部",
    // "自定义其他规则",
  ];

  List<String> listRuleLSet = [
    "禁止发自拍",
    "禁止交友/宣群",
    "禁止转载内容不注明出处",
    "禁止发布低俗、性暗示",
    "禁止有广告、金钱交易行为",
    "禁止攻击、引战",
    "禁止重复灌水",
    "禁止涉及隐私（电话、QQ、微信等）",
    // "以上全部",
    // "自定义其他规则",
  ];

  Widget MakeRuleSet(List<String> listRuleSet, List<String> listRule) {
    List<Widget> rules = <Widget>[];
    listRuleSet.forEach((element) {
      rules.add(TextButton(
        child: Text("${element}"),
        onPressed: () {
          for (var el in listRule) {
            if (el == element) {
              showToast("已经选了本项了");
              Navigator.pop(context);
              return;
            }
          }

          listRule.add(element);
          setState(() {});

          Navigator.pop(context);
        },
      ));
    });
    return Column(
      children: rules,
    );
  }

  List<String> listRuleR = <String>[];
  List<String> listRuleL = <String>[];
  Widget MakeRule(List<String> listRule) {
    List<Widget> rules = <Widget>[];
    int i = 0;
    listRule.forEach((element) {
      i++;
      rules.add(Row(
        children: [
          Expanded(
            flex: 5,
            child: Text("${i}.${element}"),
          ),
          Expanded(
            child: IconButton(
              icon: Icon(
                Icons.clear,
                size: 20,
              ),
              onPressed: () {
                listRule.remove(element);
                setState(() {});
              },
            ),
          ),
        ],
      ));
    });
    return Column(
      children: rules,
    );
  }

  Widget MakeAvatar() {
    if (avatarLocPath != "") {
      return
          // SizedBox(width: 60, height: 60, child:
          Image.file(
        File(avatarLocPath),
        fit: BoxFit.cover,
      );
      // );
    }

    if (avatarUrl != "") {
      return Image.network(
        avatarUrl,
        fit: BoxFit.cover,
      ); //SizedBox(width: 60, height: 60, child:Image.network(avatarUrl));
    }

    return Icon(Icons.add_a_photo);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(
          color: Colors.black54,
        ),
        centerTitle: true,
        title: Text("修改圈子设置", style: TextStyle(color: Colors.black54)),
        actions: [
          TextButton(
            child: Text(
              "保存",
              style: TextStyle(color: Colors.black54),
            ),
            onPressed: () {
              SaveData();
            },
          ),
        ],
      ),
      body: Scrollbar(
        // 显示进度条
        child: SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {
                    pickerPic();
                  },
                  child: Center(
                    child:
                        // avatarLocPath != "" ?
                        // Image.file(
                        //   File(avatarLocPath),
                        //   fit: BoxFit.cover,)
                        // // avatar(avatarUrl, 100, 100)
                        //     :
                        Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey,
                      ),
                      width: 100,
                      height: 100,
                      child: Stack(
                        children: [
                          Center(
                            // margin: EdgeInsets.all(20),
                            child:
                                MakeAvatar(), //avatar(avatarUrl, 100, 100):Icon(Icons.add_a_photo),
                          ),
                          Positioned(
                              top: 70,
                              child: Container(
                                color: Colors.black12,
                                padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                                child: Text(
                                  "更改头像",
                                  style:
                                      TextStyle(color: Colors.white, shadows: [
                                    Shadow(
                                      color: Colors.black,
                                      offset: Offset(1, 1),
                                      blurRadius: 1,
                                    )
                                  ]),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: "圈子名称",
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                  text: "*",
                                  style: TextStyle(color: Colors.red))
                            ]),
                      ),
                      TextField(
                        decoration: InputDecoration(hintText: "给圈子取个响亮的名字吧"),
                        controller: _controllerGName,
                        onChanged: (value) {
                          gname = value;
                          log("name=${gname}");
                          // SyncToSP();
                        },
                      )
                      // Text(
                      //   "给圈子取个响亮的名字吧", style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: "关注者",
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                  text: "*",
                                  style: TextStyle(color: Colors.red))
                            ]),
                      ),
                      TextField(
                        controller: _controllerFollowerTitle,
                        decoration: InputDecoration(hintText: "给关注起个称号吧"),
                        onChanged: (value) {
                          followerTitle = value;
                          // SyncToSP();
                        },
                      )
                      // Text("给关注起个称号吧", style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: "圈子描述",
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                  text: "*",
                                  style: TextStyle(color: Colors.red))
                            ]),
                      ),
                      TextField(
                        maxLength: 200,
                        maxLines: 5,
                        controller: _controllerDescribe,
                        decoration: InputDecoration(
                            hintText: "简单介绍你的圈子，玩法等（200字以内）",
                            border: OutlineInputBorder()),
                        onChanged: (value) {
                          describe = value;
                          // SyncToSP();
                        },
                      )
                      // Text("简单介绍你的圈子，玩法等（200字以内）",
                      //   style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: "允许发布的帖子类型",
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                  text: "*",
                                  style: TextStyle(color: Colors.red))
                            ]),
                      ),
                      SizedBox(height: 5),
                      Card(
                        // margin:EdgeInsets.all(16),
                        child: DropdownButton(
                            // style: TextStyle(fontSize: 15, color: Colors.black),
                            value: postsType,
                            hint: Text('请选择帖子类型'),
                            underline: Container(height: 0),
                            isExpanded: true,
                            items: [
                              DropdownMenuItem(
                                child: Row(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('任何帖子类型均支持')
                                  ],
                                ),
                                value: 0,
                              ),
                              DropdownMenuItem(
                                child: Row(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('仅可发布视频')
                                  ],
                                ),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Row(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('仅可发布图片')
                                  ],
                                ),
                                value: 2,
                              ),
                              DropdownMenuItem(
                                child: Row(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('仅可发布语音')
                                  ],
                                ),
                                value: 3,
                              ),
                              DropdownMenuItem(
                                child: Row(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('仅可发布纯文字')
                                  ],
                                ),
                                value: 4,
                              ),
                            ],
                            onChanged: (value) =>
                                setState(() => postsType = value!)),
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: "成员加入方式",
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                  text: "*",
                                  style: TextStyle(color: Colors.red))
                            ]),
                      ),
                      // Text("给圈子取个响亮的名字吧", style: TextStyle(color: Colors.grey),),
                      Card(
                          // margin:EdgeInsets.all(16),
                          child: Container(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {
                                joinType = EnJoninType.FreeJoin;
                                log("jointype:${joinType}");
                                setState(() {
                                  // SyncToSP();
                                });
                              },
                              // child: Container(
                              // padding: EdgeInsets.all(5),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.check_circle,
                                    color: joinType == EnJoninType.FreeJoin
                                        ? Colors.blue
                                        : Colors.grey,
                                    size: 15,
                                  ),
                                  Text("自由加入。"),
                                ],
                              ),
                              // ),
                            ),
                            TextButton(
                              onPressed: () {
                                joinType = EnJoninType.ApplyJoin;
                                log("sldjfsljfsdlfjs");
                                setState(() {
                                  // SyncToSP();
                                });
                              },
                              // Container(
                              //   padding: EdgeInsets.all(5),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.check_circle,
                                    color: joinType == EnJoninType.ApplyJoin
                                        ? Colors.blue
                                        : Colors.grey,
                                    size: 15,
                                  ),
                                  Text("需申请，管理员通过后即可加入。"),
                                ],
                              ),
                            ),
                            Offstage(
                              offstage: joinType != 1,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(40, 0, 40, 20),
                                child: TextField(
                                  controller: _controllerReqReason,
                                  onChanged: (value) {
                                    reqReason = value;
                                    // SyncToSP();
                                  },
                                  decoration: InputDecoration(
                                    hintText: "请输入您要问的申请理由",
                                    labelText: "申请理由",
                                  ),
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                joinType = EnJoninType.AnswerJoin;
                                setState(() {
                                  // SyncToSP();
                                });
                              },
                              // Container(
                              //   padding: EdgeInsets.all(5),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.check_circle,
                                    color: joinType == EnJoninType.AnswerJoin
                                        ? Colors.blue
                                        : Colors.grey,
                                    size: 15,
                                  ),
                                  Text("需回答问题，答案正确即可加入。"),
                                ],
                              ),
                            ),
                            Offstage(
                              offstage: joinType != EnJoninType.AnswerJoin,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(40, 0, 40, 20),
                                child: Column(
                                  children: [
                                    TextField(
                                      controller: _controllerReqQustion,
                                      onChanged: (value) {
                                        reqQustion = value;
                                        // SyncToSP();
                                      },
                                      decoration: InputDecoration(
                                        hintText: "请输入问题",
                                        labelText: "问题",
                                      ),
                                    ),
                                    TextField(
                                      controller: _controllerReqAnswer,
                                      onChanged: (value) {
                                        reqAnswer = value;
                                        // SyncToSP();
                                      },
                                      decoration: InputDecoration(
                                        hintText: "请留下答案",
                                        labelText: "答案",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            TextButton(
                                onPressed: () {
                                  joinType = EnJoninType.InviteJoin;
                                  // log("babc");
                                  setState(() {
                                    // SyncToSP();
                                  });
                                },
                                // Container(
                                //     padding: EdgeInsets.all(5),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.check_circle,
                                      color: joinType == EnJoninType.InviteJoin
                                          ? Colors.blue
                                          : Colors.grey,
                                      size: 15,
                                    ),
                                    Text("需邀请，必须通过成员邀请才可加入。"),
                                  ],
                                )),
                          ],
                        ),
                      )),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: RichText(
                              text: TextSpan(
                                  text: "成员直接邀请",
                                  style: TextStyle(color: Colors.black),
                                  children: [
                                    TextSpan(
                                        text: "*",
                                        style: TextStyle(color: Colors.red))
                                  ]),
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: FittedBox(
                                // width: 15,
                                child: Switch(
                                  value: memberInvite,
                                  onChanged: (value) {
                                    memberInvite = value;
                                    setState(() {
                                      // SyncToSP();
                                    });
                                    //
                                  },
                                ),
                              )),
                        ],
                      ),

                      // Text("给圈子取个响亮的名字吧", style: TextStyle(color: Colors.grey),),
                      Card(
                          // margin:EdgeInsets.all(16),
                          child: Container(
                        padding: EdgeInsets.all(16),
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: Text("开启后，成员可以直接邀请其他人加入圈子，被邀请者不需要申请和答题"),
                        ),
                      )),
                    ],
                  ),
                ),

                // 话题规则
                Container(
                  margin: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: RichText(
                              text: TextSpan(
                                  text: "话题规则",
                                  style: TextStyle(color: Colors.black),
                                  children: [
                                    // TextSpan(text: "*", style: TextStyle(
                                    //     color: Colors.red))
                                  ]),
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: FittedBox(
                                  child: TextButton(
                                onPressed: () {
                                  // 弹出规则窗口
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (BuildContext context) {
                                    return RuleGuid();
                                  }));
                                },
                                child: Text(
                                  "?话题规则填写指南",
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 15),
                                ),
                              ))),
                        ],
                      ),

                      // Text("给圈子取个响亮的名字吧", style: TextStyle(color: Colors.grey),),
                      Card(
                          // margin:EdgeInsets.all(16),
                          child: Container(
                              padding: EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("负向话题规则："),
                                  Text("即话题不鼓励发布的内容，是管理员移除帖子的依据，请认真选择。"),
                                  MakeRule(listRuleL),
                                  TextButton(
                                    child: Text(
                                      "+添加",
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 20),
                                    ),
                                    onPressed: () {
                                      // for(var l in listRuleL){
                                      //   if (l == )
                                      // }
                                      // listRuleL.add("test");
                                      // setState(() {
                                      //
                                      // });
                                      showModalBottomSheet(
                                          context: context,
                                          isScrollControlled: false,
                                          backgroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          builder: (BuildContext context) {
                                            return Container(
                                              height: 500, //对话框高度就是此高度
                                              child: MakeRuleSet(
                                                  listRuleLSet, listRuleL),
                                            );
                                          });
                                    },
                                  )
                                ],
                              ))),

                      Card(
                          // margin:EdgeInsets.all(16),
                          child: Container(
                              padding: EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("正向话题规则："),
                                  Text("即表达话题氛围提倡的帖子内容。"),
                                  MakeRule(listRuleR),
                                  TextButton(
                                    // minWidth: 10,
                                    child: Text(
                                      "+添加",
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 16),
                                    ),
                                    onPressed: () {
                                      // for(var l in listRuleL){
                                      //   if (l == )
                                      // }
                                      showModalBottomSheet(
                                          context: context,
                                          isScrollControlled: false,
                                          backgroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          builder: (BuildContext context) {
                                            return Container(
                                              height: 500, //对话框高度就是此高度
                                              child: MakeRuleSet(
                                                  listRuleRSet, listRuleR),
                                            );
                                          });
                                      // listRuleR.add("testr");
                                      // setState(() {
                                      //
                                      // });
                                    },
                                  )
                                ],
                              ))),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
