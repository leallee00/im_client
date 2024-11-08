import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:intl/intl.dart' as intl;

String formatDateTime(int ts, [String? pattern = "yyyy-MM-dd HH:mm"]) {
  var fmt = intl.DateFormat(pattern);
  return fmt.format(DateTime.fromMillisecondsSinceEpoch(ts));
}

///"2022-11-02T07:12:24.000+00:00"
String formatDateTimeString(String ts) {
  var t = ts.replaceAll("T", " ");
  var time = t.replaceAll(".000+00:00", "");
  return formatDateTime(formatDateTimeToMilliseconds(time)+8*3600000);
}

String formatDate(DateTime date, [String? pattern = "yyyy-MM-dd HH:mm"]) {
  var fmt = intl.DateFormat(pattern);
  return fmt.format(date);
}

int formatDateTimeToMilliseconds(String dateStr) {
  DateTime? dateTime = DateTime.tryParse(dateStr);
  return dateTime?.millisecondsSinceEpoch ?? 0;
}

//距离几天
int fromNowDays(String t) {
  int timestamp = t == 'null' || t == "" ? 0 : int.parse(t);
  String ymd = formatDateTime(timestamp, "yyyy-MM-dd");
  int ms = formatDateTimeToMilliseconds("$ymd 23:59:59");
  String ymd1 = formatDateTime((DateTime.now().millisecondsSinceEpoch), "yyyy-MM-dd");
  int ms1 = formatDateTimeToMilliseconds("$ymd1 00:00:00");

  return (DateTime.fromMillisecondsSinceEpoch(ms1)).difference(DateTime.fromMillisecondsSinceEpoch(ms + 1000)).inDays + 2;
}



///格式化时间"99:59:59"
String secToTime(int time) {
  String timeStr;
  int hour = 0;
  int minute = 0;
  int second = 0;
  if (time <= 0) {
    return "00:00:00";
  } else {
    minute = time ~/ 60;
    if (minute < 60) {
      second = time % 60;
      timeStr = "00:${minute < 10 ? '0' : ''}$minute:${second < 10 ? '0' : ''}$second";
    } else {
      hour = (minute ~/ 60);
      if (hour > 99) {
        return "99:59:59";
      }
      minute = minute % 60;
      second = time - hour * 3600 - minute * 60;
      timeStr = "${hour < 10 ? '0' : ''}$hour:${minute < 10 ? '0' : ''}$minute:${second < 10 ? '0' : ''}$second";
    }
  }
  return timeStr;
}

///格式化时间99小时59分59秒
String secToTime1(int time) {
  String timeStr;
  int hour = 0;
  int minute = 0;
  int second = 0;
  if (time <= 60) {
    return "$time秒";
  } else {
    minute = time ~/ 60;
    if (minute < 60) {
      second = time % 60;
      timeStr = "$minute分$second秒";
    } else {
      hour = (minute ~/ 60);
      if (hour > 99) {
        return "99小时59分59秒";
      }
      minute = minute % 60;
      second = time - hour * 3600 - minute * 60;
      timeStr = "$hour小时$minute分$second秒";
    }
  }
  return timeStr;
}

///格式化时间"99:59:59"
List<String> secToTimeList(int time) {
  String str = secToTime(time);
  return [str[0], str[1], str[3], str[4], str[6], str[7]];
}

///1.0 今天的消息显示 时:分
/// 1.1 昨天的消息显示 昨天 时:分
/// 1.2 近6天的显示 星期 时:分
///1.3 其他的消息显示 年月日 时:分
/// 1.4 时间显示跨度为5分钟
String secToTimeMessage(int time) {
  int s = formatDateTimeToMilliseconds("${formatDateTime(DateTime.now().millisecondsSinceEpoch, "yyyy-MM-dd")} 00:00:00");
  int a = DateTime.now().millisecondsSinceEpoch - s;
  int b = DateTime.now().millisecondsSinceEpoch - time;
  int week = 7;
  try {
    week = DateTime.fromMillisecondsSinceEpoch(time).weekday;
  } finally {}
  week = week % 7;
  if (a > b) {
    return formatDateTime(time, 'HH:mm');
  } else if ((b - a) < 24 * 1000 * 3600) {
    return "${"昨天".tr} ${formatDateTime(time, 'HH:mm')}";
  } else if ((b - a) < (24 * 1000 * 3600 * 7)) {
    String weekstr = "星期天".tr;
    if (week == 1) {
      weekstr = "星期一".tr;
    } else if (week == 2) {
      weekstr = "星期二".tr;
    } else if (week == 3) {
      weekstr = "星期三".tr;
    } else if (week == 4) {
      weekstr = "星期四".tr;
    } else if (week == 5) {
      weekstr = "星期五".tr;
    } else if (week == 6) {
      weekstr = "星期六".tr;
    }
    return "$weekstr ${formatDateTime(time, 'HH:mm')}";
  }

  return formatDateTime(time, 'yyyy-MM-dd HH:mm');
}
