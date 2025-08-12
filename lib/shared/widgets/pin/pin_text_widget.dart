import 'package:flutter/material.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';
import 'package:jastipin_yuk/shared/misc/global_variables.dart';

class PinTextWidget extends StatelessWidget {
  final String pin;

  const PinTextWidget({super.key, required this.pin});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(GlobalVariables.maxOTPLength, (index) {
        return _buildText(context, index);
      }),
    );
  }

  Widget _buildText(BuildContext context, int index) {
    bool isFilled = index < pin.length;
    final activeColor = context.themeColors.primary.withValues(alpha: 0.75);
    final inactiveColor = context.themeColors.disabled.withValues(alpha: 0.1);

    return Container(
      width: 30,
      height: 30,
      margin: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isFilled ? activeColor.withValues(alpha: 0.1) : inactiveColor,
      ),
      child: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          width: 15,
          height: 15,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isFilled ? activeColor : inactiveColor,
          ),
        ),
      ),
    );
  }
}
