enum MemberType {
  /// 群成员
  normal,

  /// 群内封禁
  banned,

  /// 群管理
  manager,

  /// 群转让
  transfer,
}

extension MemberTypeExtension on MemberType {
  String get value {
    switch (this) {
      case MemberType.normal:
        return '群成员管理';
      case MemberType.banned:
        return '群内封禁';
      case MemberType.manager:
        return '设置群管理';
      case MemberType.transfer:
        return '转让群';
    }
  }

  String get action {
    switch (this) {
      case MemberType.normal:
        return '踢出群组';
      case MemberType.banned:
        return '设置封禁';
      case MemberType.manager:
        return '设置管理员';
      case MemberType.transfer:
        return '';
    }
  }
}
