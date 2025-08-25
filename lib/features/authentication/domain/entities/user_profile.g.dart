// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileImpl _$$UserProfileImplFromJson(Map<String, dynamic> json) =>
    _$UserProfileImpl(
      userID: json['userID'] as String,
      username: json['username'] as String,
      bio: json['bio'] as String?,
      displayName: json['displayName'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      birthdate:
          json['birthdate'] == null
              ? null
              : DateTime.parse(json['birthdate'] as String),
      role: $enumDecode(_$RoleEnumMap, json['role']),
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      profilePictureUrl: json['profilePictureUrl'] as String?,
      emailVerified: json['emailVerified'] as bool,
      phoneVerified: json['phoneVerified'] as bool,
      createdAt:
          json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
      updatedAt:
          json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$UserProfileImplToJson(_$UserProfileImpl instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'username': instance.username,
      'bio': instance.bio,
      'displayName': instance.displayName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'birthdate': instance.birthdate?.toIso8601String(),
      'role': _$RoleEnumMap[instance.role]!,
      'gender': _$GenderEnumMap[instance.gender]!,
      'profilePictureUrl': instance.profilePictureUrl,
      'emailVerified': instance.emailVerified,
      'phoneVerified': instance.phoneVerified,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

const _$RoleEnumMap = {
  Role.customer: 'customer',
  Role.seller: 'seller',
  Role.admin: 'admin',
  Role.guest: 'guest',
};

const _$GenderEnumMap = {Gender.male: 'male', Gender.female: 'female'};
