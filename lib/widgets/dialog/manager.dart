import 'package:flutter/material.dart';
import 'package:quliao/modules/red_packet/widgets/set_pay_pwd_success_dialog.dart';
import 'package:quliao/widgets/dialog/action.dart';

class DialogManager {
  /// 清除缓存
  static Future<void> showClearCacheDialog(
    BuildContext context, {
    Function()? onConfirm,
  }) async {
    return CustomActionDialog.show(
      context,
      text: '将清除出用户信息以外的所有数据（包括聊天信息），确认要清除吗？',
      onConfirm: onConfirm,
    );
  }

  /// 退出登录
  static Future<void> showExitAppDialog(
    BuildContext context, {
    Function()? onConfirm,
  }) async {
    return CustomActionDialog.show(
      context,
      text: '确定要退出登录吗？',
      onConfirm: onConfirm,
    );
  }

  /// 注销
  static Future<void> showLogOutDialog(
    BuildContext context, {
    Function()? onConfirm,
  }) async {
    return CustomActionDialog.show(
      context,
      text: '确定要进行注销操作吗？',
      onConfirm: onConfirm,
    );
  }

  /// 清除历史聊天记录
  static Future<void> showClearChatHistoryDialog(
    BuildContext context,
    String content, {
    Function()? onConfirm,
  }) async {
    return CustomActionDialog.show(
      context,
      text: content,
      onConfirm: onConfirm,
    );
  }

  /// 删除聊天
  static Future<void> showDeleteChatDialog(
    BuildContext context,
    Widget content, {
    Function()? onConfirm,
  }) async {
    return CustomActionDialog.show(
      context,
      text: '',
      title: content,
      onConfirm: onConfirm,
      actionConfirmText: '删除',
    );
  }

  /// 解散群聊
  static Future<void> showDisbandGroupDialog(
    BuildContext context, {
    Function()? onConfirm,
  }) async {
    return CustomActionDialog.show(
      context,
      text: '确定要解散群聊吗？',
      onConfirm: onConfirm,
    );
  }

  /// 退出群聊
  static Future<void> showExitGroupDialog(
    BuildContext context, {
    Function()? onConfirm,
  }) async {
    return CustomActionDialog.show(
      context,
      text: '确定要退出群聊吗？',
      onConfirm: onConfirm,
    );
  }

  /// 撤回消息
  static Future<void> showRecallMessageDialog(
    BuildContext context, {
    Function()? onConfirm,
  }) async {
    return CustomActionDialog.show(
      context,
      text: '确定要撤回此条消息吗？',
      onConfirm: onConfirm,
    );
  }

  /// 保存图片
  static Future<void> showSaveImageTipDialog(
    BuildContext context, {
    Function()? onConfirm,
  }) async {
    return CustomActionDialog.show(
      context,
      text: '是否要保存当前图片？',
      onConfirm: onConfirm,
    );
  }

  /// 是否开启自由入群
  static Future<void> showFreeJoinGroupDialog(
    BuildContext context,
    String title, {
    Function()? onConfirm,
  }) async {
    return CustomActionDialog.show(
      context,
      text: title,
      onConfirm: onConfirm,
    );
  }

  /// 是否开启自由入群
  static Future<void> showAgreementDialog(
    BuildContext context,
    Widget content, {
    Function()? onConfirm,
  }) async {
    return CustomActionDialog.show(
      context,
      text: '',
      title: content,
      onConfirm: onConfirm,
    );
  }

  /// 删除地址
  static Future<void> showDelUserAddressDialog(
    BuildContext context, {
    Function()? onConfirm,
  }) async {
    return CustomActionDialog.show(
      context,
      text: '确定要删除该地址吗？',
      onConfirm: onConfirm,
    );
  }

  /// 投诉用户
  static Future<void> showReportUserDialog(
    BuildContext context, {
    Function()? onConfirm,
  }) async {
    return CustomActionDialog.show(
      context,
      text: '确定要投诉该用户吗？',
      onConfirm: onConfirm,
    );
  }

  static Future<void> showReportAppDialog(
    BuildContext context, {
    Function()? onConfirm,
  }) async {
    return CustomActionDialog.show(
      context,
      text: '确定要投诉吗？',
      onConfirm: onConfirm,
    );
  }

  static Future<void> showDeleteCollectionsDialog(
    BuildContext context, {
    Function()? onConfirm,
  }) async {
    return CustomActionDialog.show(
      context,
      text: '确定要删除此条收藏吗？',
      onConfirm: onConfirm,
    );
  }

  static Future<void> showDeleteFriendDialog(
    BuildContext context,
    Widget content, {
    Function()? onConfirm,
  }) async {
    return CustomActionDialog.show(
      context,
      text: '',
      title: content,
      onConfirm: onConfirm,
    );
  }

  static Future<void> showRemoveBlackListDialog(
    BuildContext context, {
    Function()? onConfirm,
  }) async {
    return CustomActionDialog.show(
      context,
      text: '确定要将对方移除黑名单吗？',
      onConfirm: onConfirm,
    );
  }

  static Future<void> showDeleteGroupChatBackground(
    BuildContext context, {
    Function()? onConfirm,
  }) async {
    return CustomActionDialog.show(
      context,
      text: '确定要删除这张背景图吗？',
      onConfirm: onConfirm,
    );
  }

  static Future<void> showSetChatBackgroundDialog(
    BuildContext context, {
    Function()? onConfirm,
  }) async {
    return CustomActionDialog.show(
      context,
      text: '确定要使用这张背景图吗？',
      onConfirm: onConfirm,
    );
  }

  /// 绑定手机号
  static Future<void> showBindMobileDialog(
    BuildContext context, {
    Function()? onConfirm,
  }) async {
    return CustomActionDialog.show(
      context,
      text: '您还未绑定手机号，需要绑定手机号才能执行此操作。',
      actionConfirmText: '去绑定',
      onConfirm: onConfirm,
    );
  }

  /// 支付密码设置成功
  static Future<void> showSetPayPwdSuccessDialog(
    BuildContext context, {
    Function()? onConfirm,
  }) async {
    return SetPayPwdSuccessDialog.show(onConfirm: onConfirm);
  }
}
