import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class SearchTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String? hinttext;
  final bool enabled;
  final String? Function(String?)? validator;

  const SearchTextFormField({
    super.key,
    required this.controller,
    this.hinttext,
    this.validator,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      maxLength: 64,
      decoration: InputDecoration(
        hintText: hinttext ?? 'Search',
        prefixIcon: const Icon(FluentIcons.search_12_filled),
        counterText: '',
      ),
      validator: validator,
    );
  }
}
