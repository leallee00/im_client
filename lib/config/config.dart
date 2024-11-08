import 'package:quliao/global/enum/channel.dart';

class Config {
  static const String ossEndPoint = 'oss-cn-hangzhou.aliyuncs.com';
  static const String ossBucketName = 'commimhk';

  static const Map fileMap = {
    "doc": "images/word.png",
    "docx": "images/word.png",
    "ppt": "images/ppt.png",
    "pptx": "images/ppt.png",
    "xls": "images/excel.png",
    "xlsx": "images/excel.png",
    "pdf": "images/pdf.png",
    "zip": "images/zip.png",
    "rar": "images/zip.png",
    "7z": "images/zip.png",
    "tar": "images/zip.png",
    "gz": "images/zip.png",
    "xz": "images/zip.png",
    "bz2": "images/zip.png",
    "txt": "images/txt.png",
    "jpg": "images/image_icon.png",
    "bmp": "images/image_icon.png",
    "gif": "images/image_icon.png",
    "png": "images/image_icon.png",
    "jpeg": "images/image_icon.png",
    "tif": "images/image_icon.png",
    "wmf": "images/image_icon.png",
    "dib": "images/image_icon.png",
    "mp4": "images/video_icon.png",
    "avi": "images/video_icon.png",
    "mov": "images/video_icon.png",
    "wmv": "images/video_icon.png",
    "flv": "images/video_icon.png",
  };

  static const INDEX_BAR_WORDS = [
    "↑",
    "☆",
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X",
    "Y",
    "Z",
    "#",
  ];

  /// 当前 channel
  static const XChannel channel = XChannel.laiwang;

  /// 用户协议
  static const String userAgreement =
      'http://110.42.1.165:83/DocUserAgreement.html';

  /// 隐私协议
  static const String privacyAgreement =
      'http://110.42.1.165:83/DocPrivacyAgreement.html';
}
