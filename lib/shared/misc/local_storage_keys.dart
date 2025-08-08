import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
class LocalStorageKeys {
  const LocalStorageKeys._();

  static const String themeKey = 'app_theme_mode';
  static const String localeKey = 'app_locale';

  static const String userDataKey = 'userdataKey';
  static const String authTokenKey = 'authTokenKey';
}
