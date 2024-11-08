import 'dart:io';

import 'package:contextual_menu/contextual_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/db/obox/model/conversation_model.dart';
import 'package:quliao/modules/conversation/bloc/im_conversation_bloc.dart';
import 'package:quliao/modules/conversation/im_conversation_controller.dart';
import 'package:quliao/pages/windows/client/contextual_menu_util.dart';
import 'package:quliao/widgets/empty.dart';

import 'models/lw_conversation.dart';
import 'widgets/im_conversation_item.dart';

class IMConversation extends StatefulWidget {
  const IMConversation({
    super.key,
    this.onTap,
    this.onConversationLoaded,
    this.onConversationDelete,
    this.onConversationPin,
  });

  final Function(ConversationModel conversation)? onTap;
  final Function(List<ConversationModel> conversations)? onConversationLoaded;
  final Function(BuildContext context, ConversationModel conversation)?
      onConversationDelete;
  final Function(BuildContext context, ConversationModel conversation)?
      onConversationPin;

  @override
  State<StatefulWidget> createState() => _IMConversationState();
}

class _IMConversationState extends State<IMConversation> {
  late ImConversationBloc _bloc;
  final IMConversationController _controller = IMConversationController();

  bool get isPC => Platform.isWindows || Platform.isMacOS;

  @override
  void initState() {
    super.initState();
    _bloc = BlocProvider.of<ImConversationBloc>(context);
    _controller.bloc = _bloc;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _controller.loadData();
    });
    // Future.delayed(const Duration(milliseconds: 500), () {
    //   _controller.loadData();
    // });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ImConversationBloc, ImConversationState>(
      bloc: _bloc,
      listenWhen: (previous, current) => current is! ImConversationInitial,
      listener: (context, state) {
        if (state is CurrentConversationChanged) {
          if (isPC && null != widget.onTap) {
            widget.onTap!(state.conversation);
          }
        } else if (state is ConversationLoaded) {
          if (null != widget.onConversationLoaded) {
            widget.onConversationLoaded!(state.conversations);
          }
        }
      },
      child: BlocBuilder<ImConversationBloc, ImConversationState>(
        bloc: _bloc,
        buildWhen: (previous, current) => current is ImConversationInitial,
        builder: (context, state) => _buildConversations(
          context,
          state as ImConversationInitial,
        ),
      ),
    );
  }

  Widget _buildConversations(
    BuildContext context,
    ImConversationInitial state,
  ) {
    final conversationList = _controller.conversationList ?? [];
    return conversationList.isEmpty
        ? const Empty()
        : ListView.separated(
            shrinkWrap: true,
            itemCount: conversationList.length,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              final conversationItem = conversationList[index];
              final isCurrent = conversationItem.conversationId ==
                  _controller.selectedConversation?.conversationId;
              final isPinned = conversationItem.isPinned;
              Widget item = IMConversationItem(
                conversationId: conversationItem.conversationId,
                data: conversationItem,
                // avatar: conversationItem.avatar ?? '',
                // nickname: conversationItem.name ?? '',
                // lastMsg: conversationItem.lastMessage ?? '',
                // time: conversationItem.msgTime ?? DateTime.now(),
                selected: isPC ? isCurrent : false,
                // remark: conversationItem.remark,
                // privateChat: conversationItem.privateChat,
                isPinned: isPinned,
                // noDisturb: conversationItem.noDisturb,
                // groupType: conversationItem.groupType,
              );
              item = Material(
                color: isPC
                    ? isCurrent
                        ? Theme.of(context).colorScheme.primary.withOpacity(0.7)
                        : isPinned
                            ? const Color(0xFFF4F4F4).withOpacity(0.8)
                            : Theme.of(context).colorScheme.surface
                    : isPinned
                        ? const Color(0xFFF4F4F4).withOpacity(0.8)
                        : Theme.of(context).colorScheme.surface,
                child: InkWell(
                  child: item,
                  onTap: () {
                    if (null != widget.onTap) {
                      if (isPC) {
                        _controller.selectConversation(conversationItem);
                      } else {
                        widget.onTap!(conversationItem);
                      }
                    }
                  },
                ),
              );
              return (isPC)
                  ? _buildContextMenu(
                      context,
                      conversationItem,
                      child: item,
                    )
                  : _buildSliderContainer(
                      context,
                      conversationItem,
                      child: item,
                    );
            },
            separatorBuilder: (BuildContext context, int index) {
              return isPC
                  ? Container(
                      width: double.infinity,
                      height: Dimens.gap_dp1 / 2,
                      color: Theme.of(context).dividerColor,
                    )
                  : Container(
                      width: double.infinity,
                      height: Dimens.gap_dp1 / 2,
                      color: Theme.of(context).dividerColor,
                      margin: EdgeInsets.only(left: Dimens.gap_dp10 * 7),
                    );
            },
          );
  }

  Widget _buildContextMenu(
    BuildContext context,
    ConversationModel conversation, {
    required Widget child,
  }) {
    return ContextMenuUtil(
      key: Key('${conversation.conversationId}'),
      customMenu: Menu(
        items: [
          // MenuItem(
          //   label: conversation.isPinned ? '取消\n置顶' : '设为\n置顶',
          //   onClick: (_) {
          //     if (null != widget.onConversationPin) {
          //       widget.onConversationPin!(context, conversation);
          //     }
          //   },
          // ),
          MenuItem(
            label: '删除聊天',
            onClick: (_) {
              if (null != widget.onConversationDelete) {
                widget.onConversationDelete!(context, conversation);
              }
            },
          ),
        ],
      ),
      child: child,
    );
  }

  Widget _buildSliderContainer(
    BuildContext context,
    ConversationModel conversation, {
    required Widget child,
  }) {
    final extentRatio =
        (Dimens.gap_dp1 * 80) / MediaQuery.of(context).size.width;
    return Slidable(
      key: Key('${conversation.conversationId}'),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        extentRatio: extentRatio,
        children: [
          // SlidableAction(
          //   label: conversation.isPinned ? '取消\n置顶' : '设为\n置顶',
          //   backgroundColor: Colors.orangeAccent,
          //   foregroundColor: Colors.white,
          //   onPressed: (BuildContext context) {
          //     if (null != widget.onConversationPin) {
          //       widget.onConversationPin!(context, conversation);
          //     }
          //   },
          // ),
          SlidableAction(
            label: '删除',
            icon: Icons.delete,
            backgroundColor: Colors.redAccent,
            foregroundColor: Colors.white,
            onPressed: (BuildContext context) {
              if (null != widget.onConversationDelete) {
                widget.onConversationDelete!(context, conversation);
              }
            },
          ),
        ],
      ),
      child: child,
    );
  }
}
