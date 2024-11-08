import 'package:flutter/material.dart';
import 'package:quliao/pages/community/opt_bar/comment_opt_bar.dart';
import 'package:quliao/pages/community/opt_bar/post_opt_bar.dart';
import 'package:quliao/pages/community/opt_bar/reply_opt_bar.dart';
import 'package:quliao/pages/community/pub.dart';
import 'package:quliao/pb/pb_msg/community/community.pb.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class PhotoViewGalleryScreen extends StatefulWidget {
  // 传入类型
  List images=[];
  int index=0;
  String heroTag;
  late PageController? controller;

  PhotoViewGalleryScreen(this.post, this.optBuildType,
      {super.key,
        required this.images,
        required this.index,
        required this.heroTag,
        this.controller,
        this.comment,
        this.reply
      }) {
    controller=PageController(initialPage: index);
  }

  final Post post;
  late Comment? comment;
  late Reply? reply;
  final OptBuildType optBuildType;
  //
  // final Post
  //
  @override
  _PhotoViewGalleryScreenState createState() => _PhotoViewGalleryScreenState();
}

class _PhotoViewGalleryScreenState extends State<PhotoViewGalleryScreen> {
  int currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            bottom: 0,
            right: 0,
            child: Container(
                child: PhotoViewGallery.builder(
                  scrollPhysics: const BouncingScrollPhysics(),
                  builder: (BuildContext context, int index) {
                    return PhotoViewGalleryPageOptions(
                      imageProvider: NetworkImage(widget.images[index]),
                      heroAttributes: widget.heroTag.isNotEmpty
                          ? PhotoViewHeroAttributes(tag: widget.heroTag)
                          : null,

                    );
                  },
                  itemCount: widget.images.length,
                  // loadingChild: Container(),
                  backgroundDecoration: null,
                  pageController: widget.controller,
                  enableRotation: true,
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                )
            ),
          ),
          Positioned( //图片index显示
            top: MediaQuery
                .of(context)
                .padding
                .top + 15,
            width: MediaQuery
                .of(context)
                .size
                .width,
            child: Center(
              child: Text("${currentIndex + 1}/${widget.images.length}",
                  style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
          ),
          Positioned( //右上角关闭按钮
            right: 10,
            top: MediaQuery
                .of(context)
                .padding
                .top,
            child: IconButton(
              icon: Icon(Icons.close, size: 30, color: Colors.white,),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),

          Positioned(
            height: 20,
            bottom: MediaQuery
                .of(context)
                .padding
                .top + 50,
            child:
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: BuildOptBar(),//(currentIndex),
            // PostOptBar(widget.post),
            // Text("abc"),
            // Row(
            //     children: [
            //       Expanded(
            //         child:
            //         IconButton(
            //           icon: Icon(Icons.share, color: Colors.white,),
            //         ),
            //       ),
            //       Expanded(
            //         child: Text("${widget.post.shares}"),
            //       ),
            //       Expanded(
            //         child:
            //         // IconButton(
            //         //   icon:
            //         Icon(Icons.comment),
            //       ),
            //       Expanded(
            //         child: Text("${widget.post.comments}"),
            //       ),
            //     ]),
                ),
          ),
        ],
      ),
    );
  }

  Widget BuildOptBar(){//}(int imageIndex){
    // 根据index展示不同的评论
    switch(widget.optBuildType) {
      case OptBuildType.PostSummary:
        return PostOptBar(widget.post,widget.optBuildType);
      case OptBuildType.PostDetail:
        return PostOptBar(widget.post,widget.optBuildType);
      case OptBuildType.CommentSummary:
        return CommentOptBar(widget.post, widget.comment,widget.optBuildType);
      case OptBuildType.CommentDetail:
        return CommentOptBar(widget.post, widget.comment,widget.optBuildType);
      case OptBuildType.ReplaySummary:
        return ReplyOptBar(widget.post, widget.comment, widget.reply,widget.optBuildType);
      case OptBuildType.ReplayDetail:
        return ReplyOptBar(widget.post, widget.comment, widget.reply,widget.optBuildType);
    }
  }
}
