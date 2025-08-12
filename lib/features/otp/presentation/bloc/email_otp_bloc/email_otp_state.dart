import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jastipin_yuk/features/otp/domain/entities/otp_email_request_data.dart';

part 'email_otp_state.freezed.dart';

@freezed
class EmailOtpState with _$EmailOtpState {
  const factory EmailOtpState.initial() = EmailOtpStateInitial;
  const factory EmailOtpState.loading() = EmailOtpStateLoading;
  const factory EmailOtpState.successRequest({
    required OtpEmailRequestData data,
  }) = EmailOtpStateSuccessRequest;
  const factory EmailOtpState.successValidate() = EmailOtpStateSuccessValidate;
  const factory EmailOtpState.successValidateWithGoogleAccount() =
      EmailOtpStateSuccessWithGoogleAccount;
  const factory EmailOtpState.failedRequest({required String message}) =
      EmailOtpStateFailedRequest;
  const factory EmailOtpState.failedValidate({required String message}) =
      EmailOtpStateFailedValidate;
  const factory EmailOtpState.failedValidateWithGoogleAccount({
    required String message,
  }) = EmailOtpStateFailedValidateWithGoogleAccount;
}
