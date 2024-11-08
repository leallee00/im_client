
import 'package:flutter/material.dart';
import 'package:quliao/pub/pub-def.dart';

class ClearInfoAlertView extends StatelessWidget {
  const ClearInfoAlertView({
    super.key,
    this.onCancel,
    this.callback,
  });

  final VoidCallback? onCancel;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(8),
          ),
          width: 280,
          height: 190,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                '警告',
                style: TextStyle(
                  color: Color(0xFF262626),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Padding(
                padding:
                EdgeInsets.symmetric(vertical: 30, horizontal: 12),
                child: Text('将清除出用户信息以外的所有数据(包括聊天信息)，确认要清除吗?'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      onCancel?.call();
                      Navigator.pop(context);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE6E6E6),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 96,
                      height: 32,
                      child: const Text(
                        '取消',
                        style: TextStyle(
                          color: Color(0xFF8C8C8C),
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 24,
                    height: 1,
                  ),
                  InkWell(
                    onTap: () async {
                      Navigator.pop(context);
                      callback?.call();
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 96,
                      height: 32,
                      child: const Text(
                        '确定',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
