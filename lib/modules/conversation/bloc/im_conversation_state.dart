part of 'im_conversation_bloc.dart';

abstract class ImConversationState extends Equatable {
  const ImConversationState();
}

class ImConversationInitial extends ImConversationState {
  const ImConversationInitial({
    this.currentConversationId,
    this.selectedConversation,
    this.conversationList,
  });

  /// current conversation id
  final int? currentConversationId;

  /// current selected conversation
  final ConversationModel? selectedConversation;

  /// conversation list
  final List<ConversationModel>? conversationList;

  ImConversationInitial copyWith({
    int? currentConversationId,
    ConversationModel? selectedConversation,
    List<ConversationModel>? conversationList,
  }) {
    return ImConversationInitial(
      currentConversationId:
          currentConversationId ?? this.currentConversationId,
      selectedConversation: selectedConversation ?? this.selectedConversation,
      conversationList: conversationList ?? this.conversationList,
    );
  }

  @override
  List<Object?> get props => [
        currentConversationId,
        selectedConversation,
        conversationList,
      ];
}

class CurrentConversationChanged extends ImConversationState {
  const CurrentConversationChanged(this.conversation);

  final ConversationModel conversation;

  @override
  List<Object?> get props => [conversation];
}

class ConversationLoaded extends ImConversationState {
  const ConversationLoaded(this.conversations);

  final List<ConversationModel> conversations;

  @override
  List<Object?> get props => [conversations];
}

class EmptyState extends ImConversationState {
  @override
  List<Object?> get props => [];
}