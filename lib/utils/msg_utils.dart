import 'package:fixnum/fixnum.dart';
import 'package:quliao/db/obox/model/user_model.dart';
import 'package:quliao/global/repository/user_repository.dart';
import 'package:quliao/models/Global.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/modules/conversation/repository/im_conversation_repository.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/utils/log/manager.dart';

import '../pb/pb_msg/gate/gate.pb.dart';

class MsgUtils {
  static final _repository = ImConversationRepository();
  static final _userRepository = UserRepository();

  static Future<String> getLatestMsg(
    String pbName,
    List<int> pbData,
    List<int> pbCommData, {
    bool privateChat = true,
  }) async {
    LoggerManager().error('getLatestMsg =======> $pbName');
    var latestMsg = '';
    if (privateChat) {
      if (pbName == 'pb_msg_gate.ChatText') {
        final chatText = ChatText();
        chatText.mergeFromBuffer(pbData);
        final chatType = chatText.chatType;
        if (chatType == TextChatType.TEXT) {
          latestMsg = chatText.text;
        } else if (chatType == TextChatType.PIC) {
          latestMsg = '[图片]';
        } else if (chatType == TextChatType.VIDEO) {
          latestMsg = '[视频]';
        } else if (chatType == TextChatType.AUDIO) {
          latestMsg = '[语音]';
        } else if (chatType == TextChatType.FILE) {
          latestMsg = '[文件]';
        } else if (chatType == TextChatType.CUSTOMIZE) {
          latestMsg = '[自定义消息]';
        }
      } else if (pbName == 'pb_pub.MsgRecallReq') {
        final notify = MsgRecallReq();
        notify.mergeFromBuffer(pbData);
        final srcUserId = notify.msgOwnerId.toInt();
        if (srcUserId != AppUserInfo().imId) {
          latestMsg = '对方撤回了一条消息';
        } else {
          latestMsg = '你撤回了一条消息';
        }
      }
    } else {
      final pbMessage = PBMessage(
        pbName: pbName,
        pbCommData: PBCommData.fromBuffer(pbCommData),
        pbData: pbData,
      );
      if (pbName == 'pb_msg_group.GroupChat') {
        final pbDataMsg = Global.pbMsgCreator.createPbMsg(
          pbName,
          pbData,
        );
        if (null != pbDataMsg) {
          if (pbDataMsg is GroupChat) {
            final chatType = pbDataMsg.chatType;
            if (chatType == TextChatType.TEXT) {
              latestMsg = pbDataMsg.text;
            } else if (chatType == TextChatType.PIC) {
              latestMsg = '[图片]';
            } else if (chatType == TextChatType.VIDEO) {
              latestMsg = '[视频]';
            } else if (chatType == TextChatType.AUDIO) {
              latestMsg = '[语音]';
            } else if (chatType == TextChatType.FILE) {
              latestMsg = '[文件]';
            } else if (chatType == TextChatType.CUSTOMIZE) {
              latestMsg = '[自定义消息]';
            }
          }
        }
      } else if (pbName == 'pb_msg_group.InviteeAgreedNotify') {
        final notify = InviteeAgreedNotify()..mergeFromBuffer(pbData);
        final inviterId = notify.inviterId;
        final inviteeId = notify.inviteeId;
        final srcUserInfo = await _userRepository.getUserInfo(
          inviterId.toInt(),
        );
        final String srcNickname =
            srcUserInfo.nickName.isEmpty ? '$inviterId' : srcUserInfo.nickName;

        final inviteeUserInfo = await _userRepository.getUserInfo(
          inviteeId.toInt(),
        );

        final String inviteeNickname = inviteeUserInfo.nickName.isEmpty
            ? '${inviteeUserInfo.appId}'
            : inviteeUserInfo.nickName;

        if (inviterId == Int64(AppUserInfo().imId)) {
          return '您邀请$inviteeNickname进入群聊';
        } else {
          if (inviteeId == Int64(AppUserInfo().imId)) {
            return '$srcNickname邀请您进入群聊';
          } else {
            return '$srcNickname邀请$inviteeNickname进入群聊';
          }
        }
      } else if (pbName == 'pb_msg_group.BanMemberNotify') {
        /// 封禁某人
        final notify = BanMemberNotify()..mergeFromBuffer(pbData);

        final srcUserInfo = await _userRepository.getUserInfo(
          pbMessage.pbCommData.srcId.toInt(),
        );
        final String srcNickname = srcUserInfo.nickName.isEmpty
            ? '${pbMessage.pbCommData.srcId}'
            : srcUserInfo.nickName;

        final aimUserInfo = await _userRepository.getUserInfo(
          pbMessage.pbCommData.aimId.toInt(),
        );
        final String aimNickname = aimUserInfo.nickName.isEmpty
            ? '${pbMessage.pbCommData.aimId}'
            : aimUserInfo.nickName;

        if (srcUserInfo.id == AppUserInfo().imId) {
          return '您将$aimNickname关进小黑屋';
        } else if (aimUserInfo.id == AppUserInfo().imId) {
          return '$srcNickname将您关进小黑屋';
        }
        return '$srcNickname将$aimNickname关进小黑屋';
      } else if (pbName == 'pb_msg_group.UnbanMemberNotify') {
        /// 解除封禁
        final srcUserInfo = await _userRepository.getUserInfo(
          pbMessage.pbCommData.srcId.toInt(),
        );
        final String srcNickname = srcUserInfo.nickName.isEmpty
            ? '${pbMessage.pbCommData.srcId}'
            : srcUserInfo.nickName;

        final aimUserInfo = await _userRepository.getUserInfo(
          pbMessage.pbCommData.aimId.toInt(),
        );
        final String aimNickname = aimUserInfo.nickName.isEmpty
            ? '${pbMessage.pbCommData.aimId}'
            : aimUserInfo.nickName;

        if (srcUserInfo.id == AppUserInfo().imId) {
          return '您将$aimNickname从小黑屋请了出来';
        } else if (aimUserInfo.id == AppUserInfo().imId) {
          return '$srcNickname将您从小黑屋请了出来';
        }

        return '$srcNickname将$aimNickname从小黑屋请了出来';
      } else if (pbName == 'pb_msg_group.NameChangeNotify') {
        /// 群名修改
        final notify = NameChangeNotify()..mergeFromBuffer(pbData);

        final srcUserInfo = await _userRepository.getUserInfo(
          pbMessage.pbCommData.srcId.toInt(),
        );
        final String srcNickname = srcUserInfo.nickName.isEmpty
            ? '${pbMessage.pbCommData.srcId}'
            : srcUserInfo.nickName;
        return '$srcNickname 把群名称改为 ${notify.name}';
      } else if (pbName == 'pb_msg_group.AddAdminsNotify') {
        /// 添加管理员
        final notify = AddAdminsNotify()..mergeFromBuffer(pbData);

        final srcUserInfo = await _userRepository.getUserInfo(
          pbMessage.pbCommData.srcId.toInt(),
        );
        final String srcNickname = srcUserInfo.nickName.isEmpty
            ? '${pbMessage.pbCommData.srcId}'
            : srcUserInfo.nickName;

        final List<UserModel> memberUsers = [];
        for (final element in notify.memberIds) {
          final memberUserInfo = await _userRepository.getUserInfo(
            element.toInt(),
          );
          memberUsers.add(memberUserInfo);
        }

        var info = '$srcNickname 将 ';
        for (final element in memberUsers) {
          final String srcNickname =
              element.nickName.isEmpty ? '${element.appId}' : element.nickName;
          info += "$srcNickname ";
        }
        info += '设置为管理员';
        latestMsg = info;
      } else if (pbName == 'pb_msg_group.InviteeAgreedNotify') {
        /// 邀请用户进群
        final notify = InviteeAgreedNotify()..mergeFromBuffer(pbData);

        final inviterId = notify.inviterId;
        final inviteeId = notify.inviteeId;
        final srcUserInfo = await _userRepository.getUserInfo(
          inviterId.toInt(),
        );
        final String srcNickname =
            srcUserInfo.nickName.isEmpty ? '$inviterId' : srcUserInfo.nickName;

        final inviteeUserInfo = await _userRepository.getUserInfo(
          inviteeId.toInt(),
        );

        final String inviteeNickname = inviteeUserInfo.nickName.isEmpty
            ? '${inviteeUserInfo.appId}'
            : inviteeUserInfo.nickName;

        if (inviterId == Int64(AppUserInfo().imId)) {
          latestMsg = '您邀请$inviteeNickname进入群聊';
        } else {
          if (inviteeId == Int64(AppUserInfo().imId)) {
            latestMsg = '$srcNickname邀请您进入群聊';
          } else {
            latestMsg = '$srcNickname邀请$inviteeNickname进入群聊';
          }
        }
      } else if (pbName == 'pb_msg_group.InviteesAgreedNotify') {
        final notify = InviteesAgreedNotify()..mergeFromBuffer(pbData);

        final inviterId = notify.inviterId;
        final srcUserInfo = await _userRepository.getUserInfo(
          inviterId.toInt(),
        );
        final String srcNickname =
            srcUserInfo.nickName.isEmpty ? '$inviterId' : srcUserInfo.nickName;

        final inviteeNames = notify.inviteeNames.join('，');

        if (inviterId == Int64(AppUserInfo().imId)) {
          latestMsg = '您邀请$inviteeNames进入群聊';
        } else {
          latestMsg = '$srcNickname邀请$inviteeNames进入群聊';
        }
      } else if (pbName == 'pb_msg_group.KickoutNotify') {
        final notify = KickoutNotify()..mergeFromBuffer(pbData);

        final srcId = pbMessage.pbCommData.srcId.toInt();
        final srcUserInfo = await _userRepository.getUserInfo(
          srcId,
        );
        final String srcNickname =
            srcUserInfo.nickName.isEmpty ? '$srcId' : srcUserInfo.nickName;

        final memberId = notify.memberId.toInt();
        final memberUserInfo = await _userRepository.getUserInfo(
          memberId,
        );
        final String memberNickname = memberUserInfo.nickName.isEmpty
            ? '$memberId'
            : memberUserInfo.nickName;

        if (srcId == AppUserInfo().imId) {
          latestMsg = '您把$memberNickname移除群聊';
        } else {
          if (memberId == AppUserInfo().imId) {
            latestMsg = '您被$srcNickname移除群聊';
          } else {
            latestMsg = '$srcNickname将$memberNickname移除群聊';
          }
        }
      } else if (pbName == 'pb_msg_group.RemoveAdminsNotify') {
        final notify = RemoveAdminsNotify()..mergeFromBuffer(pbData);

        final srcUserInfo = await _userRepository.getUserInfo(
          pbMessage.pbCommData.srcId.toInt(),
        );
        final String srcNickname = srcUserInfo.nickName.isEmpty
            ? '${pbMessage.pbCommData.srcId}'
            : srcUserInfo.nickName;

        final List<UserModel> memberUsers = [];
        for (final element in notify.memberIds) {
          final memberUserInfo = await _userRepository.getUserInfo(
            element.toInt(),
          );
          memberUsers.add(memberUserInfo);
        }

        var info = "$srcNickname 收回 ";
        for (final element in memberUsers) {
          final String srcNickname =
              element.nickName.isEmpty ? '${element.appId}' : element.nickName;
          info += "$srcNickname ";
        }
        info += "管理员权限";
        latestMsg = info;
      } else if (pbName == 'pb_msg_group.approverApprovedNotify') {
        final notify = approverApprovedNotify()..mergeFromBuffer(pbData);

        final applicantId = notify.applicantId;
        final approverId = notify.approverId;
        LoggerManager().debug(
          'approverApprovedNotify111 applicantId: $applicantId approverId: $approverId enterGroutType: ${notify.enterGroutType}',
        );
        UserModel? srcUserInfo;
        if (approverId != 0) {
          srcUserInfo = await _userRepository.getUserInfo(
            approverId.toInt(),
          );
        }
        String? srcNickname;
        if (approverId != 0) {
          srcNickname = srcUserInfo?.nickName.isEmpty == true
              ? '$approverId'
              : srcUserInfo?.nickName;
        }

        final aimUserInfo = await _userRepository.getUserInfo(
          applicantId.toInt(),
        );
        final String aimNickname = aimUserInfo.nickName.isEmpty
            ? '$applicantId'
            : aimUserInfo.nickName;

        if (notify.enterGroutType == EnterGroupType.ScanCode) {
          if (applicantId == AppUserInfo().imId) {
            latestMsg = '您通过扫描二维码进入群聊';
          } else {
            latestMsg = '$aimNickname通过扫描二维码进入群聊';
          }
        } else {
          if (approverId == Int64(AppUserInfo().imId)) {
            latestMsg = '您同意$aimNickname的入群申请';
          } else {
            if (applicantId == Int64(AppUserInfo().imId)) {
              latestMsg = '$srcNickname同意您的入群申请';
            } else {
              latestMsg = '$srcNickname同意$aimNickname的入群申请';
            }
          }
        }
      } else if (pbName == 'pb_msg_group.MemberChatBannedStatusChangeNotify') {
        final notify = MemberChatBannedStatusChangeNotify()
          ..mergeFromBuffer(pbData);

        final groupId = pbMessage.pbCommData.groupId;
        final srcId = pbMessage.pbCommData.srcId.toInt();
        final aimId = pbMessage.pbCommData.aimId.toInt();

        LoggerManager().debug(
          'MemberChatBannedStatusChangeNotify ======> groupId: $groupId srcId: $srcId aimId: $aimId bannedStatus: ${notify.bannedStatus}',
        );

        bool banned = notify.bannedStatus > 0;
        if (srcId == AppUserInfo().imId) {
          if (banned) {
            latestMsg = '您设置了群禁言';
          } else {
            latestMsg = '您取消了群禁言';
          }
        } else {
          final userInfo = await _userRepository.getUserInfo(srcId);
          final String srcNickname = userInfo.nickName.isEmpty
              ? '${userInfo.appId}'
              : userInfo.nickName;
          if (banned) {
            latestMsg = '管理员$srcNickname设置了群禁言';
          } else {
            latestMsg = '管理员$srcNickname取消了群禁言';
          }
        }
      } else if (pbName == 'pb_msg_group.GroupTransferNotify') {
        final notify = GroupTransferNotify()..mergeFromBuffer(pbData);

        final srcUserInfo = await _userRepository.getUserInfo(
          pbMessage.pbCommData.srcId.toInt(),
        );
        final String srcNickname = srcUserInfo.nickName.isEmpty
            ? '${pbMessage.pbCommData.srcId}'
            : srcUserInfo.nickName;

        final aimUserInfo = await _userRepository.getUserInfo(
          notify.ownerId.toInt(),
        );
        final String aimNickname = aimUserInfo.nickName.isEmpty
            ? '${notify.ownerId}'
            : aimUserInfo.nickName;

        latestMsg = '$srcNickname将群主转让给$aimNickname';
      } else if (pbName == 'pb_msg_group.GroupDisbandedNotify') {
        final notify = GroupDisbandedNotify()..mergeFromBuffer(pbData);

        final srcUserInfo = await _userRepository.getUserInfo(
          pbMessage.pbCommData.srcId.toInt(),
        );
        final String srcNickname = srcUserInfo.nickName.isEmpty
            ? '${pbMessage.pbCommData.srcId}'
            : srcUserInfo.nickName;
        latestMsg = '$srcNickname将群解散了';
      } else if (pbName == 'pb_msg_group.QuitNotify') {
        final notify = QuitNotify()..mergeFromBuffer(pbData);
        final srcUserInfo = await _userRepository.getUserInfo(
          pbMessage.pbCommData.srcId.toInt(),
        );
        final String srcNickname = srcUserInfo.nickName.isEmpty
            ? '${pbMessage.pbCommData.srcId}'
            : srcUserInfo.nickName;
        latestMsg = '$srcNickname退出了群';
      } else if (pbName == 'pb_msg_group.NoticeChangeNotify') {
        final srcUserInfo = await _userRepository.getUserInfo(
          pbMessage.pbCommData.srcId.toInt(),
        );
        final String srcNickname = srcUserInfo.nickName.isEmpty
            ? '${pbMessage.pbCommData.srcId}'
            : srcUserInfo.nickName;
        latestMsg = '$srcNickname 修改了公告';
      } else if (pbName == 'pb_msg_group.RemarkChangeNotify') {
        final notify = RemarkChangeNotify()..mergeFromBuffer(pbData);
        if (pbMessage.pbCommData.srcId == pbMessage.pbCommData.aimId) {
          /// 自己改的
          final srcUserInfo = await _userRepository.getUserInfo(
            pbMessage.pbCommData.srcId.toInt(),
          );
          final String srcNickname = srcUserInfo.nickName.isEmpty
              ? '${pbMessage.pbCommData.srcId}'
              : srcUserInfo.nickName;
          latestMsg = '$srcNickname 更改群昵称为 ${notify.remark}';
        } else {
          /// 别人改的
          final srcUserInfo = await _userRepository.getUserInfo(
            pbMessage.pbCommData.srcId.toInt(),
          );
          final String srcNickname = srcUserInfo.nickName.isEmpty
              ? '${pbMessage.pbCommData.srcId}'
              : srcUserInfo.nickName;

          final aimUserInfo = await _userRepository.getUserInfo(
            pbMessage.pbCommData.aimId.toInt(),
          );
          final String aimNickname = aimUserInfo.nickName.isEmpty
              ? '${pbMessage.pbCommData.aimId}'
              : aimUserInfo.nickName;
          latestMsg = '$srcNickname 更改 $aimNickname 的群昵称为 ${notify.remark}';
        }
      } else if (pbName == 'pb_msg_group.GroupBannedNotify') {
        final srcUserInfo = await _userRepository.getUserInfo(
          pbMessage.pbCommData.srcId.toInt(),
        );
        final String srcNickname = srcUserInfo.nickName.isEmpty
            ? '${pbMessage.pbCommData.srcId}'
            : srcUserInfo.nickName;
        latestMsg = '$srcNickname 封禁了该群';
      } else if (pbName == 'pb_msg_group.GroupUnbannedNotify') {
        final srcUserInfo = await _userRepository.getUserInfo(
          pbMessage.pbCommData.srcId.toInt(),
        );
        final String srcNickname = srcUserInfo.nickName.isEmpty
            ? '${pbMessage.pbCommData.srcId}'
            : srcUserInfo.nickName;
        latestMsg = '$srcNickname 解禁了该群';
      } else if (pbName == 'pb_msg_group.AvatarChangeNotify') {
        final srcUserInfo = await _userRepository.getUserInfo(
          pbMessage.pbCommData.srcId.toInt(),
        );
        final String srcNickname = srcUserInfo.nickName.isEmpty
            ? '${pbMessage.pbCommData.srcId}'
            : srcUserInfo.nickName;
        latestMsg = '$srcNickname 修改了群头像';
      } else if (pbName == 'pb_msg_group.CreateGroupNotify') {
        final srcUserInfo = await _userRepository.getUserInfo(
          pbMessage.pbCommData.srcId.toInt(),
        );
        final String srcNickname = srcUserInfo.nickName.isEmpty
            ? '${pbMessage.pbCommData.srcId}'
            : srcUserInfo.nickName;
        latestMsg = '$srcNickname创建了群聊';
      }
    }
    return latestMsg;
  }
}
