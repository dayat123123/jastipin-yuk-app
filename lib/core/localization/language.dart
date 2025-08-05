import 'package:flutter/material.dart';

enum Language {
  english(Locale('en'), 'English'),
  indonesia(Locale('id'), 'Indonesian');

  const Language(this.locale, this.text);

  final Locale locale;
  final String text;
}

extension LanguageExtension on Language {
  static Language fromCode(String code) {
    return Language.values.firstWhere(
      (language) => language.locale.languageCode == code,
      orElse: () => Language.indonesia,
    );
  }
}
