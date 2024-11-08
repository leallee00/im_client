//
//  Generated code. Do not modify.
//  source: pb_grpc/commim_uaa/commim_uaa.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../pb_msg/commim_uaa/commim_uaa.pb.dart' as $0;
import '../../pb_pub/comm.pb.dart' as $1;

export 'commim_uaa.pb.dart';

@$pb.GrpcServiceName('pb_grpc_commim_uaa.UAA')
class UAAClient extends $grpc.Client {
  static final _$checkAccountExist = $grpc.ClientMethod<$0.CheckAccountExistReq, $0.CheckAccountExistRsp>(
      '/pb_grpc_commim_uaa.UAA/CheckAccountExist',
      ($0.CheckAccountExistReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CheckAccountExistRsp.fromBuffer(value));
  static final _$sendPhoneCode = $grpc.ClientMethod<$0.SendPhoneCodeReq, $1.CommRsp>(
      '/pb_grpc_commim_uaa.UAA/SendPhoneCode',
      ($0.SendPhoneCodeReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CommRsp.fromBuffer(value));
  static final _$sendEmailCode = $grpc.ClientMethod<$0.SendEmailCodeReq, $1.CommRsp>(
      '/pb_grpc_commim_uaa.UAA/SendEmailCode',
      ($0.SendEmailCodeReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CommRsp.fromBuffer(value));
  static final _$signup = $grpc.ClientMethod<$0.SignupReq, $0.SignupRsp>(
      '/pb_grpc_commim_uaa.UAA/Signup',
      ($0.SignupReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SignupRsp.fromBuffer(value));
  static final _$login = $grpc.ClientMethod<$0.LoginReq, $0.LoginRsp>(
      '/pb_grpc_commim_uaa.UAA/Login',
      ($0.LoginReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LoginRsp.fromBuffer(value));
  static final _$updateUserInfo = $grpc.ClientMethod<$0.UpdateUserInfoReq, $0.UpdateUserInfoRsp>(
      '/pb_grpc_commim_uaa.UAA/UpdateUserInfo',
      ($0.UpdateUserInfoReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateUserInfoRsp.fromBuffer(value));
  static final _$userInfo = $grpc.ClientMethod<$0.UserInfoReq, $0.UserInfoRsp>(
      '/pb_grpc_commim_uaa.UAA/UserInfo',
      ($0.UserInfoReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserInfoRsp.fromBuffer(value));
  static final _$findUserInfoIntell = $grpc.ClientMethod<$0.FindUserInfoIntellReq, $0.UserInfoRsp>(
      '/pb_grpc_commim_uaa.UAA/FindUserInfoIntell',
      ($0.FindUserInfoIntellReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserInfoRsp.fromBuffer(value));
  static final _$addSuggest = $grpc.ClientMethod<$0.AddSuggestReq, $0.AddSuggestRsp>(
      '/pb_grpc_commim_uaa.UAA/AddSuggest',
      ($0.AddSuggestReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AddSuggestRsp.fromBuffer(value));
  static final _$getSuggestList = $grpc.ClientMethod<$0.GetSuggestListReq, $0.GetSuggestListRsp>(
      '/pb_grpc_commim_uaa.UAA/GetSuggestList',
      ($0.GetSuggestListReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetSuggestListRsp.fromBuffer(value));
  static final _$getSuggestDetail = $grpc.ClientMethod<$0.GetSuggestDetailReq, $0.GetSuggestDetailRsp>(
      '/pb_grpc_commim_uaa.UAA/GetSuggestDetail',
      ($0.GetSuggestDetailReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetSuggestDetailRsp.fromBuffer(value));
  static final _$addSuggestReply = $grpc.ClientMethod<$0.AddSuggestReplyReq, $0.AddSuggestReplyRsp>(
      '/pb_grpc_commim_uaa.UAA/AddSuggestReply',
      ($0.AddSuggestReplyReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AddSuggestReplyRsp.fromBuffer(value));
  static final _$getSuggestReplyList = $grpc.ClientMethod<$0.GetSuggestReplyListReq, $0.GetSuggestReplyListRsp>(
      '/pb_grpc_commim_uaa.UAA/GetSuggestReplyList',
      ($0.GetSuggestReplyListReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetSuggestReplyListRsp.fromBuffer(value));
  static final _$setSuggestStatus = $grpc.ClientMethod<$0.SetSuggestStatusReq, $0.SetSuggestReplyStatusRsp>(
      '/pb_grpc_commim_uaa.UAA/SetSuggestStatus',
      ($0.SetSuggestStatusReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SetSuggestReplyStatusRsp.fromBuffer(value));
  static final _$checkVersion = $grpc.ClientMethod<$0.CheckVersionReq, $0.CheckVersionRsp>(
      '/pb_grpc_commim_uaa.UAA/CheckVersion',
      ($0.CheckVersionReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CheckVersionRsp.fromBuffer(value));
  static final _$fetchEndPoint = $grpc.ClientMethod<$0.FetchEndPointReq, $0.FetchEndPointRsp>(
      '/pb_grpc_commim_uaa.UAA/FetchEndPoint',
      ($0.FetchEndPointReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FetchEndPointRsp.fromBuffer(value));
  static final _$checkDelay = $grpc.ClientMethod<$0.CheckDelayReq, $0.CheckDelayRsp>(
      '/pb_grpc_commim_uaa.UAA/CheckDelay',
      ($0.CheckDelayReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CheckDelayRsp.fromBuffer(value));
  static final _$getSysCfg = $grpc.ClientMethod<$0.GetSysCfgReq, $0.GetSysCfgRsp>(
      '/pb_grpc_commim_uaa.UAA/GetSysCfg',
      ($0.GetSysCfgReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetSysCfgRsp.fromBuffer(value));
  static final _$imLoginConfirm = $grpc.ClientMethod<$0.ImLoginConfirmReq, $0.ImLoginConfirmRsp>(
      '/pb_grpc_commim_uaa.UAA/ImLoginConfirm',
      ($0.ImLoginConfirmReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ImLoginConfirmRsp.fromBuffer(value));
  static final _$resetPassword = $grpc.ClientMethod<$0.ResetPasswordReq, $0.ResetPasswordRsp>(
      '/pb_grpc_commim_uaa.UAA/ResetPassword',
      ($0.ResetPasswordReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ResetPasswordRsp.fromBuffer(value));
  static final _$unregister = $grpc.ClientMethod<$0.UnregisterReq, $1.CommRsp>(
      '/pb_grpc_commim_uaa.UAA/Unregister',
      ($0.UnregisterReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CommRsp.fromBuffer(value));
  static final _$addAddress = $grpc.ClientMethod<$0.AddAddressReq, $0.AddAddressRsp>(
      '/pb_grpc_commim_uaa.UAA/AddAddress',
      ($0.AddAddressReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AddAddressRsp.fromBuffer(value));
  static final _$delAddress = $grpc.ClientMethod<$0.DelAddressReq, $1.CommRsp>(
      '/pb_grpc_commim_uaa.UAA/DelAddress',
      ($0.DelAddressReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CommRsp.fromBuffer(value));
  static final _$editAddress = $grpc.ClientMethod<$0.EditAddressReq, $1.CommRsp>(
      '/pb_grpc_commim_uaa.UAA/EditAddress',
      ($0.EditAddressReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CommRsp.fromBuffer(value));
  static final _$fetchAddress = $grpc.ClientMethod<$0.FetchAddressReq, $0.FetchAddressRsp>(
      '/pb_grpc_commim_uaa.UAA/FetchAddress',
      ($0.FetchAddressReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FetchAddressRsp.fromBuffer(value));
  static final _$fetchDefaultAddress = $grpc.ClientMethod<$0.FetchDefaultAddressReq, $0.FetchDefaultAddressRsp>(
      '/pb_grpc_commim_uaa.UAA/FetchDefaultAddress',
      ($0.FetchDefaultAddressReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FetchDefaultAddressRsp.fromBuffer(value));
  static final _$fetchAddressList = $grpc.ClientMethod<$0.FetchAddressListReq, $0.FetchAddressListRsp>(
      '/pb_grpc_commim_uaa.UAA/FetchAddressList',
      ($0.FetchAddressListReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FetchAddressListRsp.fromBuffer(value));
  static final _$addCategorizeTag = $grpc.ClientMethod<$0.AddCategorizeTagReq, $0.AddCategorizeTagRsp>(
      '/pb_grpc_commim_uaa.UAA/AddCategorizeTag',
      ($0.AddCategorizeTagReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AddCategorizeTagRsp.fromBuffer(value));
  static final _$delCategorizeTag = $grpc.ClientMethod<$0.DelCategorizeTagReq, $1.CommRsp>(
      '/pb_grpc_commim_uaa.UAA/DelCategorizeTag',
      ($0.DelCategorizeTagReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CommRsp.fromBuffer(value));
  static final _$editCategorizeTag = $grpc.ClientMethod<$0.EditCategorizeTagReq, $1.CommRsp>(
      '/pb_grpc_commim_uaa.UAA/EditCategorizeTag',
      ($0.EditCategorizeTagReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CommRsp.fromBuffer(value));
  static final _$fetchCategorizeTagList = $grpc.ClientMethod<$0.FetchCategorizeTagListReq, $0.FetchCategorizeTagListRsp>(
      '/pb_grpc_commim_uaa.UAA/FetchCategorizeTagList',
      ($0.FetchCategorizeTagListReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FetchCategorizeTagListRsp.fromBuffer(value));
  static final _$addCategorizeTagMember = $grpc.ClientMethod<$0.AddCategorizeTagMemberReq, $0.AddCategorizeTagMemberRsp>(
      '/pb_grpc_commim_uaa.UAA/AddCategorizeTagMember',
      ($0.AddCategorizeTagMemberReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AddCategorizeTagMemberRsp.fromBuffer(value));
  static final _$delCategorizeTagMember = $grpc.ClientMethod<$0.DelCategorizeTagMemberReq, $1.CommRsp>(
      '/pb_grpc_commim_uaa.UAA/DelCategorizeTagMember',
      ($0.DelCategorizeTagMemberReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CommRsp.fromBuffer(value));
  static final _$fetchCategorizeTagMemberList = $grpc.ClientMethod<$0.FetchCategorizeTagMemberListReq, $0.FetchCategorizeTagMemberListRsp>(
      '/pb_grpc_commim_uaa.UAA/FetchCategorizeTagMemberList',
      ($0.FetchCategorizeTagMemberListReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FetchCategorizeTagMemberListRsp.fromBuffer(value));
  static final _$addBackgroundPic = $grpc.ClientMethod<$0.AddBackgroundReq, $0.AddBackgroundRsp>(
      '/pb_grpc_commim_uaa.UAA/AddBackgroundPic',
      ($0.AddBackgroundReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AddBackgroundRsp.fromBuffer(value));
  static final _$delBackgroundPic = $grpc.ClientMethod<$0.DelBackgroundPicReq, $0.DelBackgroundRsp>(
      '/pb_grpc_commim_uaa.UAA/DelBackgroundPic',
      ($0.DelBackgroundPicReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DelBackgroundRsp.fromBuffer(value));
  static final _$fetchBackgroundPicList = $grpc.ClientMethod<$0.FetchBackgroundPicListReq, $0.FetchBackgroundPicListRsp>(
      '/pb_grpc_commim_uaa.UAA/FetchBackgroundPicList',
      ($0.FetchBackgroundPicListReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FetchBackgroundPicListRsp.fromBuffer(value));
  static final _$walletGetInfo = $grpc.ClientMethod<$0.WalletGetInfoReq, $0.WalletGetInfoRsp>(
      '/pb_grpc_commim_uaa.UAA/WalletGetInfo',
      ($0.WalletGetInfoReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.WalletGetInfoRsp.fromBuffer(value));
  static final _$walletAddValue = $grpc.ClientMethod<$0.WalletAddValueReq, $0.WalletAddValueRsp>(
      '/pb_grpc_commim_uaa.UAA/WalletAddValue',
      ($0.WalletAddValueReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.WalletAddValueRsp.fromBuffer(value));
  static final _$walletReduceValue = $grpc.ClientMethod<$0.WalletReduceValueReq, $0.WalletReduceValueRsp>(
      '/pb_grpc_commim_uaa.UAA/WalletReduceValue',
      ($0.WalletReduceValueReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.WalletReduceValueRsp.fromBuffer(value));
  static final _$walletSetPassword = $grpc.ClientMethod<$0.WalletSetPasswordReq, $1.CommRsp>(
      '/pb_grpc_commim_uaa.UAA/WalletSetPassword',
      ($0.WalletSetPasswordReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CommRsp.fromBuffer(value));
  static final _$walletGetChangeFlow = $grpc.ClientMethod<$0.WalletGetChangeFlowReq, $0.WalletGetChangeFlowRsp>(
      '/pb_grpc_commim_uaa.UAA/WalletGetChangeFlow',
      ($0.WalletGetChangeFlowReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.WalletGetChangeFlowRsp.fromBuffer(value));
  static final _$getCardPackageItems = $grpc.ClientMethod<$0.GetCardPackageItemsReq, $0.GetCardPackageItemsRsp>(
      '/pb_grpc_commim_uaa.UAA/GetCardPackageItems',
      ($0.GetCardPackageItemsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetCardPackageItemsRsp.fromBuffer(value));
  static final _$taskSignUp = $grpc.ClientMethod<$0.TaskSignUpReq, $0.TaskSignUpRsp>(
      '/pb_grpc_commim_uaa.UAA/TaskSignUp',
      ($0.TaskSignUpReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TaskSignUpRsp.fromBuffer(value));
  static final _$taskSignUpStatus = $grpc.ClientMethod<$0.TaskSignUpStatusReq, $0.TaskSignUpStatusRsp>(
      '/pb_grpc_commim_uaa.UAA/TaskSignUpStatus',
      ($0.TaskSignUpStatusReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TaskSignUpStatusRsp.fromBuffer(value));
  static final _$taskSignUpInfo = $grpc.ClientMethod<$0.TaskSignUpInfoReq, $0.TaskSignUpInfoRsp>(
      '/pb_grpc_commim_uaa.UAA/TaskSignUpInfo',
      ($0.TaskSignUpInfoReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TaskSignUpInfoRsp.fromBuffer(value));

  UAAClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.CheckAccountExistRsp> checkAccountExist($0.CheckAccountExistReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkAccountExist, request, options: options);
  }

  $grpc.ResponseFuture<$1.CommRsp> sendPhoneCode($0.SendPhoneCodeReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendPhoneCode, request, options: options);
  }

  $grpc.ResponseFuture<$1.CommRsp> sendEmailCode($0.SendEmailCodeReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendEmailCode, request, options: options);
  }

  $grpc.ResponseFuture<$0.SignupRsp> signup($0.SignupReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signup, request, options: options);
  }

  $grpc.ResponseFuture<$0.LoginRsp> login($0.LoginReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateUserInfoRsp> updateUserInfo($0.UpdateUserInfoReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUserInfo, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserInfoRsp> userInfo($0.UserInfoReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userInfo, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserInfoRsp> findUserInfoIntell($0.FindUserInfoIntellReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$findUserInfoIntell, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddSuggestRsp> addSuggest($0.AddSuggestReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSuggest, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetSuggestListRsp> getSuggestList($0.GetSuggestListReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSuggestList, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetSuggestDetailRsp> getSuggestDetail($0.GetSuggestDetailReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSuggestDetail, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddSuggestReplyRsp> addSuggestReply($0.AddSuggestReplyReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSuggestReply, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetSuggestReplyListRsp> getSuggestReplyList($0.GetSuggestReplyListReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSuggestReplyList, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetSuggestReplyStatusRsp> setSuggestStatus($0.SetSuggestStatusReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setSuggestStatus, request, options: options);
  }

  $grpc.ResponseFuture<$0.CheckVersionRsp> checkVersion($0.CheckVersionReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkVersion, request, options: options);
  }

  $grpc.ResponseFuture<$0.FetchEndPointRsp> fetchEndPoint($0.FetchEndPointReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchEndPoint, request, options: options);
  }

  $grpc.ResponseFuture<$0.CheckDelayRsp> checkDelay($0.CheckDelayReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkDelay, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetSysCfgRsp> getSysCfg($0.GetSysCfgReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSysCfg, request, options: options);
  }

  $grpc.ResponseFuture<$0.ImLoginConfirmRsp> imLoginConfirm($0.ImLoginConfirmReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$imLoginConfirm, request, options: options);
  }

  $grpc.ResponseFuture<$0.ResetPasswordRsp> resetPassword($0.ResetPasswordReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$resetPassword, request, options: options);
  }

  $grpc.ResponseFuture<$1.CommRsp> unregister($0.UnregisterReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unregister, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddAddressRsp> addAddress($0.AddAddressReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addAddress, request, options: options);
  }

  $grpc.ResponseFuture<$1.CommRsp> delAddress($0.DelAddressReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delAddress, request, options: options);
  }

  $grpc.ResponseFuture<$1.CommRsp> editAddress($0.EditAddressReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editAddress, request, options: options);
  }

  $grpc.ResponseFuture<$0.FetchAddressRsp> fetchAddress($0.FetchAddressReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchAddress, request, options: options);
  }

  $grpc.ResponseFuture<$0.FetchDefaultAddressRsp> fetchDefaultAddress($0.FetchDefaultAddressReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchDefaultAddress, request, options: options);
  }

  $grpc.ResponseFuture<$0.FetchAddressListRsp> fetchAddressList($0.FetchAddressListReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchAddressList, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddCategorizeTagRsp> addCategorizeTag($0.AddCategorizeTagReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addCategorizeTag, request, options: options);
  }

  $grpc.ResponseFuture<$1.CommRsp> delCategorizeTag($0.DelCategorizeTagReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delCategorizeTag, request, options: options);
  }

  $grpc.ResponseFuture<$1.CommRsp> editCategorizeTag($0.EditCategorizeTagReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editCategorizeTag, request, options: options);
  }

  $grpc.ResponseFuture<$0.FetchCategorizeTagListRsp> fetchCategorizeTagList($0.FetchCategorizeTagListReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchCategorizeTagList, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddCategorizeTagMemberRsp> addCategorizeTagMember($0.AddCategorizeTagMemberReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addCategorizeTagMember, request, options: options);
  }

  $grpc.ResponseFuture<$1.CommRsp> delCategorizeTagMember($0.DelCategorizeTagMemberReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delCategorizeTagMember, request, options: options);
  }

  $grpc.ResponseFuture<$0.FetchCategorizeTagMemberListRsp> fetchCategorizeTagMemberList($0.FetchCategorizeTagMemberListReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchCategorizeTagMemberList, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddBackgroundRsp> addBackgroundPic($0.AddBackgroundReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addBackgroundPic, request, options: options);
  }

  $grpc.ResponseFuture<$0.DelBackgroundRsp> delBackgroundPic($0.DelBackgroundPicReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delBackgroundPic, request, options: options);
  }

  $grpc.ResponseFuture<$0.FetchBackgroundPicListRsp> fetchBackgroundPicList($0.FetchBackgroundPicListReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchBackgroundPicList, request, options: options);
  }

  $grpc.ResponseFuture<$0.WalletGetInfoRsp> walletGetInfo($0.WalletGetInfoReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$walletGetInfo, request, options: options);
  }

  $grpc.ResponseFuture<$0.WalletAddValueRsp> walletAddValue($0.WalletAddValueReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$walletAddValue, request, options: options);
  }

  $grpc.ResponseFuture<$0.WalletReduceValueRsp> walletReduceValue($0.WalletReduceValueReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$walletReduceValue, request, options: options);
  }

  $grpc.ResponseFuture<$1.CommRsp> walletSetPassword($0.WalletSetPasswordReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$walletSetPassword, request, options: options);
  }

  $grpc.ResponseFuture<$0.WalletGetChangeFlowRsp> walletGetChangeFlow($0.WalletGetChangeFlowReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$walletGetChangeFlow, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetCardPackageItemsRsp> getCardPackageItems($0.GetCardPackageItemsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCardPackageItems, request, options: options);
  }

  $grpc.ResponseFuture<$0.TaskSignUpRsp> taskSignUp($0.TaskSignUpReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$taskSignUp, request, options: options);
  }

  $grpc.ResponseFuture<$0.TaskSignUpStatusRsp> taskSignUpStatus($0.TaskSignUpStatusReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$taskSignUpStatus, request, options: options);
  }

  $grpc.ResponseFuture<$0.TaskSignUpInfoRsp> taskSignUpInfo($0.TaskSignUpInfoReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$taskSignUpInfo, request, options: options);
  }
}

@$pb.GrpcServiceName('pb_grpc_commim_uaa.UAA')
abstract class UAAServiceBase extends $grpc.Service {
  $core.String get $name => 'pb_grpc_commim_uaa.UAA';

  UAAServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CheckAccountExistReq, $0.CheckAccountExistRsp>(
        'CheckAccountExist',
        checkAccountExist_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CheckAccountExistReq.fromBuffer(value),
        ($0.CheckAccountExistRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SendPhoneCodeReq, $1.CommRsp>(
        'SendPhoneCode',
        sendPhoneCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SendPhoneCodeReq.fromBuffer(value),
        ($1.CommRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SendEmailCodeReq, $1.CommRsp>(
        'SendEmailCode',
        sendEmailCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SendEmailCodeReq.fromBuffer(value),
        ($1.CommRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SignupReq, $0.SignupRsp>(
        'Signup',
        signup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SignupReq.fromBuffer(value),
        ($0.SignupRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LoginReq, $0.LoginRsp>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoginReq.fromBuffer(value),
        ($0.LoginRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateUserInfoReq, $0.UpdateUserInfoRsp>(
        'UpdateUserInfo',
        updateUserInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateUserInfoReq.fromBuffer(value),
        ($0.UpdateUserInfoRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserInfoReq, $0.UserInfoRsp>(
        'UserInfo',
        userInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserInfoReq.fromBuffer(value),
        ($0.UserInfoRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FindUserInfoIntellReq, $0.UserInfoRsp>(
        'FindUserInfoIntell',
        findUserInfoIntell_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FindUserInfoIntellReq.fromBuffer(value),
        ($0.UserInfoRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddSuggestReq, $0.AddSuggestRsp>(
        'AddSuggest',
        addSuggest_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddSuggestReq.fromBuffer(value),
        ($0.AddSuggestRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetSuggestListReq, $0.GetSuggestListRsp>(
        'GetSuggestList',
        getSuggestList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetSuggestListReq.fromBuffer(value),
        ($0.GetSuggestListRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetSuggestDetailReq, $0.GetSuggestDetailRsp>(
        'GetSuggestDetail',
        getSuggestDetail_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetSuggestDetailReq.fromBuffer(value),
        ($0.GetSuggestDetailRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddSuggestReplyReq, $0.AddSuggestReplyRsp>(
        'AddSuggestReply',
        addSuggestReply_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddSuggestReplyReq.fromBuffer(value),
        ($0.AddSuggestReplyRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetSuggestReplyListReq, $0.GetSuggestReplyListRsp>(
        'GetSuggestReplyList',
        getSuggestReplyList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetSuggestReplyListReq.fromBuffer(value),
        ($0.GetSuggestReplyListRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetSuggestStatusReq, $0.SetSuggestReplyStatusRsp>(
        'SetSuggestStatus',
        setSuggestStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetSuggestStatusReq.fromBuffer(value),
        ($0.SetSuggestReplyStatusRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CheckVersionReq, $0.CheckVersionRsp>(
        'CheckVersion',
        checkVersion_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CheckVersionReq.fromBuffer(value),
        ($0.CheckVersionRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FetchEndPointReq, $0.FetchEndPointRsp>(
        'FetchEndPoint',
        fetchEndPoint_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FetchEndPointReq.fromBuffer(value),
        ($0.FetchEndPointRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CheckDelayReq, $0.CheckDelayRsp>(
        'CheckDelay',
        checkDelay_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CheckDelayReq.fromBuffer(value),
        ($0.CheckDelayRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetSysCfgReq, $0.GetSysCfgRsp>(
        'GetSysCfg',
        getSysCfg_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetSysCfgReq.fromBuffer(value),
        ($0.GetSysCfgRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ImLoginConfirmReq, $0.ImLoginConfirmRsp>(
        'ImLoginConfirm',
        imLoginConfirm_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ImLoginConfirmReq.fromBuffer(value),
        ($0.ImLoginConfirmRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ResetPasswordReq, $0.ResetPasswordRsp>(
        'ResetPassword',
        resetPassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ResetPasswordReq.fromBuffer(value),
        ($0.ResetPasswordRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UnregisterReq, $1.CommRsp>(
        'Unregister',
        unregister_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UnregisterReq.fromBuffer(value),
        ($1.CommRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddAddressReq, $0.AddAddressRsp>(
        'AddAddress',
        addAddress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddAddressReq.fromBuffer(value),
        ($0.AddAddressRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DelAddressReq, $1.CommRsp>(
        'DelAddress',
        delAddress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DelAddressReq.fromBuffer(value),
        ($1.CommRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EditAddressReq, $1.CommRsp>(
        'EditAddress',
        editAddress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EditAddressReq.fromBuffer(value),
        ($1.CommRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FetchAddressReq, $0.FetchAddressRsp>(
        'FetchAddress',
        fetchAddress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FetchAddressReq.fromBuffer(value),
        ($0.FetchAddressRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FetchDefaultAddressReq, $0.FetchDefaultAddressRsp>(
        'FetchDefaultAddress',
        fetchDefaultAddress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FetchDefaultAddressReq.fromBuffer(value),
        ($0.FetchDefaultAddressRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FetchAddressListReq, $0.FetchAddressListRsp>(
        'FetchAddressList',
        fetchAddressList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FetchAddressListReq.fromBuffer(value),
        ($0.FetchAddressListRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddCategorizeTagReq, $0.AddCategorizeTagRsp>(
        'AddCategorizeTag',
        addCategorizeTag_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddCategorizeTagReq.fromBuffer(value),
        ($0.AddCategorizeTagRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DelCategorizeTagReq, $1.CommRsp>(
        'DelCategorizeTag',
        delCategorizeTag_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DelCategorizeTagReq.fromBuffer(value),
        ($1.CommRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EditCategorizeTagReq, $1.CommRsp>(
        'EditCategorizeTag',
        editCategorizeTag_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EditCategorizeTagReq.fromBuffer(value),
        ($1.CommRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FetchCategorizeTagListReq, $0.FetchCategorizeTagListRsp>(
        'FetchCategorizeTagList',
        fetchCategorizeTagList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FetchCategorizeTagListReq.fromBuffer(value),
        ($0.FetchCategorizeTagListRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddCategorizeTagMemberReq, $0.AddCategorizeTagMemberRsp>(
        'AddCategorizeTagMember',
        addCategorizeTagMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddCategorizeTagMemberReq.fromBuffer(value),
        ($0.AddCategorizeTagMemberRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DelCategorizeTagMemberReq, $1.CommRsp>(
        'DelCategorizeTagMember',
        delCategorizeTagMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DelCategorizeTagMemberReq.fromBuffer(value),
        ($1.CommRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FetchCategorizeTagMemberListReq, $0.FetchCategorizeTagMemberListRsp>(
        'FetchCategorizeTagMemberList',
        fetchCategorizeTagMemberList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FetchCategorizeTagMemberListReq.fromBuffer(value),
        ($0.FetchCategorizeTagMemberListRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddBackgroundReq, $0.AddBackgroundRsp>(
        'AddBackgroundPic',
        addBackgroundPic_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddBackgroundReq.fromBuffer(value),
        ($0.AddBackgroundRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DelBackgroundPicReq, $0.DelBackgroundRsp>(
        'DelBackgroundPic',
        delBackgroundPic_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DelBackgroundPicReq.fromBuffer(value),
        ($0.DelBackgroundRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FetchBackgroundPicListReq, $0.FetchBackgroundPicListRsp>(
        'FetchBackgroundPicList',
        fetchBackgroundPicList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FetchBackgroundPicListReq.fromBuffer(value),
        ($0.FetchBackgroundPicListRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.WalletGetInfoReq, $0.WalletGetInfoRsp>(
        'WalletGetInfo',
        walletGetInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.WalletGetInfoReq.fromBuffer(value),
        ($0.WalletGetInfoRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.WalletAddValueReq, $0.WalletAddValueRsp>(
        'WalletAddValue',
        walletAddValue_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.WalletAddValueReq.fromBuffer(value),
        ($0.WalletAddValueRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.WalletReduceValueReq, $0.WalletReduceValueRsp>(
        'WalletReduceValue',
        walletReduceValue_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.WalletReduceValueReq.fromBuffer(value),
        ($0.WalletReduceValueRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.WalletSetPasswordReq, $1.CommRsp>(
        'WalletSetPassword',
        walletSetPassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.WalletSetPasswordReq.fromBuffer(value),
        ($1.CommRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.WalletGetChangeFlowReq, $0.WalletGetChangeFlowRsp>(
        'WalletGetChangeFlow',
        walletGetChangeFlow_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.WalletGetChangeFlowReq.fromBuffer(value),
        ($0.WalletGetChangeFlowRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetCardPackageItemsReq, $0.GetCardPackageItemsRsp>(
        'GetCardPackageItems',
        getCardPackageItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetCardPackageItemsReq.fromBuffer(value),
        ($0.GetCardPackageItemsRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TaskSignUpReq, $0.TaskSignUpRsp>(
        'TaskSignUp',
        taskSignUp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TaskSignUpReq.fromBuffer(value),
        ($0.TaskSignUpRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TaskSignUpStatusReq, $0.TaskSignUpStatusRsp>(
        'TaskSignUpStatus',
        taskSignUpStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TaskSignUpStatusReq.fromBuffer(value),
        ($0.TaskSignUpStatusRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TaskSignUpInfoReq, $0.TaskSignUpInfoRsp>(
        'TaskSignUpInfo',
        taskSignUpInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TaskSignUpInfoReq.fromBuffer(value),
        ($0.TaskSignUpInfoRsp value) => value.writeToBuffer()));
  }

  $async.Future<$0.CheckAccountExistRsp> checkAccountExist_Pre($grpc.ServiceCall call, $async.Future<$0.CheckAccountExistReq> request) async {
    return checkAccountExist(call, await request);
  }

  $async.Future<$1.CommRsp> sendPhoneCode_Pre($grpc.ServiceCall call, $async.Future<$0.SendPhoneCodeReq> request) async {
    return sendPhoneCode(call, await request);
  }

  $async.Future<$1.CommRsp> sendEmailCode_Pre($grpc.ServiceCall call, $async.Future<$0.SendEmailCodeReq> request) async {
    return sendEmailCode(call, await request);
  }

  $async.Future<$0.SignupRsp> signup_Pre($grpc.ServiceCall call, $async.Future<$0.SignupReq> request) async {
    return signup(call, await request);
  }

  $async.Future<$0.LoginRsp> login_Pre($grpc.ServiceCall call, $async.Future<$0.LoginReq> request) async {
    return login(call, await request);
  }

  $async.Future<$0.UpdateUserInfoRsp> updateUserInfo_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateUserInfoReq> request) async {
    return updateUserInfo(call, await request);
  }

  $async.Future<$0.UserInfoRsp> userInfo_Pre($grpc.ServiceCall call, $async.Future<$0.UserInfoReq> request) async {
    return userInfo(call, await request);
  }

  $async.Future<$0.UserInfoRsp> findUserInfoIntell_Pre($grpc.ServiceCall call, $async.Future<$0.FindUserInfoIntellReq> request) async {
    return findUserInfoIntell(call, await request);
  }

  $async.Future<$0.AddSuggestRsp> addSuggest_Pre($grpc.ServiceCall call, $async.Future<$0.AddSuggestReq> request) async {
    return addSuggest(call, await request);
  }

  $async.Future<$0.GetSuggestListRsp> getSuggestList_Pre($grpc.ServiceCall call, $async.Future<$0.GetSuggestListReq> request) async {
    return getSuggestList(call, await request);
  }

  $async.Future<$0.GetSuggestDetailRsp> getSuggestDetail_Pre($grpc.ServiceCall call, $async.Future<$0.GetSuggestDetailReq> request) async {
    return getSuggestDetail(call, await request);
  }

  $async.Future<$0.AddSuggestReplyRsp> addSuggestReply_Pre($grpc.ServiceCall call, $async.Future<$0.AddSuggestReplyReq> request) async {
    return addSuggestReply(call, await request);
  }

  $async.Future<$0.GetSuggestReplyListRsp> getSuggestReplyList_Pre($grpc.ServiceCall call, $async.Future<$0.GetSuggestReplyListReq> request) async {
    return getSuggestReplyList(call, await request);
  }

  $async.Future<$0.SetSuggestReplyStatusRsp> setSuggestStatus_Pre($grpc.ServiceCall call, $async.Future<$0.SetSuggestStatusReq> request) async {
    return setSuggestStatus(call, await request);
  }

  $async.Future<$0.CheckVersionRsp> checkVersion_Pre($grpc.ServiceCall call, $async.Future<$0.CheckVersionReq> request) async {
    return checkVersion(call, await request);
  }

  $async.Future<$0.FetchEndPointRsp> fetchEndPoint_Pre($grpc.ServiceCall call, $async.Future<$0.FetchEndPointReq> request) async {
    return fetchEndPoint(call, await request);
  }

  $async.Future<$0.CheckDelayRsp> checkDelay_Pre($grpc.ServiceCall call, $async.Future<$0.CheckDelayReq> request) async {
    return checkDelay(call, await request);
  }

  $async.Future<$0.GetSysCfgRsp> getSysCfg_Pre($grpc.ServiceCall call, $async.Future<$0.GetSysCfgReq> request) async {
    return getSysCfg(call, await request);
  }

  $async.Future<$0.ImLoginConfirmRsp> imLoginConfirm_Pre($grpc.ServiceCall call, $async.Future<$0.ImLoginConfirmReq> request) async {
    return imLoginConfirm(call, await request);
  }

  $async.Future<$0.ResetPasswordRsp> resetPassword_Pre($grpc.ServiceCall call, $async.Future<$0.ResetPasswordReq> request) async {
    return resetPassword(call, await request);
  }

  $async.Future<$1.CommRsp> unregister_Pre($grpc.ServiceCall call, $async.Future<$0.UnregisterReq> request) async {
    return unregister(call, await request);
  }

  $async.Future<$0.AddAddressRsp> addAddress_Pre($grpc.ServiceCall call, $async.Future<$0.AddAddressReq> request) async {
    return addAddress(call, await request);
  }

  $async.Future<$1.CommRsp> delAddress_Pre($grpc.ServiceCall call, $async.Future<$0.DelAddressReq> request) async {
    return delAddress(call, await request);
  }

  $async.Future<$1.CommRsp> editAddress_Pre($grpc.ServiceCall call, $async.Future<$0.EditAddressReq> request) async {
    return editAddress(call, await request);
  }

  $async.Future<$0.FetchAddressRsp> fetchAddress_Pre($grpc.ServiceCall call, $async.Future<$0.FetchAddressReq> request) async {
    return fetchAddress(call, await request);
  }

  $async.Future<$0.FetchDefaultAddressRsp> fetchDefaultAddress_Pre($grpc.ServiceCall call, $async.Future<$0.FetchDefaultAddressReq> request) async {
    return fetchDefaultAddress(call, await request);
  }

  $async.Future<$0.FetchAddressListRsp> fetchAddressList_Pre($grpc.ServiceCall call, $async.Future<$0.FetchAddressListReq> request) async {
    return fetchAddressList(call, await request);
  }

  $async.Future<$0.AddCategorizeTagRsp> addCategorizeTag_Pre($grpc.ServiceCall call, $async.Future<$0.AddCategorizeTagReq> request) async {
    return addCategorizeTag(call, await request);
  }

  $async.Future<$1.CommRsp> delCategorizeTag_Pre($grpc.ServiceCall call, $async.Future<$0.DelCategorizeTagReq> request) async {
    return delCategorizeTag(call, await request);
  }

  $async.Future<$1.CommRsp> editCategorizeTag_Pre($grpc.ServiceCall call, $async.Future<$0.EditCategorizeTagReq> request) async {
    return editCategorizeTag(call, await request);
  }

  $async.Future<$0.FetchCategorizeTagListRsp> fetchCategorizeTagList_Pre($grpc.ServiceCall call, $async.Future<$0.FetchCategorizeTagListReq> request) async {
    return fetchCategorizeTagList(call, await request);
  }

  $async.Future<$0.AddCategorizeTagMemberRsp> addCategorizeTagMember_Pre($grpc.ServiceCall call, $async.Future<$0.AddCategorizeTagMemberReq> request) async {
    return addCategorizeTagMember(call, await request);
  }

  $async.Future<$1.CommRsp> delCategorizeTagMember_Pre($grpc.ServiceCall call, $async.Future<$0.DelCategorizeTagMemberReq> request) async {
    return delCategorizeTagMember(call, await request);
  }

  $async.Future<$0.FetchCategorizeTagMemberListRsp> fetchCategorizeTagMemberList_Pre($grpc.ServiceCall call, $async.Future<$0.FetchCategorizeTagMemberListReq> request) async {
    return fetchCategorizeTagMemberList(call, await request);
  }

  $async.Future<$0.AddBackgroundRsp> addBackgroundPic_Pre($grpc.ServiceCall call, $async.Future<$0.AddBackgroundReq> request) async {
    return addBackgroundPic(call, await request);
  }

  $async.Future<$0.DelBackgroundRsp> delBackgroundPic_Pre($grpc.ServiceCall call, $async.Future<$0.DelBackgroundPicReq> request) async {
    return delBackgroundPic(call, await request);
  }

  $async.Future<$0.FetchBackgroundPicListRsp> fetchBackgroundPicList_Pre($grpc.ServiceCall call, $async.Future<$0.FetchBackgroundPicListReq> request) async {
    return fetchBackgroundPicList(call, await request);
  }

  $async.Future<$0.WalletGetInfoRsp> walletGetInfo_Pre($grpc.ServiceCall call, $async.Future<$0.WalletGetInfoReq> request) async {
    return walletGetInfo(call, await request);
  }

  $async.Future<$0.WalletAddValueRsp> walletAddValue_Pre($grpc.ServiceCall call, $async.Future<$0.WalletAddValueReq> request) async {
    return walletAddValue(call, await request);
  }

  $async.Future<$0.WalletReduceValueRsp> walletReduceValue_Pre($grpc.ServiceCall call, $async.Future<$0.WalletReduceValueReq> request) async {
    return walletReduceValue(call, await request);
  }

  $async.Future<$1.CommRsp> walletSetPassword_Pre($grpc.ServiceCall call, $async.Future<$0.WalletSetPasswordReq> request) async {
    return walletSetPassword(call, await request);
  }

  $async.Future<$0.WalletGetChangeFlowRsp> walletGetChangeFlow_Pre($grpc.ServiceCall call, $async.Future<$0.WalletGetChangeFlowReq> request) async {
    return walletGetChangeFlow(call, await request);
  }

  $async.Future<$0.GetCardPackageItemsRsp> getCardPackageItems_Pre($grpc.ServiceCall call, $async.Future<$0.GetCardPackageItemsReq> request) async {
    return getCardPackageItems(call, await request);
  }

  $async.Future<$0.TaskSignUpRsp> taskSignUp_Pre($grpc.ServiceCall call, $async.Future<$0.TaskSignUpReq> request) async {
    return taskSignUp(call, await request);
  }

  $async.Future<$0.TaskSignUpStatusRsp> taskSignUpStatus_Pre($grpc.ServiceCall call, $async.Future<$0.TaskSignUpStatusReq> request) async {
    return taskSignUpStatus(call, await request);
  }

  $async.Future<$0.TaskSignUpInfoRsp> taskSignUpInfo_Pre($grpc.ServiceCall call, $async.Future<$0.TaskSignUpInfoReq> request) async {
    return taskSignUpInfo(call, await request);
  }

  $async.Future<$0.CheckAccountExistRsp> checkAccountExist($grpc.ServiceCall call, $0.CheckAccountExistReq request);
  $async.Future<$1.CommRsp> sendPhoneCode($grpc.ServiceCall call, $0.SendPhoneCodeReq request);
  $async.Future<$1.CommRsp> sendEmailCode($grpc.ServiceCall call, $0.SendEmailCodeReq request);
  $async.Future<$0.SignupRsp> signup($grpc.ServiceCall call, $0.SignupReq request);
  $async.Future<$0.LoginRsp> login($grpc.ServiceCall call, $0.LoginReq request);
  $async.Future<$0.UpdateUserInfoRsp> updateUserInfo($grpc.ServiceCall call, $0.UpdateUserInfoReq request);
  $async.Future<$0.UserInfoRsp> userInfo($grpc.ServiceCall call, $0.UserInfoReq request);
  $async.Future<$0.UserInfoRsp> findUserInfoIntell($grpc.ServiceCall call, $0.FindUserInfoIntellReq request);
  $async.Future<$0.AddSuggestRsp> addSuggest($grpc.ServiceCall call, $0.AddSuggestReq request);
  $async.Future<$0.GetSuggestListRsp> getSuggestList($grpc.ServiceCall call, $0.GetSuggestListReq request);
  $async.Future<$0.GetSuggestDetailRsp> getSuggestDetail($grpc.ServiceCall call, $0.GetSuggestDetailReq request);
  $async.Future<$0.AddSuggestReplyRsp> addSuggestReply($grpc.ServiceCall call, $0.AddSuggestReplyReq request);
  $async.Future<$0.GetSuggestReplyListRsp> getSuggestReplyList($grpc.ServiceCall call, $0.GetSuggestReplyListReq request);
  $async.Future<$0.SetSuggestReplyStatusRsp> setSuggestStatus($grpc.ServiceCall call, $0.SetSuggestStatusReq request);
  $async.Future<$0.CheckVersionRsp> checkVersion($grpc.ServiceCall call, $0.CheckVersionReq request);
  $async.Future<$0.FetchEndPointRsp> fetchEndPoint($grpc.ServiceCall call, $0.FetchEndPointReq request);
  $async.Future<$0.CheckDelayRsp> checkDelay($grpc.ServiceCall call, $0.CheckDelayReq request);
  $async.Future<$0.GetSysCfgRsp> getSysCfg($grpc.ServiceCall call, $0.GetSysCfgReq request);
  $async.Future<$0.ImLoginConfirmRsp> imLoginConfirm($grpc.ServiceCall call, $0.ImLoginConfirmReq request);
  $async.Future<$0.ResetPasswordRsp> resetPassword($grpc.ServiceCall call, $0.ResetPasswordReq request);
  $async.Future<$1.CommRsp> unregister($grpc.ServiceCall call, $0.UnregisterReq request);
  $async.Future<$0.AddAddressRsp> addAddress($grpc.ServiceCall call, $0.AddAddressReq request);
  $async.Future<$1.CommRsp> delAddress($grpc.ServiceCall call, $0.DelAddressReq request);
  $async.Future<$1.CommRsp> editAddress($grpc.ServiceCall call, $0.EditAddressReq request);
  $async.Future<$0.FetchAddressRsp> fetchAddress($grpc.ServiceCall call, $0.FetchAddressReq request);
  $async.Future<$0.FetchDefaultAddressRsp> fetchDefaultAddress($grpc.ServiceCall call, $0.FetchDefaultAddressReq request);
  $async.Future<$0.FetchAddressListRsp> fetchAddressList($grpc.ServiceCall call, $0.FetchAddressListReq request);
  $async.Future<$0.AddCategorizeTagRsp> addCategorizeTag($grpc.ServiceCall call, $0.AddCategorizeTagReq request);
  $async.Future<$1.CommRsp> delCategorizeTag($grpc.ServiceCall call, $0.DelCategorizeTagReq request);
  $async.Future<$1.CommRsp> editCategorizeTag($grpc.ServiceCall call, $0.EditCategorizeTagReq request);
  $async.Future<$0.FetchCategorizeTagListRsp> fetchCategorizeTagList($grpc.ServiceCall call, $0.FetchCategorizeTagListReq request);
  $async.Future<$0.AddCategorizeTagMemberRsp> addCategorizeTagMember($grpc.ServiceCall call, $0.AddCategorizeTagMemberReq request);
  $async.Future<$1.CommRsp> delCategorizeTagMember($grpc.ServiceCall call, $0.DelCategorizeTagMemberReq request);
  $async.Future<$0.FetchCategorizeTagMemberListRsp> fetchCategorizeTagMemberList($grpc.ServiceCall call, $0.FetchCategorizeTagMemberListReq request);
  $async.Future<$0.AddBackgroundRsp> addBackgroundPic($grpc.ServiceCall call, $0.AddBackgroundReq request);
  $async.Future<$0.DelBackgroundRsp> delBackgroundPic($grpc.ServiceCall call, $0.DelBackgroundPicReq request);
  $async.Future<$0.FetchBackgroundPicListRsp> fetchBackgroundPicList($grpc.ServiceCall call, $0.FetchBackgroundPicListReq request);
  $async.Future<$0.WalletGetInfoRsp> walletGetInfo($grpc.ServiceCall call, $0.WalletGetInfoReq request);
  $async.Future<$0.WalletAddValueRsp> walletAddValue($grpc.ServiceCall call, $0.WalletAddValueReq request);
  $async.Future<$0.WalletReduceValueRsp> walletReduceValue($grpc.ServiceCall call, $0.WalletReduceValueReq request);
  $async.Future<$1.CommRsp> walletSetPassword($grpc.ServiceCall call, $0.WalletSetPasswordReq request);
  $async.Future<$0.WalletGetChangeFlowRsp> walletGetChangeFlow($grpc.ServiceCall call, $0.WalletGetChangeFlowReq request);
  $async.Future<$0.GetCardPackageItemsRsp> getCardPackageItems($grpc.ServiceCall call, $0.GetCardPackageItemsReq request);
  $async.Future<$0.TaskSignUpRsp> taskSignUp($grpc.ServiceCall call, $0.TaskSignUpReq request);
  $async.Future<$0.TaskSignUpStatusRsp> taskSignUpStatus($grpc.ServiceCall call, $0.TaskSignUpStatusReq request);
  $async.Future<$0.TaskSignUpInfoRsp> taskSignUpInfo($grpc.ServiceCall call, $0.TaskSignUpInfoReq request);
}
