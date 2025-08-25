import 'package:flutter/material.dart';
import 'package:jastipin_yuk/shared/misc/formatters.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';

class DateFormPickerField extends StatelessWidget {
  final DateTime? selectedDate;
  final VoidCallback? onTap;
  final String hint;
  final bool enabled;

  const DateFormPickerField({
    super.key,
    required this.selectedDate,
    required this.onTap,
    this.hint = "Select date",
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    final isDisabled = !enabled || selectedDate == null;

    final iconColor =
        isDisabled ? context.themeColors.disabled : context.themeColors.primary;

    return GestureDetector(
      onTap: enabled ? onTap : null,
      child: AbsorbPointer(
        child: TextFormField(
          enabled: enabled,
          readOnly: true,
          decoration: InputDecoration(
            hintText:
                selectedDate == null
                    ? hint
                    : Formatters.formatDateTime(selectedDate),
            hintStyle: context.textStyle.body.copyWith(
              color:
                  isDisabled
                      ? context.themeColors.disabled
                      : context.textStyle.body.color,
            ),
            suffixIcon: Icon(Icons.calendar_month, color: iconColor),
          ),
        ),
      ),
    );
  }
}
