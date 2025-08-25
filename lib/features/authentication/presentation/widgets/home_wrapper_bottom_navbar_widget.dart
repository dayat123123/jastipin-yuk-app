import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jastipin_yuk/core/router/goroute_navigator.dart';
import 'package:jastipin_yuk/core/theme/src/app_theme.dart';
import 'package:jastipin_yuk/shared/widgets/icons/badge_icon_widget.dart';

class HomeWrapperBottomNavbarWidget extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  final List<TabbarItem> tablist;
  final void Function(int) onTap;
  final AppThemeColors theme;
  final TextStyle textStyle;

  const HomeWrapperBottomNavbarWidget({
    super.key,
    required this.navigationShell,
    required this.tablist,
    required this.onTap,
    required this.theme,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          color: theme.background.withValues(alpha: 0.5),
          child: SafeArea(
            child: Row(
              children: List.generate(tablist.length, (index) {
                final item = tablist[index];
                return _BottomNavItem(
                  item: item,
                  isSelected: navigationShell.currentIndex == index,
                  theme: theme,
                  textStyle: textStyle,
                  onTap: () => onTap(index),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}

class _BottomNavItem extends StatelessWidget {
  final TabbarItem item;
  final bool isSelected;
  final AppThemeColors theme;
  final TextStyle textStyle;
  final VoidCallback onTap;

  const _BottomNavItem({
    required this.item,
    required this.isSelected,
    required this.theme,
    required this.textStyle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: kBottomNavigationBarHeight,
          alignment: Alignment.bottomCenter,
          child: Stack(
            alignment: Alignment.center,
            children: [
              AnimatedOpacity(
                opacity: isSelected ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 200),
                child: Container(
                  height: kBottomNavigationBarHeight,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        theme.primary.withValues(alpha: 0.0),
                        theme.primary.withValues(alpha: 0.15),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  width: double.infinity,
                  height: 2.0,
                  decoration: BoxDecoration(
                    color: isSelected ? theme.primary : Colors.transparent,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(12.0),
                      bottomRight: Radius.circular(12.0),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 200),
                      child: BadgeIconWidget(
                        key: ValueKey<bool>(isSelected),
                        isShowAlert: item.tabType == TabType.chat,
                        icon: isSelected ? item.activeIcon : item.inactiveIcon,
                        color: isSelected ? theme.primary : theme.hintText,
                      ),
                    ),
                    const SizedBox(height: 2),
                    AnimatedDefaultTextStyle(
                      duration: const Duration(milliseconds: 200),
                      style: textStyle.copyWith(
                        fontWeight:
                            isSelected ? FontWeight.bold : FontWeight.w500,
                        color: theme.textColor,
                      ),
                      child: Text(item.label),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
