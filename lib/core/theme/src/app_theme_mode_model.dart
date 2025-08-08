import 'dart:ui';

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

enum AppThemeMode {
  system(
    mode: ThemeMode.system,
    title: "System Theme",
    icon: FluentIcons.system_20_filled,
  ),
  dark(
    mode: ThemeMode.dark,
    title: "Dark Theme",
    icon: FluentIcons.dark_theme_20_filled,
  ),
  light(mode: ThemeMode.light, title: "Light Theme", icon: Icons.light_mode);

  final ThemeMode mode;
  final String title;
  final IconData icon;

  const AppThemeMode({
    required this.mode,
    required this.title,
    required this.icon,
  });
}

extension AppThemeModeX on AppThemeMode {
  Brightness get brightness {
    switch (this) {
      case AppThemeMode.light:
        return Brightness.light;
      case AppThemeMode.dark:
        return Brightness.dark;
      case AppThemeMode.system:
        return PlatformDispatcher.instance.platformBrightness;
    }
  }

  static AppThemeMode fromString(String? title) {
    switch (title) {
      case 'System Theme':
        return AppThemeMode.system;
      case 'Dark Theme':
        return AppThemeMode.dark;
      case 'Light Theme':
        return AppThemeMode.light;
      default:
        return AppThemeMode.system;
    }
  }
}
