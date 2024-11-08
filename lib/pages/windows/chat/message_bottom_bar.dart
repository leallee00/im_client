import 'dart:async';
import 'dart:io';

import 'package:extended_text_field/extended_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:pasteboard/pasteboard.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/pages/chat_index/replied_message.dart';
import 'package:quliao/pages/windows/chat/menu/data.dart';
import 'package:quliao/pages/windows/chat/menu/menu_panel.dart';
import 'package:social_media_recorder/screen/social_media_recorder.dart';

import '../../../utils/log/manager.dart';
import 'length_map.dart';
import 'mention.dart';
import 'emoji/emoji_picker.dart';
import 'my_special_text_span_builder.dart';

class MessageBottomBar extends StatefulWidget {
  const MessageBottomBar({
    super.key,
    required this.controller,
    required this.onFilePressed,
    required this.onVideoPressed,
    required this.onCameraPressed,
    required this.onSendPressed,
    required this.onVoiceMessageSend,
    required this.onAttachmentPressed,
    required this.onScreenshotPressed,
    required this.onFileCopy,
    required this.onBusinessCardPressed,
    required this.onRedPacketPressed,
    this.enableAt = false,
    this.focusNode,
    this.repliedMessage,
    this.mentionsBuilder,
    this.conversationId,
    this.clearReply,
    this.onAtChanged,
  });

  final String? conversationId;
  final bool enableAt;
  final FocusNode? focusNode;
  final RepliedMessage? repliedMessage;
  final TextEditingController controller;
  final Function() onFilePressed;
  final Function() onVideoPressed;
  final Function() onCameraPressed;
  final Function() onAttachmentPressed;
  final Function() onScreenshotPressed;
  final Function() onBusinessCardPressed;
  final Function() onRedPacketPressed;
  final Function()? clearReply;
  final Function(File) onVoiceMessageSend;
  final Function(List<String>) onFileCopy;
  final Function(types.PartialText) onSendPressed;
  final Widget Function(String, String)? mentionsBuilder;
  final Function(List<LengthMap>)? onAtChanged;

  @override
  State<StatefulWidget> createState() => _MessageBottomBarState();
}

class _MessageBottomBarState extends State<MessageBottomBar> {
  /// 是否正在输入
  bool _printing = false;

  /// 表情面板是否展示
  bool _emojiExpanded = false;
  bool _menuPanelShowed = false;
  final double _keyboardHeight = 300;

  FocusNode get _focusNode => widget.focusNode ?? FocusNode();

  TextEditingController get _editingController => widget.controller;
  final GlobalKey<ExtendedTextFieldState> _key =
      GlobalKey<ExtendedTextFieldState>();
  late StreamSubscription<HideChatMenuPanel> hideMenuPanelStream;

  final List<Mention> mentions = [Mention(trigger: '@')];

  String _pattern = '';
  LengthMap? _selectedMention;
  ValueNotifier<bool> showMentions = ValueNotifier(false);
  ValueNotifier<RepliedMessage?> showReplyWidget = ValueNotifier(null);

  late FocusNode textFocusNode;

  @override
  void initState() {
    super.initState();
    textFocusNode = FocusNode();
    _editingController.addListener(_onTextChanged);
    if (widget.enableAt) {
      _editingController.addListener(_onMentionedListener);
      eventBus.on<InsertAtText>().listen((event) {
        _insertText('${event.text} ');
      });
    }
    hideMenuPanelStream = eventBus.on<HideChatMenuPanel>().listen((event) {
      _hideMenuPanel();
    });
  }

  Future<void> _onMentionedListener() async {
    final cursorPos = _editingController.selection.baseOffset;

    if (cursorPos >= 0) {
      int _pos = 0;

      final lengthMap = <LengthMap>[];

      // split on each word and generate a list with start & end position of each word.
      _editingController.value.text.split(RegExp(r'(\s)')).forEach((element) {
        // LoggerManager().debug('value changed ======> element: $element');
        lengthMap.add(
          LengthMap(
            str: element,
            start: _pos,
            end: _pos + element.length,
          ),
        );

        _pos = _pos + element.length + 1;
      });

      if (null != widget.onAtChanged) {
        LoggerManager().debug('onAtChanged =============> $lengthMap');
        widget.onAtChanged!(lengthMap);
      }

      final val = lengthMap.indexWhere((element) {
        _pattern = mentions.map((e) => e.trigger).join('|');

        return element.end == cursorPos &&
            element.str.toLowerCase().contains(RegExp(_pattern));
      });

      showMentions.value = val != -1;

      // if (widget.onSuggestionVisibleChanged != null) {
      //   widget.onSuggestionVisibleChanged!(val != -1);
      // }

      setState(() {
        _selectedMention = val == -1 ? null : lengthMap[val];
      });
    }
  }

  Future<void> _onTextChanged() async {
    if (_editingController.text.isNotEmpty) {
      if (!_printing && mounted) {
        setState(() {
          _printing = true;
        });
      }
    } else {
      if (_printing && mounted) {
        setState(() {
          _printing = false;
        });
      }
    }
  }

  Future<void> _onSendButtonPressed() async {
    final trimmedText = _editingController.text.trim();
    if (trimmedText != '') {
      final partialText = types.PartialText(text: trimmedText);
      widget.onSendPressed(partialText);
      _editingController.clear();
      _focusNode.requestFocus();
    } else {
      _focusNode.requestFocus();
    }
  }

  Future<void> _onPlusButtonPressed() async {
    _focusNode.unfocus();
    setState(() {
      _emojiExpanded = false;
      _menuPanelShowed = !_menuPanelShowed;
    });
  }

  Future<void> _onEmojiButtonPressed() async {
    _focusNode.unfocus();
    setState(() {
      _emojiExpanded = !_emojiExpanded;
      _menuPanelShowed = false;
    });
  }

  Future<void> _onTextFieldTapped() async {
    // readImages();
    if (_emojiExpanded) {
      setState(() {
        _emojiExpanded = !_emojiExpanded;
      });
    }
    if (_menuPanelShowed) {
      setState(() {
        _menuPanelShowed = !_menuPanelShowed;
      });
    }
  }

  //
  // Future<void> readImages() async {
  //   final imageBytes = await Pasteboard.image;
  //   print(imageBytes?.length);
  // }

  Future<void> _insertText(String text) async {
    final TextEditingValue value = _editingController.value;
    final int start = value.selection.baseOffset;
    int end = value.selection.extentOffset;
    if (value.selection.isValid) {
      String newText = '';
      if (value.selection.isCollapsed) {
        if (end > 0) {
          newText += value.text.substring(0, end);
        }
        newText += text;
        if (value.text.length > end) {
          newText += value.text.substring(end, value.text.length);
        }
      } else {
        newText = value.text.replaceRange(start, end, text);
        end = start;
      }

      _editingController.value = value.copyWith(
        text: newText,
        selection: value.selection.copyWith(
          baseOffset: end + text.length,
          extentOffset: end + text.length,
        ),
      );
    } else {
      _editingController.value = TextEditingValue(
        text: text,
        selection: TextSelection.fromPosition(
          TextPosition(offset: text.length),
        ),
      );
    }

    SchedulerBinding.instance.addPostFrameCallback(
      (Duration timeStamp) {
        _key.currentState?.bringIntoView(
          _editingController.selection.base,
        );
      },
    );
  }

  Future<void> _hideMenuPanel() async {
    if (mounted) {
      _focusNode.unfocus();
      setState(() {
        _emojiExpanded = false;
        _menuPanelShowed = false;
      });
    }
  }

  Future<void> _handleKeyEvent(RawKeyEvent event) async {
    if ((Platform.isWindows || Platform.isMacOS) &&
        ((event.isKeyPressed(LogicalKeyboardKey.controlLeft) &&
                event.logicalKey == LogicalKeyboardKey.keyV) ||
            (event.isMetaPressed &&
                event.logicalKey == LogicalKeyboardKey.keyV))) {
      final files = await Pasteboard.files();
      if (files.isNotEmpty) {
        _editingController.clear();
        widget.onFileCopy.call(files);
      }
    }
  }

  String getRepliedContent(RepliedMessage repliedMessage) {
    final Message message = repliedMessage.message!;
    if (message.type == MessageType.text) {
      return (message as TextMessage).text;
    } else if (message.type == MessageType.image) {
      return '[图片]';
    } else if (message.type == MessageType.video) {
      return '[视频]';
    } else if (message.type == MessageType.file) {
      return '[文件]';
    } else if (message.type == MessageType.audio) {
      return '[语音]';
    } else {
      return '[位置消息]';
    }
  }

  Widget _buildRepliedMessage() {
    if (null == widget.repliedMessage ||
        null == widget.repliedMessage!.message) {
      return Gaps.empty;
    }

    final String nickname = widget.repliedMessage!.message!.author.firstName ??
        '游客${widget.repliedMessage!.message!.author.id}';

    return Container(
      color: const Color(0xFFf5f5f6),
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              '$nickname:${getRepliedContent(widget.repliedMessage!)}',
              softWrap: true,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Color(0xFF8f959e), fontSize: 14),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          InkWell(
            onTap: () {
              widget.clearReply?.call();
            },
            child: const Icon(Icons.clear, color: Color(0xFF8f959e), size: 18),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (null != widget.repliedMessage &&
        null != widget.repliedMessage!.message) {
      LoggerManager().debug(
          'repliedMessage =======> ${getRepliedContent(widget.repliedMessage!)}');
    }
    if (null != _selectedMention) {
      LoggerManager().debug(
        '_selectedMention =======> ${_selectedMention!.str}',
      );
    }
    return RawKeyboardListener(
      focusNode: textFocusNode,
      onKey: _handleKeyEvent,
      child: Material(
        color: Theme.of(context).colorScheme.surface,
        child: PortalTarget(
          visible: null != _selectedMention,
          anchor: const Aligned(
            target: Alignment.topCenter,
            follower: Alignment.bottomCenter,
          ),
          portalFollower: null == widget.mentionsBuilder
              ? const SizedBox()
              : widget.mentionsBuilder!(
                  _editingController.text,
                  _selectedMention?.str ?? '',
                ),
          child: Column(
            children: [
              if (null != widget.repliedMessage) _buildRepliedMessage(),
              Container(
                width: double.infinity,
                height: Dimens.gap_dp1 / 2,
                color: Theme.of(context).dividerColor,
              ),
              Stack(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Platform.isWindows || Platform.isLinux || Platform.isMacOS
                          ? IconButton(
                              onPressed: widget.onAttachmentPressed,
                              icon: const Icon(
                                Icons.attach_file,
                                size: 24,
                                color: Colors.grey,
                              ),
                              splashRadius: 20,
                            )
                          : IconButton(
                              onPressed: _onEmojiButtonPressed,
                              icon: const Icon(
                                Icons.emoji_emotions,
                                size: 24,
                                color: Colors.grey,
                              ),
                              splashRadius: 20,
                            ),
                      if (Platform.isWindows ||
                          Platform.isLinux ||
                          Platform.isMacOS)
                        IconButton(
                          onPressed: widget.onScreenshotPressed,
                          icon: const Icon(
                            Icons.screenshot,
                            size: 24,
                            color: Colors.grey,
                          ),
                          splashRadius: 20,
                        ),
                      Expanded(
                        child: Container(
                          // constraints: const BoxConstraints(maxHeight: 160),
                          margin: const EdgeInsets.all(5),
                          child: ExtendedTextField(
                            key: _key,
                            focusNode: _focusNode,
                            maxLines: 4,
                            minLines: 1,
                            specialTextSpanBuilder: widget.enableAt
                                ? MySpecialTextSpanBuilder(
                                    showAtBackground: true)
                                : null,
                            onSubmitted: (String text) {
                              _onSendButtonPressed();
                            },
                            textInputAction: TextInputAction.send,
                            strutStyle: const StrutStyle(),
                            controller: _editingController,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: '请输入',
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 5,
                              ),
                              labelStyle:
                                  TextStyle(color: Colors.black, fontSize: 16),
                              hintStyle: TextStyle(
                                color: Color.fromRGBO(153, 153, 153, 1),
                                fontSize: 16,
                              ),
                            ),
                            onTap: _onTextFieldTapped,
                          ),
                        ),
                      ),
                      if (Platform.isWindows ||
                          Platform.isLinux ||
                          Platform.isMacOS)
                        Gaps.empty
                      else if (!_printing)
                        IconButton(
                          // onPressed: widget.onAttachmentPressed,
                          onPressed: _onPlusButtonPressed,
                          icon: const Icon(
                            Icons.add,
                            size: 24,
                            color: Colors.grey,
                          ),
                          splashRadius: 20,
                        ),
                      if (!_printing)
                        const SizedBox(
                          width: 36,
                          height: 36,
                        ),
                      if (_printing)
                        IconButton(
                          onPressed: _onSendButtonPressed,
                          icon: const Icon(
                            Icons.send,
                            size: 24,
                            color: Colors.blueAccent,
                          ),
                          splashRadius: 20,
                        ),
                    ],
                  ),
                  if (Platform.isWindows ||
                      Platform.isLinux ||
                      Platform.isMacOS)
                    Gaps.empty
                  else if (!_printing)
                    Align(
                      alignment: Alignment.centerRight,
                      child: SocialMediaRecorder(
                        recordIcon: const Icon(
                          Icons.keyboard_voice,
                          size: 24,
                          color: Colors.grey,
                        ),
                        slideToCancelText: ' 滑动取消 >',
                        cancelText: '取消',
                        sendRequestFunction: (File soundFile) {
                          widget.onVoiceMessageSend(soundFile);
                        },
                      ),
                    ),
                ],
              ),
              if (_emojiExpanded)
                EmojiPicker(
                  onDeleted: () {},
                  onSelected: _insertText,
                ),
              if (_menuPanelShowed)
                MenuPanel(
                  keyboardHeight: _keyboardHeight,
                  callback: (MenuPanelType type) {
                    if (type == MenuPanelType.photo) {
                      widget.onAttachmentPressed.call();
                    } else if (type == MenuPanelType.file) {
                      widget.onFilePressed.call();
                    } else if (type == MenuPanelType.video) {
                      widget.onVideoPressed.call();
                    } else if (type == MenuPanelType.camera) {
                      widget.onCameraPressed.call();
                    } else if (type == MenuPanelType.card) {
                      widget.onBusinessCardPressed.call();
                    } else if (type == MenuPanelType.redPacket) {
                      widget.onRedPacketPressed.call();
                    }
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    if (null == widget.focusNode) {
      _focusNode.unfocus();
    }
    hideMenuPanelStream.cancel();
    super.dispose();
  }
}
