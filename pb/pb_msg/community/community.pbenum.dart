//
//  Generated code. Do not modify.
//  source: pb_msg/community/community.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// 关联类型枚举
class RefType extends $pb.ProtobufEnum {
  static const RefType UNKNOWN = RefType._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const RefType POST = RefType._(1, _omitEnumNames ? '' : 'POST');
  static const RefType COMMENT = RefType._(2, _omitEnumNames ? '' : 'COMMENT');
  static const RefType REPLY = RefType._(3, _omitEnumNames ? '' : 'REPLY');
  static const RefType VIDEO = RefType._(4, _omitEnumNames ? '' : 'VIDEO');
  static const RefType IMAGE = RefType._(5, _omitEnumNames ? '' : 'IMAGE');
  static const RefType AUDIO = RefType._(6, _omitEnumNames ? '' : 'AUDIO');
  static const RefType VOTE = RefType._(7, _omitEnumNames ? '' : 'VOTE');
  static const RefType LINK = RefType._(8, _omitEnumNames ? '' : 'LINK');

  static const $core.List<RefType> values = <RefType> [
    UNKNOWN,
    POST,
    COMMENT,
    REPLY,
    VIDEO,
    IMAGE,
    AUDIO,
    VOTE,
    LINK,
  ];

  static final $core.Map<$core.int, RefType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RefType? valueOf($core.int value) => _byValue[value];

  const RefType._($core.int v, $core.String n) : super(v, n);
}

/// 点赞类型枚举
class LikeType extends $pb.ProtobufEnum {
  static const LikeType UP = LikeType._(0, _omitEnumNames ? '' : 'UP');
  static const LikeType DOWN = LikeType._(1, _omitEnumNames ? '' : 'DOWN');
  static const LikeType A = LikeType._(2, _omitEnumNames ? '' : 'A');
  static const LikeType B = LikeType._(3, _omitEnumNames ? '' : 'B');
  static const LikeType C = LikeType._(4, _omitEnumNames ? '' : 'C');
  static const LikeType D = LikeType._(5, _omitEnumNames ? '' : 'D');

  static const $core.List<LikeType> values = <LikeType> [
    UP,
    DOWN,
    A,
    B,
    C,
    D,
  ];

  static final $core.Map<$core.int, LikeType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static LikeType? valueOf($core.int value) => _byValue[value];

  const LikeType._($core.int v, $core.String n) : super(v, n);
}

class JoinType extends $pb.ProtobufEnum {
  static const JoinType FREE = JoinType._(0, _omitEnumNames ? '' : 'FREE');
  static const JoinType APPLY = JoinType._(1, _omitEnumNames ? '' : 'APPLY');
  static const JoinType PASSWORD = JoinType._(2, _omitEnumNames ? '' : 'PASSWORD');
  static const JoinType ANSWER = JoinType._(3, _omitEnumNames ? '' : 'ANSWER');

  static const $core.List<JoinType> values = <JoinType> [
    FREE,
    APPLY,
    PASSWORD,
    ANSWER,
  ];

  static final $core.Map<$core.int, JoinType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static JoinType? valueOf($core.int value) => _byValue[value];

  const JoinType._($core.int v, $core.String n) : super(v, n);
}

/// 查询类型
class PostsReq_Type extends $pb.ProtobufEnum {
  static const PostsReq_Type Community = PostsReq_Type._(0, _omitEnumNames ? '' : 'Community');
  static const PostsReq_Type Followee = PostsReq_Type._(1, _omitEnumNames ? '' : 'Followee');
  static const PostsReq_Type Recommend = PostsReq_Type._(2, _omitEnumNames ? '' : 'Recommend');

  static const $core.List<PostsReq_Type> values = <PostsReq_Type> [
    Community,
    Followee,
    Recommend,
  ];

  static final $core.Map<$core.int, PostsReq_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PostsReq_Type? valueOf($core.int value) => _byValue[value];

  const PostsReq_Type._($core.int v, $core.String n) : super(v, n);
}

/// 排序方式枚举
class PostsReq_Order extends $pb.ProtobufEnum {
  static const PostsReq_Order New = PostsReq_Order._(0, _omitEnumNames ? '' : 'New');
  static const PostsReq_Order Hot = PostsReq_Order._(1, _omitEnumNames ? '' : 'Hot');

  static const $core.List<PostsReq_Order> values = <PostsReq_Order> [
    New,
    Hot,
  ];

  static final $core.Map<$core.int, PostsReq_Order> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PostsReq_Order? valueOf($core.int value) => _byValue[value];

  const PostsReq_Order._($core.int v, $core.String n) : super(v, n);
}

class CommentsReq_Order extends $pb.ProtobufEnum {
  static const CommentsReq_Order New = CommentsReq_Order._(0, _omitEnumNames ? '' : 'New');
  static const CommentsReq_Order Hot = CommentsReq_Order._(1, _omitEnumNames ? '' : 'Hot');

  static const $core.List<CommentsReq_Order> values = <CommentsReq_Order> [
    New,
    Hot,
  ];

  static final $core.Map<$core.int, CommentsReq_Order> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CommentsReq_Order? valueOf($core.int value) => _byValue[value];

  const CommentsReq_Order._($core.int v, $core.String n) : super(v, n);
}

class RepliesReq_Order extends $pb.ProtobufEnum {
  static const RepliesReq_Order New = RepliesReq_Order._(0, _omitEnumNames ? '' : 'New');
  static const RepliesReq_Order Hot = RepliesReq_Order._(1, _omitEnumNames ? '' : 'Hot');

  static const $core.List<RepliesReq_Order> values = <RepliesReq_Order> [
    New,
    Hot,
  ];

  static final $core.Map<$core.int, RepliesReq_Order> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RepliesReq_Order? valueOf($core.int value) => _byValue[value];

  const RepliesReq_Order._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
