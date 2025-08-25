part of 'app_theme.dart';

@immutable
abstract class AppStyles {
  // Corner radius commonly used in iOS for cards, buttons, modals, etc.
  static const double borderRadiusSmall = 8.0;
  static const double borderRadiusMedium = 12.0;
  static const double borderRadiusLarge = 16.0;

  static const BorderRadiusGeometry borderRadiusSmallG = BorderRadius.all(
    Radius.circular(borderRadiusSmall),
  );
  static const BorderRadiusGeometry borderRadiusMediumG = BorderRadius.all(
    Radius.circular(borderRadiusMedium),
  );
  static const BorderRadiusGeometry borderRadiusLargeG = BorderRadius.all(
    Radius.circular(borderRadiusLarge),
  );

  // Global uniform padding
  static const EdgeInsets paddingAllTiny = EdgeInsets.all(4);
  static const EdgeInsets paddingAllSmall = EdgeInsets.all(8);
  static const EdgeInsets paddingAllMedium = EdgeInsets.all(16);
  static const EdgeInsets paddingAllLarge = EdgeInsets.all(24);

  static const EdgeInsets paddingHorizontalLarge = EdgeInsets.symmetric(
    horizontal: 24,
  );

  static const EdgeInsets paddingHorizontalMedium = EdgeInsets.symmetric(
    horizontal: 16,
  );

  static EdgeInsets paddingHorizontalMediumWithBottom = paddingHorizontalMedium
      .copyWith(bottom: 32);

  static const EdgeInsets paddingVerticalLarge = EdgeInsets.symmetric(
    vertical: 24,
  );

  static const EdgeInsets paddingVerticalMedium = EdgeInsets.symmetric(
    vertical: 16,
  );

  static const EdgeInsets paddingVerticalSmall = EdgeInsets.symmetric(
    vertical: 8,
  );

  // Button radius, slightly rounded for iOS-style buttons
  static const BorderRadius buttonRadius = BorderRadius.all(
    Radius.circular(12),
  );

  // Dialog or modal radius, usually bigger than buttons for better focus
  static const BorderRadius dialogRadius = BorderRadius.all(
    Radius.circular(16),
  );

  // Input field radius for TextFields or form inputs
  static const BorderRadius inputFieldRadius = BorderRadius.all(
    Radius.circular(8.0),
  );

  static const double textinputBorderWidth = 1;
}
