import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;



class ChatBottomInputBar extends StatefulWidget {

  const ChatBottomInputBar({Key? key,
  required this.inputNode, 
  required this.onAttachmentPressed,
  required this.inputController, 
  required this.onSendPressed}): super(key: key);


  final FocusNode inputNode;
  final Function() onAttachmentPressed;
  final TextEditingController? inputController;
  final void Function(types.PartialText) onSendPressed;

  @override
  State<ChatBottomInputBar> createState() => _ChatBottomInputBarState();
  
}

class _ChatBottomInputBarState extends State<ChatBottomInputBar> {

  @override
  Widget build(BuildContext context) {
    return customBottomInputWidget();
  }

  @override
  void didUpdateWidget (ChatBottomInputBar oldWidget) {
    super.didUpdateWidget(oldWidget);

    var content = oldWidget.inputController?.text;

    if (content != null && content.isNotEmpty) {
      // 如果是发出的消息不恢复
      if (content.contains("\n")) return;

      widget.inputController?.text = content;

    }
    
  }

  Widget customBottomInputWidget() {
      return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(height: 1, color: const Color.fromRGBO(202, 202, 202, 0.3)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 16, top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        // 点击图片上传
                        widget.onAttachmentPressed();
                      },
                      child: const Icon(
                        Icons.attach_file,
                        color: Colors.grey,
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  constraints: const BoxConstraints(maxHeight: 160),
                  margin: const EdgeInsets.only(
                      left: 10, right: 10, top: 5, bottom: 5),
                  color: Colors.white,
                  child: TextField(
                    focusNode: widget.inputNode,
                    maxLines: null,
                    // keyboardType: TextInputType.multiline,
                    autofocus: true,
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        if (value.contains("\n")) {
                          value = value.replaceAll('\n', "");
                          if (value.isNotEmpty) {
                            types.PartialText message =
                                types.PartialText(text: value);
                            widget.onSendPressed(message);
                          }
                        }
                      }
                    },
                    controller: widget.inputController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: '请输入',
                      labelStyle: TextStyle(color: Colors.black, fontSize: 16),
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(153, 153, 153, 1), fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
      }
}





