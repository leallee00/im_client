import 'package:flutter/material.dart';

enum LoginType { account, email, mobile }

extension LoginTypeExtension on LoginType {
  int type() {
    switch (this) {
      case LoginType.account:
        return 0;
      case LoginType.email:
        return 1;
      case LoginType.mobile:
        return 2;
    }
  }

  String value() {
    switch (this) {
      case LoginType.account:
        return '账号密码';
      case LoginType.email:
        return '邮箱登录';
      case LoginType.mobile:
        return '手机验证码';
    }
  }

  String password() {
    switch (this) {
      case LoginType.account:
        return '账号密码登录';
      case LoginType.email:
        return '邮箱找回';
      case LoginType.mobile:
        return '手机验证码找回';
    }
  }

  String value2() {
    switch (this) {
      case LoginType.account:
        return '账号注册';
      case LoginType.email:
        return '邮箱注册';
      case LoginType.mobile:
        return '手机验证码注册';
    }
  }
}
