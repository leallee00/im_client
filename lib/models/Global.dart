// 提供五套可选主题色
// import 'dart:convert';
// import 'dart:html';

// import 'package:dio/dio.dart';
import 'dart:io';

import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/modules/mine/pages/blacklist/blacklist_controller.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/global/controller/im_controller.dart';
import 'package:quliao/global/controller/unread_message_controller.dart';
import 'package:quliao/models/sound_effect/sound_effect.dart';
import 'package:quliao/models/user/userinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pb/pb_msg/gate/gate.pb.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart';
import 'package:quliao/pb/pb_msg/user_center/userCenter.pb.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pb/pb_pub/gm_notify.pb.dart';
import 'package:quliao/pub/config.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/pub/pub-def.dart';
// import 'package:quliao/pages/live/zego/zego_config.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/utils/cache.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'PBMessageCreator.dart';

const _themes = <MaterialColor>[
  Colors.blue,
  Colors.cyan,
  Colors.teal,
  Colors.green,
  Colors.red,
];

/// 全局变量
class Global {
  late BuildContext mainPageContext;

  static late SharedPreferences prefs;// = SharedPreferences.getInstance();

  ///  可选的主题列表
  static List<MaterialColor> get themes => _themes;

  /// 是否为release版
  static bool get isRelease => bool.fromEnvironment("dart.vm.product");

  static PBMessageCreator pbMsgCreator = PBMessageCreator();

  //初始化全局信息，会在APP启动时执行
  static Future init() async {
    // 当前值 日志设置
    curLogModel = LOG_MODEL.ALL;
    curLogLevel = LOG_LEVEL.DEBUG;

    // 消息个数计数器
    prefs = await SharedPreferences.getInstance();

    Get.put<GlobalController>(GlobalController());

    await GlobalController.to.loadConfig();

    // 配置
    //初始化一下配置
    await ConfigMgr().loadFromSp();


    await Cache.init();
    getUserAll();

    // 加载音效
    if (Platform.isAndroid || Platform.isIOS) {
      SoundEffect();
    }

    // 注册消息
    _initPbMsgCreator();
    await AppUserInfo.instance.loadFromSp();
    var netClient = Client();
    netClient.Start();

    Get.put<ImController>(ImController());
    Get.put<UnReadMessageController>(UnReadMessageController());
  }

  static bool isInCallScene = false;

  // static int windowH = 0;
  // static int windowW = 0;

  // static Dio rpcCallAppInterFace = Dio();
  // static Dio rpcCallCommImInterFace = Dio();

  static _initPbMsgCreator() {
    // 私聊消息
    pbMsgCreator.regMsg(ChatText(), true);

    // 群消息
    pbMsgCreator.regMsg(CreateGroupReq(), true);
    pbMsgCreator.regMsg(CreateGroupRsp());
    // pbMsgCreator.regMsg(InviteReq(), true);
    pbMsgCreator.regMsg(InviteRsp());
    // pbMsgCreator.regMsg(InviteAnswerReq(), true);
    pbMsgCreator.regMsg(InviteAnswerRsp());
    pbMsgCreator.regMsg(ApplyReq());
    pbMsgCreator.regMsg(ApplyRsp());
    pbMsgCreator.regMsg(ApplyAnswerReq());
    pbMsgCreator.regMsg(ApplyAnswerRsp(), true);
    pbMsgCreator.regMsg(GroupsReq());
    pbMsgCreator.regMsg(GroupsRsp());
    pbMsgCreator.regMsg(GroupDetailReq());
    pbMsgCreator.regMsg(GroupDetailRsp());
    pbMsgCreator.regMsg(MembersReq());
    pbMsgCreator.regMsg(MembersRsp());
    pbMsgCreator.regMsg(MemberDetailReq());
    pbMsgCreator.regMsg(MemberDetailRsp());
    pbMsgCreator.regMsg(ApplicationsReq());
    pbMsgCreator.regMsg(ApplicationsRsp());
    pbMsgCreator.regMsg(InvitationsReq());
    pbMsgCreator.regMsg(InvitationsRsp());
    pbMsgCreator.regMsg(ReadyForGroupsNewMsgInfoReq());
    pbMsgCreator.regMsg(ReadyForGroupsNewMsgInfoRsp());
    pbMsgCreator.regMsg(GroupsNewMsgInfoNotify());
    pbMsgCreator.regMsg(GroupDisbandedNotify(), true);
    pbMsgCreator.regMsg(QuitRsp());
    pbMsgCreator.regMsg(NoticeChangeNotify());
    pbMsgCreator.regMsg(GroupChat(), true);
    pbMsgCreator.regMsg(GroupEmoticon(), true);
    pbMsgCreator.regMsg(GroupMedia(), true);
    pbMsgCreator.regMsg(GroupGift(), true);
    pbMsgCreator.regMsg(QuitNotify(), true);
    pbMsgCreator.regMsg(UnbanMemberNotify(), true);
    pbMsgCreator.regMsg(BanMemberNotify(), true);
    pbMsgCreator.regMsg(AddAdminsNotify(), true);
    pbMsgCreator.regMsg(RemoveAdminsNotify(), true);
    pbMsgCreator.regMsg(NameChangeNotify(), true);
    pbMsgCreator.regMsg(AvatarChangeNotify(), true);
    pbMsgCreator.regMsg(RemarkChangeNotify(), true);
    pbMsgCreator.regMsg(BanGroupsReq());
    pbMsgCreator.regMsg(GroupBannedNotify(), true);
    pbMsgCreator.regMsg(UnbanGroupsReq());
    pbMsgCreator.regMsg(GroupUnbannedNotify(), true);
    pbMsgCreator.regMsg(GroupTransferNotify(), true);
    pbMsgCreator.regMsg(MemberChatBannedStatusChangeNotify(), true);
    pbMsgCreator.regMsg(InviteeAgreedNotify(), true);
    pbMsgCreator.regMsg(InviteesAgreedNotify(), true);
    pbMsgCreator.regMsg(KickoutNotify(), true);
    pbMsgCreator.regMsg(approverApprovedNotify(), true);
    pbMsgCreator.regMsg(TakeScreenShotNotify(), true);
    pbMsgCreator.regMsg(ScanCodeJoinGroupSwitchStatusChangeNotify());
    pbMsgCreator.regMsg(ClearHisMsgReq());
    pbMsgCreator.regMsg(ClearHisMsgRsp());
    pbMsgCreator.regMsg(MsgRecallReq(), true);
    pbMsgCreator.regMsg(GMPPullLogNotify());
    pbMsgCreator.regMsg(RedPacketNotify());
    pbMsgCreator.regMsg(CreateGroupNotify(), true);
  }
}
