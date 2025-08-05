import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PhoneNumberField extends StatelessWidget {
  final TextEditingController controller;
  final bool enabled;
  final String? Function(String?)? validator;

  const PhoneNumberField({
    super.key,
    required this.controller,
    this.validator,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    final maskFormatter = MaskTextInputFormatter(
      mask: '####-####-#####',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy,
    );

    return TextFormField(
      controller: controller,
      enabled: enabled,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      inputFormatters: [maskFormatter, LengthLimitingTextInputFormatter(15)],
      keyboardType: TextInputType.number,
      textAlign: TextAlign.start,
      decoration: const InputDecoration(
        hintText: '0812-xxxx-xxxxx',
        prefixIcon: Icon(Icons.phone),
        isDense: true,
      ),
      validator:
          validator ??
          (value) {
            final digitsOnly = value?.replaceAll(RegExp(r'[^0-9]'), '') ?? '';
            if (digitsOnly.isEmpty) {
              return 'Phone number cannot be empty';
            }
            if (digitsOnly.length < 10) {
              return 'Phone number is too short';
            }
            if (digitsOnly.length > 13) {
              return 'Phone number is too long';
            }
            return null;
          },
    );
  }
}
