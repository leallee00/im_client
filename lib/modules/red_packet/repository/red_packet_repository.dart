import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:fixnum/fixnum.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/pb/pb_msg/user_center/userCenter.pb.dart' hide FriendInfo;
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pb/pb_pub/service.pbenum.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/utils/log/manager.dart';

class RedPacketRepository {
  Future<void> getRedPacketInfo(
    int redPacketId, {
    Function(RedPacketInfoRsp)? callback,
    Function()? onError,
  }) async {
    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.user_center,
    );

    final req = RedPacketInfoReq(redPacketId: Int64(redPacketId));

    RpcCallImOuterApi(
      '/pb_grpc_userCenter.UserCenter/RedPacketInfo',
      req,
      pbCommData,
      showToast: true,
      loading: true,
    ).then((value) {
      if (value.statusCode == 200) {
        final rsp = RedPacketInfoRsp()..mergeFromBuffer(value.bodyBytes);
        LoggerManager().error('getRedPacketInfo =======> ${rsp.toString()}');
        callback?.call(rsp);
      } else {
        onError?.call();
      }
    }).catchError((err) {
      LoggerManager().debug('getRedPacketInfo error $err');
      onError?.call();
    });
  }

  Future<String> md5Password(
    String data,
  ) async {
    final content = const Utf8Encoder().convert(data);
    final digest = md5.convert(content);
    return digest.toString();
  }

  Future<void> setPayPassword(
    String password, {
    Function()? callback,
    Function()? onError,
  }) async {
    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.user_center,
    );

    final req = WalletSetPasswordReq(
      userId: Int64(AppUserInfo.instance.imId),
      walletType: 0,
      newPassword: await md5Password(password),
    );

    RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/WalletSetPassword',
      req,
      pbCommData,
      showToast: true,
      loading: true,
    ).then((value) {
      if (value.statusCode == 200) {
        final rsp = CommRsp()..mergeFromBuffer(value.bodyBytes);
        callback?.call();
      } else {
        onError?.call();
      }
    }).catchError((err) {
      LoggerManager().debug('setPayPassword error $err');
      onError?.call();
    });
  }

  Future<void> modifyPayPassword(
    String oldPassword,
    String newPassword, {
    Function()? callback,
    Function()? onError,
  }) async {
    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.user_center,
    );

    final req = WalletSetPasswordReq(
      userId: Int64(AppUserInfo.instance.imId),
      walletType: 0,
      oldPassword: await md5Password(oldPassword),
      newPassword: await md5Password(newPassword),
    );

    RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/WalletSetPassword',
      req,
      pbCommData,
      showToast: true,
      loading: true,
    ).then((value) {
      if (value.statusCode == 200) {
        final rsp = CommRsp()..mergeFromBuffer(value.bodyBytes);
        callback?.call();
      } else {
        onError?.call();
      }
    }).catchError((err) {
      LoggerManager().debug('modifyPayPassword error $err');
      onError?.call();
    });
  }

  Future<void> resetPayPassword(
    String password,
    String code, {
    Function()? callback,
    Function()? onError,
  }) async {
    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.user_center,
    );

    final req = WalletSetPasswordReq(
      userId: Int64(AppUserInfo.instance.imId),
      walletType: 0,
      phoneCode: code,
      newPassword: await md5Password(password),
    );

    RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/WalletSetPassword',
      req,
      pbCommData,
      showToast: true,
      loading: true,
    ).then((value) {
      if (value.statusCode == 200) {
        final rsp = CommRsp()..mergeFromBuffer(value.bodyBytes);
        callback?.call();
      } else {
        onError?.call();
      }
    }).catchError((err) {
      LoggerManager().debug('modifyPayPassword error $err');
      onError?.call();
    });
  }

  Future<void> sendRedPacket(
    RedPacketHandOutReq req, {
    Function(RedPacketHandOutRsp)? callback,
    Function()? onError,
  }) async {
    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.user_center,
    );

    RpcCallImOuterApi(
      '/pb_grpc_userCenter.UserCenter/RedPacketHandOut',
      req,
      pbCommData,
      showToast: true,
      loading: true,
    ).then((value) {
      if (value.statusCode == 200) {
        final rsp = RedPacketHandOutRsp()..mergeFromBuffer(value.bodyBytes);
        LoggerManager()
            .error('sendPrivateRedPacket =======> ${rsp.toString()}');
        callback?.call(rsp);
      } else {
        onError?.call();
      }
    }).catchError((err) {
      LoggerManager().debug('sendPrivateRedPacket error $err');
      onError?.call();
    });
  }

  Future<void> getSigninStatus({
    Function(RedPacketInfoRsp)? callback,
    Function()? onError,
  }) async {
    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.user_center,
    );

    final req = RedPacketInfoReq();

    RpcCallAppGateApi(
      '/pb_grpc_userCenter.UserCenter/RedPacketInfo',
      req,
      pbCommData,
    ).then((value) {
      if (value.statusCode == 200) {
        final rsp = RedPacketInfoRsp()..mergeFromBuffer(value.bodyBytes);
        LoggerManager().error('RedPacketInfo =======> ${rsp.toString()}');
        callback?.call(rsp);
      } else {
        onError?.call();
      }
    }).catchError((err) {
      LoggerManager().debug('getSigninStatus error $err');
      onError?.call();
    });
  }

  Future<void> receivePrivateRedPacket(
    RedPacketReceiveReq req, {
    Function(RedPacketReceiveRsp)? callback,
    Function()? onError,
  }) async {
    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.user_center,
    );

    RpcCallImOuterApi(
      '/pb_grpc_userCenter.UserCenter/RedPacketReceive',
      req,
      pbCommData,
      showToast: true,
      loading: true,
    ).then((value) {
      if (value.statusCode == 200) {
        final rsp = RedPacketReceiveRsp()..mergeFromBuffer(value.bodyBytes);
        LoggerManager()
            .error('receivePrivateRedPacket =======> ${rsp.toString()}');
        callback?.call(rsp);
      } else {
        onError?.call();
      }
    }).catchError((err) {
      LoggerManager().debug('receivePrivateRedPacket error $err');
      onError?.call();
    });
  }

  Future<void> getRedPacketReceivedList(
    RedPacketCurFlowReq req, {
    bool showLoading = false,
    Function(List<RedPacketFlowItem>)? callback,
    Function()? onError,
  }) async {
    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.user_center,
    );

    RpcCallImOuterApi(
      '/pb_grpc_userCenter.UserCenter/RedPacketCurFlow',
      req,
      pbCommData,
      showToast: true,
      loading: showLoading,
    ).then((value) {
      if (value.statusCode == 200) {
        final rsp = RedPacketCurFlowRsp()..mergeFromBuffer(value.bodyBytes);
        LoggerManager().error(
          'getRedPacketReceivedList =======> ${rsp.toString()}',
        );
        callback?.call(rsp.items);
      } else {
        onError?.call();
      }
    }).catchError((err) {
      LoggerManager().debug('getRedPacketReceivedList error $err');
      onError?.call();
    });
  }

  Future<void> getBillList(
    int page, {
    Function(List<WalletChangeFlowItem>)? callback,
    Function()? onError,
  }) async {
    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.user_center,
    );

    final req = WalletGetChangeFlowReq(
      page: page,
      pageSize: 10,
    );

    RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/WalletGetChangeFlow',
      req,
      pbCommData,
      showToast: true,
      loading: false,
    ).then((value) {
      if (value.statusCode == 200) {
        final rsp = WalletGetChangeFlowRsp()..mergeFromBuffer(value.bodyBytes);
        for (final item in rsp.items) {
          LoggerManager().debug('getBillList item data ======> $item');
        }
        callback?.call(rsp.items);
      } else {
        onError?.call();
      }
    }).catchError((err) {
      LoggerManager().debug('getBillList error $err');
      onError?.call();
    });
  }
}
