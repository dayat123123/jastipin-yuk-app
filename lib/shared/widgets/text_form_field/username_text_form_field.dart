import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UsernameTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String? hinttext;
  final bool enabled;
  final String? Function(String?)? validator;

  const UsernameTextFormField({
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
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'[a-z0-9._]')),
      ],
      decoration: InputDecoration(
        hintText: hinttext ?? 'Username (e.g. yourname_12)',
        prefixIcon: const Icon(Icons.account_circle_rounded),
        counterText: '',
        isDense: true,
      ),
      validator: validator ?? validateUsername,
    );
  }

  String? validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Username cannot be empty';
    }

    if (value.length < 8) {
      return 'Username must be at least 8 characters long';
    }

    if (value.length > 64) {
      return 'Username must be at most 64 characters';
    }

    final validPattern = RegExp(r'^(?!.*[._]{2,})(?![._])[a-z0-9._]{1,64}$');

    if (!validPattern.hasMatch(value)) {
      return 'Invalid username. Only lowercase letters, numbers, underscores, and dots allowed. No consecutive underscores/dots or start/end with them.';
    }

    return null;
  }
}
