// 发布帖子
// import 'dart:html';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';
import 'package:date_format/date_format.dart';
import 'package:dio/dio.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:image_picker/image_picker.dart';
import 'package:quliao/flutter_chat_ui/flutter_chat_ui.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/community/chose_communities.dart';
import 'package:quliao/pages/community/pub.dart';
import 'package:quliao/pages/community/vote_dialog.dart';
import 'package:quliao/pb/pb_msg/community/community.pb.dart' as $pbCommunity;
import 'package:quliao/pb/pb_pub/service.pb.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/pub/log.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
// import 'package:video_player/video_player.dart';

typedef ItemBuildFunc = List<Widget> Function();

// 发布帖子
// message PostReq{
// int64 topicId = 1;  // 话题ID
// string topicName = 2;
// string content = 3; // 内容
// bool award = 4; // 是否开启打赏
// repeated Video videos = 5;
// repeated Audio audios = 6;
// repeated Image images = 7;
// repeated Vote votes = 8;
// repeated Link links = 9;
// int64 communityId = 10; // 社团id
// string communityName = 11; // 社团名称
// }
// message PostRsp{}

class PublishPost extends StatefulWidget {
  PublishPost({super.key, this.communityId, this.canChangeId});

  final int? communityId;
  bool? canChangeId = false;
  @override
  _PublishPostState createState() => _PublishPostState();
}

class _PublishPostState extends State<PublishPost> {
  var _post = $pbCommunity.Post();
  var _community = $pbCommunity.Community();

  var _videos =
      List<String>.empty(growable: true); // repeated Video videos = 5;
  var _audios =
      List<String>.empty(growable: true); // repeated Audio audios = 6;
  var _images = List<Asset>.empty(growable: true); // repeated Image images = 7;
  var _votes =
      List<$pbCommunity.Vote>.empty(growable: true); // repeated Vote votes = 8;
  var _links =
      List<$pbCommunity.Link>.empty(growable: true); // repeated Link links = 9;

  var _options = List<$pbCommunity.Option>.empty(growable: true);

  // 专区

  var lstSourceLocPath = Map<String, String>();

  // final imagePicker = ImagePicker();

  final _controllerContent = TextEditingController();
  // var _controllerOption = List<TextEditingController>();
  // ignore: deprecated_member_use
  List<TextEditingController> controllerOption = <TextEditingController>[];
  bool hasOption = false;

  // 属性写入本地数据库
  void SyncToSP() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var prefix = "${AppUserInfo.instance.imId}_community_post_new_";
    // prefs.setString(prefix+"avatarUrl", avatarUrl); // 圈子头像
    // prefs.setString(prefix+"avatarLocPath",avatarLocPath);
    // prefs.setString(prefix+"gname",gname); // 圈子名称
    // prefs.setString(prefix+"followerTitle",followerTitle); // 给成员取得称号
    // prefs.setString(prefix+"describe", describe); // 描述信息
    // prefs.setInt(prefix+"joinType", joinType); // 成员加入方式 0:自由加入 1：需申请，管理员通过后可加 2：需回答问题，答案正确后加入 3：需邀请，必须通过成员邀请加入
    // prefs.setString(prefix+"reqReason", reqReason); // 加入时向申请问的问题
    // prefs.setString(prefix+"reqQustion", reqQustion); // 加入需要答题的问题
    // prefs.setString(prefix+"reqAnswer", reqAnswer); // 加入需要答题的答案
    // prefs.setBool(prefix+"memberInvite", memberInvite); // 开启后，成员可以直接邀请其他人加入圈子，被邀请者不需要申请和答题
    // log("save over");
  }

  // 从本地数据库加载
  void LoadFromSP() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var prefix = "${AppUserInfo.instance.imId}_community_post_new_";
    // avatarUrl = prefs.getString(prefix+"avatarUrl") ?? ""; // 圈子头像
    // avatarLocPath = prefs.getString(prefix+"avatarLocPath") ?? "";
    // gname = prefs.getString(prefix+"gname") ?? ""; // 圈子名称
    // _controllerGName.text = gname;
    // followerTitle = prefs.getString(prefix+"followerTitle") ?? ""; // 给成员取得称号
    // _controllerFollowerTitle.text = followerTitle;
    // describe = prefs.getString(prefix+"describe") ?? ""; // 描述信息
    // _controllerDescribe.text = describe;
    // joinType = prefs.getInt(prefix+"joinType") ?? 0; // 成员加入方式 0:自由加入 1：需申请，管理员通过后可加 2：需回答问题，答案正确后加入 3：需邀请，必须通过成员邀请加入
    //
    // reqReason = prefs.getString(prefix+"reqReason") ?? ""; // 加入时向申请问的问题
    // _controllerReqReason.text = reqReason;
    // reqQustion = prefs.getString(prefix+"reqQustion") ?? ""; // 加入需要答题的问题
    // _controllerReqQustion.text = reqQustion;
    // reqAnswer = prefs.getString(prefix+"reqAnswer") ?? ""; // 加入需要答题的答案
    // _controllerReqAnswer.text = reqAnswer;
    // memberInvite = prefs.getBool(prefix+"memberInvite") ?? true; // 开启后，成员可以直接邀请其他人加入圈子，被邀请者不需要申请和答题
    // // log("load over");
    // setState(() {
    //
    // });
  }

  void RestToSP() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var prefix = "${AppUserInfo.instance.imId}_community_post_new_";
    // prefs.remove(prefix+"avatarUrl"); // 圈子头像
    // prefs.remove(prefix+"avatarLocPath");
    // prefs.remove(prefix+"gname"); // 圈子名称
    // prefs.remove(prefix+"followerTitle"); // 给成员取得称号
    // prefs.remove(prefix+"describe"); // 描述信息
    // prefs.remove(prefix+"joinType"); // 成员加入方式 0:自由加入 1：需申请，管理员通过后可加 2：需回答问题，答案正确后加入 3：需邀请，必须通过成员邀请加入
    // prefs.remove(prefix+"reqReason"); // 加入时向申请问的问题
    // prefs.remove(prefix+"reqQustion"); // 加入需要答题的问题
    // prefs.remove(prefix+"reqAnswer"); // 加入需要答题的答案
    // prefs.remove(prefix+"memberInvite"); // 开启后，成员可以直接邀请其他人加入圈子，被邀请者不需要申请和答题
  }

  @override
  void initState() {
    super.initState();

    // 加载community
    LoadCommunityData(widget.communityId!).then((value) {
      if (value == null) {
        // 未找到data
        log("LoadCommunityData err value is null widget.communityId=${widget.communityId}");
        return;
      }
      _community = value;
      // log("community:${_community}");
      setState(() {});
    });
    // 恢复post
    // LoadFromSP();
  }

  @override
  void dispose() {
    if (recodingState) {
      _flutterSound.stopPlayer();
      _flutterRecoder.stopRecorder();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // log("${_community}");
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "编辑帖子",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          TextButton(
            child: const Text(
              "发布",
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {
              _doPublish();
            },
          ),
        ],
      ),
      body: Scrollbar(
        // 显示进度条
        child: SingleChildScrollView(
            padding:
                const EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 话题选择区域
                ListTile(
                  // tileColor: const  Color.fromRGBO(244, 244, 244, 1),
                  leading: Text(
                    "#",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  title: _community.name == ""
                      ? const Text("选择话题")
                      : Text(_community.name),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    // 打开选择圈子页面
                    // widget.canChangeId
                    Navigator.of(context)
                        .pushReplacementNamed('ChoseCommunitiesSquare');
                    log("无法变更圈子");

                    // widget.canChangeId?
                    // Navigator.push(
                    //     context, MaterialPageRoute(builder: (BuildContext context) {
                    //   return ChoseCommunitiesSquare();
                    // })):log("无法变更圈子");
                  },
                ),
                // 文字输入区域
                Container(
                  padding: const EdgeInsets.only(left: 4, right: 4),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                    //设置四周边框
                    border: Border.all(width: 1, color: Colors.blue),
                  ),
                  child: TextField(
                    maxLength: 100,
                    keyboardType: TextInputType.multiline,
                    controller: _controllerContent,
                    decoration: const InputDecoration(
                      hintText: "发表你的感言",
                      border: InputBorder.none,
                      labelStyle: TextStyle(fontSize: 14, color: Colors.black),
                      hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                ),

                // 视频选择区域
                //       var _videos = List<$pbCommunity.Video>.empty();// repeated Video videos = 5;
                // Container(child:
                // buildVideoGrid(),),
                _videos.isEmpty
                    ? Container()
                    : Container(
                        child: buildGrid(_buildVideoTitleList),
                      ),

                // var _audios = List<$pbCommunity.Audio>.empty();// repeated Audio audios = 6;
                _audios.isEmpty
                    ? Container()
                    : Container(
                        child: buildGrid(_buildAudioTitleList),
                      ),

                // var _images = List<$pbCommunity.Image>.empty();// repeated Image images = 7;
                _images.isEmpty
                    ? Container()
                    : Container(child: buildGrid(_buildImageTitleList)),

                // var _votes = List<$pbCommunity.Video>.empty();// repeated Vote votes = 8;
                // var _links = List<$pbCommunity.Link>.empty();// repeated Link links = 9;

                SizedBox(
                  height: 20,
                ),
                controllerOption.length > 0
                    ? Container(
                        height: (34 * controllerOption.length).toDouble(),
                        color: Color(0x329E9E9E),
                        child: ListView.builder(
                            itemCount: controllerOption.length,
                            itemBuilder: (BuildContext context, int index) {
                              return _buildVoteList(context, index);
                            }),
                      )
                    : Container(),
              ],
            )),
      ),
      //   bottomSheet: BottomSheet(),
      // // 底部按钮栏
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          switch (index) {
            case 0: // 图片
              // pickerPic();
              pubPicImages(_images).then((value) {
                _images = value;
                setState(() {});
              });
              break;
            case 1: // 视频
              if (Platform.isWindows || Platform.isLinux) {
                showToast("pc暂不支持视频");
                return;
              }
              pickerVideo();
              break;
            case 2: // 语音
              log("recode");
              if (Platform.isWindows || Platform.isLinux) {
                showToast("pc暂不支持录音");
                return;
              }
              if (recodingState) {
                _flutterRecoder.stopRecorder().then((value) {
                  log("stop recorder :$value");
                  _audios.add(value!);
                });
              } else {
                // 下方弹出按住录音
                // var file = Pla1tform.isIOS ? 'ios.m4a' : 'android.mp4';
                _flutterRecoder.startRecorder().then((value) {
                  // recodingFile = value;
                  // log("start recorder :$value");
                });
              }
              recodingState = !recodingState;
              setState(() {});
              break;
            case 3: // 链接
              break;
            case 4:
              break;
            case 5: // 投票
              if (controllerOption.length == 0) {
                hasOption = false;
                controllerOption = [
                  TextEditingController(),
                  TextEditingController()
                ];
              } else {
                hasOption = true;
              }
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (ctx) {
                    return VoteDialog(
                      controllerOption: controllerOption,
                      hasOption: hasOption,
                    );
                  }).then((_) => setState(() {
                    // 结束后刷新当前页面
                    // log(controllerOption.length);
                    // log(hasOption);
                    for (var i = 0; i < controllerOption.length; i++) {
                      log("${controllerOption[i].text}");
                      _options.add($pbCommunity.Option(
                        id: Int64(i),
                        content: controllerOption[i].text,
                        count: Int64(controllerOption.length),
                      ));
                    }
                    _votes.add($pbCommunity.Vote(
                      id: Int64(0),
                      options: _options,
                    ));
                  }));
              break;
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_a_photo),
            label: "",
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.videocam),
              label: "",
              backgroundColor: Theme.of(context).primaryColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.keyboard_voice),
              label: "",
              backgroundColor: Theme.of(context).primaryColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.link),
              label: "",
              backgroundColor: Theme.of(context).primaryColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.attach_file),
              label: "",
              backgroundColor: Theme.of(context).primaryColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.insert_chart),
              label: "",
              backgroundColor: Theme.of(context).primaryColor),
        ],
      ),
    );
  }

  Future<void> _doPublish() async {
    // 校验有效性
    if (_community.name == "") {
      // 非法
      _post.communityName = "四海为家";
    }

    if (_controllerContent.text == "") {
      showToast("请输入感想");
      return;
    }

    _post.content = _controllerContent.text;

    // 发布
    var postReq = $pbCommunity.PostReq();
    // 展示等待动画
    // 上传图片
    for (var asset in _images) {
      ByteData byteData = await asset.getByteData();
      Uint8List imageData = byteData.buffer.asUint8List();

      // 压缩一下
      // var compressedData = await FlutterImageCompress.compressWithList(
      //   imageData,
      // );
      log("压缩前大小：${imageData.length}, 压缩后大小:${imageData.length}");
      MultipartFile multipartFile = MultipartFile.fromBytes(
        imageData,
        // 文件名
        filename: asset.name,
        // 文件类型
        // contentType: MediaType("image", "jpg"),
      );
      var result = await UpLoadImageWithFile(multipartFile,
          "app-post"); //await UpLoadImageWithLocalPath(asset.name);
      // log("get image of path ${value.path}");
      if (result.statusCode != 200) {
        showToast("图片上传失败！！${result.statusCode}");
        return;
      }

      // avatarUrl = result.data["data"]["image_url"];
      var image = $pbCommunity.Image()..url = result.data["data"]["url"];
      // int64 id = 1;
      // int32 type = 2;
      // string content = 3;
      // int64 x = 4;
      // int64 y = 5;
      image.tags.add($pbCommunity.Tag()
        ..type = 1
        ..content = "测试"
        ..x = Int64(3)
        ..y = Int64(10));
      postReq.images.add(image);
    }

    postReq.topicId = _community.id; // 话题ID
    postReq.topicName = _community.name;
    postReq.content = _post.content; // 内容
    postReq.award = false; // 是否开启打赏
    // repeated Video videos = 5;
    // repeated Audio audios = 6;
    // repeated Image images = 7;
    // repeated Vote votes = 8;
    // repeated Link links = 9;
    postReq.communityId = _community.id; // 社团id
    postReq.communityName = _community.name; // 社团名称
    for (var v in _votes) {
      postReq.votes.add(v);
    }
    log("votes:======> ${postReq.votes}");
    http.Response response = await RpcCallImOuterApi(
        '/pb_grpc_community.Community/Post',
        postReq,
        MakePBCommData(
            aimId: Int64(AppUserInfo.instance.imId),
            groupId: Int64(widget.communityId!),
            toService: Service.community));
    if (response.statusCode != 200) {
      // 出错
      log("rpc call commim err");
    } else {
      // 成功，返回浏览页面
      showToast("发布成功");
      Navigator.pop(context);
    }

    // 取消等待动画
  }

  // FlutterSound flutterSound = new FlutterSound();
  bool recodingState = false;
  var recodingFile = "";
  // var _error = "成功";

  // ImagePicker _imagePicker = ImagePicker();

  // Future<void> pickerPic() async{
  //   List<Asset> resultList = <Asset>[];
  //   String error = 'No Error Detected';
  //
  //   try {
  //     resultList = await MultiImagePicker.pickImages(
  //       maxImages: 9,
  //       enableCamera: true,
  //       selectedAssets: _images,
  //       cupertinoOptions: CupertinoOptions(takePhotoIcon: "chat"),
  //       materialOptions: MaterialOptions(
  //         actionBarColor: "#abcdef",
  //         actionBarTitle: "选取照片",
  //         allViewTitle: "所有",
  //         selectionLimitReachedText:"最多可选9张照片",
  //         textOnNothingSelected:"您还没有选择照片",
  //         useDetailsView: true,
  //         selectCircleStrokeColor: "#000000",
  //       ),
  //     );
  //   } on Exception catch (e) {
  //     error = e.toString();
  //   }
  //
  //   // If the widget was removed from the tree while the asynchronous platform
  //   // message was in flight, we want to discard the reply rather than calling
  //   // setState to update our non-existent appearance.
  //   if (!mounted) return;
  //
  //   setState(() {
  //     _images = resultList;
  //     _error = error;
  //   });
  // }

  void pickerVideo() {
    ImagePicker().getVideo(source: ImageSource.gallery).then((value) async {
      if (value == null || value.path == null || value.path.length < 3) {
        showToast("请选择视频");
        return;
      }

      _videos.add(value.path);
      setState(() {});
    });
  }

  Widget buildGrid(ItemBuildFunc buildFunc) {
    return
        // Offstage(offstage: _images.isEmpty,
        // child:
        GridView.count(
      shrinkWrap: true, //范围内进行包裹（内容多高ListView就多高）
      physics: NeverScrollableScrollPhysics(), //禁止滚动
      //水平子Widget之间间距
      crossAxisSpacing: 10.0,
      //垂直子Widget之间间距
      mainAxisSpacing: 30.0,
      //GridView内边距
      padding: EdgeInsets.all(10.0),

      //一行的Widget数量
      crossAxisCount: 3,
      //子Widget宽高比例
      childAspectRatio: 1.0,

      //子Widget列表
      children: buildFunc(),
      // )
    );
  }

  Widget buildVote(ItemBuildFunc buildFunc) {
    return
        // Offstage(offstage: _images.isEmpty,
        // child:
        GridView.count(
      shrinkWrap: true, //范围内进行包裹（内容多高ListView就多高）
      physics: NeverScrollableScrollPhysics(), //禁止滚动
      //水平子Widget之间间距
      crossAxisSpacing: 0.0,
      //垂直子Widget之间间距
      mainAxisSpacing: 10.0,
      //GridView内边距
      padding: EdgeInsets.all(10.0),

      //一行的Widget数量
      crossAxisCount: 1,
      //子Widget宽高比例
      childAspectRatio: 30,

      //子Widget列表
      children: buildFunc(),
      // )
    );
  }

  Widget _buildVoteList(BuildContext context, int index) {
    var element = controllerOption[index];
    return InkWell(
      child: Container(
        height: 34,
        // width: 50,
        padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
        // margin: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              element.text,
              style: TextStyle(color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }

  // // 投票
  // List<Widget> _buildVoteList() {
  //   // return List.generate(controllerOption.length, (index) {
  //   //   String text = controllerOption[index].text;
  //   //   log(text);
  //   //
  //   // });
  //   return List<Container>.generate(
  //     controllerOption.length, (int index) => Container(
  //       // width: 200,
  //       color: Colors.black12,
  //       height: 10,
  //       child: Text(controllerOption[index].text),
  //     ),
  //   );
  // }

  //////////////////////////
  // 图片
  List<Widget> _buildImageTitleList() {
    return List.generate(_images.length, (index) {
      Asset asset = _images[index];
      log("_images[${index}]:${asset.identifier}${asset.name}");
      return AssetThumb(
        asset: asset,
        width: 300,
        height: 300,
      );
    });
    //   List<Container>.generate(
    //   _images.length,
    //       (int index) => Container(
    //     child: Image.file(File(_images[index]),fit: BoxFit.cover,),
    //   ),
    // );
  }
  /////////////////////////

//////////////////////////
  // 视频
  List<Widget> _buildVideoTitleList() {
    log("视频:${_videos[0]}");
    return List<Container>.generate(
      _videos.length,
      (int index) => Container(
        child: Text("todo"),
        // VideoPlayer(VideoPlayerController.file(File(_videos[index]),)
        //   ..initialize().then((value) {
        //     // 确保在初始化视频后显示第一帧，直至在按下播放按钮。
        //     setState(() {});
        //   })),
      ),
    );
  }
  // VideoPlayerController _controller;
  // Widget _buildVideoTitleList(BuildContext context,int index) {
  //   return Container(
  //           child: VideoPlayer(VideoPlayerController.file(File(_images[index]),)
  //             ..initialize().then((_) {
  //               // 确保在初始化视频后显示第一帧，直至在按下播放按钮。
  //               setState(() {});
  //             })), //Image.file(File(_videos[index]),fit: BoxFit.cover,),
  //         );
  // }

///////////////////////////

//////////////////////////
  // 音频
  var _flutterSound = FlutterSoundPlayer();
  var _flutterRecoder = FlutterSoundRecorder();
  List<Container> _buildAudioTitleList() {
    return List<Container>.generate(
      _audios.length,
      (int index) => Container(
        child: IconButton(
          icon: Icon(Icons.play_circle_fill),
          onPressed: () {
            // _flutterSound.openAudioSession().then((value){
            _flutterSound.startPlayer(fromURI: _audios[index]).then((value) {
              // (from _audios[index]).then((value){
              log("play result:${value}");
              // });
            });
          },
        ),
      ),
    );
  }

  // Widget buildAudioGrid() {
  //   return Offstage(offstage: _videos.isEmpty,
  //     child: GridView.extent(
  //       //次轴的宽度
  //       maxCrossAxisExtent: 150,
  //       //次轴的宽度
  //       padding: EdgeInsets.all(4.0),
  //       //上下左右的内边距
  //       mainAxisSpacing: 4.0,
  //       //主轴元素间距
  //       crossAxisSpacing: 4.0,
  //       //次轴元素间距
  //       children: _buildAudioTitleList(), //添加
  //     ),
  //   );
  // }
///////////////////////////
//   var _votes = List<$pbCommunity.Video>.empty();// repeated Vote votes = 8;
// 构建投票

//   var _links = List<$pbCommunity.Link>.empty();// repeated Link links = 9;
// 构建连接
}

class TextFieldPage extends StatelessWidget {
  Widget buildTextField() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      alignment: Alignment.center,
      height: 60.0,
      decoration: new BoxDecoration(
          color: Colors.blueGrey,
          border: new Border.all(color: Colors.black54, width: 4.0),
          borderRadius: new BorderRadius.circular(12.0)),
      child: new TextFormField(
        decoration: InputDecoration.collapsed(hintText: 'hello'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: buildTextField(),
      ),
    );
  }
}
