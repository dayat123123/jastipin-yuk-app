import 'package:flutter/material.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';

class CardContainerWidget extends StatelessWidget {
  final Widget child;
  final double borderRadius;
  final Color? cardColor;
  final BoxBorder? border;
  final AlignmentGeometry? alignment;
  final EdgeInsetsGeometry? padding;
  final void Function()? onTap;
  final void Function()? onLongPress;
  final CardContainerShape shape;
  final bool isTransparent;
  final bool withShadow;
  const CardContainerWidget({
    super.key,
    required this.child,
    this.onTap,
    this.alignment = Alignment.center,
    this.padding,
    this.border,
    this.onLongPress,
    this.borderRadius = AppStyles.borderRadiusSmall,
    this.cardColor,
    this.shape = CardContainerShape.rounded,
    this.isTransparent = false,
    this.withShadow = true,
  });

  @override
  Widget build(BuildContext context) {
    final effectiveSplashColor = context.themeColors.primary.withValues(
      alpha: 0.05,
    );

    final decoration = _boxDecoration(context);
    final shapeBorder = _shapeBorder();
    final borderRadiusGeometry = _borderRadiusGeometry();
    final effectiveColor =
        isTransparent
            ? Colors.transparent
            : cardColor ?? context.themeColors.cardBackground;

    return Container(
      decoration: decoration,
      child: Material(
        shape: shapeBorder,
        color: effectiveColor,
        borderRadius: borderRadiusGeometry,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          enableFeedback: true,
          onLongPress: onLongPress,
          splashColor: effectiveSplashColor,
          hoverColor: effectiveSplashColor,
          highlightColor: effectiveSplashColor,
          splashFactory: InkSplash.splashFactory,
          child: Container(
            padding: padding,
            alignment: alignment,
            child: child,
          ),
        ),
      ),
    );
  }

  // Helper methods
  BorderRadiusGeometry? _borderRadiusGeometry() =>
      shape == CardContainerShape.rounded
          ? BorderRadius.circular(borderRadius)
          : null;

  ShapeBorder? _shapeBorder() =>
      shape == CardContainerShape.circle ? const CircleBorder() : null;

  BoxDecoration? _boxDecoration(BuildContext context) {
    if (isTransparent || shape == CardContainerShape.circle) return null;

    return BoxDecoration(
      boxShadow: withShadow ? context.themeColors.softShadow : null,
      border:
          border ??
          Border.all(
            width: AppStyles.borderWidth,
            color: context.themeColors.separator,
          ),
      borderRadius: BorderRadius.circular(borderRadius),
    );
  }
}

enum CardContainerShape { rounded, circle }
