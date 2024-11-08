//
//  Generated code. Do not modify.
//  source: pb_grpc/community/community.proto
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

import '../../pb_msg/community/community.pb.dart' as $0;

export 'community.pb.dart';

@$pb.GrpcServiceName('pb_grpc_community.Community')
class CommunityClient extends $grpc.Client {
  static final _$createCommunity = $grpc.ClientMethod<$0.CreateCommunityReq, $0.CreateCommunityRsp>(
      '/pb_grpc_community.Community/CreateCommunity',
      ($0.CreateCommunityReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateCommunityRsp.fromBuffer(value));
  static final _$updateCommunity = $grpc.ClientMethod<$0.UpdateCommunityReq, $0.UpdateCommunityRsp>(
      '/pb_grpc_community.Community/UpdateCommunity',
      ($0.UpdateCommunityReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateCommunityRsp.fromBuffer(value));
  static final _$applyJoin = $grpc.ClientMethod<$0.ApplyJoinReq, $0.ApplyJoinRsp>(
      '/pb_grpc_community.Community/ApplyJoin',
      ($0.ApplyJoinReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ApplyJoinRsp.fromBuffer(value));
  static final _$answerApply = $grpc.ClientMethod<$0.AnswerApplyReq, $0.AnswerApplyRsp>(
      '/pb_grpc_community.Community/AnswerApply',
      ($0.AnswerApplyReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AnswerApplyRsp.fromBuffer(value));
  static final _$inviteJoin = $grpc.ClientMethod<$0.InviteJoinReq, $0.InviteJoinRsp>(
      '/pb_grpc_community.Community/InviteJoin',
      ($0.InviteJoinReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.InviteJoinRsp.fromBuffer(value));
  static final _$answerInvite = $grpc.ClientMethod<$0.AnswerInviteReq, $0.AnswerInviteRsp>(
      '/pb_grpc_community.Community/AnswerInvite',
      ($0.AnswerInviteReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AnswerInviteRsp.fromBuffer(value));
  static final _$joinCommunity = $grpc.ClientMethod<$0.JoinCommunityReq, $0.JoinCommunityRsp>(
      '/pb_grpc_community.Community/JoinCommunity',
      ($0.JoinCommunityReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.JoinCommunityRsp.fromBuffer(value));
  static final _$quitCommunity = $grpc.ClientMethod<$0.QuitCommunityReq, $0.QuitCommunityRsp>(
      '/pb_grpc_community.Community/QuitCommunity',
      ($0.QuitCommunityReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.QuitCommunityRsp.fromBuffer(value));
  static final _$updateMember = $grpc.ClientMethod<$0.UpdateMemberReq, $0.UpdateMemberRsp>(
      '/pb_grpc_community.Community/UpdateMember',
      ($0.UpdateMemberReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateMemberRsp.fromBuffer(value));
  static final _$addTopic = $grpc.ClientMethod<$0.AddTopicReq, $0.AddTopicRsp>(
      '/pb_grpc_community.Community/AddTopic',
      ($0.AddTopicReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AddTopicRsp.fromBuffer(value));
  static final _$addGift = $grpc.ClientMethod<$0.AddGiftReq, $0.AddGiftRsp>(
      '/pb_grpc_community.Community/AddGift',
      ($0.AddGiftReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AddGiftRsp.fromBuffer(value));
  static final _$post = $grpc.ClientMethod<$0.PostReq, $0.PostRsp>(
      '/pb_grpc_community.Community/Post',
      ($0.PostReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.PostRsp.fromBuffer(value));
  static final _$comment = $grpc.ClientMethod<$0.CommentReq, $0.CommentRsp>(
      '/pb_grpc_community.Community/Comment',
      ($0.CommentReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CommentRsp.fromBuffer(value));
  static final _$reply = $grpc.ClientMethod<$0.ReplyReq, $0.ReplyRsp>(
      '/pb_grpc_community.Community/Reply',
      ($0.ReplyReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ReplyRsp.fromBuffer(value));
  static final _$like = $grpc.ClientMethod<$0.LikeReq, $0.LikeRsp>(
      '/pb_grpc_community.Community/Like',
      ($0.LikeReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LikeRsp.fromBuffer(value));
  static final _$unlike = $grpc.ClientMethod<$0.UnlikeReq, $0.UnlikeRsp>(
      '/pb_grpc_community.Community/Unlike',
      ($0.UnlikeReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UnlikeRsp.fromBuffer(value));
  static final _$share = $grpc.ClientMethod<$0.ShareReq, $0.ShareRsp>(
      '/pb_grpc_community.Community/Share',
      ($0.ShareReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ShareRsp.fromBuffer(value));
  static final _$vote = $grpc.ClientMethod<$0.VoteReq, $0.VoteRsp>(
      '/pb_grpc_community.Community/Vote',
      ($0.VoteReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.VoteRsp.fromBuffer(value));
  static final _$watch = $grpc.ClientMethod<$0.WatchReq, $0.WatchRsp>(
      '/pb_grpc_community.Community/Watch',
      ($0.WatchReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.WatchRsp.fromBuffer(value));
  static final _$unwatch = $grpc.ClientMethod<$0.UnwatchReq, $0.UnwatchRsp>(
      '/pb_grpc_community.Community/Unwatch',
      ($0.UnwatchReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UnwatchRsp.fromBuffer(value));
  static final _$award = $grpc.ClientMethod<$0.AwardReq, $0.AwardRsp>(
      '/pb_grpc_community.Community/Award',
      ($0.AwardReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AwardRsp.fromBuffer(value));
  static final _$favorite = $grpc.ClientMethod<$0.FavoriteReq, $0.FavoriteRsp>(
      '/pb_grpc_community.Community/Favorite',
      ($0.FavoriteReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FavoriteRsp.fromBuffer(value));
  static final _$unfavorite = $grpc.ClientMethod<$0.UnfavoriteReq, $0.UnfavoriteRsp>(
      '/pb_grpc_community.Community/Unfavorite',
      ($0.UnfavoriteReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UnfavoriteRsp.fromBuffer(value));
  static final _$shoot = $grpc.ClientMethod<$0.ShootReq, $0.ShootRsp>(
      '/pb_grpc_community.Community/Shoot',
      ($0.ShootReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ShootRsp.fromBuffer(value));
  static final _$follow = $grpc.ClientMethod<$0.FollowReq, $0.FollowRsp>(
      '/pb_grpc_community.Community/Follow',
      ($0.FollowReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FollowRsp.fromBuffer(value));
  static final _$unfollow = $grpc.ClientMethod<$0.UnfollowReq, $0.UnfollowRsp>(
      '/pb_grpc_community.Community/Unfollow',
      ($0.UnfollowReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UnfollowRsp.fromBuffer(value));
  static final _$participate = $grpc.ClientMethod<$0.ParticipateReq, $0.ParticipateRsp>(
      '/pb_grpc_community.Community/Participate',
      ($0.ParticipateReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ParticipateRsp.fromBuffer(value));
  static final _$unparticipate = $grpc.ClientMethod<$0.UnparticipateReq, $0.UnparticipateRsp>(
      '/pb_grpc_community.Community/Unparticipate',
      ($0.UnparticipateReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UnparticipateRsp.fromBuffer(value));
  static final _$members = $grpc.ClientMethod<$0.MembersReq, $0.MembersRsp>(
      '/pb_grpc_community.Community/Members',
      ($0.MembersReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MembersRsp.fromBuffer(value));
  static final _$communityDetail = $grpc.ClientMethod<$0.CommunityDetailReq, $0.CommunityDetailRsp>(
      '/pb_grpc_community.Community/CommunityDetail',
      ($0.CommunityDetailReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CommunityDetailRsp.fromBuffer(value));
  static final _$posts = $grpc.ClientMethod<$0.PostsReq, $0.PostsRsp>(
      '/pb_grpc_community.Community/Posts',
      ($0.PostsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.PostsRsp.fromBuffer(value));
  static final _$postDetail = $grpc.ClientMethod<$0.PostDetailReq, $0.PostDetailRsp>(
      '/pb_grpc_community.Community/PostDetail',
      ($0.PostDetailReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.PostDetailRsp.fromBuffer(value));
  static final _$comments = $grpc.ClientMethod<$0.CommentsReq, $0.CommentsRsp>(
      '/pb_grpc_community.Community/Comments',
      ($0.CommentsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CommentsRsp.fromBuffer(value));
  static final _$commentDetail = $grpc.ClientMethod<$0.CommentDetailReq, $0.CommentDetailRsp>(
      '/pb_grpc_community.Community/CommentDetail',
      ($0.CommentDetailReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CommentDetailRsp.fromBuffer(value));
  static final _$replies = $grpc.ClientMethod<$0.RepliesReq, $0.RepliesRsp>(
      '/pb_grpc_community.Community/Replies',
      ($0.RepliesReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.RepliesRsp.fromBuffer(value));
  static final _$barrages = $grpc.ClientMethod<$0.BarragesReq, $0.BarragesRsp>(
      '/pb_grpc_community.Community/Barrages',
      ($0.BarragesReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.BarragesRsp.fromBuffer(value));
  static final _$userCommunities = $grpc.ClientMethod<$0.UserCommunitiesReq, $0.UserCommunitiesRsp>(
      '/pb_grpc_community.Community/UserCommunities',
      ($0.UserCommunitiesReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserCommunitiesRsp.fromBuffer(value));
  static final _$allCommunities = $grpc.ClientMethod<$0.AllCommunitiesReq, $0.AllCommunitiesRsp>(
      '/pb_grpc_community.Community/AllCommunities',
      ($0.AllCommunitiesReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AllCommunitiesRsp.fromBuffer(value));
  static final _$userPosts = $grpc.ClientMethod<$0.UserPostsReq, $0.UserPostsRsp>(
      '/pb_grpc_community.Community/UserPosts',
      ($0.UserPostsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserPostsRsp.fromBuffer(value));
  static final _$userComments = $grpc.ClientMethod<$0.UserCommentsReq, $0.UserCommentsRsp>(
      '/pb_grpc_community.Community/UserComments',
      ($0.UserCommentsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserCommentsRsp.fromBuffer(value));
  static final _$userWatchs = $grpc.ClientMethod<$0.UserWatchsReq, $0.UserWatchsRsp>(
      '/pb_grpc_community.Community/UserWatchs',
      ($0.UserWatchsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserWatchsRsp.fromBuffer(value));
  static final _$userLikes = $grpc.ClientMethod<$0.UserLikesReq, $0.UserLikesRsp>(
      '/pb_grpc_community.Community/UserLikes',
      ($0.UserLikesReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserLikesRsp.fromBuffer(value));
  static final _$userFollowers = $grpc.ClientMethod<$0.UserFollowersReq, $0.UserFollowersRsp>(
      '/pb_grpc_community.Community/UserFollowers',
      ($0.UserFollowersReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserFollowersRsp.fromBuffer(value));
  static final _$userFollowees = $grpc.ClientMethod<$0.UserFolloweesReq, $0.UserFolloweesRsp>(
      '/pb_grpc_community.Community/UserFollowees',
      ($0.UserFolloweesReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserFolloweesRsp.fromBuffer(value));
  static final _$userFavorites = $grpc.ClientMethod<$0.UserFavoritesReq, $0.UserFavoritesRsp>(
      '/pb_grpc_community.Community/UserFavorites',
      ($0.UserFavoritesReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserFavoritesRsp.fromBuffer(value));
  static final _$userParticipates = $grpc.ClientMethod<$0.UserParticipatesReq, $0.UserParticipatesRsp>(
      '/pb_grpc_community.Community/UserParticipates',
      ($0.UserParticipatesReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserParticipatesRsp.fromBuffer(value));
  static final _$userBallots = $grpc.ClientMethod<$0.UserBallotsReq, $0.UserBallotsRsp>(
      '/pb_grpc_community.Community/UserBallots',
      ($0.UserBallotsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserBallotsRsp.fromBuffer(value));
  static final _$userFiles = $grpc.ClientMethod<$0.UserFilesReq, $0.UserFilesRsp>(
      '/pb_grpc_community.Community/UserFiles',
      ($0.UserFilesReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserFilesRsp.fromBuffer(value));
  static final _$userAwards = $grpc.ClientMethod<$0.UserAwardsReq, $0.UserAwardsRsp>(
      '/pb_grpc_community.Community/UserAwards',
      ($0.UserAwardsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserAwardsRsp.fromBuffer(value));
  static final _$userInfo = $grpc.ClientMethod<$0.UserInfoReq, $0.UserInfoRsp>(
      '/pb_grpc_community.Community/UserInfo',
      ($0.UserInfoReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserInfoRsp.fromBuffer(value));

  CommunityClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateCommunityRsp> createCommunity($0.CreateCommunityReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createCommunity, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateCommunityRsp> updateCommunity($0.UpdateCommunityReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateCommunity, request, options: options);
  }

  $grpc.ResponseFuture<$0.ApplyJoinRsp> applyJoin($0.ApplyJoinReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$applyJoin, request, options: options);
  }

  $grpc.ResponseFuture<$0.AnswerApplyRsp> answerApply($0.AnswerApplyReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$answerApply, request, options: options);
  }

  $grpc.ResponseFuture<$0.InviteJoinRsp> inviteJoin($0.InviteJoinReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$inviteJoin, request, options: options);
  }

  $grpc.ResponseFuture<$0.AnswerInviteRsp> answerInvite($0.AnswerInviteReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$answerInvite, request, options: options);
  }

  $grpc.ResponseFuture<$0.JoinCommunityRsp> joinCommunity($0.JoinCommunityReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$joinCommunity, request, options: options);
  }

  $grpc.ResponseFuture<$0.QuitCommunityRsp> quitCommunity($0.QuitCommunityReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$quitCommunity, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateMemberRsp> updateMember($0.UpdateMemberReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateMember, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddTopicRsp> addTopic($0.AddTopicReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addTopic, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddGiftRsp> addGift($0.AddGiftReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addGift, request, options: options);
  }

  $grpc.ResponseFuture<$0.PostRsp> post($0.PostReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$post, request, options: options);
  }

  $grpc.ResponseFuture<$0.CommentRsp> comment($0.CommentReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$comment, request, options: options);
  }

  $grpc.ResponseFuture<$0.ReplyRsp> reply($0.ReplyReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$reply, request, options: options);
  }

  $grpc.ResponseFuture<$0.LikeRsp> like($0.LikeReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$like, request, options: options);
  }

  $grpc.ResponseFuture<$0.UnlikeRsp> unlike($0.UnlikeReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unlike, request, options: options);
  }

  $grpc.ResponseFuture<$0.ShareRsp> share($0.ShareReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$share, request, options: options);
  }

  $grpc.ResponseFuture<$0.VoteRsp> vote($0.VoteReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$vote, request, options: options);
  }

  $grpc.ResponseFuture<$0.WatchRsp> watch($0.WatchReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$watch, request, options: options);
  }

  $grpc.ResponseFuture<$0.UnwatchRsp> unwatch($0.UnwatchReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unwatch, request, options: options);
  }

  $grpc.ResponseFuture<$0.AwardRsp> award($0.AwardReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$award, request, options: options);
  }

  $grpc.ResponseFuture<$0.FavoriteRsp> favorite($0.FavoriteReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$favorite, request, options: options);
  }

  $grpc.ResponseFuture<$0.UnfavoriteRsp> unfavorite($0.UnfavoriteReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unfavorite, request, options: options);
  }

  $grpc.ResponseFuture<$0.ShootRsp> shoot($0.ShootReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$shoot, request, options: options);
  }

  $grpc.ResponseFuture<$0.FollowRsp> follow($0.FollowReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$follow, request, options: options);
  }

  $grpc.ResponseFuture<$0.UnfollowRsp> unfollow($0.UnfollowReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unfollow, request, options: options);
  }

  $grpc.ResponseFuture<$0.ParticipateRsp> participate($0.ParticipateReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$participate, request, options: options);
  }

  $grpc.ResponseFuture<$0.UnparticipateRsp> unparticipate($0.UnparticipateReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unparticipate, request, options: options);
  }

  $grpc.ResponseFuture<$0.MembersRsp> members($0.MembersReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$members, request, options: options);
  }

  $grpc.ResponseFuture<$0.CommunityDetailRsp> communityDetail($0.CommunityDetailReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$communityDetail, request, options: options);
  }

  $grpc.ResponseFuture<$0.PostsRsp> posts($0.PostsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$posts, request, options: options);
  }

  $grpc.ResponseFuture<$0.PostDetailRsp> postDetail($0.PostDetailReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$postDetail, request, options: options);
  }

  $grpc.ResponseFuture<$0.CommentsRsp> comments($0.CommentsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$comments, request, options: options);
  }

  $grpc.ResponseFuture<$0.CommentDetailRsp> commentDetail($0.CommentDetailReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$commentDetail, request, options: options);
  }

  $grpc.ResponseFuture<$0.RepliesRsp> replies($0.RepliesReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$replies, request, options: options);
  }

  $grpc.ResponseFuture<$0.BarragesRsp> barrages($0.BarragesReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$barrages, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserCommunitiesRsp> userCommunities($0.UserCommunitiesReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userCommunities, request, options: options);
  }

  $grpc.ResponseFuture<$0.AllCommunitiesRsp> allCommunities($0.AllCommunitiesReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$allCommunities, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserPostsRsp> userPosts($0.UserPostsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userPosts, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserCommentsRsp> userComments($0.UserCommentsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userComments, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserWatchsRsp> userWatchs($0.UserWatchsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userWatchs, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserLikesRsp> userLikes($0.UserLikesReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userLikes, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserFollowersRsp> userFollowers($0.UserFollowersReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userFollowers, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserFolloweesRsp> userFollowees($0.UserFolloweesReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userFollowees, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserFavoritesRsp> userFavorites($0.UserFavoritesReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userFavorites, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserParticipatesRsp> userParticipates($0.UserParticipatesReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userParticipates, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserBallotsRsp> userBallots($0.UserBallotsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userBallots, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserFilesRsp> userFiles($0.UserFilesReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userFiles, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserAwardsRsp> userAwards($0.UserAwardsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userAwards, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserInfoRsp> userInfo($0.UserInfoReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userInfo, request, options: options);
  }
}

@$pb.GrpcServiceName('pb_grpc_community.Community')
abstract class CommunityServiceBase extends $grpc.Service {
  $core.String get $name => 'pb_grpc_community.Community';

  CommunityServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateCommunityReq, $0.CreateCommunityRsp>(
        'CreateCommunity',
        createCommunity_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateCommunityReq.fromBuffer(value),
        ($0.CreateCommunityRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateCommunityReq, $0.UpdateCommunityRsp>(
        'UpdateCommunity',
        updateCommunity_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateCommunityReq.fromBuffer(value),
        ($0.UpdateCommunityRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ApplyJoinReq, $0.ApplyJoinRsp>(
        'ApplyJoin',
        applyJoin_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ApplyJoinReq.fromBuffer(value),
        ($0.ApplyJoinRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AnswerApplyReq, $0.AnswerApplyRsp>(
        'AnswerApply',
        answerApply_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AnswerApplyReq.fromBuffer(value),
        ($0.AnswerApplyRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.InviteJoinReq, $0.InviteJoinRsp>(
        'InviteJoin',
        inviteJoin_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.InviteJoinReq.fromBuffer(value),
        ($0.InviteJoinRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AnswerInviteReq, $0.AnswerInviteRsp>(
        'AnswerInvite',
        answerInvite_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AnswerInviteReq.fromBuffer(value),
        ($0.AnswerInviteRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.JoinCommunityReq, $0.JoinCommunityRsp>(
        'JoinCommunity',
        joinCommunity_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.JoinCommunityReq.fromBuffer(value),
        ($0.JoinCommunityRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QuitCommunityReq, $0.QuitCommunityRsp>(
        'QuitCommunity',
        quitCommunity_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.QuitCommunityReq.fromBuffer(value),
        ($0.QuitCommunityRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateMemberReq, $0.UpdateMemberRsp>(
        'UpdateMember',
        updateMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateMemberReq.fromBuffer(value),
        ($0.UpdateMemberRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddTopicReq, $0.AddTopicRsp>(
        'AddTopic',
        addTopic_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddTopicReq.fromBuffer(value),
        ($0.AddTopicRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddGiftReq, $0.AddGiftRsp>(
        'AddGift',
        addGift_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddGiftReq.fromBuffer(value),
        ($0.AddGiftRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PostReq, $0.PostRsp>(
        'Post',
        post_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PostReq.fromBuffer(value),
        ($0.PostRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CommentReq, $0.CommentRsp>(
        'Comment',
        comment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CommentReq.fromBuffer(value),
        ($0.CommentRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ReplyReq, $0.ReplyRsp>(
        'Reply',
        reply_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ReplyReq.fromBuffer(value),
        ($0.ReplyRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LikeReq, $0.LikeRsp>(
        'Like',
        like_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LikeReq.fromBuffer(value),
        ($0.LikeRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UnlikeReq, $0.UnlikeRsp>(
        'Unlike',
        unlike_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UnlikeReq.fromBuffer(value),
        ($0.UnlikeRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ShareReq, $0.ShareRsp>(
        'Share',
        share_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ShareReq.fromBuffer(value),
        ($0.ShareRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.VoteReq, $0.VoteRsp>(
        'Vote',
        vote_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.VoteReq.fromBuffer(value),
        ($0.VoteRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.WatchReq, $0.WatchRsp>(
        'Watch',
        watch_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.WatchReq.fromBuffer(value),
        ($0.WatchRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UnwatchReq, $0.UnwatchRsp>(
        'Unwatch',
        unwatch_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UnwatchReq.fromBuffer(value),
        ($0.UnwatchRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AwardReq, $0.AwardRsp>(
        'Award',
        award_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AwardReq.fromBuffer(value),
        ($0.AwardRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FavoriteReq, $0.FavoriteRsp>(
        'Favorite',
        favorite_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FavoriteReq.fromBuffer(value),
        ($0.FavoriteRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UnfavoriteReq, $0.UnfavoriteRsp>(
        'Unfavorite',
        unfavorite_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UnfavoriteReq.fromBuffer(value),
        ($0.UnfavoriteRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ShootReq, $0.ShootRsp>(
        'Shoot',
        shoot_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ShootReq.fromBuffer(value),
        ($0.ShootRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FollowReq, $0.FollowRsp>(
        'Follow',
        follow_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FollowReq.fromBuffer(value),
        ($0.FollowRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UnfollowReq, $0.UnfollowRsp>(
        'Unfollow',
        unfollow_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UnfollowReq.fromBuffer(value),
        ($0.UnfollowRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ParticipateReq, $0.ParticipateRsp>(
        'Participate',
        participate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ParticipateReq.fromBuffer(value),
        ($0.ParticipateRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UnparticipateReq, $0.UnparticipateRsp>(
        'Unparticipate',
        unparticipate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UnparticipateReq.fromBuffer(value),
        ($0.UnparticipateRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MembersReq, $0.MembersRsp>(
        'Members',
        members_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MembersReq.fromBuffer(value),
        ($0.MembersRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CommunityDetailReq, $0.CommunityDetailRsp>(
        'CommunityDetail',
        communityDetail_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CommunityDetailReq.fromBuffer(value),
        ($0.CommunityDetailRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PostsReq, $0.PostsRsp>(
        'Posts',
        posts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PostsReq.fromBuffer(value),
        ($0.PostsRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PostDetailReq, $0.PostDetailRsp>(
        'PostDetail',
        postDetail_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PostDetailReq.fromBuffer(value),
        ($0.PostDetailRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CommentsReq, $0.CommentsRsp>(
        'Comments',
        comments_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CommentsReq.fromBuffer(value),
        ($0.CommentsRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CommentDetailReq, $0.CommentDetailRsp>(
        'CommentDetail',
        commentDetail_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CommentDetailReq.fromBuffer(value),
        ($0.CommentDetailRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RepliesReq, $0.RepliesRsp>(
        'Replies',
        replies_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RepliesReq.fromBuffer(value),
        ($0.RepliesRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BarragesReq, $0.BarragesRsp>(
        'Barrages',
        barrages_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BarragesReq.fromBuffer(value),
        ($0.BarragesRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserCommunitiesReq, $0.UserCommunitiesRsp>(
        'UserCommunities',
        userCommunities_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserCommunitiesReq.fromBuffer(value),
        ($0.UserCommunitiesRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AllCommunitiesReq, $0.AllCommunitiesRsp>(
        'AllCommunities',
        allCommunities_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AllCommunitiesReq.fromBuffer(value),
        ($0.AllCommunitiesRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserPostsReq, $0.UserPostsRsp>(
        'UserPosts',
        userPosts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserPostsReq.fromBuffer(value),
        ($0.UserPostsRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserCommentsReq, $0.UserCommentsRsp>(
        'UserComments',
        userComments_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserCommentsReq.fromBuffer(value),
        ($0.UserCommentsRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserWatchsReq, $0.UserWatchsRsp>(
        'UserWatchs',
        userWatchs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserWatchsReq.fromBuffer(value),
        ($0.UserWatchsRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserLikesReq, $0.UserLikesRsp>(
        'UserLikes',
        userLikes_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserLikesReq.fromBuffer(value),
        ($0.UserLikesRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserFollowersReq, $0.UserFollowersRsp>(
        'UserFollowers',
        userFollowers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserFollowersReq.fromBuffer(value),
        ($0.UserFollowersRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserFolloweesReq, $0.UserFolloweesRsp>(
        'UserFollowees',
        userFollowees_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserFolloweesReq.fromBuffer(value),
        ($0.UserFolloweesRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserFavoritesReq, $0.UserFavoritesRsp>(
        'UserFavorites',
        userFavorites_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserFavoritesReq.fromBuffer(value),
        ($0.UserFavoritesRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserParticipatesReq, $0.UserParticipatesRsp>(
        'UserParticipates',
        userParticipates_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserParticipatesReq.fromBuffer(value),
        ($0.UserParticipatesRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserBallotsReq, $0.UserBallotsRsp>(
        'UserBallots',
        userBallots_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserBallotsReq.fromBuffer(value),
        ($0.UserBallotsRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserFilesReq, $0.UserFilesRsp>(
        'UserFiles',
        userFiles_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserFilesReq.fromBuffer(value),
        ($0.UserFilesRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserAwardsReq, $0.UserAwardsRsp>(
        'UserAwards',
        userAwards_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserAwardsReq.fromBuffer(value),
        ($0.UserAwardsRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserInfoReq, $0.UserInfoRsp>(
        'UserInfo',
        userInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserInfoReq.fromBuffer(value),
        ($0.UserInfoRsp value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateCommunityRsp> createCommunity_Pre($grpc.ServiceCall call, $async.Future<$0.CreateCommunityReq> request) async {
    return createCommunity(call, await request);
  }

  $async.Future<$0.UpdateCommunityRsp> updateCommunity_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateCommunityReq> request) async {
    return updateCommunity(call, await request);
  }

  $async.Future<$0.ApplyJoinRsp> applyJoin_Pre($grpc.ServiceCall call, $async.Future<$0.ApplyJoinReq> request) async {
    return applyJoin(call, await request);
  }

  $async.Future<$0.AnswerApplyRsp> answerApply_Pre($grpc.ServiceCall call, $async.Future<$0.AnswerApplyReq> request) async {
    return answerApply(call, await request);
  }

  $async.Future<$0.InviteJoinRsp> inviteJoin_Pre($grpc.ServiceCall call, $async.Future<$0.InviteJoinReq> request) async {
    return inviteJoin(call, await request);
  }

  $async.Future<$0.AnswerInviteRsp> answerInvite_Pre($grpc.ServiceCall call, $async.Future<$0.AnswerInviteReq> request) async {
    return answerInvite(call, await request);
  }

  $async.Future<$0.JoinCommunityRsp> joinCommunity_Pre($grpc.ServiceCall call, $async.Future<$0.JoinCommunityReq> request) async {
    return joinCommunity(call, await request);
  }

  $async.Future<$0.QuitCommunityRsp> quitCommunity_Pre($grpc.ServiceCall call, $async.Future<$0.QuitCommunityReq> request) async {
    return quitCommunity(call, await request);
  }

  $async.Future<$0.UpdateMemberRsp> updateMember_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateMemberReq> request) async {
    return updateMember(call, await request);
  }

  $async.Future<$0.AddTopicRsp> addTopic_Pre($grpc.ServiceCall call, $async.Future<$0.AddTopicReq> request) async {
    return addTopic(call, await request);
  }

  $async.Future<$0.AddGiftRsp> addGift_Pre($grpc.ServiceCall call, $async.Future<$0.AddGiftReq> request) async {
    return addGift(call, await request);
  }

  $async.Future<$0.PostRsp> post_Pre($grpc.ServiceCall call, $async.Future<$0.PostReq> request) async {
    return post(call, await request);
  }

  $async.Future<$0.CommentRsp> comment_Pre($grpc.ServiceCall call, $async.Future<$0.CommentReq> request) async {
    return comment(call, await request);
  }

  $async.Future<$0.ReplyRsp> reply_Pre($grpc.ServiceCall call, $async.Future<$0.ReplyReq> request) async {
    return reply(call, await request);
  }

  $async.Future<$0.LikeRsp> like_Pre($grpc.ServiceCall call, $async.Future<$0.LikeReq> request) async {
    return like(call, await request);
  }

  $async.Future<$0.UnlikeRsp> unlike_Pre($grpc.ServiceCall call, $async.Future<$0.UnlikeReq> request) async {
    return unlike(call, await request);
  }

  $async.Future<$0.ShareRsp> share_Pre($grpc.ServiceCall call, $async.Future<$0.ShareReq> request) async {
    return share(call, await request);
  }

  $async.Future<$0.VoteRsp> vote_Pre($grpc.ServiceCall call, $async.Future<$0.VoteReq> request) async {
    return vote(call, await request);
  }

  $async.Future<$0.WatchRsp> watch_Pre($grpc.ServiceCall call, $async.Future<$0.WatchReq> request) async {
    return watch(call, await request);
  }

  $async.Future<$0.UnwatchRsp> unwatch_Pre($grpc.ServiceCall call, $async.Future<$0.UnwatchReq> request) async {
    return unwatch(call, await request);
  }

  $async.Future<$0.AwardRsp> award_Pre($grpc.ServiceCall call, $async.Future<$0.AwardReq> request) async {
    return award(call, await request);
  }

  $async.Future<$0.FavoriteRsp> favorite_Pre($grpc.ServiceCall call, $async.Future<$0.FavoriteReq> request) async {
    return favorite(call, await request);
  }

  $async.Future<$0.UnfavoriteRsp> unfavorite_Pre($grpc.ServiceCall call, $async.Future<$0.UnfavoriteReq> request) async {
    return unfavorite(call, await request);
  }

  $async.Future<$0.ShootRsp> shoot_Pre($grpc.ServiceCall call, $async.Future<$0.ShootReq> request) async {
    return shoot(call, await request);
  }

  $async.Future<$0.FollowRsp> follow_Pre($grpc.ServiceCall call, $async.Future<$0.FollowReq> request) async {
    return follow(call, await request);
  }

  $async.Future<$0.UnfollowRsp> unfollow_Pre($grpc.ServiceCall call, $async.Future<$0.UnfollowReq> request) async {
    return unfollow(call, await request);
  }

  $async.Future<$0.ParticipateRsp> participate_Pre($grpc.ServiceCall call, $async.Future<$0.ParticipateReq> request) async {
    return participate(call, await request);
  }

  $async.Future<$0.UnparticipateRsp> unparticipate_Pre($grpc.ServiceCall call, $async.Future<$0.UnparticipateReq> request) async {
    return unparticipate(call, await request);
  }

  $async.Future<$0.MembersRsp> members_Pre($grpc.ServiceCall call, $async.Future<$0.MembersReq> request) async {
    return members(call, await request);
  }

  $async.Future<$0.CommunityDetailRsp> communityDetail_Pre($grpc.ServiceCall call, $async.Future<$0.CommunityDetailReq> request) async {
    return communityDetail(call, await request);
  }

  $async.Future<$0.PostsRsp> posts_Pre($grpc.ServiceCall call, $async.Future<$0.PostsReq> request) async {
    return posts(call, await request);
  }

  $async.Future<$0.PostDetailRsp> postDetail_Pre($grpc.ServiceCall call, $async.Future<$0.PostDetailReq> request) async {
    return postDetail(call, await request);
  }

  $async.Future<$0.CommentsRsp> comments_Pre($grpc.ServiceCall call, $async.Future<$0.CommentsReq> request) async {
    return comments(call, await request);
  }

  $async.Future<$0.CommentDetailRsp> commentDetail_Pre($grpc.ServiceCall call, $async.Future<$0.CommentDetailReq> request) async {
    return commentDetail(call, await request);
  }

  $async.Future<$0.RepliesRsp> replies_Pre($grpc.ServiceCall call, $async.Future<$0.RepliesReq> request) async {
    return replies(call, await request);
  }

  $async.Future<$0.BarragesRsp> barrages_Pre($grpc.ServiceCall call, $async.Future<$0.BarragesReq> request) async {
    return barrages(call, await request);
  }

  $async.Future<$0.UserCommunitiesRsp> userCommunities_Pre($grpc.ServiceCall call, $async.Future<$0.UserCommunitiesReq> request) async {
    return userCommunities(call, await request);
  }

  $async.Future<$0.AllCommunitiesRsp> allCommunities_Pre($grpc.ServiceCall call, $async.Future<$0.AllCommunitiesReq> request) async {
    return allCommunities(call, await request);
  }

  $async.Future<$0.UserPostsRsp> userPosts_Pre($grpc.ServiceCall call, $async.Future<$0.UserPostsReq> request) async {
    return userPosts(call, await request);
  }

  $async.Future<$0.UserCommentsRsp> userComments_Pre($grpc.ServiceCall call, $async.Future<$0.UserCommentsReq> request) async {
    return userComments(call, await request);
  }

  $async.Future<$0.UserWatchsRsp> userWatchs_Pre($grpc.ServiceCall call, $async.Future<$0.UserWatchsReq> request) async {
    return userWatchs(call, await request);
  }

  $async.Future<$0.UserLikesRsp> userLikes_Pre($grpc.ServiceCall call, $async.Future<$0.UserLikesReq> request) async {
    return userLikes(call, await request);
  }

  $async.Future<$0.UserFollowersRsp> userFollowers_Pre($grpc.ServiceCall call, $async.Future<$0.UserFollowersReq> request) async {
    return userFollowers(call, await request);
  }

  $async.Future<$0.UserFolloweesRsp> userFollowees_Pre($grpc.ServiceCall call, $async.Future<$0.UserFolloweesReq> request) async {
    return userFollowees(call, await request);
  }

  $async.Future<$0.UserFavoritesRsp> userFavorites_Pre($grpc.ServiceCall call, $async.Future<$0.UserFavoritesReq> request) async {
    return userFavorites(call, await request);
  }

  $async.Future<$0.UserParticipatesRsp> userParticipates_Pre($grpc.ServiceCall call, $async.Future<$0.UserParticipatesReq> request) async {
    return userParticipates(call, await request);
  }

  $async.Future<$0.UserBallotsRsp> userBallots_Pre($grpc.ServiceCall call, $async.Future<$0.UserBallotsReq> request) async {
    return userBallots(call, await request);
  }

  $async.Future<$0.UserFilesRsp> userFiles_Pre($grpc.ServiceCall call, $async.Future<$0.UserFilesReq> request) async {
    return userFiles(call, await request);
  }

  $async.Future<$0.UserAwardsRsp> userAwards_Pre($grpc.ServiceCall call, $async.Future<$0.UserAwardsReq> request) async {
    return userAwards(call, await request);
  }

  $async.Future<$0.UserInfoRsp> userInfo_Pre($grpc.ServiceCall call, $async.Future<$0.UserInfoReq> request) async {
    return userInfo(call, await request);
  }

  $async.Future<$0.CreateCommunityRsp> createCommunity($grpc.ServiceCall call, $0.CreateCommunityReq request);
  $async.Future<$0.UpdateCommunityRsp> updateCommunity($grpc.ServiceCall call, $0.UpdateCommunityReq request);
  $async.Future<$0.ApplyJoinRsp> applyJoin($grpc.ServiceCall call, $0.ApplyJoinReq request);
  $async.Future<$0.AnswerApplyRsp> answerApply($grpc.ServiceCall call, $0.AnswerApplyReq request);
  $async.Future<$0.InviteJoinRsp> inviteJoin($grpc.ServiceCall call, $0.InviteJoinReq request);
  $async.Future<$0.AnswerInviteRsp> answerInvite($grpc.ServiceCall call, $0.AnswerInviteReq request);
  $async.Future<$0.JoinCommunityRsp> joinCommunity($grpc.ServiceCall call, $0.JoinCommunityReq request);
  $async.Future<$0.QuitCommunityRsp> quitCommunity($grpc.ServiceCall call, $0.QuitCommunityReq request);
  $async.Future<$0.UpdateMemberRsp> updateMember($grpc.ServiceCall call, $0.UpdateMemberReq request);
  $async.Future<$0.AddTopicRsp> addTopic($grpc.ServiceCall call, $0.AddTopicReq request);
  $async.Future<$0.AddGiftRsp> addGift($grpc.ServiceCall call, $0.AddGiftReq request);
  $async.Future<$0.PostRsp> post($grpc.ServiceCall call, $0.PostReq request);
  $async.Future<$0.CommentRsp> comment($grpc.ServiceCall call, $0.CommentReq request);
  $async.Future<$0.ReplyRsp> reply($grpc.ServiceCall call, $0.ReplyReq request);
  $async.Future<$0.LikeRsp> like($grpc.ServiceCall call, $0.LikeReq request);
  $async.Future<$0.UnlikeRsp> unlike($grpc.ServiceCall call, $0.UnlikeReq request);
  $async.Future<$0.ShareRsp> share($grpc.ServiceCall call, $0.ShareReq request);
  $async.Future<$0.VoteRsp> vote($grpc.ServiceCall call, $0.VoteReq request);
  $async.Future<$0.WatchRsp> watch($grpc.ServiceCall call, $0.WatchReq request);
  $async.Future<$0.UnwatchRsp> unwatch($grpc.ServiceCall call, $0.UnwatchReq request);
  $async.Future<$0.AwardRsp> award($grpc.ServiceCall call, $0.AwardReq request);
  $async.Future<$0.FavoriteRsp> favorite($grpc.ServiceCall call, $0.FavoriteReq request);
  $async.Future<$0.UnfavoriteRsp> unfavorite($grpc.ServiceCall call, $0.UnfavoriteReq request);
  $async.Future<$0.ShootRsp> shoot($grpc.ServiceCall call, $0.ShootReq request);
  $async.Future<$0.FollowRsp> follow($grpc.ServiceCall call, $0.FollowReq request);
  $async.Future<$0.UnfollowRsp> unfollow($grpc.ServiceCall call, $0.UnfollowReq request);
  $async.Future<$0.ParticipateRsp> participate($grpc.ServiceCall call, $0.ParticipateReq request);
  $async.Future<$0.UnparticipateRsp> unparticipate($grpc.ServiceCall call, $0.UnparticipateReq request);
  $async.Future<$0.MembersRsp> members($grpc.ServiceCall call, $0.MembersReq request);
  $async.Future<$0.CommunityDetailRsp> communityDetail($grpc.ServiceCall call, $0.CommunityDetailReq request);
  $async.Future<$0.PostsRsp> posts($grpc.ServiceCall call, $0.PostsReq request);
  $async.Future<$0.PostDetailRsp> postDetail($grpc.ServiceCall call, $0.PostDetailReq request);
  $async.Future<$0.CommentsRsp> comments($grpc.ServiceCall call, $0.CommentsReq request);
  $async.Future<$0.CommentDetailRsp> commentDetail($grpc.ServiceCall call, $0.CommentDetailReq request);
  $async.Future<$0.RepliesRsp> replies($grpc.ServiceCall call, $0.RepliesReq request);
  $async.Future<$0.BarragesRsp> barrages($grpc.ServiceCall call, $0.BarragesReq request);
  $async.Future<$0.UserCommunitiesRsp> userCommunities($grpc.ServiceCall call, $0.UserCommunitiesReq request);
  $async.Future<$0.AllCommunitiesRsp> allCommunities($grpc.ServiceCall call, $0.AllCommunitiesReq request);
  $async.Future<$0.UserPostsRsp> userPosts($grpc.ServiceCall call, $0.UserPostsReq request);
  $async.Future<$0.UserCommentsRsp> userComments($grpc.ServiceCall call, $0.UserCommentsReq request);
  $async.Future<$0.UserWatchsRsp> userWatchs($grpc.ServiceCall call, $0.UserWatchsReq request);
  $async.Future<$0.UserLikesRsp> userLikes($grpc.ServiceCall call, $0.UserLikesReq request);
  $async.Future<$0.UserFollowersRsp> userFollowers($grpc.ServiceCall call, $0.UserFollowersReq request);
  $async.Future<$0.UserFolloweesRsp> userFollowees($grpc.ServiceCall call, $0.UserFolloweesReq request);
  $async.Future<$0.UserFavoritesRsp> userFavorites($grpc.ServiceCall call, $0.UserFavoritesReq request);
  $async.Future<$0.UserParticipatesRsp> userParticipates($grpc.ServiceCall call, $0.UserParticipatesReq request);
  $async.Future<$0.UserBallotsRsp> userBallots($grpc.ServiceCall call, $0.UserBallotsReq request);
  $async.Future<$0.UserFilesRsp> userFiles($grpc.ServiceCall call, $0.UserFilesReq request);
  $async.Future<$0.UserAwardsRsp> userAwards($grpc.ServiceCall call, $0.UserAwardsReq request);
  $async.Future<$0.UserInfoRsp> userInfo($grpc.ServiceCall call, $0.UserInfoReq request);
}
