import 'package:flutter/material.dart';
import 'package:jastipin_yuk/features/authentication/domain/enums/gender.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';

class GenderRadioGroupField extends StatelessWidget {
  final Gender selectedGender;
  final bool enabled;
  final ValueChanged<Gender?> onChanged;

  const GenderRadioGroupField({
    super.key,
    required this.selectedGender,
    this.enabled = true,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children:
          Gender.values.map((gender) {
            final isSelected = selectedGender == gender;

            final containerColor =
                isSelected
                    ? (enabled
                        ? context.themeColors.primary
                        : context.themeColors.disabled)
                    : context.themeColors.separator;
            final foregroundColor =
                isSelected
                    ? (enabled
                        ? context.themeColors.primary
                        : context.themeColors.disabled)
                    : context.themeColors.disabled;

            return Expanded(
              child: GestureDetector(
                onTap: enabled ? () => onChanged(gender) : null,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 2,
                    horizontal: 8,
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color:
                        isSelected
                            ? containerColor.withValues(alpha: 0.1)
                            : null,
                    border: Border.all(color: containerColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Radio<Gender>(
                        value: gender,
                        groupValue: selectedGender,
                        onChanged: onChanged,
                        activeColor: context.themeColors.primary,
                        fillColor: WidgetStatePropertyAll(foregroundColor),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        gender.label,
                        style: context.textStyle.body.copyWith(
                          color: foregroundColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
    );
  }
}
