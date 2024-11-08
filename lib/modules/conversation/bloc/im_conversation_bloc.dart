import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart' hide Transition;
import 'package:quliao/db/database.dart';
import 'package:quliao/db/obox/model/conversation_model.dart';
import 'package:quliao/global/controller/im_controller.dart';
import 'package:quliao/global/controller/unread_message_controller.dart';
import 'package:quliao/global/repository/user_repository.dart';
import 'package:quliao/models/user/userinfo.dart';
import 'package:quliao/modules/conversation/enum/im_conversation_listener.dart';
import 'package:quliao/modules/conversation/models/lw_conversation.dart';
import 'package:quliao/modules/conversation/repository/im_conversation_repository.dart';
import 'package:quliao/pages/chat_index/conversation_controller.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart';
import 'package:quliao/utils/log/manager.dart';

part 'im_conversation_event.dart';

part 'im_conversation_state.dart';

class ImConversationBloc
    extends Bloc<ImConversationEvent, ImConversationState> {
  ImConversationBloc() : super(const ImConversationInitial()) {
    _initial = state as ImConversationInitial;

    /// 选中会话
    on<SelectConversationEvent>(_onSelectConversationEvent);

    /// 刷新会话
    on<SetConversationListEvent>(_onSetConversationListEvent);

    /// 获取会话列表
    on<GetConversationListEvent>(_onGetConversationListEvent);

    /// 新会话创建
    on<OnConversationCreatedEvent>(_onConversationCreatedEvent);

    /// 新会话更新
    on<OnConversationUpdatedEvent>(_onConversationUpdatedEvent);

    on<UpdateConversationGroupMsgSnEvent>(_updateConversationGroupMsgSnEvent);

    /// 会话被删除
    on<OnConversationDeletedEvent>(_onConversationDeletedEvent);

    /// 更新用户信息
    on<UpdateUserInfoEvent>(_onUpdateUserInfoEvent);

    /// todo 会话被选中，主要用于PC端
    /// todo 会话被置顶

    ImController.to.addConversationListener(
      IMConversationListener(
        onNewConversation: (newConversations) {},
        onConversationCreated: (
          newConversation, {
          bool selected = false,
        }) {
          add(
            OnConversationCreatedEvent(
              newConversation,
              selected: selected,
            ),
          );
        },
        onConversationUpdated: (conversation) {
          add(
            OnConversationUpdatedEvent(conversation),
          );
        },
        updateConversationGroupMsgSn: (conversation) {
          add(
            UpdateConversationGroupMsgSnEvent(conversation),
          );
        },
        onConversationDeleted: (conversationId) {
          add(
            OnConversationDeletedEvent(conversationId),
          );
        },
        onConversationSelected: (conversationId) async {
          // final conversation = await _repository.singleConversation(
          //   conversationId,
          // );
          // if (null != conversation) {
          //   add(
          //     SelectConversationEvent(conversation),
          //   );
          // }
        },
      ),
    );

    // add(const GetConversationListEvent());
  }

  ImConversationInitial? _initial;

  ImConversationInitial? get conversationState => _initial;

  final ImConversationRepository _repository = ImConversationRepository();

  @override
  void onTransition(
    Transition<ImConversationEvent, ImConversationState> transition,
  ) {
    if (transition.nextState is ImConversationInitial) {
      _initial = transition.nextState as ImConversationInitial;
    }
    super.onTransition(transition);
  }

  Future<List<ConversationModel>> _sortList(
    List<ConversationModel> dataList,
  ) async {
    dataList.sort((a, b) {
      return b.updatedAt.compareTo(a.updatedAt);
    });

    final pinnedConversation =
        dataList.where((element) => element.isPinned).toList();

    dataList.removeWhere((element) => element.isPinned);
    dataList = [...pinnedConversation, ...dataList];

    final conversationIds = <int>[];
    final newDataList = <ConversationModel>[];
    for (final item in dataList) {
      if (!conversationIds.contains(item.conversationId)) {
        conversationIds.add(item.conversationId);
        newDataList.add(item);
      }
    }

    int unReadMsgCount = 0;

    for (final item in newDataList) {
      unReadMsgCount += item.newMsgCount ?? 0;
    }

    UnReadMessageController.to.rxUnReadMsgCount.value = unReadMsgCount;

    return newDataList;
  }

  Future<void> _onUpdateUserInfoEvent(
    UpdateUserInfoEvent event,
    Emitter<ImConversationState> emit,
  ) async {
    for (final item in event.conversationList) {
      if (item.privateChat) {
        /// update user info
        _repository.getUserInfo(item.userId, callback: (result) {
          item.userInfo = result;
          add(OnConversationUpdatedEvent(item));
        });
      } else {
        /// update group info
        _repository.getGroupInfo(item.groupId!, callback: (result) {
          item.groupInfo = result;
          add(OnConversationUpdatedEvent(item));
        });
      }
    }

    // emit.call(
    //   ConversationLoaded(event.conversationList),
    // );
    //
    // emit.call(
    //   _initial!.copyWith(
    //     conversationList: event.conversationList,
    //   ),
    // );
  }

  Future<void> _onConversationDeletedEvent(
    OnConversationDeletedEvent event,
    Emitter<ImConversationState> emit,
  ) async {
    final dataList = _initial?.conversationList ?? [];
    dataList.removeWhere((element) {
      final deleted = element.conversationId == event.conversationId;
      return deleted;
    });

    emit.call(
      ConversationLoaded(dataList),
    );

    emit.call(
      _initial!.copyWith(
        conversationList: dataList,
        // selectedConversation: selectedConversation,
      ),
    );

    ConversationModel? selectedConversation;
    final preSelectedConversation = _initial?.selectedConversation;
    if (null == preSelectedConversation) {
      if (dataList.isNotEmpty) {
        selectedConversation = dataList.first;
      } else {
        selectedConversation = null;
      }
    } else {
      if (preSelectedConversation.conversationId == event.conversationId) {
        if (dataList.isNotEmpty) {
          selectedConversation = dataList.first;
        } else {
          selectedConversation = null;
        }
      } else {
        selectedConversation = preSelectedConversation;
      }
    }
    add(
      SelectConversationEvent(selectedConversation),
    );

    int unReadMsgCount = 0;

    for (final item in dataList) {
      unReadMsgCount += item.newMsgCount ?? 0;
    }

    UnReadMessageController.to.rxUnReadMsgCount.value = unReadMsgCount;
  }

  Future<void> _updateConversationGroupMsgSnEvent(
    UpdateConversationGroupMsgSnEvent event,
    Emitter<ImConversationState> emit,
  ) async {
    final dataList = _initial?.conversationList ?? [];
    final conversation = event.conversation;
    emit.call(EmptyState());
    if (null != conversation) {
      for (final item in dataList) {
        if (item.conversationId == conversation.conversationId) {
          item.groupMsgSn = conversation.groupMsgSn;
        }
      }

      emit.call(
        _initial!.copyWith(
          conversationList: await _sortList(dataList),
        ),
      );
    }
  }

  Future<void> _onConversationUpdatedEvent(
    OnConversationUpdatedEvent event,
    Emitter<ImConversationState> emit,
  ) async {
    final dataList = _initial?.conversationList ?? [];
    final conversation = event.conversation;
    emit.call(EmptyState());
    if (null != conversation) {
      /// todo update conversation
      for (final item in dataList) {
        if (item.conversationId == conversation.conversationId) {
          // debugPrint(
          //     '_onConversationUpdatedEvent conversationId: ${conversation.conversationId} groupType:${conversation.groupType}');
          if (item.privateChat) {
            if (conversation.userSourceVersion > item.userSourceVersion) {
              item.userInfo = await UserRepository().getUserInfo(
                conversation.userId,
                sourceVersion: conversation.userSourceVersion,
              );
            } else {
              item.userInfo ??= conversation.userInfo;
            }
          } else {
            item.groupInfo ??= conversation.groupInfo;
            if (conversation.pbName == 'pb_msg_group.NameChangeNotify') {
              final notify = NameChangeNotify()
                ..mergeFromBuffer(conversation.pbData);
              item.groupInfo?.name = notify.name;
            } else if (conversation.pbName ==
                'pb_msg_group.AvatarChangeNotify') {
              final notify = AvatarChangeNotify()
                ..mergeFromBuffer(conversation.pbData);
              item.groupInfo?.avatar = notify.avatar;
            }
          }
          item.userSourceVersion = conversation.userSourceVersion;
          item.lastMsgState = conversation.lastMsgState;
          item.pbName = conversation.pbName;
          item.pbData = conversation.pbData;
          item.pbCommData = conversation.pbCommData;
          item.updatedAt = conversation.updatedAt;
          item.newMsgCount = conversation.newMsgCount;
          item.msgSn = conversation.msgSn;
          item.top = conversation.top;
          // item.avatar = conversation.avatar;
          // item.name = conversation.name;
          // item.remark = conversation.remark;
          // item.top = conversation.top;
          // item.noDisturb = conversation.noDisturb;
          // item.msgTime = conversation.msgTime;
          // item.lastMessage = conversation.lastMessage;
          // item.msgSn = conversation.msgSn;
          // item.groupMsgSn = conversation.groupMsgSn;
          // item.groupType = conversation.groupType;
          // if (!item.privateChat) {
          //   ConversationController.to(item.conversationId).loadMessage(
          //     item.conversationId,
          //   );
          // }
        }
      }

      emit.call(
        _initial!.copyWith(
          conversationList: await _sortList(dataList),
        ),
      );
    }
  }

  Future<void> _onConversationCreatedEvent(
    OnConversationCreatedEvent event,
    Emitter<ImConversationState> emit,
  ) async {
    final dataList = _initial?.conversationList ?? [];
    dataList.insert(0, event.conversation);

    for (final item in dataList) {
      if (!item.privateChat) {
        Get.put(
          ConversationController(),
          tag: 'conversation_${item.conversationId}',
        );
      }
    }

    emit.call(
      ConversationLoaded(dataList),
    );
    emit.call(
      _initial!.copyWith(
        conversationList: await _sortList(dataList),
        // selectedConversation: selectedConversation,
      ),
    );
    ConversationModel? selectedConversation;
    if (event.selected ?? false) {
      selectedConversation = event.conversation;
    } else {
      final preSelectedConversation = _initial?.selectedConversation;
      if (null == preSelectedConversation) {
        if (dataList.isNotEmpty) {
          selectedConversation = dataList.first;
        } else {
          selectedConversation = null;
        }
      } else {
        selectedConversation = preSelectedConversation;
      }
    }

    add(
      SelectConversationEvent(selectedConversation),
    );
    add(UpdateUserInfoEvent(dataList));
  }

  Future<void> _onGetConversationListEvent(
    GetConversationListEvent event,
    Emitter<ImConversationState> emit,
  ) async {
    // await _repository.loadConversation(
    //   callback: (list) async {
    //     await AppDatabase().objectBox.addConversations(list);
    //   },
    // );
    final remoteConversations = await _repository.loadConversation();
    // for (final item in remoteConversations) {
    //   LoggerManager().error(
    //     'getConversation remote unRead msg count ======> ${item.newMsgCount ?? 0}',
    //   );
    // }
    await AppDatabase().objectBox.addConversations(remoteConversations);

    var dataList = await _repository.getConversationList();
    // for (final item in dataList) {
    //   LoggerManager().error(
    //     'getConversation local unRead msg count ======> ${item.newMsgCount ?? 0}',
    //   );
    // }

    dataList = await _sortList(dataList);

    for (final item in dataList) {
      if (!item.privateChat) {
        Get.put(
          ConversationController(),
          tag: 'conversation_${item.conversationId}',
        );
      }
    }

    emit.call(
      ConversationLoaded(dataList),
    );

    final currentConversation = dataList.isNotEmpty ? dataList.first : null;

    if (null != currentConversation) {
      emit.call(
        CurrentConversationChanged(currentConversation),
      );
    }

    emit.call(
      _initial!.copyWith(
        conversationList: dataList,
        selectedConversation: dataList.isNotEmpty ? dataList.first : null,
      ),
    );

    add(UpdateUserInfoEvent(dataList));
  }

  Future<void> _onSetConversationListEvent(
    SetConversationListEvent event,
    Emitter<ImConversationState> emit,
  ) async {
    emit.call(
      ConversationLoaded(event.conversationList ?? []),
    );
    emit.call(
      _initial!.copyWith(
        conversationList: event.conversationList,
      ),
    );
  }

  Future<void> _onSelectConversationEvent(
    SelectConversationEvent event,
    Emitter<ImConversationState> emit,
  ) async {
    final ConversationModel? currentConversation = event.conversation;
    if (null != currentConversation) {
      emit(
        CurrentConversationChanged(currentConversation),
      );
    }
    emit.call(
      _initial!.copyWith(
        currentConversationId: currentConversation?.conversationId,
        selectedConversation: currentConversation,
      ),
    );
  }
}
