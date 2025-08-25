// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileModelImpl _$$UserProfileModelImplFromJson(
  Map<String, dynamic> json,
) => _$UserProfileModelImpl(
  userId: json['userID'] as String,
  username: json['username'] as String,
  bio: json['bio'] as String?,
  displayName: json['displayName'] as String?,
  email: json['email'] as String?,
  phoneNumber: json['phoneNumber'] as String?,
  role: json['role'] as String,
  birthdate: json['birthdate'] as String,
  gender: json['gender'] as String,
  profilePictureUrl: json['profilePictureURL'] as String?,
  emailVerified: json['emailVerified'] as bool,
  phoneVerified: json['phoneVerified'] as bool,
  createdAt: json['createdAt'] as String,
  updatedAt: json['updatedAt'] as String?,
);

Map<String, dynamic> _$$UserProfileModelImplToJson(
  _$UserProfileModelImpl instance,
) => <String, dynamic>{
  'userID': instance.userId,
  'username': instance.username,
  'bio': instance.bio,
  'displayName': instance.displayName,
  'email': instance.email,
  'phoneNumber': instance.phoneNumber,
  'role': instance.role,
  'birthdate': instance.birthdate,
  'gender': instance.gender,
  'profilePictureURL': instance.profilePictureUrl,
  'emailVerified': instance.emailVerified,
  'phoneVerified': instance.phoneVerified,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
};
