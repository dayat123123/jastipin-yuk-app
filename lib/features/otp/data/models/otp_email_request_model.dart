import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jastipin_yuk/features/otp/domain/entities/otp_email_request_data.dart';

part 'otp_email_request_model.freezed.dart';
part 'otp_email_request_model.g.dart';

@freezed
class OtpEmailRequestModel with _$OtpEmailRequestModel {
  const factory OtpEmailRequestModel({
    required String expireAt,
    required String email,
  }) = _OtpEmailRequestModel;

  factory OtpEmailRequestModel.fromJson(Map<String, dynamic> json) =>
      _$OtpEmailRequestModelFromJson(json);
}

extension OtpEmailRequestModelMapper on OtpEmailRequestModel {
  OtpEmailRequestData toEntity() {
    return OtpEmailRequestData(
      email: email,
      expireAt: DateTime.tryParse(expireAt),
    );
  }
}
