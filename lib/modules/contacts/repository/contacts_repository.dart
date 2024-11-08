import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/utils/log/manager.dart';

import '../../../pb/pb_pub/service.pbenum.dart';

class ContactsRepository {
  Future<void> fetchCategoryList({
    required int page,
    Function(List<CategorizeTag>)? callback,
    Function()? onError,
  }) async {
    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.commim_uaa,
    );

    final req = FetchCategorizeTagListReq(
      page: 0,
      pageSize: 10,
    );
    RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/FetchCategorizeTagList',
      req,
      pbCommData,
    ).then((value) {
      if (value.statusCode == 200) {
        final rsp = FetchCategorizeTagListRsp()
          ..mergeFromBuffer(value.bodyBytes);
        if (null != callback) {
          callback(rsp.tagList);
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

  Future<void> addCategory({
    required AddCategorizeTagReq req,
    Function(AddCategorizeTagRsp)? callback,
    Function()? onError,
  }) async {
    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.commim_uaa,
    );

    RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/AddCategorizeTag',
      req,
      pbCommData,
    ).then((value) {
      if (value.statusCode == 200) {
        final rsp = AddCategorizeTagRsp()..mergeFromBuffer(value.bodyBytes);
        for (final item in rsp.member) {
          debugPrint(
              'add label member id: ${item.tagId} - memberId: ${item.memberId}');
        }
        if (null != callback) {
          callback(rsp);
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

  Future<void> editCategory({
    required EditCategorizeTagReq req,
    Function(List<CategorizeTag>)? callback,
    Function()? onError,
  }) async {
    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.commim_uaa,
    );

    RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/EditCategorizeTag',
      req,
      pbCommData,
    ).then((value) {
      if (value.statusCode == 200) {
        final rsp = EditCategorizeTagReq()..mergeFromBuffer(value.bodyBytes);
        if (null != callback) {
          callback([]);
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

  Future<void> deleteCategory({
    required DelCategorizeTagReq req,
    Function()? callback,
    Function()? onError,
  }) async {
    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.commim_uaa,
    );

    RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/DelCategorizeTag',
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

  Future<void> fetchCategoryTagMemberList({
    required int tagId,
    Function(List<CategorizeTagMember>)? callback,
    Function()? onError,
  }) async {
    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.commim_uaa,
    );

    final req = FetchCategorizeTagMemberListReq(
      page: 0,
      pageSize: 10000,
      tagId: Int64(tagId),
    );
    RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/FetchCategorizeTagMemberList',
      req,
      pbCommData,
    ).then((value) {
      if (value.statusCode == 200) {
        final rsp = FetchCategorizeTagMemberListRsp()
          ..mergeFromBuffer(value.bodyBytes);
        for (final item in rsp.memberList) {
          debugPrint(
            'fetchCategoryTagMemberList item id: ${item.tagId} memberId: ${item.memberId}',
          );
        }
        if (null != callback) {
          callback(rsp.memberList);
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
}
