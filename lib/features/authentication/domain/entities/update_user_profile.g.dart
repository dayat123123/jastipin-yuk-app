// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateUserProfileImpl _$$UpdateUserProfileImplFromJson(
  Map<String, dynamic> json,
) => _$UpdateUserProfileImpl(
  profile: UserProfile.fromJson(json['profile'] as Map<String, dynamic>),
  user: UserData.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$UpdateUserProfileImplToJson(
  _$UpdateUserProfileImpl instance,
) => <String, dynamic>{'profile': instance.profile, 'user': instance.user};
