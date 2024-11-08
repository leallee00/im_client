import 'package:flutter/foundation.dart';
import 'package:quliao/pub/pub-def.dart';

enum LOG_LEVEL { ERROR, WARN, INFO, DEBUG }

// 当前值
var curLogModel = LOG_MODEL.ALL;
var curLogLevel = LOG_LEVEL.DEBUG;

void logDebug(Object message, {int deep = 1, LOG_MODEL model = LOG_MODEL.ALL}) {
  log(message, deep: deep + 1, model: model);
}

void logInfo(Object message, {int deep = 1, LOG_MODEL model = LOG_MODEL.ALL}) {
  log(message, deep: deep + 1, model: model, level: LOG_LEVEL.INFO);
}

void logWarn(Object message, {int deep = 1, LOG_MODEL model = LOG_MODEL.ALL}) {
  log(message, deep: deep + 1, model: model, level: LOG_LEVEL.WARN);
}

void logError(Object message, {int deep = 1, LOG_MODEL model = LOG_MODEL.ALL}) {
  log(message, deep: deep + 1, model: model, level: LOG_LEVEL.ERROR);
}

/// deap = 1; // 堆栈深度
void log(Object message,
    {int deep = 1,
    LOG_MODEL model = LOG_MODEL.ALL,
    LOG_LEVEL level = LOG_LEVEL.DEBUG}) {


  if (curLogLevel.index < level.index) {
    return;
  }

  if (curLogModel != LOG_MODEL.ALL && model != curLogModel) {
    return;
  }

  if (kDebugMode) {
    var modeStr = "";
    switch (level) {
      case LOG_LEVEL.DEBUG:
        modeStr = "💙 ";
        break;
      case LOG_LEVEL.WARN:
        modeStr = "💛";
        break;
      case LOG_LEVEL.INFO:
        modeStr = "💚 ";
        break;
      case LOG_LEVEL.ERROR:
        modeStr = "❤️ ";
        break;
    }
    //
    var lines = StackTrace.current.toString().split("\n");
    print("${DateTime.now()}$modeStr${model.name}-${level.name}:${lines[1]}->$message");
    for (int i = 2; i <= deep && i < lines.length; i ++) {
      var traceString = lines[i];
      print("stack->${traceString}");
    }

    if (level == LOG_LEVEL.ERROR) {
      print("trace:\n${StackTrace.current}");
    }
    /*
    FCustomTrace programInfo = FCustomTrace(StackTrace.current, deap);
    // CustomTrace programInfo = CustomTrace(StackTrace.current, deap);
    if (programInfo != null &&
        programInfo.fileName != null &&
        programInfo.lineNumber != null) {
      print(
          "${DateTime.now()}:${programInfo.fileName}(${programInfo.lineNumber}):${programInfo.funcName}:[${model}-${level}]->$message");
    } else {
      print("打印内容:$message");
    }*/
  } else if (kReleaseMode) {
    print("----ReleaseMode-------");
  } else if (kProfileMode) {
    print("----ProfileMode-------");
  }
}

class FCustomTrace {
  final StackTrace _trace;
  final int deap;
  String fileName = "";
  int lineNumber = 0;
  int columnNumber = 0;
  String funcName = "";
  FCustomTrace(this._trace, this.deap) {
    _parseTrace();
  }

  void _parseTrace() {
    var traceString = this._trace.toString().split("\n")[deap];
    var indexOfFileName = traceString.indexOf(RegExp(r'[A-Za-z0-9]+.dart'));
    // var indexOfFileName = traceString.indexOf('(');
    var fileInfo = traceString.substring(indexOfFileName);
    var listOfInfos = fileInfo.split(":");
    this.fileName = listOfInfos[0];
    // var ln = listOfInfos[1].split(":");
    // this.lineNumber = int.parse(ln[0]);
    this.lineNumber = int.parse(listOfInfos[1]);
    var columnStr = listOfInfos[2];
    columnStr = columnStr.replaceFirst(")", "");
    this.columnNumber = int.parse(columnStr);
    // var nloc = traceString.indexOf(RegExp(r'[A-Za-z0-9]+\$'));
    // var ns = traceString.substring(nloc);
    var fn = traceString.split(" ");
    this.funcName = fn[6];
  }
}

// class CustomTrace {
//   late final StackTrace _trace;
//   late final int _deapth;
//   late String fileName;
//   late int lineNumber;
//   late int columnNumber;
//
//   CustomTrace(this._trace, this._deapth) {
//     _parseTrace();
//   }
//
//   void _parseTrace() {
//     var traceString = _trace.toString().split("\n")[_deapth];
//
//     var indexOfFileName = traceString.indexOf(RegExp(r'[A-Za-z_]+.dart'));
//
//     var fileInfo = traceString.substring(indexOfFileName);
//
//     var listOfInfos = fileInfo.split(":");
//     this.fileName = listOfInfos[0];
//     this.lineNumber = int.parse(listOfInfos[1]);
//     var columnStr = listOfInfos[2];
//     columnStr = columnStr.replaceFirst(")", "");
//     this.columnNumber = int.parse(columnStr);
//     this.funcName = traceString.split(" ")[6];
//   }
// }