import 'package:shared_preferences/shared_preferences.dart';

final class SharedPreferencesService {
  final SharedPreferences prefs;

  SharedPreferencesService(this.prefs);

  Future<void> setString(String key, String value) async {
    await prefs.setString(key, value);
  }

  String? getString(String key) {
    if (prefs.containsKey(key)) {
      return prefs.getString(key);
    }
    return null;
  }

  Future<void> remove(String key) async {
    await prefs.remove(key);
  }

  bool containsKey(String key) {
    return prefs.containsKey(key);
  }
}