import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_email_request_data.freezed.dart';

@freezed
class OtpEmailRequestData with _$OtpEmailRequestData {
  const factory OtpEmailRequestData({
    required String email,
    DateTime? expireAt,
  }) = _OtpEmailRequestData;
}
