class ValidateOtpEmailParam {
  final String userId;
  final String email;
  final String otpCode;

  const ValidateOtpEmailParam({
    required this.userId,
    required this.email,
    required this.otpCode,
  });
}
