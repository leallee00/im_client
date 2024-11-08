import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/utils/storage/index.dart';

import 'data.dart';

class EmojiPicker extends StatefulWidget {
  const EmojiPicker({
    super.key,
    this.enableDelete = true,
    this.onSelected,
    this.onDeleted,
  });

  final bool enableDelete;
  final Function(String)? onSelected;
  final Function()? onDeleted;

  @override
  State<StatefulWidget> createState() => _EmojiPickerState();
}

class _EmojiPickerState extends State<EmojiPicker> {
  List<String> recentEmojis = [];

  @override
  void initState() {
    super.initState();
    recentEmojis = Storage.instance.getList(StorageKey.emojis);
    if (mounted) {
      setState(() {});
    }
  }

  void saveRecentlyEmoji(
    String text,
  ) {
    final list = Storage.instance.getList(StorageKey.emojis);
    if (list.contains(text)) {
      list.removeWhere((element) => element == text);
      list.insert(0, text);
    } else {
      list.insert(0, text);
    }
    if (list.length > 8) {
      list.removeLast();
    }
    Storage.instance.setList(StorageKey.emojis, list);
    if (mounted) {
      setState(() {
        recentEmojis = list;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFFEDEDED),
      child: SizedBox(
        height: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (recentEmojis.isNotEmpty)
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimens.gap_dp16,
                ).copyWith(top: Dimens.gap_dp16),
                child: Text(
                  '最近表情',
                  style: TextStyle(
                    fontSize: Dimens.font_sp12,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
              ),
            if (recentEmojis.isNotEmpty)
              LayoutBuilder(
                builder: (context, constraints) {
                  final double width = (constraints.maxWidth - 90) / 8;
                  return GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: recentEmojis.length,
                    padding: EdgeInsets.symmetric(horizontal: Dimens.gap_dp6),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 8,
                    ),
                    itemBuilder: (context, index) {
                      final value = recentEmojis[index];
                      return SizedBox(
                        width: width,
                        height: width,
                        child: IconButton(
                          onPressed: () {
                            widget.onSelected?.call(value);
                            saveRecentlyEmoji(value);
                          },
                          icon: Text(
                            value,
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          padding: EdgeInsets.zero,
                          splashRadius: 20,
                        ),
                      );
                    },
                  );
                },
              ),
            Gaps.vGap10,
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Dimens.gap_dp16,
              ),
              child: Text(
                '所有表情',
                style: TextStyle(
                  fontSize: Dimens.font_sp12,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  LayoutBuilder(
                    builder: (context, constraints) {
                      final double width = (constraints.maxWidth - 90) / 8;
                      return PageView.builder(
                        itemCount: 1,
                        itemBuilder: (context, int index) {
                          return SingleChildScrollView(
                            physics: const ClampingScrollPhysics(),
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: Wrap(
                                    spacing: 10,
                                    runSpacing: 10,
                                    alignment: WrapAlignment.center,
                                    children: smileys.values
                                        .map(
                                          (v) => SizedBox(
                                            width: width,
                                            height: width,
                                            child: IconButton(
                                              onPressed: () {
                                                widget.onSelected?.call(v);
                                                saveRecentlyEmoji(v);
                                              },
                                              icon: Text(
                                                v,
                                                style: const TextStyle(
                                                  fontSize: 18,
                                                ),
                                              ),
                                              padding: EdgeInsets.zero,
                                              splashRadius: 20,
                                            ),
                                          ),
                                        )
                                        .toList(),
                                  ),
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  height:
                                      MediaQuery.of(context).padding.bottom + 8,
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
