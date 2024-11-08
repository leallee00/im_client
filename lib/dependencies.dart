// ignore_for_file: always_specify_types, strict_raw_type

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quliao/modules/conversation/repository/im_conversation_repository.dart';

import 'global/global_repository.dart';

List<RepositoryProvider> buildRepositories() {
  return [
    RepositoryProvider<GlobalRepository>(
      create: (_) => GlobalRepository(),
    ),
    // RepositoryProvider<ImConversationRepository>(
    //   create: (_) => ImConversationRepository(),
    // ),
  ];
}
