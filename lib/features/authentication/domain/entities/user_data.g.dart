// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      userID: json['userID'] as String,
      firebaseUID: json['firebaseUID'] as String?,
      username: json['username'] as String,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      birthdate: json['birthdate'] as String,
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      role: $enumDecode(_$RoleEnumMap, json['role']),
      profilePictureUrl: json['profilePictureUrl'] as String?,
      emailVerified: json['emailVerified'] as bool,
      phoneVerified: json['phoneVerified'] as bool,
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'firebaseUID': instance.firebaseUID,
      'username': instance.username,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'birthdate': instance.birthdate,
      'gender': _$GenderEnumMap[instance.gender]!,
      'role': _$RoleEnumMap[instance.role]!,
      'profilePictureUrl': instance.profilePictureUrl,
      'emailVerified': instance.emailVerified,
      'phoneVerified': instance.phoneVerified,
    };

const _$GenderEnumMap = {Gender.male: 'male', Gender.female: 'female'};

const _$RoleEnumMap = {
  Role.customer: 'customer',
  Role.jastiper: 'jastiper',
  Role.admin: 'admin',
  Role.guest: 'guest',
};
