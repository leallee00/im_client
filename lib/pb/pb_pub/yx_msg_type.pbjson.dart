//
//  Generated code. Do not modify.
//  source: pb_pub/yx_msg_type.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use messageTypeDescriptor instead')
const MessageType$json = {
  '1': 'MessageType',
  '2': [
    {'1': 'MessageTypeUnknown', '2': 0},
    {'1': 'MessageTypeUser', '2': 1},
    {'1': 'MessageTypeAt', '2': 2},
    {'1': 'MessageTypeRoomBarrage', '2': 3},
    {'1': 'MessageTypeAllBarrage', '2': 4},
    {'1': 'MessageTypeGift', '2': 5},
    {'1': 'MessageTypeUserGetIn', '2': 6},
    {'1': 'MessageTypeForbidSpeaking', '2': 7},
    {'1': 'MessageTypeUnForbidSpeaking', '2': 8},
    {'1': 'MessageTypeKictOut', '2': 9},
    {'1': 'MessageTypeRobitInRoom', '2': 10},
    {'1': 'MessageTypeRobitMessage', '2': 11},
    {'1': 'MessageTypeLiveMessage', '2': 12},
    {'1': 'MessageTypeNewJoinLiveApply', '2': 13},
    {'1': 'MessageTypeCancelJoinLiveApply', '2': 14},
    {'1': 'MessageTypeForbidPublish', '2': 15},
    {'1': 'MessageTypeSuperManagerKickout', '2': 16},
    {'1': 'MessageTypeRoomManagerChanged', '2': 17},
    {'1': 'MessageTypeJoinLiveBalanceNotEnoughTip', '2': 18},
    {'1': 'MessageTypeJoinLiveBalanceNotEnoughEndLive', '2': 19},
    {'1': 'MessageTypeAnchorToAnchorJoinLiveInvite', '2': 20},
    {'1': 'MessageTypeAnchorToAnchorJoinLiveAcceptOrReject', '2': 21},
    {'1': 'MessageTypeAnchorInviteJoinLiveCancel', '2': 22},
    {'1': 'MessageTypeAnchorToAnchorJoinLiveEnd', '2': 23},
    {'1': 'MessageTypeUserActionTip', '2': 24},
    {'1': 'MessageTypeNetworkErrorKickout', '2': 25},
    {'1': 'MessageTypeTotalStationInform', '2': 26},
    {'1': 'MessageTypeAnchorToAnchorJoinLiveTempLeave', '2': 27},
    {'1': 'MessageTypeRedPocket', '2': 28},
    {'1': 'MessageTypeUserLottery', '2': 29},
    {'1': 'MessageTypeAudicenceList', '2': 30},
    {'1': 'MessageTypeAnnouncement', '2': 31},
    {'1': 'MessageTypeEndJoinLive', '2': 32},
    {'1': 'MessageTypeWeekStarGift', '2': 33},
    {'1': 'MessageTypePKInvite', '2': 34},
    {'1': 'MessageTypePKAcceptOrReject', '2': 35},
    {'1': 'MessageTypePKEnd', '2': 36},
    {'1': 'MessageTypePKStart', '2': 37},
    {'1': 'MessageTypePKChangeModeSuccess', '2': 38},
    {'1': 'MessageTypePKMatchingSuccess', '2': 39},
    {'1': 'MessageTypePKTimeCorrect', '2': 40},
    {'1': 'MessageTypePKFirstGiftMsg', '2': 41},
    {'1': 'MessageTypePKSendTargetPkValue', '2': 43},
    {'1': 'MessageTypeLiveEndH5', '2': 44},
    {'1': 'MessageTypePK5MinuteEnd', '2': 45},
    {'1': 'MessageTypeJoinFans', '2': 46},
    {'1': 'MessageTypeJoinGuard', '2': 47},
    {'1': 'MessageTypeSwimsuitActivityProcess', '2': 52},
    {'1': 'MessageTypeSwimsuitActivityRobBoxOver', '2': 53},
    {'1': 'MessageTypeActivityBoxProcess', '2': 54},
    {'1': 'MessageTypeRedPacketNew', '2': 55},
    {'1': 'MessageTypeRedPacketOver', '2': 56},
    {'1': 'MessageTypeSendRocket', '2': 66},
    {'1': 'MessageTypeTreasureMap', '2': 67},
    {'1': 'MessageTypeRankPromotionScoreChanged', '2': 68},
    {'1': 'MessageTypeRandomMatchCancel', '2': 69},
    {'1': 'MessageTypeUpdateWishMenu', '2': 70},
    {'1': 'MessageTypeWishPoolDetail', '2': 71},
    {'1': 'MessageTypeWishPoolLuckyMan', '2': 72},
    {'1': 'MessageTypeUpdatePkSeatInfo', '2': 73},
    {'1': 'MessageTypeChristmasTreeLightUp', '2': 75},
    {'1': 'MessageTypeNewYearLightUp', '2': 76},
    {'1': 'MessageTypeChatText', '2': 80},
    {'1': 'MessageTypeLiveRoomGift', '2': 100},
    {'1': 'MessageTypeSendPersonalGift', '2': 1000},
    {'1': 'MessageTypeServiceNotify', '2': 2000},
  ],
};

/// Descriptor for `MessageType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List messageTypeDescriptor = $convert.base64Decode(
    'CgtNZXNzYWdlVHlwZRIWChJNZXNzYWdlVHlwZVVua25vd24QABITCg9NZXNzYWdlVHlwZVVzZX'
    'IQARIRCg1NZXNzYWdlVHlwZUF0EAISGgoWTWVzc2FnZVR5cGVSb29tQmFycmFnZRADEhkKFU1l'
    'c3NhZ2VUeXBlQWxsQmFycmFnZRAEEhMKD01lc3NhZ2VUeXBlR2lmdBAFEhgKFE1lc3NhZ2VUeX'
    'BlVXNlckdldEluEAYSHQoZTWVzc2FnZVR5cGVGb3JiaWRTcGVha2luZxAHEh8KG01lc3NhZ2VU'
    'eXBlVW5Gb3JiaWRTcGVha2luZxAIEhYKEk1lc3NhZ2VUeXBlS2ljdE91dBAJEhoKFk1lc3NhZ2'
    'VUeXBlUm9iaXRJblJvb20QChIbChdNZXNzYWdlVHlwZVJvYml0TWVzc2FnZRALEhoKFk1lc3Nh'
    'Z2VUeXBlTGl2ZU1lc3NhZ2UQDBIfChtNZXNzYWdlVHlwZU5ld0pvaW5MaXZlQXBwbHkQDRIiCh'
    '5NZXNzYWdlVHlwZUNhbmNlbEpvaW5MaXZlQXBwbHkQDhIcChhNZXNzYWdlVHlwZUZvcmJpZFB1'
    'Ymxpc2gQDxIiCh5NZXNzYWdlVHlwZVN1cGVyTWFuYWdlcktpY2tvdXQQEBIhCh1NZXNzYWdlVH'
    'lwZVJvb21NYW5hZ2VyQ2hhbmdlZBAREioKJk1lc3NhZ2VUeXBlSm9pbkxpdmVCYWxhbmNlTm90'
    'RW5vdWdoVGlwEBISLgoqTWVzc2FnZVR5cGVKb2luTGl2ZUJhbGFuY2VOb3RFbm91Z2hFbmRMaX'
    'ZlEBMSKwonTWVzc2FnZVR5cGVBbmNob3JUb0FuY2hvckpvaW5MaXZlSW52aXRlEBQSMwovTWVz'
    'c2FnZVR5cGVBbmNob3JUb0FuY2hvckpvaW5MaXZlQWNjZXB0T3JSZWplY3QQFRIpCiVNZXNzYW'
    'dlVHlwZUFuY2hvckludml0ZUpvaW5MaXZlQ2FuY2VsEBYSKAokTWVzc2FnZVR5cGVBbmNob3JU'
    'b0FuY2hvckpvaW5MaXZlRW5kEBcSHAoYTWVzc2FnZVR5cGVVc2VyQWN0aW9uVGlwEBgSIgoeTW'
    'Vzc2FnZVR5cGVOZXR3b3JrRXJyb3JLaWNrb3V0EBkSIQodTWVzc2FnZVR5cGVUb3RhbFN0YXRp'
    'b25JbmZvcm0QGhIuCipNZXNzYWdlVHlwZUFuY2hvclRvQW5jaG9ySm9pbkxpdmVUZW1wTGVhdm'
    'UQGxIYChRNZXNzYWdlVHlwZVJlZFBvY2tldBAcEhoKFk1lc3NhZ2VUeXBlVXNlckxvdHRlcnkQ'
    'HRIcChhNZXNzYWdlVHlwZUF1ZGljZW5jZUxpc3QQHhIbChdNZXNzYWdlVHlwZUFubm91bmNlbW'
    'VudBAfEhoKFk1lc3NhZ2VUeXBlRW5kSm9pbkxpdmUQIBIbChdNZXNzYWdlVHlwZVdlZWtTdGFy'
    'R2lmdBAhEhcKE01lc3NhZ2VUeXBlUEtJbnZpdGUQIhIfChtNZXNzYWdlVHlwZVBLQWNjZXB0T3'
    'JSZWplY3QQIxIUChBNZXNzYWdlVHlwZVBLRW5kECQSFgoSTWVzc2FnZVR5cGVQS1N0YXJ0ECUS'
    'IgoeTWVzc2FnZVR5cGVQS0NoYW5nZU1vZGVTdWNjZXNzECYSIAocTWVzc2FnZVR5cGVQS01hdG'
    'NoaW5nU3VjY2VzcxAnEhwKGE1lc3NhZ2VUeXBlUEtUaW1lQ29ycmVjdBAoEh0KGU1lc3NhZ2VU'
    'eXBlUEtGaXJzdEdpZnRNc2cQKRIiCh5NZXNzYWdlVHlwZVBLU2VuZFRhcmdldFBrVmFsdWUQKx'
    'IYChRNZXNzYWdlVHlwZUxpdmVFbmRINRAsEhsKF01lc3NhZ2VUeXBlUEs1TWludXRlRW5kEC0S'
    'FwoTTWVzc2FnZVR5cGVKb2luRmFucxAuEhgKFE1lc3NhZ2VUeXBlSm9pbkd1YXJkEC8SJgoiTW'
    'Vzc2FnZVR5cGVTd2ltc3VpdEFjdGl2aXR5UHJvY2VzcxA0EikKJU1lc3NhZ2VUeXBlU3dpbXN1'
    'aXRBY3Rpdml0eVJvYkJveE92ZXIQNRIhCh1NZXNzYWdlVHlwZUFjdGl2aXR5Qm94UHJvY2Vzcx'
    'A2EhsKF01lc3NhZ2VUeXBlUmVkUGFja2V0TmV3EDcSHAoYTWVzc2FnZVR5cGVSZWRQYWNrZXRP'
    'dmVyEDgSGQoVTWVzc2FnZVR5cGVTZW5kUm9ja2V0EEISGgoWTWVzc2FnZVR5cGVUcmVhc3VyZU'
    '1hcBBDEigKJE1lc3NhZ2VUeXBlUmFua1Byb21vdGlvblNjb3JlQ2hhbmdlZBBEEiAKHE1lc3Nh'
    'Z2VUeXBlUmFuZG9tTWF0Y2hDYW5jZWwQRRIdChlNZXNzYWdlVHlwZVVwZGF0ZVdpc2hNZW51EE'
    'YSHQoZTWVzc2FnZVR5cGVXaXNoUG9vbERldGFpbBBHEh8KG01lc3NhZ2VUeXBlV2lzaFBvb2xM'
    'dWNreU1hbhBIEh8KG01lc3NhZ2VUeXBlVXBkYXRlUGtTZWF0SW5mbxBJEiMKH01lc3NhZ2VUeX'
    'BlQ2hyaXN0bWFzVHJlZUxpZ2h0VXAQSxIdChlNZXNzYWdlVHlwZU5ld1llYXJMaWdodFVwEEwS'
    'FwoTTWVzc2FnZVR5cGVDaGF0VGV4dBBQEhsKF01lc3NhZ2VUeXBlTGl2ZVJvb21HaWZ0EGQSIA'
    'obTWVzc2FnZVR5cGVTZW5kUGVyc29uYWxHaWZ0EOgHEh0KGE1lc3NhZ2VUeXBlU2VydmljZU5v'
    'dGlmeRDQDw==');

