part of 'app_theme.dart';

@immutable
abstract class AppColors {
  static const Color primaryLight = Color(0xFF1DB954);
  static const Color primaryDark = Color(0xFF1DB954);

  // Main background color for screens
  static const Color systemBackgroundLight = Color(0xFFFFFFFF);
  static const Color systemBackgroundDark = Color(0xFF000000);

  // Background color for cards or containers
  static const Color systemGroupedBackgroundLight = Color(0xFFF2F2F7);
  static const Color systemGroupedBackgroundDark = Color(0xFF1C1C1E);

  // Secondary background for containers, usually lighter or darker than main container background
  static const Color secondarySystemGroupedBackgroundLight = Color(0xFFFFFFFF);
  static const Color secondarySystemGroupedBackgroundDark = Color(0xFF1C1C1E);

  // Placeholder or hint text color with some transparency
  static const Color placeholderTextLight = Color.fromARGB(76, 60, 60, 67);
  static const Color placeholderTextDark = Color.fromARGB(76, 235, 235, 245);

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

  // Hint text color (same as placeholder)
  static const Color hintTextLight = placeholderTextLight;
  static const Color hintTextDark = placeholderTextDark;

  // Focus highlight color (e.g., when TextField is focused)
  static const Color focusColorLight = Color(0x3377AAFF);
  static const Color focusColorDark = Color(0x3355AAFF);

  // Splash or highlight overlay color when pressing buttons
  static const Color splashColorLight = Color(0x1A007AFF);
  static const Color splashColorDark = Color(0x1A0A84FF);

  // Separator or thin border color (e.g., between list items)
  static const Color separatorLight = Color(0x1C000000);
  static const Color separatorDark = Color(0x29FFFFFF);

  // Destructive button color (e.g., delete, remove)
  static const Color destructiveRedLight = Color(0xFFFF3B30);
  static const Color destructiveRedDark = Color(0xFFFF453A);

  // Color for cursor color
  static Color cursorColorLight = Colors.grey.shade700;
  static Color cursorColorDark = Colors.grey.shade700;

  // Soft shadow typically used for iOS style shadows
  static const List<BoxShadow> softShadow = [
    BoxShadow(color: Colors.black12, blurRadius: 5, offset: Offset(0, 2)),
  ];

  static const snackbarBackground = Color(0xFF2C2C2E);
}
