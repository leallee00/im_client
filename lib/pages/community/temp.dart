import 'package:fixnum/fixnum.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/pb/pb_msg/community/community.pb.dart';

Post TempPost() {
  var post = Post();
  post.id = Int64(1);
  post.createAt = Int64((DateTime
      .now()
      .microsecondsSinceEpoch / 1000).round());
  post.topicId = Int64(0);
  post.topicName = "我是地精";
  post.userId = Int64(30128881); // 用户ID
  post.username = "地精三号"; // 名称
  post.avatar = AppUserInfo.instance.appAvatar; // 头像
  post.content = "全世界都散发着恋爱的酸臭味，只有我发出单身狗的清香。我并不是完全没用，我还可以当个反面教材嘛。"; // 内容
  post.videos.add(
      Video()
        ..url = "" // 视频地址
    // ..Plays = Int64(2)      // 播放总量
    // ..Barrages = Int64(3)  // 弹幕总量
  ); // 视频数量
  post.images.add(Image()
    ..url = AppUserInfo.instance.appAvatar
    ..tags.add(Tag()
      ..type = 1
      ..content = "abc"
      ..x = Int64(123)
      ..y = Int64(345))); // 图片数量
  // post.repeated Audio audios = 12;        // 音频数量
  // post.repeated Link links = 13;         // 链接数量
  // post.repeated Vote votes = 14;         // 投票数量

  post.likes = Int64(345); // 点赞总数
  post.likeas = Int64(345); // 表情a总数
  post.likebs = Int64(345); // 表情b总数
  post.likecs = Int64(345); // 表情c总数
  post.likeds = Int64(345); // 表情d总数
  post.shares = Int64(345); // 分享总数
  post.watchs = Int64(345); // 插眼总数
  post.comments = Int64(345); // 评论总数

  post.award = true; // 是否开启打赏
  post.awards = Int64(345); // 打赏总额
  return post;
}

Comment TempComment(){
  var comment = Comment()
    .. id = Int64(345)
    ..createAt = Int64(345)
    ..userId = Int64(345)
    ..username = "sldjfsl"
    ..avatar = AppUserInfo.instance.appAvatar
    ..refId = Int64(345)
    ..refType = 345
    ..content = "sdfdsjfl" // 评论内容

  // ..Video videos = 10        // 视频数量
  // repeated Image images = 11        // 图片数量
  // repeated Audio audios = 1       // 音频数量

    ..likes = Int64(345)  // 点赞得分
    ..shares = Int64(345)  // 分享总数
    ..watchs = Int64(345)  // 插眼总数
    ..replies = Int64(345);  // 回复总数

  // repeated Reply topReplies = 31; // 热门回复 2条

  // return post.topComments.add(comment); // 热门评论 1条
  return comment;
}

Topic TempTopic(){
  var topic = Topic();
  topic.id = Int64.ZERO;
  topic.createAt = Int64((DateTime.now().microsecondsSinceEpoch/1000).ceil());
  topic.name = "玩吧";
  topic.cover = AppUserInfo.instance.appAvatar;
  topic.count = Int64(123);
  return topic;
}