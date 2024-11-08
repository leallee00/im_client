part of storage;

class StorageKey {
  static const String _keyPrefix = 'key';

  static const String offlineMsgSn = '${_keyPrefix}_offline_msg_sn';
  static const String errorVersion = '${_keyPrefix}_error_version';
  static const String errorMsg = '${_keyPrefix}_error_msg';
  static const String emojis = '${_keyPrefix}_emojis';
  static const String fontSizeType = '${_keyPrefix}_font_size_type';
}
