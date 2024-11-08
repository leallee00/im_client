import 'dart:io';

import 'package:flustars/flustars.dart';
import 'package:logger/logger.dart' hide FileOutput;
import 'package:path_provider/path_provider.dart';
import 'package:quliao/utils/log/output.dart';

Future<String> createDirectory() async {
  final Directory directory = await getApplicationDocumentsDirectory();
  var file = Directory("${directory.path}/lyd");
  try {
    bool exist = await file.exists();
    if (exist == false) {
      await file.create();
    }
  } catch (e) {
    print("createDirectory error");
  }

  return file.path;
}

class LoggerManager {
  //私有构造函数
  LoggerManager._internal() {
    deleteLogsOfBefore7Day();
    initLogger();
  }

  File? file;

  //保存单例
  static final LoggerManager _singleton = LoggerManager._internal();

  //工厂构造函数
  factory LoggerManager() => _singleton;

  late Logger logger;

  // log初始化设置
  Future<void> initLogger() async {
    FileOutput fileOutPut = FileOutput();
    ConsoleOutput consoleOutput = ConsoleOutput();
    List<LogOutput> multiOutput = [fileOutPut, consoleOutput];
    logger = Logger(
      filter: DevelopmentFilter(),
      // Use the default LogFilter (-> only log in debug mode)
      // printer: SimplePrinter(
      //   colors: true,
      //   printTime: true,
      // ),
      printer: HybridPrinter(
        PrettyPrinter(
          noBoxingByDefault: false,
          methodCount: 2,
          // number of method calls to be displayed
          errorMethodCount: 8,
          // number of method calls if stacktrace is provided
          lineLength: 120,
          // width of the output
          colors: true,
          // Colorful log messages
          printEmojis: false,
          // Print an emoji for each log message
          printTime: true, // Should each log print contain a timestamp
        ),
        debug: SimplePrinter(),
      ),

      // printer: PrefixPrinter(PrettyPrinter(
      //   noBoxingByDefault: true,
      //   methodCount: 2,
      //   // number of method calls to be displayed
      //   errorMethodCount: 8,
      //   // number of method calls if stacktrace is provided
      //   lineLength: 120,
      //   // width of the output
      //   colors: true,
      //   // Colorful log messages
      //   printEmojis: false,
      //   // Print an emoji for each log message
      //   printTime: true, // Should each log print contain a timestamp
      // )),

      // printer: PrettyPrinter(
      //   noBoxingByDefault: true,
      //   methodCount: 2,
      //   // number of method calls to be displayed
      //   errorMethodCount: 8,
      //   // number of method calls if stacktrace is provided
      //   lineLength: 120,
      //   // width of the output
      //   colors: true,
      //   // Colorful log messages
      //   printEmojis: false,
      //   // Print an emoji for each log message
      //   printTime: true, // Should each log print contain a timestamp
      // ),
      // Use the PrettyPrinter to format and print log
      output: MultiOutput(
        multiOutput,
      ), // Use the default LogOutput (-> send everything to console)
    );
    file = fileOutPut.file;
  }

  // Debug
  void debug(String message) {
    logger.d(message);
  }

  // verbose
  void verbose(String message) {
    logger.v(message);
  }

  // info
  void info(String message) {
    logger.i(message);
  }

  // warning
  void warning(String message) {
    logger.w(message);
  }

  // error
  void error(String message) {
    logger.e(message);
  }

  File? getLogFile() {
    return file;
  }

  // 每次启动只保留7天内的日志，删除7天前的日志
  Future<void> deleteLogsOfBefore7Day() async {
    final String fileDir = await createDirectory();

    // 获取目录的所有文件
    var dir = Directory(fileDir);
    Stream<FileSystemEntity> file = dir.list();
    await for (FileSystemEntity x in file) {
      // 获取文件的的名称
      List<String> paths = x.path.split('/');
      if (paths.isNotEmpty) {
        String logName = paths.last.replaceAll('.log', '');
        final logDate = DateUtil.getDateTime(logName);
        final currentDate = DateTime.now();
        //比较相差的天数
        if (logDate != null) {
          final difference = currentDate.difference(logDate!).inDays;
          print(
              "deleteLogsOfBefore7Day logDate:${logDate}, currentDate:${currentDate}, difference:${difference}");
          if (difference > 7) {
            var file = File(x.path);
            // 删除文件
            file.delete();
          }
        }
      }
    }
  }
}
