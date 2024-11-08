//
//  Generated code. Do not modify.
//  source: pb_msg/ttk_game/ttk_game.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'ttk_game.pbenum.dart';

export 'ttk_game.pbenum.dart';

/// 一张牌
class Card extends $pb.GeneratedMessage {
  factory Card({
    $core.int? number,
    SUIT? suit,
    $core.int? value,
  }) {
    final $result = create();
    if (number != null) {
      $result.number = number;
    }
    if (suit != null) {
      $result.suit = suit;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  Card._() : super();
  factory Card.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Card.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Card', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_ttk_game'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'number', $pb.PbFieldType.O3)
    ..e<SUIT>(2, _omitFieldNames ? '' : 'suit', $pb.PbFieldType.OE, defaultOrMaker: SUIT.DIAMOND, valueOf: SUIT.valueOf, enumValues: SUIT.values)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'value', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Card clone() => Card()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Card copyWith(void Function(Card) updates) => super.copyWith((message) => updates(message as Card)) as Card;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Card create() => Card._();
  Card createEmptyInstance() => create();
  static $pb.PbList<Card> createRepeated() => $pb.PbList<Card>();
  @$core.pragma('dart2js:noInline')
  static Card getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Card>(create);
  static Card? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get number => $_getIZ(0);
  @$pb.TagNumber(1)
  set number($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearNumber() => clearField(1);

  @$pb.TagNumber(2)
  SUIT get suit => $_getN(1);
  @$pb.TagNumber(2)
  set suit(SUIT v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSuit() => $_has(1);
  @$pb.TagNumber(2)
  void clearSuit() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get value => $_getIZ(2);
  @$pb.TagNumber(3)
  set value($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);
}

/// 一手牌
class Hand extends $pb.GeneratedMessage {
  factory Hand({
    PATTERN? pattern,
    $core.Iterable<Card>? cards,
  }) {
    final $result = create();
    if (pattern != null) {
      $result.pattern = pattern;
    }
    if (cards != null) {
      $result.cards.addAll(cards);
    }
    return $result;
  }
  Hand._() : super();
  factory Hand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Hand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Hand', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_ttk_game'), createEmptyInstance: create)
    ..e<PATTERN>(1, _omitFieldNames ? '' : 'pattern', $pb.PbFieldType.OE, defaultOrMaker: PATTERN.GENERAL_0, valueOf: PATTERN.valueOf, enumValues: PATTERN.values)
    ..pc<Card>(2, _omitFieldNames ? '' : 'cards', $pb.PbFieldType.PM, subBuilder: Card.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Hand clone() => Hand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Hand copyWith(void Function(Hand) updates) => super.copyWith((message) => updates(message as Hand)) as Hand;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Hand create() => Hand._();
  Hand createEmptyInstance() => create();
  static $pb.PbList<Hand> createRepeated() => $pb.PbList<Hand>();
  @$core.pragma('dart2js:noInline')
  static Hand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Hand>(create);
  static Hand? _defaultInstance;

  @$pb.TagNumber(1)
  PATTERN get pattern => $_getN(0);
  @$pb.TagNumber(1)
  set pattern(PATTERN v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPattern() => $_has(0);
  @$pb.TagNumber(1)
  void clearPattern() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Card> get cards => $_getList(1);
}

/// 一个桌位
class Side extends $pb.GeneratedMessage {
  factory Side({
    Hand? hand,
    $core.bool? win,
    $core.int? odds,
    $fixnum.Int64? amount,
    $core.bool? hasIncognito,
    $fixnum.Int64? publicAmouut,
  }) {
    final $result = create();
    if (hand != null) {
      $result.hand = hand;
    }
    if (win != null) {
      $result.win = win;
    }
    if (odds != null) {
      $result.odds = odds;
    }
    if (amount != null) {
      $result.amount = amount;
    }
    if (hasIncognito != null) {
      $result.hasIncognito = hasIncognito;
    }
    if (publicAmouut != null) {
      $result.publicAmouut = publicAmouut;
    }
    return $result;
  }
  Side._() : super();
  factory Side.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Side.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Side', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_ttk_game'), createEmptyInstance: create)
    ..aOM<Hand>(1, _omitFieldNames ? '' : 'hand', subBuilder: Hand.create)
    ..aOB(2, _omitFieldNames ? '' : 'win')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'odds', $pb.PbFieldType.O3)
    ..aInt64(4, _omitFieldNames ? '' : 'amount')
    ..aOB(5, _omitFieldNames ? '' : 'hasIncognito', protoName: 'hasIncognito')
    ..aInt64(6, _omitFieldNames ? '' : 'publicAmouut', protoName: 'publicAmouut')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Side clone() => Side()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Side copyWith(void Function(Side) updates) => super.copyWith((message) => updates(message as Side)) as Side;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Side create() => Side._();
  Side createEmptyInstance() => create();
  static $pb.PbList<Side> createRepeated() => $pb.PbList<Side>();
  @$core.pragma('dart2js:noInline')
  static Side getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Side>(create);
  static Side? _defaultInstance;

  @$pb.TagNumber(1)
  Hand get hand => $_getN(0);
  @$pb.TagNumber(1)
  set hand(Hand v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHand() => $_has(0);
  @$pb.TagNumber(1)
  void clearHand() => clearField(1);
  @$pb.TagNumber(1)
  Hand ensureHand() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get win => $_getBF(1);
  @$pb.TagNumber(2)
  set win($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWin() => $_has(1);
  @$pb.TagNumber(2)
  void clearWin() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get odds => $_getIZ(2);
  @$pb.TagNumber(3)
  set odds($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOdds() => $_has(2);
  @$pb.TagNumber(3)
  void clearOdds() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get amount => $_getI64(3);
  @$pb.TagNumber(4)
  set amount($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAmount() => $_has(3);
  @$pb.TagNumber(4)
  void clearAmount() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get hasIncognito => $_getBF(4);
  @$pb.TagNumber(5)
  set hasIncognito($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasHasIncognito() => $_has(4);
  @$pb.TagNumber(5)
  void clearHasIncognito() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get publicAmouut => $_getI64(5);
  @$pb.TagNumber(6)
  set publicAmouut($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPublicAmouut() => $_has(5);
  @$pb.TagNumber(6)
  void clearPublicAmouut() => clearField(6);
}

/// 游戏模型,进房单推
class TTKGameInfo extends $pb.GeneratedMessage {
  factory TTKGameInfo({
    $fixnum.Int64? no,
    $core.int? state,
    $fixnum.Int64? endTime,
    Hand? hand,
    $core.Iterable<Side>? sides,
  }) {
    final $result = create();
    if (no != null) {
      $result.no = no;
    }
    if (state != null) {
      $result.state = state;
    }
    if (endTime != null) {
      $result.endTime = endTime;
    }
    if (hand != null) {
      $result.hand = hand;
    }
    if (sides != null) {
      $result.sides.addAll(sides);
    }
    return $result;
  }
  TTKGameInfo._() : super();
  factory TTKGameInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TTKGameInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TTKGameInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_ttk_game'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'no')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'state', $pb.PbFieldType.O3)
    ..aInt64(3, _omitFieldNames ? '' : 'endTime', protoName: 'endTime')
    ..aOM<Hand>(4, _omitFieldNames ? '' : 'hand', subBuilder: Hand.create)
    ..pc<Side>(5, _omitFieldNames ? '' : 'sides', $pb.PbFieldType.PM, subBuilder: Side.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TTKGameInfo clone() => TTKGameInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TTKGameInfo copyWith(void Function(TTKGameInfo) updates) => super.copyWith((message) => updates(message as TTKGameInfo)) as TTKGameInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TTKGameInfo create() => TTKGameInfo._();
  TTKGameInfo createEmptyInstance() => create();
  static $pb.PbList<TTKGameInfo> createRepeated() => $pb.PbList<TTKGameInfo>();
  @$core.pragma('dart2js:noInline')
  static TTKGameInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TTKGameInfo>(create);
  static TTKGameInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get no => $_getI64(0);
  @$pb.TagNumber(1)
  set no($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearNo() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get state => $_getIZ(1);
  @$pb.TagNumber(2)
  set state($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get endTime => $_getI64(2);
  @$pb.TagNumber(3)
  set endTime($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEndTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndTime() => clearField(3);

  @$pb.TagNumber(4)
  Hand get hand => $_getN(3);
  @$pb.TagNumber(4)
  set hand(Hand v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasHand() => $_has(3);
  @$pb.TagNumber(4)
  void clearHand() => clearField(4);
  @$pb.TagNumber(4)
  Hand ensureHand() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<Side> get sides => $_getList(4);
}

/// 玩家模型,开牌单推
class TTKPlayerInfo extends $pb.GeneratedMessage {
  factory TTKPlayerInfo({
    $fixnum.Int64? userId,
    $core.String? username,
    $core.Iterable<$fixnum.Int64>? bets,
    $fixnum.Int64? coinBalance,
    $fixnum.Int64? cocoBalance,
    $fixnum.Int64? winLose,
    $core.bool? incognito,
    $core.int? incognitoTimes,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (username != null) {
      $result.username = username;
    }
    if (bets != null) {
      $result.bets.addAll(bets);
    }
    if (coinBalance != null) {
      $result.coinBalance = coinBalance;
    }
    if (cocoBalance != null) {
      $result.cocoBalance = cocoBalance;
    }
    if (winLose != null) {
      $result.winLose = winLose;
    }
    if (incognito != null) {
      $result.incognito = incognito;
    }
    if (incognitoTimes != null) {
      $result.incognitoTimes = incognitoTimes;
    }
    return $result;
  }
  TTKPlayerInfo._() : super();
  factory TTKPlayerInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TTKPlayerInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TTKPlayerInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_ttk_game'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..aOS(2, _omitFieldNames ? '' : 'username')
    ..p<$fixnum.Int64>(3, _omitFieldNames ? '' : 'bets', $pb.PbFieldType.K6)
    ..aInt64(4, _omitFieldNames ? '' : 'coinBalance', protoName: 'coinBalance')
    ..aInt64(5, _omitFieldNames ? '' : 'cocoBalance', protoName: 'cocoBalance')
    ..aInt64(6, _omitFieldNames ? '' : 'winLose', protoName: 'winLose')
    ..aOB(7, _omitFieldNames ? '' : 'incognito')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'incognitoTimes', $pb.PbFieldType.O3, protoName: 'incognitoTimes')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TTKPlayerInfo clone() => TTKPlayerInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TTKPlayerInfo copyWith(void Function(TTKPlayerInfo) updates) => super.copyWith((message) => updates(message as TTKPlayerInfo)) as TTKPlayerInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TTKPlayerInfo create() => TTKPlayerInfo._();
  TTKPlayerInfo createEmptyInstance() => create();
  static $pb.PbList<TTKPlayerInfo> createRepeated() => $pb.PbList<TTKPlayerInfo>();
  @$core.pragma('dart2js:noInline')
  static TTKPlayerInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TTKPlayerInfo>(create);
  static TTKPlayerInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get username => $_getSZ(1);
  @$pb.TagNumber(2)
  set username($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUsername() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsername() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$fixnum.Int64> get bets => $_getList(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get coinBalance => $_getI64(3);
  @$pb.TagNumber(4)
  set coinBalance($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCoinBalance() => $_has(3);
  @$pb.TagNumber(4)
  void clearCoinBalance() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get cocoBalance => $_getI64(4);
  @$pb.TagNumber(5)
  set cocoBalance($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCocoBalance() => $_has(4);
  @$pb.TagNumber(5)
  void clearCocoBalance() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get winLose => $_getI64(5);
  @$pb.TagNumber(6)
  set winLose($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasWinLose() => $_has(5);
  @$pb.TagNumber(6)
  void clearWinLose() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get incognito => $_getBF(6);
  @$pb.TagNumber(7)
  set incognito($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIncognito() => $_has(6);
  @$pb.TagNumber(7)
  void clearIncognito() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get incognitoTimes => $_getIZ(7);
  @$pb.TagNumber(8)
  set incognitoTimes($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasIncognitoTimes() => $_has(7);
  @$pb.TagNumber(8)
  void clearIncognitoTimes() => clearField(8);
}

/// 战功榜(前10条),开牌群推,进房单推
class TTKWinnerBoard extends $pb.GeneratedMessage {
  factory TTKWinnerBoard({
    $core.Iterable<TTKPlayerInfo>? winners,
  }) {
    final $result = create();
    if (winners != null) {
      $result.winners.addAll(winners);
    }
    return $result;
  }
  TTKWinnerBoard._() : super();
  factory TTKWinnerBoard.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TTKWinnerBoard.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TTKWinnerBoard', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_ttk_game'), createEmptyInstance: create)
    ..pc<TTKPlayerInfo>(2, _omitFieldNames ? '' : 'winners', $pb.PbFieldType.PM, subBuilder: TTKPlayerInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TTKWinnerBoard clone() => TTKWinnerBoard()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TTKWinnerBoard copyWith(void Function(TTKWinnerBoard) updates) => super.copyWith((message) => updates(message as TTKWinnerBoard)) as TTKWinnerBoard;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TTKWinnerBoard create() => TTKWinnerBoard._();
  TTKWinnerBoard createEmptyInstance() => create();
  static $pb.PbList<TTKWinnerBoard> createRepeated() => $pb.PbList<TTKWinnerBoard>();
  @$core.pragma('dart2js:noInline')
  static TTKWinnerBoard getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TTKWinnerBoard>(create);
  static TTKWinnerBoard? _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<TTKPlayerInfo> get winners => $_getList(0);
}

/// 开始下注通知
class BetStartNotify extends $pb.GeneratedMessage {
  factory BetStartNotify({
    $fixnum.Int64? no,
    $fixnum.Int64? endTime,
  }) {
    final $result = create();
    if (no != null) {
      $result.no = no;
    }
    if (endTime != null) {
      $result.endTime = endTime;
    }
    return $result;
  }
  BetStartNotify._() : super();
  factory BetStartNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BetStartNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BetStartNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_ttk_game'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'no')
    ..aInt64(2, _omitFieldNames ? '' : 'endTime', protoName: 'endTime')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BetStartNotify clone() => BetStartNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BetStartNotify copyWith(void Function(BetStartNotify) updates) => super.copyWith((message) => updates(message as BetStartNotify)) as BetStartNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BetStartNotify create() => BetStartNotify._();
  BetStartNotify createEmptyInstance() => create();
  static $pb.PbList<BetStartNotify> createRepeated() => $pb.PbList<BetStartNotify>();
  @$core.pragma('dart2js:noInline')
  static BetStartNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BetStartNotify>(create);
  static BetStartNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get no => $_getI64(0);
  @$pb.TagNumber(1)
  set no($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearNo() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get endTime => $_getI64(1);
  @$pb.TagNumber(2)
  set endTime($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEndTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndTime() => clearField(2);
}

/// 桌位注金变化通知
class SideChangeNotify extends $pb.GeneratedMessage {
  factory SideChangeNotify({
    $core.Iterable<Side>? sides,
  }) {
    final $result = create();
    if (sides != null) {
      $result.sides.addAll(sides);
    }
    return $result;
  }
  SideChangeNotify._() : super();
  factory SideChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SideChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SideChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_ttk_game'), createEmptyInstance: create)
    ..pc<Side>(1, _omitFieldNames ? '' : 'sides', $pb.PbFieldType.PM, subBuilder: Side.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SideChangeNotify clone() => SideChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SideChangeNotify copyWith(void Function(SideChangeNotify) updates) => super.copyWith((message) => updates(message as SideChangeNotify)) as SideChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SideChangeNotify create() => SideChangeNotify._();
  SideChangeNotify createEmptyInstance() => create();
  static $pb.PbList<SideChangeNotify> createRepeated() => $pb.PbList<SideChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static SideChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SideChangeNotify>(create);
  static SideChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Side> get sides => $_getList(0);
}

/// 下注请求
class BetReq extends $pb.GeneratedMessage {
  factory BetReq({
    $fixnum.Int64? no,
    $core.String? username,
    KINGDOM? kingdom,
    $fixnum.Int64? amount,
    $core.bool? incognito,
  }) {
    final $result = create();
    if (no != null) {
      $result.no = no;
    }
    if (username != null) {
      $result.username = username;
    }
    if (kingdom != null) {
      $result.kingdom = kingdom;
    }
    if (amount != null) {
      $result.amount = amount;
    }
    if (incognito != null) {
      $result.incognito = incognito;
    }
    return $result;
  }
  BetReq._() : super();
  factory BetReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BetReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BetReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_ttk_game'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'no')
    ..aOS(2, _omitFieldNames ? '' : 'username')
    ..e<KINGDOM>(3, _omitFieldNames ? '' : 'kingdom', $pb.PbFieldType.OE, defaultOrMaker: KINGDOM.WEI, valueOf: KINGDOM.valueOf, enumValues: KINGDOM.values)
    ..aInt64(4, _omitFieldNames ? '' : 'amount')
    ..aOB(5, _omitFieldNames ? '' : 'incognito')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BetReq clone() => BetReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BetReq copyWith(void Function(BetReq) updates) => super.copyWith((message) => updates(message as BetReq)) as BetReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BetReq create() => BetReq._();
  BetReq createEmptyInstance() => create();
  static $pb.PbList<BetReq> createRepeated() => $pb.PbList<BetReq>();
  @$core.pragma('dart2js:noInline')
  static BetReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BetReq>(create);
  static BetReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get no => $_getI64(0);
  @$pb.TagNumber(1)
  set no($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearNo() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get username => $_getSZ(1);
  @$pb.TagNumber(2)
  set username($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUsername() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsername() => clearField(2);

  @$pb.TagNumber(3)
  KINGDOM get kingdom => $_getN(2);
  @$pb.TagNumber(3)
  set kingdom(KINGDOM v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasKingdom() => $_has(2);
  @$pb.TagNumber(3)
  void clearKingdom() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get amount => $_getI64(3);
  @$pb.TagNumber(4)
  set amount($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAmount() => $_has(3);
  @$pb.TagNumber(4)
  void clearAmount() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get incognito => $_getBF(4);
  @$pb.TagNumber(5)
  set incognito($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIncognito() => $_has(4);
  @$pb.TagNumber(5)
  void clearIncognito() => clearField(5);
}

/// 下注响应
class BetRsp extends $pb.GeneratedMessage {
  factory BetRsp({
    $core.Iterable<Side>? sides,
    TTKPlayerInfo? playerInfo,
    $fixnum.Int64? no,
  }) {
    final $result = create();
    if (sides != null) {
      $result.sides.addAll(sides);
    }
    if (playerInfo != null) {
      $result.playerInfo = playerInfo;
    }
    if (no != null) {
      $result.no = no;
    }
    return $result;
  }
  BetRsp._() : super();
  factory BetRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BetRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BetRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_ttk_game'), createEmptyInstance: create)
    ..pc<Side>(1, _omitFieldNames ? '' : 'sides', $pb.PbFieldType.PM, subBuilder: Side.create)
    ..aOM<TTKPlayerInfo>(2, _omitFieldNames ? '' : 'playerInfo', protoName: 'playerInfo', subBuilder: TTKPlayerInfo.create)
    ..aInt64(3, _omitFieldNames ? '' : 'no')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BetRsp clone() => BetRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BetRsp copyWith(void Function(BetRsp) updates) => super.copyWith((message) => updates(message as BetRsp)) as BetRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BetRsp create() => BetRsp._();
  BetRsp createEmptyInstance() => create();
  static $pb.PbList<BetRsp> createRepeated() => $pb.PbList<BetRsp>();
  @$core.pragma('dart2js:noInline')
  static BetRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BetRsp>(create);
  static BetRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Side> get sides => $_getList(0);

  @$pb.TagNumber(2)
  TTKPlayerInfo get playerInfo => $_getN(1);
  @$pb.TagNumber(2)
  set playerInfo(TTKPlayerInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPlayerInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearPlayerInfo() => clearField(2);
  @$pb.TagNumber(2)
  TTKPlayerInfo ensurePlayerInfo() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get no => $_getI64(2);
  @$pb.TagNumber(3)
  set no($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNo() => $_has(2);
  @$pb.TagNumber(3)
  void clearNo() => clearField(3);
}

/// 重复上局下注
class RepeatBetReq extends $pb.GeneratedMessage {
  factory RepeatBetReq({
    $fixnum.Int64? no,
    $core.String? username,
    $core.Iterable<$fixnum.Int64>? bets,
    $core.bool? incognito,
  }) {
    final $result = create();
    if (no != null) {
      $result.no = no;
    }
    if (username != null) {
      $result.username = username;
    }
    if (bets != null) {
      $result.bets.addAll(bets);
    }
    if (incognito != null) {
      $result.incognito = incognito;
    }
    return $result;
  }
  RepeatBetReq._() : super();
  factory RepeatBetReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RepeatBetReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RepeatBetReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_ttk_game'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'no')
    ..aOS(2, _omitFieldNames ? '' : 'username')
    ..p<$fixnum.Int64>(3, _omitFieldNames ? '' : 'bets', $pb.PbFieldType.K6)
    ..aOB(4, _omitFieldNames ? '' : 'incognito')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RepeatBetReq clone() => RepeatBetReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RepeatBetReq copyWith(void Function(RepeatBetReq) updates) => super.copyWith((message) => updates(message as RepeatBetReq)) as RepeatBetReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepeatBetReq create() => RepeatBetReq._();
  RepeatBetReq createEmptyInstance() => create();
  static $pb.PbList<RepeatBetReq> createRepeated() => $pb.PbList<RepeatBetReq>();
  @$core.pragma('dart2js:noInline')
  static RepeatBetReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RepeatBetReq>(create);
  static RepeatBetReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get no => $_getI64(0);
  @$pb.TagNumber(1)
  set no($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearNo() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get username => $_getSZ(1);
  @$pb.TagNumber(2)
  set username($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUsername() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsername() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$fixnum.Int64> get bets => $_getList(2);

  @$pb.TagNumber(4)
  $core.bool get incognito => $_getBF(3);
  @$pb.TagNumber(4)
  set incognito($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIncognito() => $_has(3);
  @$pb.TagNumber(4)
  void clearIncognito() => clearField(4);
}

class RepeatBetRsp extends $pb.GeneratedMessage {
  factory RepeatBetRsp({
    $core.Iterable<Side>? sides,
    TTKPlayerInfo? playerInfo,
    $fixnum.Int64? no,
  }) {
    final $result = create();
    if (sides != null) {
      $result.sides.addAll(sides);
    }
    if (playerInfo != null) {
      $result.playerInfo = playerInfo;
    }
    if (no != null) {
      $result.no = no;
    }
    return $result;
  }
  RepeatBetRsp._() : super();
  factory RepeatBetRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RepeatBetRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RepeatBetRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_ttk_game'), createEmptyInstance: create)
    ..pc<Side>(1, _omitFieldNames ? '' : 'sides', $pb.PbFieldType.PM, subBuilder: Side.create)
    ..aOM<TTKPlayerInfo>(2, _omitFieldNames ? '' : 'playerInfo', protoName: 'playerInfo', subBuilder: TTKPlayerInfo.create)
    ..aInt64(3, _omitFieldNames ? '' : 'no')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RepeatBetRsp clone() => RepeatBetRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RepeatBetRsp copyWith(void Function(RepeatBetRsp) updates) => super.copyWith((message) => updates(message as RepeatBetRsp)) as RepeatBetRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepeatBetRsp create() => RepeatBetRsp._();
  RepeatBetRsp createEmptyInstance() => create();
  static $pb.PbList<RepeatBetRsp> createRepeated() => $pb.PbList<RepeatBetRsp>();
  @$core.pragma('dart2js:noInline')
  static RepeatBetRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RepeatBetRsp>(create);
  static RepeatBetRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Side> get sides => $_getList(0);

  @$pb.TagNumber(2)
  TTKPlayerInfo get playerInfo => $_getN(1);
  @$pb.TagNumber(2)
  set playerInfo(TTKPlayerInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPlayerInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearPlayerInfo() => clearField(2);
  @$pb.TagNumber(2)
  TTKPlayerInfo ensurePlayerInfo() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get no => $_getI64(2);
  @$pb.TagNumber(3)
  set no($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNo() => $_has(2);
  @$pb.TagNumber(3)
  void clearNo() => clearField(3);
}

/// 获取本局战功榜数据
class WinnersReq extends $pb.GeneratedMessage {
  factory WinnersReq({
    $fixnum.Int64? no,
    $fixnum.Int64? offset,
    $fixnum.Int64? count,
  }) {
    final $result = create();
    if (no != null) {
      $result.no = no;
    }
    if (offset != null) {
      $result.offset = offset;
    }
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  WinnersReq._() : super();
  factory WinnersReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WinnersReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WinnersReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_ttk_game'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'no')
    ..aInt64(2, _omitFieldNames ? '' : 'offset')
    ..aInt64(3, _omitFieldNames ? '' : 'count')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WinnersReq clone() => WinnersReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WinnersReq copyWith(void Function(WinnersReq) updates) => super.copyWith((message) => updates(message as WinnersReq)) as WinnersReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WinnersReq create() => WinnersReq._();
  WinnersReq createEmptyInstance() => create();
  static $pb.PbList<WinnersReq> createRepeated() => $pb.PbList<WinnersReq>();
  @$core.pragma('dart2js:noInline')
  static WinnersReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WinnersReq>(create);
  static WinnersReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get no => $_getI64(0);
  @$pb.TagNumber(1)
  set no($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearNo() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get offset => $_getI64(1);
  @$pb.TagNumber(2)
  set offset($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearOffset() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get count => $_getI64(2);
  @$pb.TagNumber(3)
  set count($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearCount() => clearField(3);
}

class WinnersRsp extends $pb.GeneratedMessage {
  factory WinnersRsp({
    $core.Iterable<TTKPlayerInfo>? winners,
  }) {
    final $result = create();
    if (winners != null) {
      $result.winners.addAll(winners);
    }
    return $result;
  }
  WinnersRsp._() : super();
  factory WinnersRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WinnersRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WinnersRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_ttk_game'), createEmptyInstance: create)
    ..pc<TTKPlayerInfo>(1, _omitFieldNames ? '' : 'winners', $pb.PbFieldType.PM, subBuilder: TTKPlayerInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WinnersRsp clone() => WinnersRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WinnersRsp copyWith(void Function(WinnersRsp) updates) => super.copyWith((message) => updates(message as WinnersRsp)) as WinnersRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WinnersRsp create() => WinnersRsp._();
  WinnersRsp createEmptyInstance() => create();
  static $pb.PbList<WinnersRsp> createRepeated() => $pb.PbList<WinnersRsp>();
  @$core.pragma('dart2js:noInline')
  static WinnersRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WinnersRsp>(create);
  static WinnersRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TTKPlayerInfo> get winners => $_getList(0);
}

/// 开牌通知
class DealStartNotify extends $pb.GeneratedMessage {
  factory DealStartNotify({
    TTKGameInfo? game,
  }) {
    final $result = create();
    if (game != null) {
      $result.game = game;
    }
    return $result;
  }
  DealStartNotify._() : super();
  factory DealStartNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DealStartNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DealStartNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_ttk_game'), createEmptyInstance: create)
    ..aOM<TTKGameInfo>(1, _omitFieldNames ? '' : 'game', subBuilder: TTKGameInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DealStartNotify clone() => DealStartNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DealStartNotify copyWith(void Function(DealStartNotify) updates) => super.copyWith((message) => updates(message as DealStartNotify)) as DealStartNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DealStartNotify create() => DealStartNotify._();
  DealStartNotify createEmptyInstance() => create();
  static $pb.PbList<DealStartNotify> createRepeated() => $pb.PbList<DealStartNotify>();
  @$core.pragma('dart2js:noInline')
  static DealStartNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DealStartNotify>(create);
  static DealStartNotify? _defaultInstance;

  @$pb.TagNumber(1)
  TTKGameInfo get game => $_getN(0);
  @$pb.TagNumber(1)
  set game(TTKGameInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGame() => $_has(0);
  @$pb.TagNumber(1)
  void clearGame() => clearField(1);
  @$pb.TagNumber(1)
  TTKGameInfo ensureGame() => $_ensure(0);
}

/// 更新游戏配置
class UpdateGameConfig extends $pb.GeneratedMessage {
  factory UpdateGameConfig() => create();
  UpdateGameConfig._() : super();
  factory UpdateGameConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateGameConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateGameConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_ttk_game'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateGameConfig clone() => UpdateGameConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateGameConfig copyWith(void Function(UpdateGameConfig) updates) => super.copyWith((message) => updates(message as UpdateGameConfig)) as UpdateGameConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateGameConfig create() => UpdateGameConfig._();
  UpdateGameConfig createEmptyInstance() => create();
  static $pb.PbList<UpdateGameConfig> createRepeated() => $pb.PbList<UpdateGameConfig>();
  @$core.pragma('dart2js:noInline')
  static UpdateGameConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateGameConfig>(create);
  static UpdateGameConfig? _defaultInstance;
}

/// 设置奖池大小
class SetGamePool extends $pb.GeneratedMessage {
  factory SetGamePool({
    $fixnum.Int64? amount,
  }) {
    final $result = create();
    if (amount != null) {
      $result.amount = amount;
    }
    return $result;
  }
  SetGamePool._() : super();
  factory SetGamePool.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetGamePool.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetGamePool', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_ttk_game'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'amount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetGamePool clone() => SetGamePool()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetGamePool copyWith(void Function(SetGamePool) updates) => super.copyWith((message) => updates(message as SetGamePool)) as SetGamePool;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetGamePool create() => SetGamePool._();
  SetGamePool createEmptyInstance() => create();
  static $pb.PbList<SetGamePool> createRepeated() => $pb.PbList<SetGamePool>();
  @$core.pragma('dart2js:noInline')
  static SetGamePool getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetGamePool>(create);
  static SetGamePool? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get amount => $_getI64(0);
  @$pb.TagNumber(1)
  set amount($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAmount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAmount() => clearField(1);
}

/// 设置桌位权重
class SetKingdomWeight extends $pb.GeneratedMessage {
  factory SetKingdomWeight({
    $core.Iterable<$core.int>? weights,
  }) {
    final $result = create();
    if (weights != null) {
      $result.weights.addAll(weights);
    }
    return $result;
  }
  SetKingdomWeight._() : super();
  factory SetKingdomWeight.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetKingdomWeight.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetKingdomWeight', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_ttk_game'), createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'weights', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetKingdomWeight clone() => SetKingdomWeight()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetKingdomWeight copyWith(void Function(SetKingdomWeight) updates) => super.copyWith((message) => updates(message as SetKingdomWeight)) as SetKingdomWeight;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetKingdomWeight create() => SetKingdomWeight._();
  SetKingdomWeight createEmptyInstance() => create();
  static $pb.PbList<SetKingdomWeight> createRepeated() => $pb.PbList<SetKingdomWeight>();
  @$core.pragma('dart2js:noInline')
  static SetKingdomWeight getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetKingdomWeight>(create);
  static SetKingdomWeight? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get weights => $_getList(0);
}

/// GET /ttk/game-state?appId=XXX&secrect=XXX
class TTKGameStateReq extends $pb.GeneratedMessage {
  factory TTKGameStateReq() => create();
  TTKGameStateReq._() : super();
  factory TTKGameStateReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TTKGameStateReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TTKGameStateReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_ttk_game'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TTKGameStateReq clone() => TTKGameStateReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TTKGameStateReq copyWith(void Function(TTKGameStateReq) updates) => super.copyWith((message) => updates(message as TTKGameStateReq)) as TTKGameStateReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TTKGameStateReq create() => TTKGameStateReq._();
  TTKGameStateReq createEmptyInstance() => create();
  static $pb.PbList<TTKGameStateReq> createRepeated() => $pb.PbList<TTKGameStateReq>();
  @$core.pragma('dart2js:noInline')
  static TTKGameStateReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TTKGameStateReq>(create);
  static TTKGameStateReq? _defaultInstance;
}

class TTKGameStateRsp extends $pb.GeneratedMessage {
  factory TTKGameStateRsp({
    $core.int? state,
    $fixnum.Int64? countdown,
    $core.Iterable<TTKKingdom>? kingdoms,
  }) {
    final $result = create();
    if (state != null) {
      $result.state = state;
    }
    if (countdown != null) {
      $result.countdown = countdown;
    }
    if (kingdoms != null) {
      $result.kingdoms.addAll(kingdoms);
    }
    return $result;
  }
  TTKGameStateRsp._() : super();
  factory TTKGameStateRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TTKGameStateRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TTKGameStateRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_ttk_game'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'state', $pb.PbFieldType.O3)
    ..aInt64(2, _omitFieldNames ? '' : 'countdown')
    ..pc<TTKKingdom>(3, _omitFieldNames ? '' : 'kingdoms', $pb.PbFieldType.PM, subBuilder: TTKKingdom.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TTKGameStateRsp clone() => TTKGameStateRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TTKGameStateRsp copyWith(void Function(TTKGameStateRsp) updates) => super.copyWith((message) => updates(message as TTKGameStateRsp)) as TTKGameStateRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TTKGameStateRsp create() => TTKGameStateRsp._();
  TTKGameStateRsp createEmptyInstance() => create();
  static $pb.PbList<TTKGameStateRsp> createRepeated() => $pb.PbList<TTKGameStateRsp>();
  @$core.pragma('dart2js:noInline')
  static TTKGameStateRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TTKGameStateRsp>(create);
  static TTKGameStateRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get state => $_getIZ(0);
  @$pb.TagNumber(1)
  set state($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get countdown => $_getI64(1);
  @$pb.TagNumber(2)
  set countdown($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCountdown() => $_has(1);
  @$pb.TagNumber(2)
  void clearCountdown() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<TTKKingdom> get kingdoms => $_getList(2);
}

class TTKKingdom_Player extends $pb.GeneratedMessage {
  factory TTKKingdom_Player({
    $fixnum.Int64? userId,
    $fixnum.Int64? bet,
    $core.int? userGameType,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (bet != null) {
      $result.bet = bet;
    }
    if (userGameType != null) {
      $result.userGameType = userGameType;
    }
    return $result;
  }
  TTKKingdom_Player._() : super();
  factory TTKKingdom_Player.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TTKKingdom_Player.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TTKKingdom.Player', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_ttk_game'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..aInt64(2, _omitFieldNames ? '' : 'bet')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'userGameType', $pb.PbFieldType.O3, protoName: 'userGameType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TTKKingdom_Player clone() => TTKKingdom_Player()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TTKKingdom_Player copyWith(void Function(TTKKingdom_Player) updates) => super.copyWith((message) => updates(message as TTKKingdom_Player)) as TTKKingdom_Player;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TTKKingdom_Player create() => TTKKingdom_Player._();
  TTKKingdom_Player createEmptyInstance() => create();
  static $pb.PbList<TTKKingdom_Player> createRepeated() => $pb.PbList<TTKKingdom_Player>();
  @$core.pragma('dart2js:noInline')
  static TTKKingdom_Player getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TTKKingdom_Player>(create);
  static TTKKingdom_Player? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get bet => $_getI64(1);
  @$pb.TagNumber(2)
  set bet($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBet() => $_has(1);
  @$pb.TagNumber(2)
  void clearBet() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get userGameType => $_getIZ(2);
  @$pb.TagNumber(3)
  set userGameType($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserGameType() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserGameType() => clearField(3);
}

class TTKKingdom extends $pb.GeneratedMessage {
  factory TTKKingdom({
    $core.Iterable<TTKKingdom_Player>? players,
    $fixnum.Int64? total,
  }) {
    final $result = create();
    if (players != null) {
      $result.players.addAll(players);
    }
    if (total != null) {
      $result.total = total;
    }
    return $result;
  }
  TTKKingdom._() : super();
  factory TTKKingdom.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TTKKingdom.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TTKKingdom', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_ttk_game'), createEmptyInstance: create)
    ..pc<TTKKingdom_Player>(1, _omitFieldNames ? '' : 'players', $pb.PbFieldType.PM, subBuilder: TTKKingdom_Player.create)
    ..aInt64(2, _omitFieldNames ? '' : 'total')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TTKKingdom clone() => TTKKingdom()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TTKKingdom copyWith(void Function(TTKKingdom) updates) => super.copyWith((message) => updates(message as TTKKingdom)) as TTKKingdom;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TTKKingdom create() => TTKKingdom._();
  TTKKingdom createEmptyInstance() => create();
  static $pb.PbList<TTKKingdom> createRepeated() => $pb.PbList<TTKKingdom>();
  @$core.pragma('dart2js:noInline')
  static TTKKingdom getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TTKKingdom>(create);
  static TTKKingdom? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TTKKingdom_Player> get players => $_getList(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get total => $_getI64(1);
  @$pb.TagNumber(2)
  set total($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
