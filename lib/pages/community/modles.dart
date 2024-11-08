import 'package:quliao/models/user/userinfo.dart';

class CommunityData{
  String avatarUrl = "https://img.zcool.cn/community/0372d195ac1cd55a8012062e3b16810.jpg"; // 圈子头像
  String gname = "塑料袋积分"; // 圈子名称
  String followerTitle = "驴友"; // 给成员取得称号
  String describe = "拉萨的减肥流水库的计费,lsjdflsdjfdl成员加入方式 0:自由加入 1：需申请，管理员通过后可加 2：需回答问题，答案正确后加入 3：需邀请，必须通过成员邀请加入"; // 描述信息
  int joinType = 0; // 成员加入方式 0:自由加入 1：需申请，管理员通过后可加 2：需回答问题，答案正确后加入 3：需邀请，必须通过成员邀请加入
  bool memberInvite = true; // 开启后，成员可以直接邀请其他人加入圈子，被邀请者不需要申请和答题
int memberCount = 1;
}