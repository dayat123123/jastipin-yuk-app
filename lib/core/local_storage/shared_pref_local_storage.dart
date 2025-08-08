import 'dart:convert';
import 'package:jastipin_yuk/core/local_storage/local_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefLocalStorage implements LocalStorage {
  final SharedPreferences _prefs;

  const SharedPrefLocalStorage._(this._prefs);

  static Future<SharedPrefLocalStorage> create() async {
    final prefs = await SharedPreferences.getInstance();
    return SharedPrefLocalStorage._(prefs);
  }

  @override
  Future<void> deleteData(String key) async {
    await _prefs.remove(key);
  }

  @override
  Future<void> deleteAllData() async {
    await _prefs.clear();
  }
  // Di dalam class SharedPreferencesLocalStorage

  @override
  Future<void> write(String key, dynamic value) async {
    // Hanya encode ke JSON jika tipe datanya bukan string atau primitif lainnya
    if (value is String) {
      await _prefs.setString(key, value);
    } else if (value is bool) {
      await _prefs.setBool(key, value);
    } else if (value is int) {
      await _prefs.setInt(key, value);
    } else if (value is double) {
      await _prefs.setDouble(key, value);
    } else if (value is List<String>) {
      await _prefs.setStringList(key, value);
    } else {
      // encode ke JSON untuk tipe data yang lebih kompleks
      try {
        final jsonString = jsonEncode(value);
        await _prefs.setString(key, jsonString);
      } catch (e) {
        throw Exception("Gagal encode data ke JSON: $e");
      }
    }
  }

  @override
  Future<dynamic> read(String key) async {
    final dynamic value = _prefs.get(key);

    if (value == null) return null;

    if (value is String) {
      try {
        return jsonDecode(value);
      } catch (_) {
        return value;
      }
    }

    return value;
  }
}
