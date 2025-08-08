class ApiPaths {
  const ApiPaths._();
  // static const String baseUrl = "http://172.20.10.4:8088/api";
  static const String baseUrl = "http://127.0.0.1:8088/api";

  /*Auth */
  static const String login = "/auth/login";
  static const String logout = "/auth/logout";
  static const String loginWithGoogleAccount =
      "/auth/login-with-google-account";
  static const String loginWithToken = "/auth/login-with-token";
  static const String register = "/auth/register";
  static const String refreshToken = "/auth/refresh-token";
  static const String verifyEmail = "/auth/email/verify";
  static const String requestOTP = "/auth/otp/request";
  static const String verifyOTP = "/auth/otp/verify";

  /*Users */
}
