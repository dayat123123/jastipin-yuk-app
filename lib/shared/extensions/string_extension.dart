extension StringExtension on String {
  String get firstLetter {
    return isNotEmpty ? this[0] : "";
  }
}
