// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_phone_number_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OtpPhoneNumberRequestModelImpl _$$OtpPhoneNumberRequestModelImplFromJson(
  Map<String, dynamic> json,
) => _$OtpPhoneNumberRequestModelImpl(
  expireAt: json['expireAt'] as String,
  phoneNumber: json['phoneNumber'] as String,
);

Map<String, dynamic> _$$OtpPhoneNumberRequestModelImplToJson(
  _$OtpPhoneNumberRequestModelImpl instance,
) => <String, dynamic>{
  'expireAt': instance.expireAt,
  'phoneNumber': instance.phoneNumber,
};
