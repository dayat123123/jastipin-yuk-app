import 'package:flutter/material.dart';

extension CleanNumberTextController on TextEditingController {
  String get cleanNumberString {
    return text.replaceAll(RegExp(r'[^0-9]'), '');
  }

  int? get cleanNumberInt {
    final cleanStr = cleanNumberString;
    if (cleanStr.isEmpty) return null;
    return int.tryParse(cleanStr);
  }

  double? get cleanNumberDouble {
    final cleanStr = cleanNumberString;
    if (cleanStr.isEmpty) return null;
    return double.tryParse(cleanStr);
  }
}
