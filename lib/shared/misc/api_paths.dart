class ApiPaths {
  const ApiPaths._();
  // static const String baseUrl = "http://172.20.10.4:8088/api";
  static const String baseUrl = "http://127.0.0.1:8088/api";

  /*Auth */
  static const String login = "/auth/login";
  static const String logout = "/auth/logout";
  static const String loginWithToken = "/auth/login-with-token";
  static const String loginWithGoogleAccount =
      "/auth/login-with-google-account";
  static const String register = "/auth/register";
  static const String refreshToken = "/auth/refresh-token";
  static const String validateEmailWithGoogleAccount =
      "/auth/validate-email-with-google-account";

  /*Users */
  static const String getUserProfile = "/users/profile";
  static const String updateUserProfile = "/users/update";
  static const String requestOTPPhoneNumber = "/users/phone-number-otp-request";
  static const String validateOTPPhoneNumber =
      "/users/phone-number-otp-validate";
  static const String requestOTPEmail = "/users/email-otp-request";
  static const String validateOTPEmail = "/users/email-otp-validate";
}
