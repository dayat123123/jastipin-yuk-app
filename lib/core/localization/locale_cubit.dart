import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:jastipin_yuk/core/localization/language.dart';

final _locale = Language.indonesia;

class LocaleCubit extends Cubit<Language> {
  LocaleCubit() : super(_locale) {
    _loadLocale();
  }

  Future<void> _loadLocale() async {
    Intl.defaultLocale = _locale.locale.languageCode;
    emit(_locale);
  }
}
