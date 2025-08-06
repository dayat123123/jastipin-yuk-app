part of 'app_theme.dart';

@immutable
class AppThemeColors extends ThemeExtension<AppThemeColors> {
  final Color primary;
  final Color background;
  final Color cardBackground;
  final Color secondaryCardBackground;
  final Color hintText;
  final Color disabled;
  final Color focusColor;
  final Color splashColor;
  final Color separator;
  final Color info;
  final Color success;
  final Color failure;
  final Color warning;
  final Color textColor;
  final Color iconColor;
  final Color secondaryTextColor;
  final Color dialogColor;
  final List<BoxShadow> softShadow;

  const AppThemeColors({
    required this.primary,
    required this.background,
    required this.cardBackground,
    required this.secondaryCardBackground,
    required this.hintText,
    required this.disabled,
    required this.focusColor,
    required this.splashColor,
    required this.separator,
    required this.info,
    required this.success,
    required this.failure,
    required this.warning,
    required this.textColor,
    required this.iconColor,
    required this.secondaryTextColor,
    required this.softShadow,
    required this.dialogColor,
  });

  @override
  AppThemeColors copyWith({
    Color? primary,
    Color? background,
    Color? cardBackground,
    Color? secondaryCardBackground,
    Color? hintText,
    Color? disabled,
    Color? focusColor,
    Color? splashColor,
    Color? separator,
    Color? destructive,
    Color? info,
    Color? success,
    Color? failure,
    Color? warning,
    Color? textColor,
    Color? iconColor,
    Color? secondaryTextColor,
    List<BoxShadow>? softShadow,
    Color? dialogColor,
  }) {
    return AppThemeColors(
      primary: primary ?? this.primary,
      background: background ?? this.background,
      cardBackground: cardBackground ?? this.cardBackground,
      secondaryCardBackground:
          secondaryCardBackground ?? this.secondaryCardBackground,
      hintText: hintText ?? this.hintText,
      disabled: disabled ?? this.disabled,
      focusColor: focusColor ?? this.focusColor,
      splashColor: splashColor ?? this.splashColor,
      separator: separator ?? this.separator,
      info: info ?? this.info,
      success: success ?? this.success,
      failure: failure ?? this.failure,
      warning: warning ?? this.warning,
      textColor: textColor ?? this.textColor,
      iconColor: iconColor ?? this.iconColor,
      secondaryTextColor: secondaryTextColor ?? this.secondaryTextColor,
      softShadow: softShadow ?? this.softShadow,
      dialogColor: dialogColor ?? this.dialogColor,
    );
  }

  @override
  AppThemeColors lerp(ThemeExtension<AppThemeColors>? other, double t) {
    if (other is! AppThemeColors) return this;
    return AppThemeColors(
      primary: Color.lerp(primary, other.primary, t)!,
      background: Color.lerp(background, other.background, t)!,
      cardBackground: Color.lerp(cardBackground, other.cardBackground, t)!,
      secondaryCardBackground:
          Color.lerp(
            secondaryCardBackground,
            other.secondaryCardBackground,
            t,
          )!,
      hintText: Color.lerp(hintText, other.hintText, t)!,
      disabled: Color.lerp(disabled, other.disabled, t)!,
      focusColor: Color.lerp(focusColor, other.focusColor, t)!,
      splashColor: Color.lerp(splashColor, other.splashColor, t)!,
      separator: Color.lerp(separator, other.separator, t)!,
      info: Color.lerp(info, other.info, t)!,
      success: Color.lerp(success, other.success, t)!,
      failure: Color.lerp(failure, other.failure, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      textColor: Color.lerp(textColor, other.textColor, t)!,
      iconColor: Color.lerp(iconColor, other.iconColor, t)!,
      secondaryTextColor:
          Color.lerp(secondaryTextColor, other.secondaryTextColor, t)!,
      softShadow: t < 0.5 ? softShadow : other.softShadow,
      dialogColor: Color.lerp(dialogColor, other.dialogColor, t)!,
    );
  }

  static const AppThemeColors light = AppThemeColors(
    primary: AppColors.primaryLight,
    background: AppColors.systemBackgroundLight,
    cardBackground: AppColors.systemGroupedBackgroundLight,
    secondaryCardBackground: AppColors.secondarySystemGroupedBackgroundLight,
    hintText: AppColors.placeholderTextLight,
    disabled: AppColors.inactiveGrayLight,
    focusColor: AppColors.focusColorLight,
    splashColor: AppColors.splashColorLight,
    separator: AppColors.separatorLight,
    info: AppColors.activeBlueLight,
    success: AppColors.systemGreenLight,
    failure: AppColors.destructiveRedLight,
    warning: AppColors.systemOrangeLight,
    textColor: AppColors.textColorLight,
    iconColor: AppColors.iconColorLight,
    secondaryTextColor: AppColors.secondaryTextColorLight,
    softShadow: AppColors.softShadowLight,
    dialogColor: AppColors.dialogLight,
  );

  static const AppThemeColors dark = AppThemeColors(
    primary: AppColors.primaryDark,
    background: AppColors.systemBackgroundDark,
    cardBackground: AppColors.systemGroupedBackgroundDark,
    secondaryCardBackground: AppColors.secondarySystemGroupedBackgroundDark,
    hintText: AppColors.placeholderTextDark,
    disabled: AppColors.inactiveGrayDark,
    focusColor: AppColors.focusColorDark,
    splashColor: AppColors.splashColorDark,
    separator: AppColors.separatorDark,
    info: AppColors.activeBlueDark,
    success: AppColors.systemGreenDark,
    failure: AppColors.destructiveRedDark,
    warning: AppColors.systemOrangeDark,
    textColor: AppColors.textColorDark,
    iconColor: AppColors.iconColorDark,
    secondaryTextColor: AppColors.secondaryTextColorDark,
    softShadow: AppColors.softShadowDark,
    dialogColor: AppColors.dialogDark,
  );
}
