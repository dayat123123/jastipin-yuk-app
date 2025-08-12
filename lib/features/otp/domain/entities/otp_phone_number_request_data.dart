import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_phone_number_request_data.freezed.dart';

@freezed
class OtpPhoneNumberRequestData with _$OtpPhoneNumberRequestData {
  const factory OtpPhoneNumberRequestData({
    required String phoneNumber,
    DateTime? expireAt,
  }) = _OtpPhoneNumberRequestData;
}
