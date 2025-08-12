import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_otp_event.freezed.dart';

@freezed
class EmailOtpEvent with _$EmailOtpEvent {
  const factory EmailOtpEvent.requestOTP({required String email}) =
      EmailOtpEventRequestOTP;
  const factory EmailOtpEvent.validateWithGoogle() =
      EmailOtpEventValidateWithGoogle;
  const factory EmailOtpEvent.validateOTP({
    required String email,
    required String otpCode,
  }) = EmailOtpEventValidateOTP;
}
