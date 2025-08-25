import 'package:flutter/material.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';
import 'package:jastipin_yuk/shared/widgets/loading/loading_indicator_widget.dart';

class SubmitButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final bool isLoading;
  final bool isDisabled;
  final Color? iconColor;
  final Color? bgColor;
  final Widget? labelWidget;

  const SubmitButton({
    super.key,
    this.label = 'Submit',
    required this.onPressed,
    this.isLoading = false,
    this.isDisabled = false,
    this.bgColor,
    this.iconColor,
    this.labelWidget,
  });

  @override
  Widget build(BuildContext context) {
    final bool canPress = !isLoading && !isDisabled;

    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: canPress ? onPressed : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor ?? context.themeColors.primary,
          foregroundColor: iconColor,
        ),
        child:
            isLoading
                ? const SizedBox(
                  width: 24,
                  height: 24,
                  child: LoadingIndicatorWidget(),
                )
                : labelWidget ?? Text(label),
      ),
    );
  }
}
