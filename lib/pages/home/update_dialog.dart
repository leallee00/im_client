import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:install_plugin_v2/install_plugin_v2.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/widgets/dialog/dialog.dart';
import 'package:r_upgrade/r_upgrade.dart';
import 'package:upgrader/upgrader.dart';

class MyUpgraderMessages extends UpgraderMessages {
  MyUpgraderMessages({
    required this.updateContent,
    this.forceClearCache = false,
    super.code,
  });

  String updateContent;
  bool forceClearCache;

  @override
  String? message(UpgraderMessage messageKey) {
    if (messageKey == UpgraderMessage.body) {
      return updateContent;
    } else if (messageKey == UpgraderMessage.prompt) {
      if (forceClearCache) {
        return '注：此版本需要强制清除缓存。';
      }
    }
    return super.message(messageKey);
  }
}

class DownloadApkDialog extends StatefulWidget {
  const DownloadApkDialog({
    super.key,
    required this.versionRsp,
  });

  final CheckVersionRsp versionRsp;

  @override
  State<StatefulWidget> createState() => _DownloadApkDialogState();
}

class _DownloadApkDialogState extends State<DownloadApkDialog> {
  double progress = 0.0;
  bool _downloadCanceled = false;
  final _dio = Dio();

  @override
  void initState() {
    super.initState();
    getApplicationDocumentsDirectory().then((appDir) async {
      final apkFile = await File(
        '${appDir.path}/apk/laiwang_${widget.versionRsp.latestVersion}.apk',
      ).create(recursive: true);
      _dio.download(
        widget.versionRsp.url,
        apkFile.path,
        onReceiveProgress: (count, total) {
          if (!_downloadCanceled && total != -1) {
            final double ratio = count / total;
            LoggerManager().debug('${(ratio * 100).toStringAsFixed(0)}%');
            setState(() {
              progress = ratio;
            });
            if (ratio >= 1.0) {
              Navigator.pop(context);
              if (widget.versionRsp.needForcedUpdate) {
                RUpgrade.installByPath(apkFile.path);
              } else {
                CustomDialog.showDialog<void>(
                  context,
                  barrierDismissible: true,
                  builder: (context) {
                    return UpdateDownloadedDialog(apkPath: apkFile.path);
                  },
                );
              }
            }
          }
        },
        deleteOnError: true,
        options: Options(
          sendTimeout: const Duration(seconds: 120),
          receiveTimeout: const Duration(seconds: 120),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return UpdateDownloadingDialog(
      linearProgressIndicator: LinearProgressIndicator(
        backgroundColor: Theme.of(context).colorScheme.primary.withAlpha(25),
        value: progress,
        valueColor: AlwaysStoppedAnimation<Color>(
          Theme.of(context).colorScheme.primary,
        ),
      ),
      cancelCallback: () => _downloadCanceled = true,
    );
  }
}

class UpdateDownloadingDialog extends Dialog {
  const UpdateDownloadingDialog({
    super.key,
    required this.linearProgressIndicator,
    required this.cancelCallback,
    this.forceUpdate = false,
  });

  final LinearProgressIndicator linearProgressIndicator;
  final VoidCallback cancelCallback;
  final bool forceUpdate;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(4),
          ),
          width: 280,
          height: 180,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 240,
                height: 12,
                margin: const EdgeInsets.only(left: 22, right: 12),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  child: linearProgressIndicator,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 12, top: 30, bottom: 30),
                child: Text(
                  '下载中，请稍候…',
                  style: TextStyle(
                    color: Color(0xFF595959),
                    fontSize: 15,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  if (!forceUpdate) {
                    cancelCallback.call();
                    Navigator.pop(context);
                  }
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
            ],
          ),
        ),
      ),
    );
  }
}

class UpdateDownloadedDialog extends Dialog {
  const UpdateDownloadedDialog({
    super.key,
    required this.apkPath,
  });

  final String apkPath;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(4),
          ),
          width: 280,
          height: 180,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                '下载完成',
                style: TextStyle(
                  color: Color(0xFF262626),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  '新版本已下载完成，是否现在安装？',
                  style: TextStyle(
                    color: Color(0xFF595959),
                    fontSize: 15,
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
                      // todo 安装
                      RUpgrade.installByPath(apkPath);
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
                        '安装',
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
