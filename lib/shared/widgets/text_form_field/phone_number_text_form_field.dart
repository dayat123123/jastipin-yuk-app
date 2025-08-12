import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jastipin_yuk/shared/misc/global_variables.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PhoneNumberTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final bool enabled;
  final String? Function(String?)? validator;

  const PhoneNumberTextFormField({
    super.key,
    required this.controller,
    this.validator,
    this.enabled = true,
  });

  bool _isValidIndonesianPhoneNumber(String phone) {
    final regex = RegExp(r'^08\d{8,13}$');
    return regex.hasMatch(phone);
  }

  @override
  Widget build(BuildContext context) {
    final maxLength = GlobalVariables.maxPhoneNumber;
    final maskFormatter = MaskTextInputFormatter(
      mask: '####-####-#####',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy,
    );

    return TextFormField(
      controller: controller,
      enabled: enabled,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      inputFormatters: [
        maskFormatter,
        LengthLimitingTextInputFormatter(maxLength + 2),
      ],
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
            if (!_isValidIndonesianPhoneNumber(digitsOnly)) {
              return 'Please enter a valid phone number';
            }
            if (digitsOnly.length < 10) {
              return 'Phone number is too short';
            }
            if (digitsOnly.length > maxLength) {
              return 'Phone number is too long';
            }
            return null;
          },
    );
  }
}
