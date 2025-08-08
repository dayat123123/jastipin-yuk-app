import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

part 'app_colors.dart';
part 'app_styles.dart';
part 'app_text_styles.dart';
part 'app_theme_colors.dart';

@immutable
class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    splashFactory: NoSplash.splashFactory,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent,
    brightness: Brightness.light,
    primaryColor: AppColors.primaryLight,
    scaffoldBackgroundColor: AppColors.systemBackgroundLight,
    canvasColor: AppColors.systemGroupedBackgroundLight,
    focusColor: AppColors.focusColorLight,
    hintColor: AppColors.placeholderTextLight,
    shadowColor: AppColors.shadowLight,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryLight,
      onPrimary: Colors.white,
      surface: AppColors.systemBackgroundLight,
      error: AppColors.destructiveRedLight,
      onSurface: AppColors.textColorLight,
      secondary: AppColors.systemGreenLight,
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      shadowColor: Colors.transparent,
      backgroundColor: AppColors.systemBackgroundLight,
      titleTextStyle: AppTextStyles.light.headline,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.primaryLight,
      selectionColor: AppColors.primaryLight.withValues(alpha: 0.2),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        textStyle: WidgetStatePropertyAll(AppTextStyles.light.labelStyle),
        alignment: Alignment.center,

        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: AppStyles.buttonRadius),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.systemGroupedBackgroundLight,
      contentPadding: AppStyles.paddingAllMedium,
      hintStyle: AppTextStyles.light.hintStyle,
      labelStyle: AppTextStyles.light.labelStyle,
      errorStyle: AppTextStyles.light.errorStyle,
      // border: InputBorder.none,
      // enabledBorder: InputBorder.none,
      // focusedBorder: InputBorder.none,
      // errorBorder: InputBorder.none,
      // focusedErrorBorder: InputBorder.none,
      border: OutlineInputBorder(
        borderRadius: AppStyles.inputFieldRadius,
        borderSide: BorderSide.none,
        // borderSide: const BorderSide(
        //   color: AppColors.separatorLight,
        //   width: AppStyles.textinputBorderWidth,
        // ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: AppStyles.inputFieldRadius,
        borderSide: BorderSide.none,
        // borderSide: const BorderSide(
        //   color: AppColors.separatorLight,
        //   width: AppStyles.textinputBorderWidth,
        // ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: AppStyles.inputFieldRadius,
        borderSide: BorderSide.none,
        // borderSide: const BorderSide(
        //   color: AppColors.primaryLight,
        //   width: AppStyles.textinputBorderWidth,
        // ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: AppStyles.inputFieldRadius,
        borderSide: BorderSide.none,
        // borderSide: const BorderSide(
        //   color: AppColors.destructiveRedLight,
        //   width: AppStyles.textinputBorderWidth,
        // ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: AppStyles.inputFieldRadius,
        borderSide: BorderSide.none,
        // borderSide: const BorderSide(
        //   color: AppColors.destructiveRedLight,
        //   width: AppStyles.textinputBorderWidth,
        // ),
      ),
      suffixIconColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.focused)) {
          return AppColors.textColorLight;
        }
        return AppColors.secondaryTextColorLight;
      }),
      prefixIconColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.focused)) {
          return AppColors.textColorLight;
        }
        return AppColors.secondaryTextColorLight;
      }),
    ),

    iconTheme: const IconThemeData(color: AppColors.activeBlueLight),

    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColors.activeBlueLight,
    ),

    dividerTheme: const DividerThemeData(color: AppColors.separatorLight),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryLight,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        padding: WidgetStateProperty.all(AppStyles.paddingAllMedium),
        backgroundColor: WidgetStateProperty.all(AppColors.primaryLight),
        foregroundColor: WidgetStateProperty.all(AppColors.textColorDark),
        shadowColor: WidgetStateProperty.all(AppColors.shadowLight),
        textStyle: WidgetStateProperty.all(
          AppTextStyles.light.headline.copyWith(color: AppColors.textColorDark),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: AppStyles.borderRadiusSmallG),
        ),
      ),
    ),

    dialogTheme: DialogTheme(
      backgroundColor: AppColors.dialogLight,
      surfaceTintColor: AppColors.dialogLight,
      titleTextStyle: AppTextStyles.light.title,
      contentTextStyle: AppTextStyles.light.body,
      shape: RoundedRectangleBorder(borderRadius: AppStyles.borderRadiusLargeG),
    ),

    tooltipTheme: TooltipThemeData(
      decoration: BoxDecoration(
        color: AppColors.dialogLight,
        borderRadius: AppStyles.borderRadiusSmallG,
        border: Border.all(color: AppColors.separatorLight),
      ),
      textStyle: AppTextStyles.light.caption,
    ),

    textTheme: TextTheme(
      displayLarge: AppTextStyles.light.largeTitle,
      displayMedium: AppTextStyles.light.title,
      displaySmall: AppTextStyles.light.headline,
      titleLarge: AppTextStyles.light.callout,
      titleMedium: AppTextStyles.light.subhead,
      bodyLarge: AppTextStyles.light.body,
      bodyMedium: AppTextStyles.light.callout,
      bodySmall: AppTextStyles.light.footnote,
      labelLarge: AppTextStyles.light.caption,
      labelMedium: AppTextStyles.light.caption,
      labelSmall: AppTextStyles.light.caption,
    ),

    extensions: <ThemeExtension<dynamic>>[
      AppThemeColors.light,
      AppTextStyles.light,
    ],
  );

  static final ThemeData darkTheme = ThemeData(
    splashFactory: NoSplash.splashFactory,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent,
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryDark,
    scaffoldBackgroundColor: AppColors.systemBackgroundDark,
    canvasColor: AppColors.systemGroupedBackgroundDark,
    focusColor: AppColors.focusColorDark,
    hintColor: AppColors.placeholderTextDark,
    shadowColor: AppColors.shadowDark,

    colorScheme: const ColorScheme.dark(
      primary: AppColors.primaryDark,
      onPrimary: Colors.white,
      surface: AppColors.systemBackgroundDark,
      error: AppColors.destructiveRedDark,
      onSurface: AppColors.textColorDark,
      secondary: AppColors.systemGreenDark,
    ),

    appBarTheme: AppBarTheme(
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      shadowColor: Colors.transparent,
      backgroundColor: AppColors.systemBackgroundDark,
      titleTextStyle: AppTextStyles.dark.headline,
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ),

    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.primaryDark,
      selectionColor: AppColors.primaryDark.withValues(alpha: 0.3),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        textStyle: WidgetStatePropertyAll(AppTextStyles.dark.labelStyle),
        alignment: Alignment.center,

        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: AppStyles.buttonRadius),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.systemGroupedBackgroundDark,
      contentPadding: AppStyles.paddingAllMedium,
      hintStyle: AppTextStyles.dark.hintStyle,
      labelStyle: AppTextStyles.dark.labelStyle,
      errorStyle: AppTextStyles.dark.errorStyle,
      border: OutlineInputBorder(
        borderRadius: AppStyles.inputFieldRadius,
        borderSide: BorderSide.none,
        // borderSide: const BorderSide(
        //   color: AppColors.separatorDark,
        //   width: AppStyles.textinputBorderWidth,
        // ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: AppStyles.inputFieldRadius,
        borderSide: BorderSide.none,
        // borderSide: const BorderSide(
        //   color: AppColors.separatorDark,
        //   width: AppStyles.textinputBorderWidth,
        // ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: AppStyles.inputFieldRadius,
        borderSide: BorderSide.none,
        // borderSide: const BorderSide(
        //   color: AppColors.primaryDark,
        //   width: AppStyles.textinputBorderWidth,
        // ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: AppStyles.inputFieldRadius,
        borderSide: BorderSide.none,
        // borderSide: const BorderSide(
        //   color: AppColors.destructiveRedDark,
        //   width: AppStyles.textinputBorderWidth,
        // ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: AppStyles.inputFieldRadius,
        borderSide: BorderSide.none,
        // borderSide: const BorderSide(
        //   color: AppColors.destructiveRedDark,
        //   width: AppStyles.textinputBorderWidth,
        // ),
      ),
      suffixIconColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.focused)) {
          return AppColors.textColorDark;
        }
        return AppColors.secondaryTextColorDark;
      }),
      prefixIconColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.focused)) {
          return AppColors.textColorDark;
        }
        return AppColors.secondaryTextColorDark;
      }),
    ),

    iconTheme: const IconThemeData(color: AppColors.activeBlueDark),

    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColors.activeBlueDark,
    ),

    dividerTheme: const DividerThemeData(color: AppColors.separatorDark),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryDark,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        padding: WidgetStateProperty.all(AppStyles.paddingAllMedium),
        backgroundColor: WidgetStateProperty.all(AppColors.primaryDark),
        foregroundColor: WidgetStateProperty.all(Colors.white),
        shadowColor: WidgetStateProperty.all(AppColors.shadowDark),
        textStyle: WidgetStateProperty.all(AppTextStyles.dark.headline),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: AppStyles.borderRadiusSmallG),
        ),
      ),
    ),

    dialogTheme: DialogTheme(
      backgroundColor: AppColors.dialogDark,
      surfaceTintColor: AppColors.dialogDark,
      titleTextStyle: AppTextStyles.dark.title,
      contentTextStyle: AppTextStyles.dark.body,
      shape: RoundedRectangleBorder(borderRadius: AppStyles.borderRadiusLargeG),
    ),

    tooltipTheme: TooltipThemeData(
      decoration: BoxDecoration(
        color: AppColors.dialogDark,
        borderRadius: AppStyles.borderRadiusSmallG,
        border: Border.all(color: AppColors.separatorDark),
      ),
      textStyle: AppTextStyles.dark.caption,
    ),

    textTheme: TextTheme(
      displayLarge: AppTextStyles.dark.largeTitle,
      displayMedium: AppTextStyles.dark.title,
      displaySmall: AppTextStyles.dark.headline,
      titleLarge: AppTextStyles.dark.callout,
      titleMedium: AppTextStyles.dark.subhead,
      bodyLarge: AppTextStyles.dark.body,
      bodyMedium: AppTextStyles.dark.callout,
      bodySmall: AppTextStyles.dark.footnote,
      labelLarge: AppTextStyles.dark.caption,
      labelMedium: AppTextStyles.dark.caption,
      labelSmall: AppTextStyles.dark.caption,
    ),

    extensions: <ThemeExtension<dynamic>>[
      AppThemeColors.dark,
      AppTextStyles.dark,
    ],
  );
}
