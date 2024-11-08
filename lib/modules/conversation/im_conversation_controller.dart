import 'package:quliao/db/obox/model/conversation_model.dart';

import 'bloc/im_conversation_bloc.dart';
import 'models/lw_conversation.dart';

class IMConversationController {
  late ImConversationBloc bloc;

  ImConversationInitial? get conversationState => bloc.conversationState;

  /// the selected conversation
  ConversationModel? get selectedConversation =>
      conversationState?.selectedConversation;

  /// set the selected conversation currently
  void selectConversation(ConversationModel? conversation) {
    bloc.add(
      SelectConversationEvent(conversation),
    );
  }

  /// the conversation list
  List<ConversationModel>? get conversationList =>
      conversationState?.conversationList;

  /// set the conversation list
  set conversationList(List<ConversationModel>? conversationList) {
    bloc.add(
      SetConversationListEvent(conversationList),
    );
  }

  loadData() {
    bloc.add(
      const GetConversationListEvent(),
    );
  }
}
