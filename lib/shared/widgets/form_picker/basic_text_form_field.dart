import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BasicTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String? labelText;
  final String? hintText;
  final int? maxLength;
  final int? minLength;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final bool enabled;
  final List<TextInputFormatter>? inputFormatters;

  const BasicTextFormField({
    super.key,
    required this.controller,
    this.labelText,
    this.hintText,
    this.maxLength,
    this.minLength,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.inputFormatters,
    this.enabled = true,
  });

  String? _checker(String? value) {
    if (value == null || value.isEmpty) {
      return 'Input cannot be empty';
    }

    final forbiddenCharPattern = RegExp(r'[;\"`]');
    final forbiddenSubstr = '--';

    if (forbiddenCharPattern.hasMatch(value) ||
        value.contains(forbiddenSubstr)) {
      return 'Input contains invalid characters';
    }

    if (minLength != null && value.length < minLength!) {
      return 'Input must be at least $minLength characters';
    }

    if (maxLength != null && value.length > maxLength!) {
      return 'Input must be at most $maxLength characters';
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      ignorePointers: !enabled,
      readOnly: !enabled,
      enabled: enabled,
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      maxLength: maxLength,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        counterText: '',
      ),
      validator: validator ?? _checker,
    );
  }
}
