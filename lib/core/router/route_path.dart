part of 'goroute_navigator.dart';

@immutable
abstract class RoutePath {
  const RoutePath._();

  static const String root = "/";
  static const String landing = "/landing";
  static const String register = "/register";
  static const String login = "/login";
  static const String forgetPassword = "/forget-password";

  /* Jastiper*/
  static const String jastiperActivity = "/jastiper/activity";
  static const String jastiperStore = "/jastiper/store";
  static const String jastiperChat = "/jastiper/chat";
  static const String jastiperSettings = "/jastiper/settings";

  /* Customer*/
  static const String customerHome = "/customer/home";
  static const String customerActivity = "/customer/activity";
  static const String customerAccountLinked = "/customer/account-linked";
  static const String customerChat = "/customer/chat";
  static const String customerSettings = "/customer/settings";

  /*OTP */
  static const String otpPhoneNumberRequestOtp = "/otp/phone-number/request";
  static const String otpPhoneNumberValidateOtp = "/otp/phone-number/validate";
  static const String otpEmailRequestOtp = "/otp/email/request";
  static const String otpEmailValidateOtp = "/otp/email/validate";

  /*Users */
  static const String userProfile = "/users/user-profile";

  static String getUserHomeRoute(Role role) {
    return switch (role) {
      Role.guest => customerHome,
      Role.customer => customerHome,
      Role.jastiper => jastiperStore,
      Role.admin => throw UnimplementedError(),
    };
  }

  static String getUserSettings(Role role) {
    return switch (role) {
      Role.guest => customerSettings,
      Role.customer => customerSettings,
      Role.jastiper => jastiperSettings,
      Role.admin => throw UnimplementedError(),
    };
  }
}
