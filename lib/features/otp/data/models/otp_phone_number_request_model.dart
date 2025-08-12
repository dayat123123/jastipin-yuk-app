import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jastipin_yuk/features/otp/domain/entities/otp_phone_number_request_data.dart';

part 'otp_phone_number_request_model.freezed.dart';
part 'otp_phone_number_request_model.g.dart';

@freezed
class OtpPhoneNumberRequestModel with _$OtpPhoneNumberRequestModel {
  const factory OtpPhoneNumberRequestModel({
    required String expireAt,
    required String phoneNumber,
  }) = _OtpPhoneNumberRequestModel;

  factory OtpPhoneNumberRequestModel.fromJson(Map<String, dynamic> json) =>
      _$OtpPhoneNumberRequestModelFromJson(json);
}

extension OtpPhoneNumberRequestModelMapper on OtpPhoneNumberRequestModel {
  OtpPhoneNumberRequestData toEntity() {
    return OtpPhoneNumberRequestData(
      phoneNumber: phoneNumber,
      expireAt: DateTime.tryParse(expireAt),
    );
  }
}
