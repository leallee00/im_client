part of 'im_conversation_bloc.dart';

abstract class ImConversationEvent extends Equatable {
  const ImConversationEvent();
}

class SelectConversationEvent extends ImConversationEvent {
  const SelectConversationEvent(
    this.conversation,
  );

  final ConversationModel? conversation;

  @override
  List<Object?> get props => [conversation];
}

class SetConversationListEvent extends ImConversationEvent {
  const SetConversationListEvent(
    this.conversationList,
  );

  final List<ConversationModel>? conversationList;

  @override
  List<Object?> get props => [conversationList];
}

class GetConversationListEvent extends ImConversationEvent {
  const GetConversationListEvent({
    this.page = 1,
    this.pageSize = 20,
  });

  final int page;
  final int pageSize;

  @override
  List<Object?> get props => [page, pageSize];
}

class OnConversationCreatedEvent extends ImConversationEvent {
  const OnConversationCreatedEvent(
    this.conversation, {
    this.selected,
  });

  final ConversationModel conversation;
  final bool? selected;

  @override
  List<Object?> get props => [conversation, selected];
}

class OnConversationUpdatedEvent extends ImConversationEvent {
  const OnConversationUpdatedEvent(this.conversation);

  final ConversationModel? conversation;

  @override
  List<Object?> get props => [conversation];
}

class UpdateConversationGroupMsgSnEvent extends ImConversationEvent {
  const UpdateConversationGroupMsgSnEvent(this.conversation);

  final ConversationModel? conversation;

  @override
  List<Object?> get props => [conversation];
}

class OnConversationDeletedEvent extends ImConversationEvent {
  const OnConversationDeletedEvent(this.conversationId);

  final int conversationId;

  @override
  List<Object?> get props => [conversationId];
}

class UpdateUserInfoEvent extends ImConversationEvent {
  const UpdateUserInfoEvent(
    this.conversationList,
  );

  final List<ConversationModel> conversationList;

  @override
  List<Object?> get props => [conversationList];
}
