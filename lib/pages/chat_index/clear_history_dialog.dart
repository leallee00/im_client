import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';

class ClearHistoryDialog extends StatelessWidget {
  const ClearHistoryDialog({
    super.key,
  });

  static void show(BuildContext context, VoidCallback callback) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: const ClearHistoryDialog(),
          actions: <Widget>[
            TextButton(
              child: const Text('确定'),
              onPressed: () async {
                Navigator.of(context).pop();
                callback.call();
              },
            ),
            TextButton(
              child: const Text('取消'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 50,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white24,
          borderRadius: BorderRadius.circular(Dimens.gap_dp10),
        ),
        alignment: Alignment.centerLeft,
        child: Text(
          "确定要清空聊天记录吗？",
          style: TextStyle(
            fontSize: Dimens.font_sp16,
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
      ),
    );
  }
}
