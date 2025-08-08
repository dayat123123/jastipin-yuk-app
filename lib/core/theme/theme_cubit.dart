import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jastipin_yuk/core/local_storage/local_storage.dart';
import 'package:jastipin_yuk/core/theme/src/app_theme_mode_model.dart';
import 'package:jastipin_yuk/shared/misc/local_storage_keys.dart';

class ThemeCubit extends Cubit<AppThemeMode> {
  final LocalStorage _localStorage;
  final _key = LocalStorageKeys.themeKey;
  ThemeCubit(this._localStorage) : super(AppThemeMode.system) {
    _loadInitialTheme();
  }

  Future<void> _loadInitialTheme() async {
    try {
      final storedData = await _localStorage.read(_key);
      if (storedData != null && storedData is String) {
        final AppThemeMode storedMode = AppThemeModeX.fromString(storedData);
        emit(storedMode);
      }
    } catch (e) {
      emit(AppThemeMode.system);
    }
  }

  void setTheme(AppThemeMode mode) async {
    emit(mode);

    try {
      await _localStorage.write(_key, mode.title);
    } catch (_) {}
  }
}
