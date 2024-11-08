// 查看帖子
// 新的朋友列表
import 'dart:typed_data';

import 'package:badges/badges.dart';
import 'package:dio/dio.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' hide Badge;
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
// import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pb/pb_msg/community/community.pb.dart' as $pbCommunity;
import 'package:quliao/pb/pb_pub/service.pbserver.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/pub/log.dart';
import 'package:http/http.dart' as http;
import 'package:multi_image_picker/multi_image_picker.dart';

import 'cards/comment_card.dart';
import 'cards/reply_card.dart';

const PostLoc = -1;
const TopicBarLoc = -2;

// 加载方式
// enum LoadType{
//   Newest,
//   Oldest,
//   Hottest,
//   Between,
// }

class CommentPage extends StatefulWidget {
  CommentPage(this.post, this.comment, {super.key});

  final $pbCommunity.Post post;
  final $pbCommunity.Comment comment;

  @override
  CommentPageState createState() => new CommentPageState();
}

// enum ReplySortType{
//   Time,
//   Hot,
// }

class CommentPageState extends State<CommentPage> {
  @override
  void initState() {
    super.initState();
    // 获取回复列表
    LoadReplys($pbCommunity.RepliesReq_Order.New);
  }

  // 选的图片列表
  var _images = List<Asset>.empty(growable: true);
  $pbCommunity.RepliesReq_Order replyOrder = $pbCommunity.RepliesReq_Order.New;
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: BackButton(
            color: Colors.black54,
          ),
          centerTitle: true,
          title: Text(
            "评论",
            style: TextStyle(color: Colors.black54),
          ),
          // toolbarOpacity: 0.3,
          // bottomOpacity: 0.3,
          actions: [
            IconButton(
              icon: Icon(
                Icons.share,
                color: Colors.black54,
              ),
              onPressed: () {
                // 打开分享页面
                // Navigator.push(context,MaterialPageRoute(builder: (BuildContext context){
                //   return FriendInfoSet(finfo: widget.finfo,);
                // }));
              },
            ),
          ],
        ),
        // backgroundColor: Colors.white10,
        body: ListView.builder(
          itemCount: lstReplys.length + 2,
          // 前两个位置空出
          shrinkWrap: true,
          itemBuilder: BuildReplys,

          // 控制滚动
          scrollDirection: Axis.vertical,
          controller: commentsScrollController,
        ),
        // 底部输入栏
        persistentFooterButtons: [
          Column(
            children: [
              // 图片展示框
              Container(
                child: Wrap(
                  children: _buildImageTitleList(),
                ),
              ),
              // 按钮区域
              Row(
                children: [
                  Expanded(
                    child: IconButton(
                      icon: Icon(Icons.mic),
                      onPressed: () {},
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      // color: Colors.white24,

                      ///距离顶部
                      // margin: EdgeInsets.only(top: 30),
                      // padding: EdgeInsets.all(10),

                      ///Alignment 用来对齐 Widget
                      // alignment: Alignment(0, 0),

                      ///文本输入框
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: replayTarget == null
                                ? "回复:${widget.comment.username}"
                                : "回复:${replayTarget!.username}"),

                        ///焦点获取
                        focusNode: focusNode,
                        controller: msgInputCtl,

                        ///设置边框
                        ///   InputBorder.none 无下划线
                        ///   OutlineInputBorder 上下左右 都有边框
                        ///   UnderlineInputBorder 只有下边框  默认使用的就是下边框
                        // border: OutlineInputBorder(
                        //   ///设置边框四个角的弧度
                        //   borderRadius: BorderRadius.all(Radius.circular(10)),
                        //
                        //   ///用来配置边框的样式
                        //   borderSide: BorderSide(
                        //     ///设置边框的颜色
                        //     color: Colors.red,
                        //
                        //     ///设置边框的粗细
                        //     width: 2.0,
                        //   ),
                        // ),
                        ///密码  maxLines =1
                        obscureText: false,

                        ///设置键盘的类型
                        keyboardType: TextInputType.phone,

                        ///键盘回车键的样式
                        textInputAction: TextInputAction.next,

                        ///键盘上按了done
                        onEditingComplete: () {
                          PublishReply();
                        },
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: IconButton(
                        icon: Icon(Icons.image),
                        onPressed: () {
                          pubPicImages(_images).then((value) {
                            _images = value;
                            setState(() {});
                          });
                        },
                      )),
                  Expanded(
                      flex: 1,
                      child: IconButton(
                        icon: Icon(Icons.share),
                        onPressed: () {},
                      )),
                ],
              ),
            ],
          )
        ]);
  }

  List<Widget> _buildImageTitleList() {
    return List.generate(_images.length, (index) {
      Asset asset = _images[index];
      log("_images[${index}]:${asset.identifier}${asset.name}");
      return Badge(
        position: BadgePosition.topEnd(top: 0, end: 0),
        badgeContent: InkWell(
          child: Icon(
            Icons.close,
            color: Colors.white,
            size: 10,
          ),
          onTap: () {
            _images.removeAt(index);
            setState(() {});
          },
        ),
        child: AssetThumb(
          asset: asset,
          width: 60,
          height: 60,
        ),
      );
    });
  }

  ///用来控制  TextField 焦点的获取与关闭
  FocusNode focusNode = new FocusNode();
  TextEditingController msgInputCtl = TextEditingController();

  // 页面列表
  // ...
  List<$pbCommunity.Reply> lstReplys =
      List<$pbCommunity.Reply>.empty(growable: true);

  Future<void> LoadReplys(
    $pbCommunity.RepliesReq_Order order, {
    int offset = 0,
    int count = 20,
  }) async {
    // log("-----------load replys");
    var req = $pbCommunity.RepliesReq();
    req.commentId = widget.comment.id;
    req.order = order;
    req.offset = Int64(offset);
    req.count = Int64(count);
    // log("load comments params: ${req.replies.length}");
    RpcCallImOuterApi(
            "/pb_grpc_community.Community/Replies",
            req,
            MakePBCommData(
                aimId: Int64(AppUserInfo.instance.imId),
                groupId: widget.post.communityId,
                toService: Service.community))
        .then((response) {
      if (response.statusCode != 200) {
        // 出错了
        // 处理错误
        log("query error ${response.body}");
        return;
      }

      // 更新一下
      var rsp = $pbCommunity.RepliesRsp();
      rsp.mergeFromBuffer(response.bodyBytes);
      log("load comments ok, return ${rsp.replies.length}");
      rsp.replies.forEach((element) {
        lstReplys.insert(0, element);
      });
      // 去重
      lstReplys = lstReplys.toSet().toList();
      if (replyOrder == $pbCommunity.RepliesReq_Order.New) {
        lstReplys.sort((a, b) => b.createAt.compareTo(a.createAt));
      } else {
        lstReplys.sort((a, b) => b.likes.compareTo(a.likes));
      }
      log("-----------load replys, replies now is:${lstReplys.length}");
      setState(() {});
    });
  }

  ScrollController commentsScrollController = ScrollController();

  $pbCommunity.Reply? replayTarget;
  Widget BuildReplys(BuildContext context, int index) {
    if (index == 0) {
      return InkWell(
        onTap: () {
          // replayTarget = null;
          setState(() {});
        },
        child: CommentCard(
          widget.post,
          widget.comment,
          showType: COMMENT_SHOW_TYPE.detail,
        ),
      ); //PostDetail(widget.post, false,),);
    }

    if (index == 1) {
      return Container(
        padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
        decoration: BoxDecoration(color: Colors.black12),
        child: Row(
          children: [
            Expanded(flex: 5, child: Text("回复")),
            Expanded(
              flex: 2,
              child: Container(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 65,
                    child: InkWell(
                      onTap: () {
                        replyOrder =
                            replyOrder == $pbCommunity.RepliesReq_Order.New
                                ? $pbCommunity.RepliesReq_Order.Hot
                                : $pbCommunity.RepliesReq_Order.New;
                        if (lstReplys.length > 19) {
                          // 请求
                          LoadReplys(replyOrder);
                        } else {
                          if (replyOrder == $pbCommunity.RepliesReq_Order.New) {
                            lstReplys.sort(
                                (a, b) => b.createAt.compareTo(a.createAt));
                          } else {
                            lstReplys
                                .sort((a, b) => b.likes.compareTo(a.likes));
                          }
                          setState(() {});
                        }
                      },
                      child: replyOrder == $pbCommunity.RepliesReq_Order.New
                          ? Row(
                              children: [
                                Text("最新"),
                                Icon(
                                  Icons.sort,
                                  color: Colors.blue,
                                ),
                              ],
                            )
                          : Row(
                              children: [
                                Text("最热"),
                                Icon(
                                  Icons.sort,
                                  color: Colors.red,
                                ),
                              ],
                            ),
                    ),
                  )),
            )
          ],
        ),
      );
    }

    return InkWell(
      onTap: () {
        // 点击设定回复对象
        replayTarget = lstReplys[index - 2];
        setState(() {});
      },
      child: ReplyCard(widget.post, widget.comment, lstReplys[index - 2]),
    );
  }

  Future<void> PublishReply() async {
    log("发布函数, ${msgInputCtl.text}");
    var comm = msgInputCtl.text.trim();
    focusNode.unfocus();
    msgInputCtl.text = "";
    if (comm.isEmpty) {
      showToast("还不知道您要说点什么");
      return;
    }

    var req = $pbCommunity.ReplyReq();

    // 上传图片
    // 上传图片
    for (var asset in _images) {
      ByteData byteData = await asset.getByteData();
      Uint8List imageData = byteData.buffer.asUint8List();

      // 压缩一下
      // var compressedData = await FlutterImageCompress.compressWithList(
      //   imageData,
      // );
      // log("压缩前大小：${imageData.length}, 压缩后大小:${compressedData.length}");
      MultipartFile multipartFile = MultipartFile.fromBytes(
        imageData,
        // 文件名
        filename: asset.name,
        // 文件类型
        // contentType: MediaType("image", "jpg"),
      );
      var result = await UpLoadImageWithFile(
          multipartFile,"app-community-comment"); //await UpLoadImageWithLocalPath(asset.name);
      // log("get image of path ${value.path}");
      if (result.statusCode != 200) {
        showToast("图片上传失败！！${result.statusCode}");
        return;
      }

      // avatarUrl = result.data["data"]["image_url"];
      var image = $pbCommunity.Image()..url = result.data["data"]["url"];
      image.tags.add($pbCommunity.Tag()
        ..type = 1
        ..content = "测试"
        ..x = Int64(3)
        ..y = Int64(10));
      req.images.add(image);
    }
    if (replayTarget == null) {
      req.toUserId = widget.comment.userId;
      req.toUsername = widget.comment.username;
    } else {
      req.toUserId = replayTarget!.userId;
      req.toUsername = replayTarget!.username;
      req.talkId =
          replayTarget!.talkId > 0 ? replayTarget!.talkId : replayTarget!.id;
    }

    req.commentId = widget.comment.id;
    // req.refId = widget.comment.id;
    // req.refType = $pbCommunity.RefType.COMMENT.value;
    req.content = comm;
    // string content = 3; // 内容
    // repeated Video videos = 4;
    // repeated Audio audios = 5;
    RpcCallImOuterApi(
            "/pb_grpc_community.Community/Reply",
            req,
            MakePBCommData(
                aimId: Int64(AppUserInfo.instance.imId),
                groupId: widget.post.communityId,
                toService: Service.community))
        .then((response) {
      if (response.statusCode != 200) {
        // 出错了
        // 处理错误
        showToast("回复失败！！${response.statusCode}");
        return;
      }

      var rsp = $pbCommunity.ReplyRsp();
      rsp.mergeFromBuffer(response.bodyBytes);
      lstReplys.insert(0, rsp.reply.clone());
      log("---------------->commentrsp->${rsp.reply}");
      widget.comment.replies++;
      _images.clear();
      setState(() {});
    });
  }
}
