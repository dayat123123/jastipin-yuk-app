import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jastipin_yuk/features/otp/domain/entities/otp_phone_number_request_data.dart';

part 'phone_number_otp_state.freezed.dart';

@freezed
class PhoneNumberOtpState with _$PhoneNumberOtpState {
  const factory PhoneNumberOtpState.initial() = PhoneNumberOtpStateInitial;
  const factory PhoneNumberOtpState.loading() = PhoneNumberOtpStateLoading;
  const factory PhoneNumberOtpState.successRequest({
    required OtpPhoneNumberRequestData data,
  }) = PhoneNumberOtpStateSuccessRequest;
  const factory PhoneNumberOtpState.successValidate() =
      PhoneNumberOtpStateSuccessValidate;
  const factory PhoneNumberOtpState.failedRequest({required String message}) =
      PhoneNumberOtpStateFailedRequest;
  const factory PhoneNumberOtpState.failedValidate({required String message}) =
      PhoneNumberOtpStateFailedValidate;
}
