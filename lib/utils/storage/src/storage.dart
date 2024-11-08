part of storage;

class Storage {
  Storage._();

  late final SharedPreferences _prefs;

  static final Storage _instance = Storage._();

  static Storage get instance => _instance;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Future<bool> setInt(String key, int value) {
    return _prefs.setInt(key, value);
  }

  Future<bool> setString(String key, String value) {
    return _prefs.setString(key, value);
  }

  Future<bool> setBool(String key, bool value) {
    return _prefs.setBool(key, value);
  }

  Future<bool> setList(String key, List<String> value) {
    return _prefs.setStringList(key, value);
  }

  int getInt(String key) {
    return _prefs.getInt(key) ?? 0;
  }

  String getString(String key) {
    return _prefs.getString(key) ?? '';
  }

  bool getBool(String key) {
    return _prefs.getBool(key) ?? false;
  }

  List<String> getList(String key) {
    return _prefs.getStringList(key) ?? <String>[];
  }

  Future<bool> remove(String key) {
    return _prefs.remove(key);
  }
}
