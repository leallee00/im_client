import 'package:quliao/db/obox/model/conversation_model.dart';

import 'callback.dart';

class IMConversationListener {
  IMConversationListener({
    OnNewConversation? onNewConversation,
    OnConversationCreated? onConversationCreated,
    OnConversationUpdated? onConversationUpdated,
    OnConversationDeleted? onConversationDeleted,
    OnConversationSelected? onConversationSelected,
    OnConversationGroupMsgSnUpdated? updateConversationGroupMsgSn,
  }) {
    if (null != onNewConversation) {
      this.onNewConversation = onNewConversation;
    }
    if (null != onConversationCreated) {
      this.onConversationCreated = onConversationCreated;
    }
    if (null != onConversationUpdated) {
      this.onConversationUpdated = onConversationUpdated;
    }
    if (null != onConversationDeleted) {
      this.onConversationDeleted = onConversationDeleted;
    }
    if (null != onConversationSelected) {
      this.onConversationSelected = onConversationSelected;
    }
  }

  OnNewConversation onNewConversation = (
    List<ConversationModel> conversationList,
  ) {};

  OnConversationCreated onConversationCreated = (
    ConversationModel? newConversation, {
    bool selected = false,
  }) {};

  OnConversationUpdated onConversationUpdated = (
    ConversationModel? newConversation,
  ) {};

  OnConversationGroupMsgSnUpdated updateConversationGroupMsgSn = (
    ConversationModel? newConversation,
  ) {};

  OnConversationDeleted onConversationDeleted = (
    int conversationId,
  ) {};

  OnConversationSelected onConversationSelected = (
    int conversationId,
  ) {};
}
