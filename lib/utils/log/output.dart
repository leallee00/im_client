import 'dart:convert';
import 'dart:io';

import 'package:flustars/flustars.dart';
import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quliao/global/controller/global_controller.dart';

import 'manager.dart';

class FileOutput extends LogOutput {
  final bool overrideExisting;
  final Encoding encoding;
  IOSink? _sink;

  File? file;
  String? _currentDate;

  FileOutput({
    this.overrideExisting = false,
    this.encoding = utf8,
  });

  Future<void> getDirectoryForLogRecord() async {
    String currentDate = getCurrentDay();
    if (currentDate != _currentDate) {
      final String fileDir = await createDirectory();
      file = File('$fileDir/$currentDate.log');

      _sink = file!.openWrite(
        mode: overrideExisting ? FileMode.writeOnly : FileMode.writeOnlyAppend,
        encoding: encoding,
      );

      _currentDate = currentDate;
    }
  }

  String getCurrentDay() {
    String currentDate = DateUtil.formatDate(
      DateTime.now(),
      format: 'yyyyMMdd',
    );
    return currentDate;
  }

  @override
  void init() {
    directoryLogRecord(onCallback: () {});
  }

  void directoryLogRecord({required Function onCallback}) {
    getDirectoryForLogRecord().whenComplete(() {
      onCallback();
    });
  }

  @override
  void output(OutputEvent event) {
    directoryLogRecord(
      onCallback: () {
        if (_sink != null) {
          // if (Level.info == event.level ||
          //     Level.warning == event.level ||
          //     Level.error == event.level) {
          //   _sink?.writeAll(event.lines, '\n');
          // }
          _sink?.writeAll(event.lines, '\n');
          GlobalController.to.logFile.value = file;
        }
      },
    );
  }

  @override
  void destroy() async {
    await _sink?.flush();
    await _sink?.close();
  }
}
