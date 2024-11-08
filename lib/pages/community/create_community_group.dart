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

class CreateCommunityGroup extends StatefulWidget {
  @override
  _CreateCommunityGroupState createState() => _CreateCommunityGroupState();
}

class _CreateCommunityGroupState extends State<CreateCommunityGroup> {
  final ImagePicker _picker = ImagePicker();

  // 头像
  String avatarUrl = ""; // 圈子头像
  String avatarLocPath = "";
  String gname = ""; // 圈子名称
  String followerTitle = ""; // 给成员取得称号
  String describe = ""; // 描述信息
  int postsType =
      0; // 允许发布的帖子类型 1:任何帖子类型均支持 2:仅可发布视频 3:仅可发布图片 4:仅可发布语言 5:仅可发布纯文字
  int joinType =
      0; // 成员加入方式 0:自由加入 1：需申请，管理员通过后可加 2：需回答问题，答案正确后加入 3：需邀请，必须通过成员邀请加入
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
  void SyncToSP() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var prefix = "${AppUserInfo.instance.imId}_community_group_new_";
    prefs.setString(prefix + "avatarUrl", avatarUrl); // 圈子头像
    prefs.setString(prefix + "avatarLocPath", avatarLocPath);
    prefs.setString(prefix + "gname", gname); // 圈子名称
    prefs.setString(prefix + "followerTitle", followerTitle); // 给成员取得称号
    prefs.setString(prefix + "describe", describe); // 描述信息
    prefs.setInt(prefix + "joinType",
        joinType); // 成员加入方式 0:自由加入 1：需申请，管理员通过后可加 2：需回答问题，答案正确后加入 3：需邀请，必须通过成员邀请加入
    prefs.setInt(prefix + "postsType",
        postsType); // 允许发布的帖子类型 0:任何帖子类型均支持 1:仅可发布视频 2:仅可发布图片 3:仅可发布语言 4:仅可发布纯文字
    prefs.setString(prefix + "reqReason", reqReason); // 加入时向申请问的问题
    prefs.setString(prefix + "reqQustion", reqQustion); // 加入需要答题的问题
    prefs.setString(prefix + "reqAnswer", reqAnswer); // 加入需要答题的答案
    prefs.setBool(prefix + "memberInvite",
        memberInvite); // 开启后，成员可以直接邀请其他人加入圈子，被邀请者不需要申请和答题
    // log("save over");
  }

  // 从本地数据库加载
  void LoadFromSP() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var prefix = "${AppUserInfo.instance.imId}_community_group_new_";
    avatarUrl = prefs.getString(prefix + "avatarUrl") ?? ""; // 圈子头像
    avatarLocPath = prefs.getString(prefix + "avatarLocPath") ?? "";
    gname = prefs.getString(prefix + "gname") ?? ""; // 圈子名称
    _controllerGName.text = gname;
    followerTitle = prefs.getString(prefix + "followerTitle") ?? ""; // 给成员取得称号
    _controllerFollowerTitle.text = followerTitle;
    describe = prefs.getString(prefix + "describe") ?? ""; // 描述信息
    _controllerDescribe.text = describe;
    joinType = prefs.getInt(prefix + "joinType") ??
        0; // 成员加入方式 0:自由加入 1：需申请，管理员通过后可加 2：需回答问题，答案正确后加入 3：需邀请，必须通过成员邀请加入
    postsType = prefs.getInt(prefix + "postsType") ??
        0; // 允许发布的帖子类型 0:任何帖子类型均支持 1:仅可发布视频 2:仅可发布图片 3:仅可发布语言 4:仅可发布纯文字

    reqReason = prefs.getString(prefix + "reqReason") ?? ""; // 加入时向申请问的问题
    _controllerReqReason.text = reqReason;
    reqQustion = prefs.getString(prefix + "reqQustion") ?? ""; // 加入需要答题的问题
    _controllerReqQustion.text = reqQustion;
    reqAnswer = prefs.getString(prefix + "reqAnswer") ?? ""; // 加入需要答题的答案
    _controllerReqAnswer.text = reqAnswer;
    memberInvite = prefs.getBool(prefix + "memberInvite") ??
        true; // 开启后，成员可以直接邀请其他人加入圈子，被邀请者不需要申请和答题
    // log("load over");
    setState(() {});
  }

  void RestToSP() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var prefix = "${AppUserInfo.instance.imId}_community_group_new_";
    prefs.remove(prefix + "avatarUrl"); // 圈子头像
    prefs.remove(prefix + "avatarLocPath");
    prefs.remove(prefix + "gname"); // 圈子名称
    prefs.remove(prefix + "followerTitle"); // 给成员取得称号
    prefs.remove(prefix + "describe"); // 描述信息
    prefs.remove(prefix +
        "joinType"); // 成员加入方式 0:自由加入 1：需申请，管理员通过后可加 2：需回答问题，答案正确后加入 3：需邀请，必须通过成员邀请加入
    prefs.remove(prefix + "reqReason"); // 加入时向申请问的问题
    prefs.remove(prefix + "reqQustion"); // 加入需要答题的问题
    prefs.remove(prefix + "reqAnswer"); // 加入需要答题的答案
    prefs.remove(prefix + "memberInvite"); // 开启后，成员可以直接邀请其他人加入圈子，被邀请者不需要申请和答题
  }

  @override
  void initState() {
    super.initState();
    LoadFromSP();
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

  Future<void> CreateGroup() async {
    // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
    //   return Community(communityId: 1,);
    // }));
    // return;

    // 检查有效性
    // avatarUrl = ""; // 圈子头像
    if (avatarLocPath.trim() == "") {
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
    switch (joinType) {
      case 1:
        if (reqReason == "") {
          showToast("请输入一个加入原因问题");
          return;
        }
        break;
      case 2:
        if (reqQustion == "") {
          showToast("请输入一个问题");
          return;
        }

        if (reqAnswer == "") {
          showToast("请输入问题答案");
          return;
        }
        break;
    }

    // 限制重复点击
    // 弹出等待窗口

    // 展示等待动画

    // 上传图片
    if (avatarUrl.trim() == "") {
      var result =
          await UpLoadImageWithLocalPath(avatarLocPath, "app-community-group");
      // log("get image of path ${value.path}");
      if (result.statusCode != 200) {
        showToast("图片上传失败！！${result.statusCode}");
        return;
      }

      avatarUrl = result.data["data"]["url"];
    }
    // 提交申请
    var tt = $pbCommunity.AnswerApplyReq();
    tt.agree = true;
    log("aaaaa->${tt.writeToBuffer()}");

    var req = $pbCommunity.CreateCommunityReq();
    req.name = gname; // 圈子名称
    req.avatar = avatarUrl; // 圈子头像
    req.describe = describe; // 圈子描述
    log("${listToString(listRuleR, "|")}");
    req.positiveRules = listToString(
        listRuleR, "|"); // listRuleR.toString();  // 正向话题规则,服务端存储为string,客户端处理
    req.negativeRules =
        listToString(listRuleL, "|"); // 负向话题规则,服务端存储为string,客户端处理

    // 多种入团方式
    // req.freeJoin = true;        // 是否开启自由入团
    // req.applyJoin = true;       // 是否开启申请入团,如果开启自由入团此种方式无效
    req.inviteJoin = memberInvite; // 是否开启邀请入团
    // req.passwordJoin = true;    // 是否开启口令入团,如果开启自由入团此种方式无效
    // req.answerJoin = true;      // 是否开启答题入团,如果开启自由入团此种方式无效
    switch (joinType) {
      case 0:
        req.joinType = $pbCommunity.JoinType.FREE;
        break;
      case 1:
        req.joinType = $pbCommunity.JoinType.APPLY;
        break;
      case 2:
        req.joinType = $pbCommunity.JoinType.ANSWER;
        break;
      case 3:
        req.joinType = $pbCommunity.JoinType.PASSWORD;
        break;
    }

    // req.password = answerJoin;      // 入团口令,开启口令入团时有效
    req.question = reqQustion; // 入团问题,答题入团时有效
    req.answer = reqAnswer; // 入团答案,答题入团时有效
    var response = await RpcCallImOuterApi(
            "/pb_grpc_community.Community/CreateCommunity",
            req,
            MakePBCommData(
                aimId: Int64(AppUserInfo.instance.imId),
                toService: Service.community))
        //     .catchError(
        //     (err){
        //       log("err msg ${err}");
        //       showToast("创建圈子失败, ${err.toString()}");
        //
        //       return;
        //     }
        // )
        ;

    // var aa = Uint8List.fromList([10, 129, 1, 8, 208]);
    // var l = aa.toList();
    // var s = String.fromCharCodes(aa);
    // print("-----------------");
    // print(s.codeUnits);
    // log("List<int>:${result.codeUnits}");
    // String bb = "";
    // for (int i = 0; i < result.length; i ++){
    //   print(result.codeUnitAt(i));
    //   print(",");
    // }

    // var data = Uint8List.fromList(result.codeUnits);//utf8.encode(result);
    // log("Uint8List:${data}");

    // var rsp = $pbCommunity.CreateCommunityRsp()..mergeFromBuffer(Uint8List.fromList(result.codeUnits));
    var rsp = $pbCommunity.CreateCommunityRsp()
      ..mergeFromBuffer(response.bodyBytes); //(data);

    log("创建圈子的rsp:${rsp}");

    if (rsp.community.id < 1) {
      showToast("创建圈子失败, 数据解析失败");
      return;
    }
    // 成功后进入圈子设置页面
    // rsp.community.

    // 清理缓存
    RestToSP();
    Navigator.pop(context); // 弹出创建页面
    Navigator.pop(context); // 弹出创建引导页面
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return Community(
        communityId: rsp.community.id.toInt(),
      );
    }));
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
        //
        if (value == null || value.path.length < 3) {
          showToast("请选择图片");
          return;
        }

        // widget.finfo.fpMsgSet.backPic = value.path;
        // widget.finfo.fpMsgSet.saveToDb(widget.finfo.userInfo.imId);
        if (avatarLocPath != value.path) {
          avatarLocPath = value.path;
          avatarUrl = "";
          SyncToSP();
          setState(() {});
        }
      });
    } else {
      _picker.pickImage(source: ImageSource.gallery).then((value) async {
        if (value == null || value.path.length < 3) {
          showToast("请选择图片");
          return;
        }

        // widget.finfo.fpMsgSet.backPic = value.path;
        // widget.finfo.fpMsgSet.saveToDb(widget.finfo.userInfo.imId);
        if (avatarLocPath != value.path) {
          avatarLocPath = value.path;
          avatarUrl = "";
          SyncToSP();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black87,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        // backgroundColor: Colors.white,

        centerTitle: true,
        title: const Text(
          "创建圈子",
          style: TextStyle(color: Colors.black87),
        ),
        actions: [
          TextButton(
            child: const Text(
              "立即创建",
              style: TextStyle(color: Colors.blue),
            ),
            onPressed: () {
              CreateGroup();
            },
          ),
        ],
      ),
      body: Scrollbar(
        // 显示进度条
        child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {
                    pickerPic();
                  },
                  child: Center(
                    child: avatarLocPath != ""
                        ? Image.file(
                            File(avatarLocPath),
                            fit: BoxFit.cover,
                          )
                        // avatar(avatarUrl, 100, 100)
                        : Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey,
                            ),
                            width: 100,
                            height: 100,
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(20),
                                  child: Icon(Icons.add_a_photo),
                                ),
                                Container(
                                  color: Colors.black12,
                                  padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                                  child: Text("设置头像"),
                                )
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
                                  text: " *",
                                  style: TextStyle(color: Colors.red))
                            ]),
                      ),
                      TextField(
                        decoration: InputDecoration(hintText: "给圈子取个响亮的名字吧"),
                        controller: _controllerGName,
                        onChanged: (value) {
                          gname = value;
                          log("name=${gname}");
                          SyncToSP();
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
                                  text: " *",
                                  style: TextStyle(color: Colors.red))
                            ]),
                      ),
                      TextField(
                        controller: _controllerFollowerTitle,
                        decoration: InputDecoration(hintText: "给关注起个称号吧"),
                        onChanged: (value) {
                          followerTitle = value;
                          SyncToSP();
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
                                  text: " *",
                                  style: TextStyle(color: Colors.red))
                            ]),
                      ),
                      SizedBox(height: 5),
                      TextField(
                        maxLength: 200,
                        maxLines: 5,
                        controller: _controllerDescribe,
                        decoration: InputDecoration(
                            hintText: "简单介绍你的圈子，玩法等（200字以内）",
                            border: OutlineInputBorder()),
                        onChanged: (value) {
                          describe = value;
                          SyncToSP();
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
                                  text: " *",
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
                                  text: " *",
                                  style: TextStyle(color: Colors.red))
                            ]),
                      ),
                      SizedBox(height: 5),
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
                                joinType = 0;
                                setState(() {
                                  SyncToSP();
                                });
                              },
                              // child: Container(
                              // padding: EdgeInsets.all(5),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.check_circle,
                                    color: joinType == 0
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
                                joinType = 1;
                                setState(() {
                                  SyncToSP();
                                });
                              },
                              // Container(
                              //   padding: EdgeInsets.all(5),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.check_circle,
                                    color: joinType == 1
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
                                    SyncToSP();
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
                                joinType = 2;
                                setState(() {
                                  SyncToSP();
                                });
                              },
                              // Container(
                              //   padding: EdgeInsets.all(5),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.check_circle,
                                    color: joinType == 2
                                        ? Colors.blue
                                        : Colors.grey,
                                    size: 15,
                                  ),
                                  Text("需回答问题，答案正确即可加入。"),
                                ],
                              ),
                            ),
                            Offstage(
                              offstage: joinType != 2,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(40, 0, 40, 20),
                                child: Column(
                                  children: [
                                    TextField(
                                      controller: _controllerReqQustion,
                                      onChanged: (value) {
                                        reqQustion = value;
                                        SyncToSP();
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
                                        SyncToSP();
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
                                  joinType = 3;
                                  setState(() {
                                    SyncToSP();
                                  });
                                },
                                // Container(
                                //     padding: EdgeInsets.all(5),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.check_circle,
                                      color: joinType == 3
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
                                        text: " *",
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
                                      SyncToSP();
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
                        padding: EdgeInsets.all(10),
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
