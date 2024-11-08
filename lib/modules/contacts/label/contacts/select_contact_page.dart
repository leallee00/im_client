import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/config/config.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/config/images.dart';
import 'package:quliao/modules/contacts/label/contacts/select_contact_controller.dart';
import 'package:quliao/pages/friend_list/contact_item.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/utils/screen.dart';
import 'package:quliao/widgets/app_bar.dart';
import 'package:quliao/widgets/button.dart';

import '../../../../models/user/friendInfo.dart';

class SelectContactPage extends StatefulWidget {
  const SelectContactPage({
    super.key,
    this.contacts,
    this.isMulti = true,
  });

  final List<FriendInfo>? contacts;

  /// 是否是多选
  final bool isMulti;

  @override
  State<StatefulWidget> createState() => _SelectContactPageState();
}

class _SelectContactPageState extends State<SelectContactPage> {
  final _controller = Get.put(SelectContactController());

  @override
  void initState() {
    super.initState();
    _controller.loadContacts(
      widget.contacts ?? [],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.onClose();
  }

  Widget _buildIndexBar(
    BuildContext context,
    BoxConstraints constraints,
  ) {
    final List<Widget> letters = Config.INDEX_BAR_WORDS
        .map(
          (String word) => Expanded(
            child: Text(
              word,
              style: TextStyle(fontSize: Dimens.font_sp11),
            ),
          ),
        )
        .toList();

    final double totalHeight = constraints.biggest.height;
    final double tileHeight = totalHeight / letters.length;

    void jumpTo(details) {
      _controller.indexBarBg.value = Colors.black26;
      _controller.currentLetter.value = _getLetter(
        context,
        tileHeight,
        details.globalPosition,
      );
      _jumpToIndex(_controller.currentLetter.value);
    }

    void transparentMethod() {
      _controller.indexBarBg.value = Colors.transparent;
      _controller.currentLetter.value = '';
    }

    return GestureDetector(
      onVerticalDragDown: (DragDownDetails details) => jumpTo(details),
      onVerticalDragEnd: (DragEndDetails details) => transparentMethod(),
      onVerticalDragUpdate: (DragUpdateDetails details) => jumpTo(details),
      child: Column(children: letters),
    );
  }

  String _getLetter(
    BuildContext context,
    double tileHeight,
    Offset globalPos,
  ) {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    var local = renderBox.globalToLocal(globalPos);
    num index = (local.dy ~/ tileHeight).clamp(
      0,
      Config.INDEX_BAR_WORDS.length - 1,
    );
    return Config.INDEX_BAR_WORDS[index.toInt()];
  }

  void _jumpToIndex(String letter) {
    if (_controller.letterPosMap.isNotEmpty) {
      final letterPos = _controller.letterPosMap[letter];
      LoggerManager().debug('letterPos ======> $letterPos');
      if (letterPos != null) {
        _controller.scrollController.animateTo(
          letterPos,
          curve: Curves.easeOut,
          duration: const Duration(milliseconds: 200),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text('选择好友'),
      ),
      body: Stack(
        children: [
          Obx(
            () {
              return Align(
                child: ListView.builder(
                  controller: _controller.scrollController,
                  itemBuilder: (BuildContext context, int index) {
                    bool isGroupTitle = true;
                    FriendInfo contact = _controller.contacts[index];
                    if (index >= 1 &&
                        contact.nameIndex ==
                            _controller.contacts[index - 1].nameIndex) {
                      isGroupTitle = false;
                    }
                    return Obx(
                      () {
                        return _ItemWidget(
                          data: contact,
                          isMulti: widget.isMulti,
                          isGroupTitle: isGroupTitle,
                          checked: _controller.selectedMemberMap.containsKey(
                            contact.userInfo.imId,
                          ),
                          callback: () {
                            if (widget.isMulti) {
                              _controller.selectContact(contact);
                            } else {
                              Navigator.pop(context, contact);
                            }
                          },
                        );
                      },
                    );
                  },
                  itemCount: _controller.contacts.length,
                ),
              );
            },
          ),
          Positioned(
            width: 24.0,
            right: 0.0,
            top: 120.0,
            bottom: 120.0,
            child: Obx(
              () {
                return Container(
                  color: _controller.indexBarBg.value,
                  child: LayoutBuilder(builder: _buildIndexBar),
                );
              },
            ),
          ),
          Obx(
            () {
              final currentLetter = _controller.currentLetter.value ?? '';
              LoggerManager()
                  .debug('currentLetter ============> $currentLetter');
              Widget child = Gaps.empty;
              if (currentLetter.isNotEmpty) {
                child = SizedBox(
                  width: Screen.width,
                  height: Screen.height,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 64,
                        height: 64,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.all(
                            Radius.circular(32),
                          ),
                        ),
                        child: Text(
                          _controller.currentLetter.value ?? '',
                          style: TextStyle(
                            fontSize: Dimens.font_sp1 * 32,
                            color: Theme.of(context).colorScheme.surface,
                          ),
                        ),
                      ),
                      const Icon(Icons.arrow_right),
                      const SizedBox(width: 50),
                    ],
                  ),
                );
              }
              return Align(
                alignment: Alignment.centerRight,
                child: child,
              );
            },
          ),
          if (widget.isMulti)
            Positioned(
              left: 0.0,
              right: 0.0,
              bottom: 20.0,
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: Dimens.gap_dp24,
                ),
                child: CustomButton(
                  width: double.infinity,
                  height: Dimens.gap_dp46,
                  size: CustomButtonSize.medium,
                  shape: CustomButtonShape.stadium,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  onPressed: () {
                    final selectContacts =
                        _controller.selectedMemberMap.values.toList();
                    Navigator.pop(context, selectContacts);
                  },
                  child: Text(
                    '确定',
                    style: TextStyle(
                      fontSize: Dimens.font_sp14,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _ItemWidget extends StatelessWidget {
  const _ItemWidget({
    Key? key,
    required this.data,
    this.checked = false,
    this.isGroupTitle = false,
    this.isMulti = true,
    this.callback,
  });

  final FriendInfo data;
  final bool checked;
  final bool isGroupTitle;
  final bool isMulti;
  final Function()? callback;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        isGroupTitle
            ? Container(
                height: Dimens.gap_dp34,
                padding: EdgeInsets.symmetric(
                  horizontal: Dimens.gap_dp16,
                ),
                decoration: const BoxDecoration(
                  color: Color(0xffebebeb),
                  border: Border(
                    top: BorderSide(color: Colors.grey, width: 0.2),
                    bottom: BorderSide(color: Colors.grey, width: 0.2),
                  ),
                ),
                alignment: Alignment.centerLeft,
                child: Text(
                  data.nameIndex ?? '',
                  style: TextStyle(
                    fontSize: Dimens.font_sp14,
                    color: const Color(0xff888888),
                  ),
                ),
              )
            : Gaps.empty,
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: callback,
            child: Container(
              padding: isMulti ? EdgeInsets.symmetric(
                horizontal: Dimens.gap_dp16,
              ) : EdgeInsets.zero,
              child: Row(
                children: [
                  isMulti
                      ? Image(
                          image: checked
                              ? Images.iconCheckboxSelected
                              : Images.iconCheckboxUnselected,
                          width: Dimens.gap_dp14,
                          height: Dimens.gap_dp14,
                          color: null == callback
                              ? Theme.of(context)
                                  .colorScheme
                                  .primary
                                  .withOpacity(0.5)
                              : checked
                                  ? Theme.of(context).colorScheme.primary
                                  : Theme.of(context)
                                      .colorScheme
                                      .onBackground
                                      .withOpacity(0.7),
                        )
                      : Gaps.empty,
                  ContactItem(data: data),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
