import 'package:fixnum/fixnum.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pb/pb_msg/community/community.pb.dart' as $pbCommunity;
import 'package:quliao/pb/pb_pub/service.pb.dart';
import 'package:quliao/pub/config.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import "package:http/http.dart" as $http;
import 'package:quliao/pub/log.dart';
import 'package:quliao/pub/pub-def.dart';

// 操作按钮展现方式
// 主要看从哪里进来的
enum OptBuildType{
  PostSummary,
  PostDetail,
  CommentSummary,
  CommentDetail,
  ReplaySummary,
  ReplayDetail,
}

enum CARD_SHOW_TYPE{
  summary,
  detail,
}

// String imageUrl =
//     "http://file02.16sucai.com/d/file/2015/0408/779334da99e40adb587d0ba715eca102.jpg";

Future<void> LikePost($pbCommunity.Post post, $pbCommunity.LikeType likeType)async{
  var req = $pbCommunity.LikeReq();
  req.username = AppUserInfo.instance.nickName;
  req.avatar = AppUserInfo.instance.appAvatar;
  req.refId = post.id;
  req.refType = $pbCommunity.RefType.POST.value;
  req.type = likeType.value;

  await RpcCallImOuterApi("/pb_grpc_community.Community/Like", req, MakePBCommData(aimId: Int64(AppUserInfo.instance.imId), toService: Service.community)).then((value){
    if (value.statusCode != 200) {
      log("like post error:code=${value.statusCode}");
    }
  });
}

Future<void> UnLikePost($pbCommunity.Post post, $pbCommunity.LikeType likeType)async{
  var req = $pbCommunity.UnlikeReq();
  req.refId = post.id;
  req.refType = $pbCommunity.RefType.POST.value;
  req.type = likeType.value;

  await RpcCallImOuterApi("/pb_grpc_community.Community/Unlike",
      req, MakePBCommData(aimId: Int64(AppUserInfo.instance.imId),
          toService: Service.community)).then((value){
    if (value.statusCode == 200) {
      log("unlike post error:code=${value.statusCode}");
    }
  });
}

Future<$pbCommunity.Community?> LoadCommunityData(int communityId) async{
  var req = $pbCommunity.CommunityDetailReq();

  $http.Response response = await RpcCallImOuterApi(
      "/pb_grpc_community.Community/CommunityDetail", req, MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),groupId: Int64(communityId), toService: Service.community));
  if (response.statusCode != 200){
    // 出错了
    // 处理错误
    log("get data err: contentLength=${response.contentLength} statusCode=${response.statusCode} reasonPhrase=${response.reasonPhrase}");
    return null;
  }

  var rsp = $pbCommunity.CommunityDetailRsp();

  rsp.mergeFromBuffer(response.bodyBytes);
  var comunity = rsp.community.clone();
  if (comunity.avatar == ""){
    // comunity.avatar = imageUrl;
    comunity.avatar = ConfigMgr().config!.defaultGirlAvatar;
  }

  // log("get community data:${comunity}");
  return comunity;
}

Future<$pbCommunity.PostsRsp?> LoadCommunityPostList(int communityId, $pbCommunity.PostsReq_Order order, {int offSet = 0, int count = 20}) async{
  var req = $pbCommunity.PostsReq();
  req.order = order;//$pbCommunity.PostsReq_Order.New;
  req.offset = Int64(offSet);
  req.count = Int64(count);

  $http.Response response = await RpcCallImOuterApi(
      "/pb_grpc_community.Community/Posts", req, MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),groupId: Int64(communityId), toService: Service.community));
  if (response.statusCode != 200){
    // 出错了
    // 处理错误
    log("get data err: contentLength=${response.contentLength} statusCode=${response.statusCode} reasonPhrase=${response.reasonPhrase}");
    return null;
  }

  var rsp = $pbCommunity.PostsRsp();

  rsp.mergeFromBuffer(response.bodyBytes);
  log("load community post list ok");
  // log(rsp);
  // var comunity = rsp.community.clone();
  // if (comunity.avatar == ""){
  //   comunity.avatar = imageUrl;
  // }
  //
  // // log("get community data:${comunity}");
  // return comunity;
  return rsp;
}

String LikeKey(Int64 postId, {Int64? commentId, Int64? replyId}){
  var key = "${postId}";
  key = commentId == null?key:key+"_$commentId";
  key = replyId == null?key:key+"_$replyId";
  return key;
}

Future<void> LikeComment($pbCommunity.Comment comment, $pbCommunity.LikeType likeType)async{
  var req = $pbCommunity.LikeReq();
  req.username = AppUserInfo.instance.nickName;
  req.avatar = AppUserInfo.instance.appAvatar;
  req.refId = comment.id;
  req.refType = $pbCommunity.RefType.COMMENT.value;
  req.type = likeType.value;//$pbCommunity.LikeType.UP.value;

  await RpcCallImOuterApi("/pb_grpc_community.Community/Like", req, MakePBCommData(aimId: Int64(AppUserInfo.instance.imId), toService: Service.community)).then((value){
    if (value.statusCode == 200) {
    }
//       else {
//         setState(() {
// //                              UpdateMapLike(widget.post.id.toString(), widget.post.topComments[0].id.toString(), "", true);
//           switch (IsLike(widget.post.id, commentId:comment.id)) {
//             case 0:
//               comment.likes += 1;
//               SetMapLike(widget.post.id.toString(), widget.post.topComments[0].id.toString(), "", 1);
//               break;
//             case 1:
//               comment.likes -= 1;
//               SetMapLike(widget.post.id.toString(), widget.post.topComments[0].id.toString(), "", 0);
//               break;
//             case 2:
//               comment.likes += 2;
//               SetMapLike(widget.post.id.toString(), widget.post.topComments[0].id.toString(), "", 1);
//               break;
//           }
//         });
//       }
  });
}

Future<void> UnLikeComment($pbCommunity.Comment comment, $pbCommunity.LikeType likeType)async{
  var req = $pbCommunity.UnlikeReq();
  req.refId = comment.id;
  req.refType = $pbCommunity.RefType.COMMENT.value;
  req.type = likeType.value;

  await RpcCallImOuterApi("/pb_grpc_community.Community/Unlike", req, MakePBCommData(aimId: Int64(AppUserInfo.instance.imId), toService: Service.community)).then((value){
    if (value.statusCode == 200) {
    }
//       else {
//         setState(() {
// //                              UpdateMapLike(widget.post.id.toString(), widget.post.topComments[0].id.toString(), "", true);
//           switch (IsLike(widget.post.id, commentId:comment.id)) {
//             case 0:
//               comment.likes += 1;
//               SetMapLike(widget.post.id.toString(), widget.post.topComments[0].id.toString(), "", 1);
//               break;
//             case 1:
//               comment.likes -= 1;
//               SetMapLike(widget.post.id.toString(), widget.post.topComments[0].id.toString(), "", 0);
//               break;
//             case 2:
//               comment.likes += 2;
//               SetMapLike(widget.post.id.toString(), widget.post.topComments[0].id.toString(), "", 1);
//               break;
//           }
//         });
//       }
  });
}

// void SetPostLike(Int64 postId, POST_LIKE_TYPE likeType,{Int64 commentId, Int64 replyId} ){
//   // mapLike["${PostId}_${PinLunId}_${HuiFuId}"] = LikeType;
//   postLikeType = likeType;
//   dbAddCommunityLike(LikeKey(postId), postLikeType);
// }


Future<void> LikeReply($pbCommunity.Reply reply, $pbCommunity.LikeType likeType)async{
  var req = $pbCommunity.LikeReq();
  req.username = AppUserInfo.instance.nickName;
  req.avatar = AppUserInfo.instance.appAvatar;
  req.refId = reply.id;
  req.refType = $pbCommunity.RefType.REPLY.value;
  req.type = likeType.value;//$pbCommunity.LikeType.UP.value;

  await RpcCallImOuterApi("/pb_grpc_community.Community/Like", req, MakePBCommData(aimId: Int64(AppUserInfo.instance.imId), toService: Service.community)).then((value){
    if (value.statusCode == 200) {
    }
  });
}

Future<void> UnLikeReply($pbCommunity.Reply reply, $pbCommunity.LikeType likeType)async{
  var req = $pbCommunity.UnlikeReq();
  req.refId = reply.id;
  req.refType = $pbCommunity.RefType.REPLY.value;
  req.type = likeType.value;

  await RpcCallImOuterApi("/pb_grpc_community.Community/Unlike", req, MakePBCommData(aimId: Int64(AppUserInfo.instance.imId), toService: Service.community)).then((value){
    if (value.statusCode == 200) {
    }
  });
}