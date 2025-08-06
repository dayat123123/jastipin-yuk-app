import 'package:flutter/material.dart';
import 'package:jastipin_yuk/core/router/goroute_navigator.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';

class TabbarIconWithBadgeWidget extends StatelessWidget {
  final TabbarItem item;

  final Color iconColor;
  final bool isSelected, isShowAlert;

  const TabbarIconWithBadgeWidget({
    super.key,
    required this.item,
    required this.isShowAlert,
    required this.isSelected,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    if (!isShowAlert) {
      return Icon(isSelected ? item.activeIcon : item.inactiveIcon);
    }

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Icon(
          isSelected ? item.activeIcon : item.inactiveIcon,
          color: iconColor,
        ),
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
            child: Icon(
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
