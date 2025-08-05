// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDataModelImpl _$$UserDataModelImplFromJson(Map<String, dynamic> json) =>
    _$UserDataModelImpl(
      userId: json['userID'] as String,
      username: json['username'] as String,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      role: json['role'] as String,
      birthdate: json['birthdate'] as String,
      gender: json['gender'] as String,
      profilePictureUrl: json['profilePictureURL'] as String?,
      emailVerified: json['emailVerified'] as bool,
      phoneVerified: json['phoneVerified'] as bool,
    );

Map<String, dynamic> _$$UserDataModelImplToJson(_$UserDataModelImpl instance) =>
    <String, dynamic>{
      'userID': instance.userId,
      'username': instance.username,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'role': instance.role,
      'birthdate': instance.birthdate,
      'gender': instance.gender,
      'profilePictureURL': instance.profilePictureUrl,
      'emailVerified': instance.emailVerified,
      'phoneVerified': instance.phoneVerified,
    };
