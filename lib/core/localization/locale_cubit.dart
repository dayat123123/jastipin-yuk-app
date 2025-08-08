import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jastipin_yuk/core/local_storage/local_storage.dart';
import 'package:jastipin_yuk/core/localization/language.dart';
import 'package:jastipin_yuk/shared/misc/local_storage_keys.dart';

final _locale = Language.indonesia;

class LocaleCubit extends Cubit<Language> {
  final LocalStorage _localStorage;
  final _key = LocalStorageKeys.localeKey;

  LocaleCubit(this._localStorage) : super(_locale) {
    _loadLocale();
  }

  Future<void> _loadLocale() async {
    try {
      final storedData = await _localStorage.read(_key);
      if (storedData != null && storedData is String) {
        final storedMode = LanguageX.fromCode(storedData);
        emit(storedMode);
      }
    } catch (e) {
      emit(Language.indonesia);
    }
  }

  void setLocale(Language language) async {
    emit(language);
    try {
      await _localStorage.write(_key, language.locale.languageCode);
    } catch (_) {}
  }
}
