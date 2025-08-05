import 'package:flutter/material.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';

class DashedTextDivider extends StatelessWidget {
  final String text;
  final EdgeInsetsGeometry padding;

  const DashedTextDivider({
    super.key,
    required this.text,
    this.padding = AppStyles.paddingVerticalMedium,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        children: [
          const Expanded(child: Divider(thickness: 1)),
          Padding(
            padding: AppStyles.paddingHorizontalMedium,
            child: Text(text, style: context.textStyle.footnote),
          ),
          const Expanded(child: Divider(thickness: 1)),
        ],
      ),
    );
  }
}
