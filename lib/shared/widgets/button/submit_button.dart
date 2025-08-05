import 'package:flutter/material.dart';
import 'package:jastipin_yuk/shared/widgets/loading/loading_indicator_widget.dart';

class SubmitButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final bool isLoading;
  final bool isDisabled;
  final Color? bgColor;

  const SubmitButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.isLoading = false,
    this.isDisabled = false,
    this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    final bool canPress = !isLoading && !isDisabled;

    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: canPress ? onPressed : null,
        style: ElevatedButton.styleFrom(backgroundColor: bgColor),
        child:
            isLoading
                ? const SizedBox(
                  width: 24,
                  height: 24,
                  child: LoadingIndicatorWidget(),
                )
                : Text(label),
      ),
    );
  }
}
