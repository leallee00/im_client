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
import 'package:quliao/models/relation/follow.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/community/comment.dart';
import 'package:quliao/pages/community/pub.dart';
import 'package:quliao/pb/pb_msg/community/community.pb.dart' as $pbCommunity;
import 'package:quliao/pb/pb_pub/service.pbserver.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/pub/log.dart';
import 'package:http/http.dart' as http;
import 'package:multi_image_picker/multi_image_picker.dart';

import 'cards/comment_card.dart';
import 'cards/post_card.dart';
import 'cards/topic_insert_bar.dart';

const PostLoc = -1;
const TopicBarLoc = -2;

// 加载方式
enum LoadType {
  Newest,
  Oldest,
  Hottest,
  Between,
}

class PostPage extends StatefulWidget {
  PostPage(this.post, this.isFollow, {super.key});

  final $pbCommunity.Post post;
  final bool isFollow;
  @override
  PostPageState createState() => new PostPageState();
}

class PostPageState extends State<PostPage> {
  @override
  void initState() {
    super.initState();
    // 获取评论列表
    LoadComments($pbCommunity.CommentsReq_Order.New);
  }

  // 选的图片列表
  var _images = List<Asset>.empty(growable: true);

  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color(0x3000000),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: BackButton(
            color: Colors.black54,
          ),
          // leading: ,
          centerTitle: true,
          title: Text(
            "帖子",
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
        body:
            // new Column(
            //     children: <Widget>[
            //       Flexible(child:
            ListView.builder(
          itemCount: lstComments.length + 2,
          // 前两个位置空出
          shrinkWrap: true,
          itemBuilder: BuildComments,

          // 控制滚动
          scrollDirection: Axis.vertical,
          controller: commentsScrollController,
        ),
        // ),
        // Divider(height: 1.0),
        // TextField(),
        //     ]
        // ),
        // 底部输入栏
        persistentFooterButtons: [
          Column(
            children: [
              // 图片展示框
              Container(
                // color: Colors.black12,

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
                          PublishComment();
                          // log("发布函数, ${msgInputCtl.text}");
                          // var comm = msgInputCtl.text.trim();
                          // focusNode.unfocus();
                          // msgInputCtl.text = "";
                          // if (comm.isEmpty) {
                          //   return;
                          // }
                          //
                          // var req = $pbCommunity.CommentReq();
                          // req.refId = widget.post.id;
                          // req.refType = $pbCommunity.RefType.POST.value;
                          // req.content = comm;
                          // // int64 refId = 1;
                          // // int32 refType = 2;
                          // // string content = 3; // 内容
                          // // repeated Video videos = 4;
                          // // repeated Audio audios = 5;
                          // // repeated Image images = 6;
                          // RpcCallCommImGate(
                          //     "/pb_grpc_community.Community/Comment",
                          //     req, MakePBCommData(
                          //     aimId: Int64(AppUserInfo.instance.imId),
                          //     groupId: widget.post.communityId,
                          //     toService: Service.community)).then((response) {
                          //   if (response.statusCode != 200) {
                          //     // 出错了
                          //     // 处理错误
                          //     return;
                          //   }
                          //
                          //   var rsp = $pbCommunity.CommentRsp();
                          //   rsp.mergeFromBuffer(response.bodyBytes);
                          //   // GeneratedMessageGenericExtensions<$pbCommunity.Comment>()
                          //   lstComments.insert(0, rsp.comment.clone());
                          //   widget.post.comments ++;
                          //   setState(() {
                          //
                          //   });
                          //   // log("add comments:${req}");
                          //
                          //   // 更新一下
                          //   // LoadComments($pbCommunity.CommentsReq_Order.New);
                          // });
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
      return
          // InkWell(onTap: (){
          // 放大图片
          //   onTap: () {
          //     Navigator.of(context).push(
          //         FadeRoute(page: PhotoViewGalleryScreen(
          //           images: imgDataArr, //传入图片list
          //           index: index, //传入当前点击的图片的index
          //           heroTag: img, //传入当前点击的图片的hero tag （可选）
          //         )));
          //   }
          // },)
          Badge(
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
  List<$pbCommunity.Comment> lstComments = <$pbCommunity.Comment>[];

  Future<void> LoadComments(
    $pbCommunity.CommentsReq_Order order, {
    int offset = 0,
    int count = 20,
  }) async {
    // switch (loadType) {
    var req = $pbCommunity.CommentsReq();
    req.refId = widget.post.id;
    req.refType = $pbCommunity.RefType.POST.value;
    req.order = order; //$pbCommunity.CommentsReq_Order.New;
    req.offset = Int64(offset);
    req.count = Int64(count);
    RpcCallImOuterApi(
            "/pb_grpc_community.Community/Comments",
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
      var rsp = $pbCommunity.CommentsRsp();
      rsp.mergeFromBuffer(response.bodyBytes);
      rsp.comments.forEach((element) {
        lstComments.insert(0, element);
      });
      lstComments = lstComments.toSet().toList();
      lstComments.sort((a, b) => a.createAt.compareTo(b.createAt));
      setState(() {});
    });
  }

  ScrollController commentsScrollController = ScrollController();

  Widget BuildComments(BuildContext context, int index) {
    if (index == 0) {
      return PostCard(
          widget.post,
          RelationFollow.isFollowSync(widget.post.userId)!,
          OptBuildType.PostSummary); //PostDetail(widget.post, false,);
    }

    if (index == 1) {
      // 先用postavatar代替
      log("widget.post.topicId:${widget.post.topicId}, widget.post.avatar:${widget.post.avatar}, widget.post.topicName:${widget.post.topicName}");
      return TopicInsertBar(
          widget.post.topicId, widget.post.avatar, widget.post.topicName);
    }

    // var comment = lstComments[index];
    return InkWell(
      onTap: () {
        // 老的喜欢数据
        // var postLikeType = RelationFollow.isFollowSync(
        //     tbData.listPosts[index].userId);
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return CommentPage(
            widget.post,
            lstComments[index - 2],
          );
        })).then((value) {
          // if (comme !=
          //     RelationFollow.isFollowSync(
          //         post.userId)) {
          //   setState(() {
          //
          //   });
          // }
        });
      },
      child: CommentCard(widget.post, lstComments[index - 2]),
    );
  }

  Future<void> PublishComment() async {
    log("发布函数, ${msgInputCtl.text}");
    var comm = msgInputCtl.text.trim();
    focusNode.unfocus();
    msgInputCtl.text = "";
    if (comm.isEmpty) {
      showToast("还不知道您要说点什么");
      return;
    }

    var req = $pbCommunity.CommentReq();

    // 上传图片
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
      var result = await UpLoadImageWithFile(
          multipartFile,"app-post"); //await UpLoadImageWithLocalPath(asset.name);
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

    req.refId = widget.post.id;
    req.refType = $pbCommunity.RefType.POST.value;
    req.content = comm;
    // string content = 3; // 内容
    // repeated Video videos = 4;
    // repeated Audio audios = 5;
    RpcCallImOuterApi(
            "/pb_grpc_community.Community/Comment",
            req,
            MakePBCommData(
                aimId: Int64(AppUserInfo.instance.imId),
                groupId: widget.post.communityId,
                toService: Service.community))
        .then((response) {
      if (response.statusCode != 200) {
        // 出错了
        // 处理错误
        showToast("评论失败！！${response.statusCode}");
        return;
      }

      var rsp = $pbCommunity.CommentRsp();
      rsp.mergeFromBuffer(response.bodyBytes);
      // GeneratedMessageGenericExtensions<$pbCommunity.Comment>()
      lstComments.insert(0, rsp.comment.clone());
      log("---------------->commentrsp->${rsp.comment}");
      widget.post.comments++;
      _images.clear();
      setState(() {});
    });
  }
}
