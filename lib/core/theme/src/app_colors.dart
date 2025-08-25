part of 'app_theme.dart';

@immutable
abstract class AppColors {
  static const Color primaryLight = Color(0xFF1DB954);
  static const Color primaryDark = Color(0xFF1DB954);

  // Main background color for screens
  static const Color systemBackgroundLight = Color(0xFFFCFCFC);
  static const Color systemBackgroundDark = Color(0xFF000000);

  // Background color for cards or containers
  static const Color systemGroupedBackgroundLight = Color(0xFFFFFFFF);
  static const Color systemGroupedBackgroundDark = Color(0xFF1C1C1E);

  // Secondary background for containers, usually lighter or darker than main container background
  static const Color secondarySystemGroupedBackgroundLight = Color(0xFFF2F2F7);
  static const Color secondarySystemGroupedBackgroundDark = Color(0xFF2E2E2E);

  // Placeholder or hint text color with some transparency
  static const Color placeholderTextLight = Color(0x993C3C43);
  static const Color placeholderTextDark = Color(0xDDC6C6C8);

  // Color for inactive text or icons (e.g., disabled state)
  static const Color inactiveGrayLight = Color(0xFF8E8E93);
  static const Color inactiveGrayDark = Color(0xFF636366);

  // Color for active text or icons (e.g., selected or focused)
  static const Color activeBlueLight = Color(0xFF007AFF);
  static const Color activeBlueDark = Color(0xFF0A84FF);

  // iOS system green
  static const Color systemGreenLight = Color(0xFF34C759);
  static const Color systemGreenDark = Color(0xFF30D158);

  // iOS system orange
  static const Color systemOrangeLight = Color(0xFFFF9500);
  static const Color systemOrangeDark = Color(0xFFFFB84C);

  // Primary text color
  static const Color iconColorLight = Color(0xFF000000);
  static const Color iconColorDark = Color(0xFFFFFFFF);

  // Primary text color
  static const Color textColorLight = Color(0xFF000000);
  static const Color textColorDark = Color(0xFFFFFFFF);

  // Secondary text color (less prominent text)
  static const Color secondaryTextColorLight = Color(0x993C3C43);
  static const Color secondaryTextColorDark = Color(0xDDC6C6C8);

  // Focus highlight color (e.g., when TextField is focused)
  static const Color focusColorLight = Color(0x3377AAFF);
  static const Color focusColorDark = Color(0x3355AAFF);

  // Splash or highlight overlay color when pressing buttons
  static const Color splashColorLight = Color(0x1A007AFF);
  static const Color splashColorDark = Color(0x1A0A84FF);

  // Separator or thin border color (e.g., between list items)
  static const Color separatorLight = Color(0x1C000000);
  static const Color separatorDark = Color(0xFF383838);

  // Destructive button color (e.g., delete, remove)
  static const Color destructiveRedLight = Color(0xFFFF3B30);
  static const Color destructiveRedDark = Color(0xFFFF453A);

  static const Color shadowLight = Color(0x1F000000);
  static const Color shadowDark = Color(0x1F9B9B9B);

  // Soft shadow
  static const List<BoxShadow> softShadowLight = [
    // BoxShadow(color: shadowLight, blurRadius: 3, offset: Offset(0, 2)),
    // BoxShadow(color: shadowLight, blurRadius: 6, offset: Offset(0, 4)),
  ];

  static const List<BoxShadow> softShadowDark = [
    // BoxShadow(color: shadowDark, blurRadius: 3, offset: Offset(0, 1)),
    // BoxShadow(color: shadowDark, blurRadius: 6, offset: Offset(0, 1)),
  ];

  static const Color dialogLight = Color(0xFFF5F5F5);
  static const Color dialogDark = Color(0xFF2C2C2E);
}
