import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_number_otp_event.freezed.dart';

@freezed
class PhoneNumberOtpEvent with _$PhoneNumberOtpEvent {
  const factory PhoneNumberOtpEvent.requestOTP({required String phoneNumber}) =
      PhoneNumberOtpEventRequestOTP;
  const factory PhoneNumberOtpEvent.validateOTP({
    required String phoneNumber,
    required String otpCode,
  }) = PhoneNumberOtpEventValidateOTP;
}
