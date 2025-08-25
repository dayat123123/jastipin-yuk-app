import 'package:flutter/material.dart';
import 'package:jastipin_yuk/shared/misc/file_paths.dart';

enum Language {
  english(Locale('en', 'US'), 'English', FilePaths.englishImg),
  indonesia(Locale('id', 'ID'), 'Indonesian', FilePaths.indonesiaImg);

  const Language(this.locale, this.text, this.imagePath);

  final Locale locale;
  final String text;
  final String imagePath;
}

extension LanguageX on Language {
  static Language fromCode(String code) {
    return Language.values.firstWhere(
      (language) => language.locale.languageCode == code,
      orElse: () => Language.indonesia,
    );
  }
}
