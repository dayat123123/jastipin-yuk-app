part of 'goroute_navigator.dart';

@immutable
abstract class RoutePath {
  const RoutePath._();

  static const String root = "/";
  static const String landing = "/landing";
  static const String register = "/register";
  static const String login = "/login";
  static const String forgetPassword = "/forget-password";

  static const String jastiperHome = "/jastiper/home";
  static const String jastiperActivity = "/jastiper/activity";
  static const String jastiperSettings = "/jastiper/settings";
  static const String jastiperChat = "/jastiper/chat";

  static const String customerHome = "/customer/home";
  static const String customerActivity = "/customer/activity";
  static const String customerSettings = "/customer/settings";
  static const String customerverifyAccount = "/customer/verify-account";
  static const String customerChat = "/customer/chat";

  /*OTP */
  static const String otpPhoneNumberInput = "/otp/phone-number-input";
  static const String otpPINInput = "/otp/pin-input";

  static String getUserHomeRoute(Role role) {
    return switch (role) {
      Role.guest => customerHome,
      Role.customer => customerHome,
      Role.jastiper => jastiperHome,
      Role.admin => throw UnimplementedError(),
    };
  }
}
