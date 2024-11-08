import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';

class NotifyFollowChange extends Notification {
  final Int64 followedUser;  // 关注对象
  final bool follow;  // true 加关注 false 取消关注

  NotifyFollowChange(this.followedUser, this.follow);
}