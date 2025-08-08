abstract interface class LocalStorage {
  Future<void> deleteData(String key);
  Future<void> deleteAllData();
  Future<dynamic> read(String key);
  Future<void> write(String key, dynamic value);
}
