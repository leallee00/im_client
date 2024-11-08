import 'package:flutter/material.dart';
import 'package:quliao/app.dart';

class OpenNotificationDialog extends StatelessWidget {
  const OpenNotificationDialog({super.key});

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
                '开启通知',
                style: TextStyle(
                  color: Color(0xFF262626),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
                child: Text(
                  '为了不错过任何重要通知，请允许应用发送通知。',
                  style: TextStyle(
                    color: Color(0xFF595959),
                    fontSize: 15,
                  ),
                  strutStyle: StrutStyle(
                    height: 2
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
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
                        '知道了',
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
                      jpush.openSettingsForNotification();
                      Navigator.pop(context);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 96,
                      height: 32,
                      child: const Text(
                        '去设置',
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