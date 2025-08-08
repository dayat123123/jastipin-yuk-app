part of 'app_theme.dart';

@immutable
class AppTextStyles extends ThemeExtension<AppTextStyles> {
  final TextStyle largeTitle;
  final TextStyle title;
  final TextStyle headline;
  final TextStyle body;
  final TextStyle callout;
  final TextStyle subhead;
  final TextStyle footnote;
  final TextStyle caption;
  final TextStyle hintStyle;
  final TextStyle labelStyle;
  final TextStyle errorStyle;

  const AppTextStyles({
    required this.largeTitle,
    required this.title,
    required this.headline,
    required this.body,
    required this.callout,
    required this.subhead,
    required this.footnote,
    required this.caption,
    required this.hintStyle,
    required this.labelStyle,
    required this.errorStyle,
  });

  static AppTextStyles light = AppTextStyles(
    largeTitle: GoogleFonts.roboto(
      fontSize: 34,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.0,
      height: 1.2,
      color: AppColors.textColorLight,
    ),
    title: GoogleFonts.roboto(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.0,
      height: 1.25,
      color: AppColors.textColorLight,
    ),
    headline: GoogleFonts.roboto(
      fontSize: 17,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.41,
      height: 1.4,
      color: AppColors.textColorLight,
    ),
    body: GoogleFonts.roboto(
      fontSize: 17,
      fontWeight: FontWeight.normal,
      letterSpacing: -0.41,
      height: 1.4,
      color: AppColors.textColorLight,
    ),
    callout: GoogleFonts.roboto(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      letterSpacing: -0.32,
      height: 1.4,
      color: AppColors.textColorLight,
    ),
    subhead: GoogleFonts.roboto(
      fontSize: 15,
      fontWeight: FontWeight.normal,
      letterSpacing: -0.24,
      height: 1.3,
      color: AppColors.secondaryTextColorLight,
    ),
    footnote: GoogleFonts.roboto(
      fontSize: 13,
      fontWeight: FontWeight.normal,
      letterSpacing: -0.08,
      height: 1.2,
      color: AppColors.secondaryTextColorLight,
    ),
    caption: GoogleFonts.roboto(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.0,
      height: 1.2,
      color: AppColors.secondaryTextColorLight,
    ),

    hintStyle: GoogleFonts.roboto(
      color: AppColors.placeholderTextLight,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    labelStyle: GoogleFonts.roboto(
      color: AppColors.textColorLight,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
    errorStyle: GoogleFonts.roboto(
      color: AppColors.destructiveRedLight,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
  );

  static AppTextStyles dark = AppTextStyles(
    largeTitle: GoogleFonts.roboto(
      fontSize: 34,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.0,
      height: 1.2,
      color: AppColors.textColorDark,
    ),
    title: GoogleFonts.roboto(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.0,
      height: 1.25,
      color: AppColors.textColorDark,
    ),
    headline: GoogleFonts.roboto(
      fontSize: 17,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.41,
      height: 1.4,
      color: AppColors.textColorDark,
    ),
    body: GoogleFonts.roboto(
      fontSize: 17,
      fontWeight: FontWeight.normal,
      letterSpacing: -0.41,
      height: 1.4,
      color: AppColors.textColorDark,
    ),
    callout: GoogleFonts.roboto(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      letterSpacing: -0.32,
      height: 1.4,
      color: AppColors.textColorDark,
    ),
    subhead: GoogleFonts.roboto(
      fontSize: 15,
      fontWeight: FontWeight.normal,
      letterSpacing: -0.24,
      height: 1.3,
      color: AppColors.secondaryTextColorDark,
    ),
    footnote: GoogleFonts.roboto(
      fontSize: 13,
      fontWeight: FontWeight.normal,
      letterSpacing: -0.08,
      height: 1.2,
      color: AppColors.secondaryTextColorDark,
    ),
    caption: GoogleFonts.roboto(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.0,
      height: 1.2,
      color: AppColors.secondaryTextColorDark,
    ),

    hintStyle: GoogleFonts.roboto(
      color: AppColors.placeholderTextDark,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    labelStyle: GoogleFonts.roboto(
      color: AppColors.textColorDark,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
    errorStyle: GoogleFonts.roboto(
      color: AppColors.destructiveRedDark,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
  );

  // copyWith dan lerp tetap sama (tambahkan parameter baru):
  @override
  AppTextStyles copyWith({
    TextStyle? largeTitle,
    TextStyle? title,
    TextStyle? headline,
    TextStyle? body,
    TextStyle? callout,
    TextStyle? subhead,
    TextStyle? footnote,
    TextStyle? caption,
    TextStyle? hintStyle,
    TextStyle? labelStyle,
    TextStyle? errorStyle,
  }) {
    return AppTextStyles(
      largeTitle: largeTitle ?? this.largeTitle,
      title: title ?? this.title,
      headline: headline ?? this.headline,
      body: body ?? this.body,
      callout: callout ?? this.callout,
      subhead: subhead ?? this.subhead,
      footnote: footnote ?? this.footnote,
      caption: caption ?? this.caption,
      hintStyle: hintStyle ?? this.hintStyle,
      labelStyle: labelStyle ?? this.labelStyle,
      errorStyle: errorStyle ?? this.errorStyle,
    );
  }

  @override
  AppTextStyles lerp(ThemeExtension<AppTextStyles>? other, double t) {
    if (other is! AppTextStyles) return this;
    return AppTextStyles(
      largeTitle: TextStyle.lerp(largeTitle, other.largeTitle, t)!,
      title: TextStyle.lerp(title, other.title, t)!,
      headline: TextStyle.lerp(headline, other.headline, t)!,
      body: TextStyle.lerp(body, other.body, t)!,
      callout: TextStyle.lerp(callout, other.callout, t)!,
      subhead: TextStyle.lerp(subhead, other.subhead, t)!,
      footnote: TextStyle.lerp(footnote, other.footnote, t)!,
      caption: TextStyle.lerp(caption, other.caption, t)!,
      hintStyle: TextStyle.lerp(hintStyle, other.hintStyle, t)!,
      labelStyle: TextStyle.lerp(labelStyle, other.labelStyle, t)!,
      errorStyle: TextStyle.lerp(errorStyle, other.errorStyle, t)!,
    );
  }
}
