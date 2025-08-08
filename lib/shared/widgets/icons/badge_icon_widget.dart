import 'package:flutter/material.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';

class BadgeIconWidget extends StatelessWidget {
  final IconData icon;
  final Color? color;
  final bool isShowAlert;
  final Widget? badgeWidget;
  const BadgeIconWidget({
    super.key,
    required this.icon,
    this.color,
    this.badgeWidget,
    this.isShowAlert = true,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Icon(icon, color: color),
        if (isShowAlert)
          Positioned(
            top: -4,
            right: -4,
            child: Container(
              decoration: BoxDecoration(
                color: context.themeColors.failure,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 0.5),
              ),
              alignment: AlignmentDirectional.center,
              constraints: const BoxConstraints(minWidth: 12, minHeight: 12),
              child:
                  badgeWidget ??
                  Icon(
                    Icons.circle,
                    size: 7,
                    color: context.themeColors.iconColor,
                  ),
            ),
          ),
      ],
    );
  }
}
