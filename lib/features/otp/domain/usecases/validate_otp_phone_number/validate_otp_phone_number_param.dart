class ValidateOtpPhoneNumberParam {
  final String userId;
  final String phoneNumber;
  final String otpCode;

  const ValidateOtpPhoneNumberParam({
    required this.userId,
    required this.phoneNumber,
    required this.otpCode,
  });
}
