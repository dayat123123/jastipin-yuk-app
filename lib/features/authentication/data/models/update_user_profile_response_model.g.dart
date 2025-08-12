// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_profile_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateUserProfileResponseModelImpl
_$$UpdateUserProfileResponseModelImplFromJson(Map<String, dynamic> json) =>
    _$UpdateUserProfileResponseModelImpl(
      profile: UserProfileModel.fromJson(
        json['profile'] as Map<String, dynamic>,
      ),
      user: UserDataModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateUserProfileResponseModelImplToJson(
  _$UpdateUserProfileResponseModelImpl instance,
) => <String, dynamic>{'profile': instance.profile, 'user': instance.user};
