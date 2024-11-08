//
//  Generated code. Do not modify.
//  source: pb_pub/yx_msg_type.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class MessageType extends $pb.ProtobufEnum {
  static const MessageType MessageTypeUnknown = MessageType._(0, _omitEnumNames ? '' : 'MessageTypeUnknown');
  static const MessageType MessageTypeUser = MessageType._(1, _omitEnumNames ? '' : 'MessageTypeUser');
  static const MessageType MessageTypeAt = MessageType._(2, _omitEnumNames ? '' : 'MessageTypeAt');
  static const MessageType MessageTypeRoomBarrage = MessageType._(3, _omitEnumNames ? '' : 'MessageTypeRoomBarrage');
  static const MessageType MessageTypeAllBarrage = MessageType._(4, _omitEnumNames ? '' : 'MessageTypeAllBarrage');
  static const MessageType MessageTypeGift = MessageType._(5, _omitEnumNames ? '' : 'MessageTypeGift');
  static const MessageType MessageTypeUserGetIn = MessageType._(6, _omitEnumNames ? '' : 'MessageTypeUserGetIn');
  static const MessageType MessageTypeForbidSpeaking = MessageType._(7, _omitEnumNames ? '' : 'MessageTypeForbidSpeaking');
  static const MessageType MessageTypeUnForbidSpeaking = MessageType._(8, _omitEnumNames ? '' : 'MessageTypeUnForbidSpeaking');
  static const MessageType MessageTypeKictOut = MessageType._(9, _omitEnumNames ? '' : 'MessageTypeKictOut');
  static const MessageType MessageTypeRobitInRoom = MessageType._(10, _omitEnumNames ? '' : 'MessageTypeRobitInRoom');
  static const MessageType MessageTypeRobitMessage = MessageType._(11, _omitEnumNames ? '' : 'MessageTypeRobitMessage');
  static const MessageType MessageTypeLiveMessage = MessageType._(12, _omitEnumNames ? '' : 'MessageTypeLiveMessage');
  static const MessageType MessageTypeNewJoinLiveApply = MessageType._(13, _omitEnumNames ? '' : 'MessageTypeNewJoinLiveApply');
  static const MessageType MessageTypeCancelJoinLiveApply = MessageType._(14, _omitEnumNames ? '' : 'MessageTypeCancelJoinLiveApply');
  static const MessageType MessageTypeForbidPublish = MessageType._(15, _omitEnumNames ? '' : 'MessageTypeForbidPublish');
  static const MessageType MessageTypeSuperManagerKickout = MessageType._(16, _omitEnumNames ? '' : 'MessageTypeSuperManagerKickout');
  static const MessageType MessageTypeRoomManagerChanged = MessageType._(17, _omitEnumNames ? '' : 'MessageTypeRoomManagerChanged');
  static const MessageType MessageTypeJoinLiveBalanceNotEnoughTip = MessageType._(18, _omitEnumNames ? '' : 'MessageTypeJoinLiveBalanceNotEnoughTip');
  static const MessageType MessageTypeJoinLiveBalanceNotEnoughEndLive = MessageType._(19, _omitEnumNames ? '' : 'MessageTypeJoinLiveBalanceNotEnoughEndLive');
  static const MessageType MessageTypeAnchorToAnchorJoinLiveInvite = MessageType._(20, _omitEnumNames ? '' : 'MessageTypeAnchorToAnchorJoinLiveInvite');
  static const MessageType MessageTypeAnchorToAnchorJoinLiveAcceptOrReject = MessageType._(21, _omitEnumNames ? '' : 'MessageTypeAnchorToAnchorJoinLiveAcceptOrReject');
  static const MessageType MessageTypeAnchorInviteJoinLiveCancel = MessageType._(22, _omitEnumNames ? '' : 'MessageTypeAnchorInviteJoinLiveCancel');
  static const MessageType MessageTypeAnchorToAnchorJoinLiveEnd = MessageType._(23, _omitEnumNames ? '' : 'MessageTypeAnchorToAnchorJoinLiveEnd');
  static const MessageType MessageTypeUserActionTip = MessageType._(24, _omitEnumNames ? '' : 'MessageTypeUserActionTip');
  static const MessageType MessageTypeNetworkErrorKickout = MessageType._(25, _omitEnumNames ? '' : 'MessageTypeNetworkErrorKickout');
  static const MessageType MessageTypeTotalStationInform = MessageType._(26, _omitEnumNames ? '' : 'MessageTypeTotalStationInform');
  static const MessageType MessageTypeAnchorToAnchorJoinLiveTempLeave = MessageType._(27, _omitEnumNames ? '' : 'MessageTypeAnchorToAnchorJoinLiveTempLeave');
  static const MessageType MessageTypeRedPocket = MessageType._(28, _omitEnumNames ? '' : 'MessageTypeRedPocket');
  static const MessageType MessageTypeUserLottery = MessageType._(29, _omitEnumNames ? '' : 'MessageTypeUserLottery');
  static const MessageType MessageTypeAudicenceList = MessageType._(30, _omitEnumNames ? '' : 'MessageTypeAudicenceList');
  static const MessageType MessageTypeAnnouncement = MessageType._(31, _omitEnumNames ? '' : 'MessageTypeAnnouncement');
  static const MessageType MessageTypeEndJoinLive = MessageType._(32, _omitEnumNames ? '' : 'MessageTypeEndJoinLive');
  static const MessageType MessageTypeWeekStarGift = MessageType._(33, _omitEnumNames ? '' : 'MessageTypeWeekStarGift');
  static const MessageType MessageTypePKInvite = MessageType._(34, _omitEnumNames ? '' : 'MessageTypePKInvite');
  static const MessageType MessageTypePKAcceptOrReject = MessageType._(35, _omitEnumNames ? '' : 'MessageTypePKAcceptOrReject');
  static const MessageType MessageTypePKEnd = MessageType._(36, _omitEnumNames ? '' : 'MessageTypePKEnd');
  static const MessageType MessageTypePKStart = MessageType._(37, _omitEnumNames ? '' : 'MessageTypePKStart');
  static const MessageType MessageTypePKChangeModeSuccess = MessageType._(38, _omitEnumNames ? '' : 'MessageTypePKChangeModeSuccess');
  static const MessageType MessageTypePKMatchingSuccess = MessageType._(39, _omitEnumNames ? '' : 'MessageTypePKMatchingSuccess');
  static const MessageType MessageTypePKTimeCorrect = MessageType._(40, _omitEnumNames ? '' : 'MessageTypePKTimeCorrect');
  static const MessageType MessageTypePKFirstGiftMsg = MessageType._(41, _omitEnumNames ? '' : 'MessageTypePKFirstGiftMsg');
  static const MessageType MessageTypePKSendTargetPkValue = MessageType._(43, _omitEnumNames ? '' : 'MessageTypePKSendTargetPkValue');
  static const MessageType MessageTypeLiveEndH5 = MessageType._(44, _omitEnumNames ? '' : 'MessageTypeLiveEndH5');
  static const MessageType MessageTypePK5MinuteEnd = MessageType._(45, _omitEnumNames ? '' : 'MessageTypePK5MinuteEnd');
  static const MessageType MessageTypeJoinFans = MessageType._(46, _omitEnumNames ? '' : 'MessageTypeJoinFans');
  static const MessageType MessageTypeJoinGuard = MessageType._(47, _omitEnumNames ? '' : 'MessageTypeJoinGuard');
  static const MessageType MessageTypeSwimsuitActivityProcess = MessageType._(52, _omitEnumNames ? '' : 'MessageTypeSwimsuitActivityProcess');
  static const MessageType MessageTypeSwimsuitActivityRobBoxOver = MessageType._(53, _omitEnumNames ? '' : 'MessageTypeSwimsuitActivityRobBoxOver');
  static const MessageType MessageTypeActivityBoxProcess = MessageType._(54, _omitEnumNames ? '' : 'MessageTypeActivityBoxProcess');
  static const MessageType MessageTypeRedPacketNew = MessageType._(55, _omitEnumNames ? '' : 'MessageTypeRedPacketNew');
  static const MessageType MessageTypeRedPacketOver = MessageType._(56, _omitEnumNames ? '' : 'MessageTypeRedPacketOver');
  static const MessageType MessageTypeSendRocket = MessageType._(66, _omitEnumNames ? '' : 'MessageTypeSendRocket');
  static const MessageType MessageTypeTreasureMap = MessageType._(67, _omitEnumNames ? '' : 'MessageTypeTreasureMap');
  static const MessageType MessageTypeRankPromotionScoreChanged = MessageType._(68, _omitEnumNames ? '' : 'MessageTypeRankPromotionScoreChanged');
  static const MessageType MessageTypeRandomMatchCancel = MessageType._(69, _omitEnumNames ? '' : 'MessageTypeRandomMatchCancel');
  static const MessageType MessageTypeUpdateWishMenu = MessageType._(70, _omitEnumNames ? '' : 'MessageTypeUpdateWishMenu');
  static const MessageType MessageTypeWishPoolDetail = MessageType._(71, _omitEnumNames ? '' : 'MessageTypeWishPoolDetail');
  static const MessageType MessageTypeWishPoolLuckyMan = MessageType._(72, _omitEnumNames ? '' : 'MessageTypeWishPoolLuckyMan');
  static const MessageType MessageTypeUpdatePkSeatInfo = MessageType._(73, _omitEnumNames ? '' : 'MessageTypeUpdatePkSeatInfo');
  static const MessageType MessageTypeChristmasTreeLightUp = MessageType._(75, _omitEnumNames ? '' : 'MessageTypeChristmasTreeLightUp');
  static const MessageType MessageTypeNewYearLightUp = MessageType._(76, _omitEnumNames ? '' : 'MessageTypeNewYearLightUp');
  static const MessageType MessageTypeChatText = MessageType._(80, _omitEnumNames ? '' : 'MessageTypeChatText');
  static const MessageType MessageTypeLiveRoomGift = MessageType._(100, _omitEnumNames ? '' : 'MessageTypeLiveRoomGift');
  static const MessageType MessageTypeSendPersonalGift = MessageType._(1000, _omitEnumNames ? '' : 'MessageTypeSendPersonalGift');
  static const MessageType MessageTypeServiceNotify = MessageType._(2000, _omitEnumNames ? '' : 'MessageTypeServiceNotify');

  static const $core.List<MessageType> values = <MessageType> [
    MessageTypeUnknown,
    MessageTypeUser,
    MessageTypeAt,
    MessageTypeRoomBarrage,
    MessageTypeAllBarrage,
    MessageTypeGift,
    MessageTypeUserGetIn,
    MessageTypeForbidSpeaking,
    MessageTypeUnForbidSpeaking,
    MessageTypeKictOut,
    MessageTypeRobitInRoom,
    MessageTypeRobitMessage,
    MessageTypeLiveMessage,
    MessageTypeNewJoinLiveApply,
    MessageTypeCancelJoinLiveApply,
    MessageTypeForbidPublish,
    MessageTypeSuperManagerKickout,
    MessageTypeRoomManagerChanged,
    MessageTypeJoinLiveBalanceNotEnoughTip,
    MessageTypeJoinLiveBalanceNotEnoughEndLive,
    MessageTypeAnchorToAnchorJoinLiveInvite,
    MessageTypeAnchorToAnchorJoinLiveAcceptOrReject,
    MessageTypeAnchorInviteJoinLiveCancel,
    MessageTypeAnchorToAnchorJoinLiveEnd,
    MessageTypeUserActionTip,
    MessageTypeNetworkErrorKickout,
    MessageTypeTotalStationInform,
    MessageTypeAnchorToAnchorJoinLiveTempLeave,
    MessageTypeRedPocket,
    MessageTypeUserLottery,
    MessageTypeAudicenceList,
    MessageTypeAnnouncement,
    MessageTypeEndJoinLive,
    MessageTypeWeekStarGift,
    MessageTypePKInvite,
    MessageTypePKAcceptOrReject,
    MessageTypePKEnd,
    MessageTypePKStart,
    MessageTypePKChangeModeSuccess,
    MessageTypePKMatchingSuccess,
    MessageTypePKTimeCorrect,
    MessageTypePKFirstGiftMsg,
    MessageTypePKSendTargetPkValue,
    MessageTypeLiveEndH5,
    MessageTypePK5MinuteEnd,
    MessageTypeJoinFans,
    MessageTypeJoinGuard,
    MessageTypeSwimsuitActivityProcess,
    MessageTypeSwimsuitActivityRobBoxOver,
    MessageTypeActivityBoxProcess,
    MessageTypeRedPacketNew,
    MessageTypeRedPacketOver,
    MessageTypeSendRocket,
    MessageTypeTreasureMap,
    MessageTypeRankPromotionScoreChanged,
    MessageTypeRandomMatchCancel,
    MessageTypeUpdateWishMenu,
    MessageTypeWishPoolDetail,
    MessageTypeWishPoolLuckyMan,
    MessageTypeUpdatePkSeatInfo,
    MessageTypeChristmasTreeLightUp,
    MessageTypeNewYearLightUp,
    MessageTypeChatText,
    MessageTypeLiveRoomGift,
    MessageTypeSendPersonalGift,
    MessageTypeServiceNotify,
  ];

  static final $core.Map<$core.int, MessageType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MessageType? valueOf($core.int value) => _byValue[value];

  const MessageType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
