import 'package:intl/intl.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';

class Formatters {
  const Formatters._();

  static String get getCurrentLocale {
    return Intl.getCurrentLocale();
  }

  static String formatDateTime(
    DateTime? time, {
    PickerMode mode = PickerMode.date,
  }) {
    if (time == null) return "";
    String pattern;

    switch (mode) {
      case PickerMode.time:
        pattern = 'HH:mm';
        break;
      case PickerMode.date:
        pattern = 'dd MMMM yyyy';
        break;
      case PickerMode.dateAndTime:
        pattern = 'dd MMMM yyyy HH:mm';
        break;
    }

    return DateFormat(pattern, getCurrentLocale).format(time);
  }

  static String formatDateFromString(String dateString) {
    try {
      final date = DateTime.parse(dateString);
      return DateFormat('dd MMMM yyyy', getCurrentLocale).format(date);
    } catch (e) {
      return '';
    }
  }
}
