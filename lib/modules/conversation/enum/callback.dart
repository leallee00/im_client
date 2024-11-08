import 'package:quliao/db/obox/model/conversation_model.dart';
import 'package:quliao/modules/conversation/models/lw_conversation.dart';

typedef OnNewConversation = void Function(
  List<ConversationModel> conversationList,
);

typedef OnConversationCreated = void Function(
  ConversationModel newConversation, {
  bool selected,
});

typedef OnConversationUpdated = void Function(
    ConversationModel? newConversation);

typedef OnConversationGroupMsgSnUpdated = void Function(
    ConversationModel? newConversation);

typedef OnConversationDeleted = void Function(int conversationId);

typedef OnConversationSelected = void Function(int conversationId);
