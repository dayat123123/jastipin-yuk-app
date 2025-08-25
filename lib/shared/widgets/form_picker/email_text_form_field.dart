import 'package:flutter/material.dart';

class EmailTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final bool enabled;
  final String? Function(String?)? validator;

  const EmailTextFormField({
    super.key,
    required this.controller,
    this.validator,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      enabled: enabled,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      autofillHints: const [AutofillHints.email],
      decoration: const InputDecoration(
        hintText: 'yourname@email.com',
        prefixIcon: Icon(Icons.email),
      ),
      validator:
          validator ??
          (value) {
            if (value == null || value.isEmpty) return "Email can't be empty ";
            final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
            if (!emailRegex.hasMatch(value)) return 'Invalid email';
            return null;
          },
    );
  }
}
