import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jastipin_yuk/features/authentication/data/models/user_data_model.dart';
import 'package:jastipin_yuk/features/authentication/data/models/user_profile_model.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/update_user_profile.dart';

part 'update_user_profile_response_model.freezed.dart';
part 'update_user_profile_response_model.g.dart';

@freezed
class UpdateUserProfileResponseModel with _$UpdateUserProfileResponseModel {
  const factory UpdateUserProfileResponseModel({
    required UserProfileModel profile,
    required UserDataModel user,
  }) = _UpdateUserProfileResponseModel;

  factory UpdateUserProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserProfileResponseModelFromJson(json);
}

extension UpdateUserProfileResponseModelMapper
    on UpdateUserProfileResponseModel {
  UpdateUserProfile toEntity() {
    return UpdateUserProfile(
      profile: profile.toEntity(),
      user: user.toEntity(),
    );
  }
}
