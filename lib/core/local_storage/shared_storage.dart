import 'package:shared_preferences/shared_preferences.dart';

/// Wraps the [SharedPreferences].
class SharedStorage {
  SharedPreferences? _preferences;

  /// Initializes the [_preferences!] instance.
  Future<void> initialize() async {
    _preferences = await SharedPreferences.getInstance();
  }

  T? get<T>(String key) => _preferences!.get(key) as T?;

  Future<bool> setBool(String key, bool value) {
    return _preferences!.setBool(key, value);
  }

  Future<void> clear() async {
    await _preferences!.clear();
  }

  Future<void> setStringList(String key, List<String> value) async {
    await _preferences!.setStringList(key, value);
  }

  Future<void> setString(String key, String value) async {
    await _preferences!.setString(key, value);
  }

  Future<void> setInt(String key, int value) async {
    await _preferences!.setInt(key, value);
  }
}
