class ApiPaths {
  const ApiPaths._();
  static const String baseUrl = "http://127.0.0.1:8088/api";
  static const String login = "/auth/login";
  static const String loginWithGoogleAccount =
      "/auth/login-with-google-account";
  static const String register = "/auth/register";
  static const String refreshToken = "/auth/refresh-token";
}
