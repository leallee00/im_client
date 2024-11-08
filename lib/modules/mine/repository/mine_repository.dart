import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:oktoast/oktoast.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pb/pb_pub/error_code.pb.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/utils/log/manager.dart';

import '../../../pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import '../../../pb/pb_pub/service.pbenum.dart';

class MineRepository {
  Future<void> getAddressList(
    int page, {
    int pageSize = 10,
    Function(List<UserAddress>)? callback,
    Function()? onError,
  }) async {
    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.commim_uaa,
    );

    final req = FetchAddressListReq(
      page: page,
      pageSize: pageSize,
    );

    RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/FetchAddressList',
      req,
      pbCommData,
    ).then((value) {
      if (value.statusCode == 200) {
        final rsp = FetchAddressListRsp()..mergeFromBuffer(value.bodyBytes);
        if (null != callback) {
          callback(rsp.addressList);
        }
      } else {
        if (null != onError) {
          onError();
        }
      }
    }).catchError((err) {
      LoggerManager().debug('$err');
      if (null != onError) {
        onError();
      }
    });
  }

  Future<void> addUserAddress(
    UserAddress address, {
    Function()? callback,
    Function()? onError,
  }) async {
    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.commim_uaa,
    );

    final req = AddAddressReq(address: address);

    RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/AddAddress',
      req,
      pbCommData,
    ).then((value) {
      if (value.statusCode == 200) {
        final rsp = AddAddressRsp()..mergeFromBuffer(value.bodyBytes);
        if (null != callback) {
          callback();
        }
      } else {
        if (null != onError) {
          onError();
        }
      }
    }).catchError((err) {
      LoggerManager().debug('$err');
      if (null != onError) {
        onError();
      }
    });
  }

  Future<void> editUserAddress(
    UserAddress address, {
    Function()? callback,
    Function()? onError,
  }) async {
    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.commim_uaa,
    );

    final req = EditAddressReq(address: address);

    RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/EditAddress',
      req,
      pbCommData,
    ).then((value) {
      if (value.statusCode == 200) {
        final rsp = EditAddressReq()..mergeFromBuffer(value.bodyBytes);
        if (null != callback) {
          callback();
        }
      } else {
        if (null != onError) {
          onError();
        }
      }
    }).catchError((err) {
      LoggerManager().debug('$err');
      if (null != onError) {
        onError();
      }
    });
  }

  Future<void> deleteUserAddress(
    UserAddress address, {
    Function()? callback,
    Function()? onError,
  }) async {
    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.commim_uaa,
    );

    final req = DelAddressReq(id: address.id);

    RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/DelAddress',
      req,
      pbCommData,
    ).then((value) {
      if (value.statusCode == 200) {
        final rsp = CommRsp()..mergeFromBuffer(value.bodyBytes);
        if (null != callback) {
          callback();
        }
      } else {
        if (null != onError) {
          onError();
        }
      }
    }).catchError((err) {
      LoggerManager().debug('$err');
      if (null != onError) {
        onError();
      }
    });
  }

  Future<void> fetchDefaultAddress({
    Function(UserAddress)? callback,
    Function()? onError,
  }) async {
    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.commim_uaa,
    );

    final req = FetchDefaultAddressReq();

    RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/FetchDefaultAddress',
      req,
      pbCommData,
    ).then((value) {
      if (value.statusCode == 200) {
        final rsp = FetchDefaultAddressRsp()..mergeFromBuffer(value.bodyBytes);
        if (null != callback) {
          callback(rsp.address);
        }
      } else {
        if (null != onError) {
          onError();
        }
      }
    }).catchError((err) {
      LoggerManager().debug('$err');
      if (null != onError) {
        onError();
      }
    });
  }

  Future<void> getSuggestList({
    required GetSuggestListReq req,
    Function(List<Suggest>)? callback,
    Function()? onError,
  }) async {
    req.pageSize = 10;
    var pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.commim_uaa,
    );
    RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/GetSuggestList',
      req,
      pbCommData,
    ).then((value) {
      final rsp = GetSuggestListRsp()..mergeFromBuffer(value.bodyBytes);
      if (null != callback) {
        callback(rsp.suggestList);
      }
    }).catchError((err) {
      if (null != onError) {
        onError();
      }
    });
  }

  Future<void> getSigninTaskInfo({
    Function(TaskSignUpInfoRsp)? callback,
    Function()? onError,
  }) async {
    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.commim_uaa,
    );

    final req = TaskSignUpInfoReq();

    RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/TaskSignUpInfo',
      req,
      pbCommData,
      loading: true,
      showToast: true,
    ).then((value) {
      if (value.statusCode == 200) {
        final rsp = TaskSignUpInfoRsp()..mergeFromBuffer(value.bodyBytes);
        LoggerManager().error(
          'TaskSignUpInfoRsp =======> ${rsp.toString()}',
        );
        // Task task = rsp.task;
        // for (final item in task.awards) {
        //   LoggerManager().error(
        //       'task award item name: ${item.name} description: ${item.description} data: ${item.data} icon: ${item.icon}');
        // }
        // for (final item in task.subTask) {
        //   LoggerManager().error(
        //       'task award item name: ${item.name} description: ${item.description} status: ${item.status} value: ${item.toString()}');
        // }
        callback?.call(rsp);
      } else {
        if (null != onError) {
          onError();
        }
      }
    }).catchError((err) {
      LoggerManager().debug('getSigninTaskInfo error $err');
      if (null != onError) {
        onError();
      }
    });
  }

  Future<void> getWalletInfo({
    Function(WalletGetInfoRsp)? callback,
    Function()? onError,
  }) async {
    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.commim_uaa,
    );

    final req = WalletGetInfoReq(
      userId: Int64(AppUserInfo.instance.imId),
    );

    RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/WalletGetInfo',
      req,
      pbCommData,
    ).then((value) {
      if (value.statusCode == 200) {
        final rsp = WalletGetInfoRsp()..mergeFromBuffer(value.bodyBytes);
        LoggerManager().error('getWalletInfo =======> ${rsp.toString()}');
        callback?.call(rsp);
      } else {
        onError?.call();
      }
    }).catchError((err) {
      LoggerManager().debug('getWalletInfo error $err');
      onError?.call();
    });
  }

  Future<void> getSignInStatus({
    Function(TaskSignUpStatusRsp)? callback,
    Function()? onError,
  }) async {
    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.commim_uaa,
    );

    final req = TaskSignUpStatusReq();

    RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/TaskSignUpStatus',
      req,
      pbCommData,
    ).then((value) {
      if (value.statusCode == 200) {
        final rsp = TaskSignUpStatusRsp()..mergeFromBuffer(value.bodyBytes);
        LoggerManager().error('TaskSignUpStatus =======> ${rsp.toString()}');
        callback?.call(rsp);
      } else {
        onError?.call();
      }
    }).catchError((err) {
      LoggerManager().debug('getSigninStatus error $err');
      onError?.call();
    });
  }

  Future<void> getCardList(
    int page, {
    int pageSize = 10,
    Function(List<Card>)? callback,
    Function()? onError,
  }) async {
    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.commim_uaa,
    );

    final req = GetCardPackageItemsReq(page: page, pageSize: pageSize);

    RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/GetCardPackageItems',
      req,
      pbCommData,
    ).then((value) {
      if (value.statusCode == 200) {
        final rsp = GetCardPackageItemsRsp()..mergeFromBuffer(value.bodyBytes);
        LoggerManager().error('getCardList =======> ${rsp.toString()}');
        callback?.call(rsp.cardItems);
      } else {
        if (null != onError) {
          onError();
        }
      }
    }).catchError((err) {
      LoggerManager().debug('getCardList error $err');
      if (null != onError) {
        onError();
      }
    });
  }

  Future<void> signUp({
    Function(TaskSignUpRsp)? callback,
    Function()? onError,
  }) async {
    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.commim_uaa,
    );

    final req = TaskSignUpReq();

    RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/TaskSignUp',
      req,
      pbCommData,
      showToast: true,
      loading: true,
    ).then((value) {
      if (value.statusCode == 200) {
        final rsp = TaskSignUpRsp()..mergeFromBuffer(value.bodyBytes);
        rsp.awards;
        LoggerManager().error('signUp =======> ${rsp.toString()}');
        callback?.call(rsp);
      } else {
        onError?.call();
      }
    }).catchError((err) {
      LoggerManager().debug('signUp error $err');
      onError?.call();
    });
  }

  Future<void> sendPhoneCode(
    SendPhoneCodeReq sendPhoneCodeReq, {
    Function()? callback,
    Function()? onError,
  }) async {
    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.commim_uaa,
    );
    RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/SendPhoneCode',
      sendPhoneCodeReq,
      pbCommData,
      showToast: true,
      loading: true,
    ).then((value) {
      if (value.statusCode == 200) {
        var commRsp = CommRsp()..mergeFromBuffer(value.bodyBytes);
        if (commRsp.result == ErrCode.SUCCESS) {
          showToast('验证码已发送到您的手机，请注意查收');
          callback?.call();
        } else {
          showToast('发送验证码失败：${commRsp.result}');
          onError?.call();
        }
      } else {
        showToast('发送验证码失败：${value.statusCode}');
        onError?.call();
      }
    }).catchError((err) {
      // 登录错误
      LoggerManager().debug("err:$err");
      showToast('发送验证码失败:$err');
      onError?.call();
    });
  }
}
