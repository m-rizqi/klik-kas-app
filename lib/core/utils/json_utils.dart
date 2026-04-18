extension JsonUtils on Map<String, dynamic> {
  String? getStringOrNull(String key) {
    final value = this[key];
    if (value == null) return null;
    return value.toString();
  }

  String getString(String key) {
    return getStringOrNull(key) ?? '';
  }

  int? getIntOrNull(String key) {
    final value = this[key];
    if (value == null) return null;
    if (value is num) return value.toInt();
    return int.tryParse(value.toString());
  }

  int getInt(String key) {
    return getIntOrNull(key) ?? 0;
  }

  double? getDoubleOrNull(String key) {
    final value = this[key];
    if (value == null) return null;
    if (value is num) return value.toDouble();
    return double.tryParse(value.toString());
  }

  double getDouble(String key) {
    return getDoubleOrNull(key) ?? 0.0;
  }

  bool? getBoolOrNull(String key) {
    final value = this[key];
    if (value == null) return null;
    if (value is bool) return value;
    if (value == 'true' || value == 1 || value == '1') return true;
    if (value == 'false' || value == 0 || value == '0') return false;
    return null;
  }

  bool getBool(String key) {
    return getBoolOrNull(key) ?? false;
  }

  Map<String, dynamic> getMap(String key) {
    final value = this[key];
    if (value is Map<String, dynamic>) return value;
    return <String, dynamic>{};
  }

  List<T> getList<T>(String key) {
    final value = this[key];
    if (value is List) return value.cast<T>();
    return <T>[];
  }

  List<Map<String, dynamic>> getListOfMap(String key) => getList<Map<String, dynamic>>(key);

  DateTime? getDateTimeOrNull(String key) {
    final value = this[key];
    if (value == null) return null;
    return DateTime.tryParse(value.toString());
  }

  DateTime getDateTimeOrNow(String key) {
    return getDateTimeOrNull(key) ?? DateTime.now();
  }
}
