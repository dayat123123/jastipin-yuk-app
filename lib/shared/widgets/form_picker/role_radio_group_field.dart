import 'package:flutter/material.dart';
import 'package:jastipin_yuk/features/authentication/domain/enums/role.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';

class RoleRadioGroupField extends StatelessWidget {
  final Role selectedRole;
  final ValueChanged<Role?> onChanged;
  final bool enabled;

  const RoleRadioGroupField({
    super.key,
    required this.selectedRole,
    required this.onChanged,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    final roles = Role.values.where((r) => r != Role.admin).toList();
    return Column(
      children:
          roles.map((role) {
            final isSelected = selectedRole == role;
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
            return GestureDetector(
              onTap: enabled ? () => onChanged(role) : null,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                margin: const EdgeInsets.symmetric(vertical: 4),
                decoration: BoxDecoration(
                  color:
                      isSelected ? containerColor.withValues(alpha: 0.1) : null,
                  border: Border.all(
                    color: containerColor,
                    width: AppStyles.textinputBorderWidth,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Radio<Role>(
                      value: role,
                      groupValue: selectedRole,
                      onChanged: onChanged,
                      activeColor: context.themeColors.primary,
                      fillColor: WidgetStatePropertyAll(foregroundColor),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      role.label,
                      style: context.textStyle.body.copyWith(
                        color: foregroundColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
    );
  }
}
