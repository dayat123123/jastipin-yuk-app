import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PasswordTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String? labelText;
  final String? hintText;
  final bool enabled;
  final String? Function(String?)? validator;

  const PasswordTextFormField({
    super.key,
    required this.controller,
    this.labelText,
    this.hintText = 'Enter your password',
    this.validator,
    this.enabled = true,
  });

  @override
  State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
  bool _isObsecure = true;
  late bool _isEnable;

  @override
  void initState() {
    _isEnable = widget.enabled;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant PasswordTextFormField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.enabled != oldWidget.enabled) {
      setState(() {
        _isEnable = widget.enabled;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      enabled: _isEnable,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: _isObsecure,
      maxLength: 64,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        counterText: '',

        prefixIcon: const Icon(Icons.lock),
        suffixIcon: _suffixIcon(),
      ),
      validator: widget.validator ?? _defaultValidator,
      inputFormatters: [FilteringTextInputFormatter.deny(RegExp(r"[ ]"))],
    );
  }

  String? _defaultValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password cannot be empty';
    }

    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }

    return null;
  }

  Widget _suffixIcon() {
    return GestureDetector(
      onTap:
          () => setState(() {
            _isObsecure = !_isObsecure;
          }),
      child: Icon(_isObsecure ? Icons.visibility_off : Icons.visibility),
    );
  }
}
