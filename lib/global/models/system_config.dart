class SystemConfig {
  SystemConfig({
    this.addFriendRole,
    this.privateMsgRole,
    this.invite,
    this.phoneCodeLoginOpen = 1,
    this.emailCodeLoginOpen = 0,
    this.screenShortNotify = 0,
    this.hideSign = 1,
    this.showReadStatus = 0,
  });

  SystemConfig.fromJson(Map<String, dynamic> json) {
    addFriendRole = int.parse(json['sys_limit_add_friend_min_role']);
    privateMsgRole = int.parse(json['sys_limit_private_msg_min_role']);
    invite = int.parse(json['sys_sign_in_invite_need_level']);
    phoneCodeLoginOpen = 1;
    emailCodeLoginOpen = 0;
    screenShortNotify = 0;
    hideSign = 1;
    showReadStatus = 0;
  }

  bool get canAddFriend => (addFriendRole ?? 0) >= 1;

  // bool get canPrivateMsg => (privateMsgRole ?? 0) >= 1;
  bool get canPrivateMsg => true;

  /// 是否展示邀请码
  bool get showInvite => (invite ?? 0) > 0;

  /// 是否强制需要邀请码
  bool get forceInvite => invite == 2;

  /// 开启手机号登录
  bool get phoneLogin => phoneCodeLoginOpen == 1;

  /// 开启邮箱登录
  bool get emailLogin => emailCodeLoginOpen == 1;

  /// 开启截屏通知
  bool get notifyScreenShort => screenShortNotify == 1;

  /// 隐藏个性签名、朋友圈
  bool get hideUserSign => hideSign == 1;

  /// 是否显示消息已读状态
  bool get showMessageReadStatus => showReadStatus == 1;

  int? addFriendRole;
  int? privateMsgRole;
  int? invite;
  int? phoneCodeLoginOpen;
  int? emailCodeLoginOpen;
  int? screenShortNotify;
  int? hideSign;
  int? showReadStatus;
}
