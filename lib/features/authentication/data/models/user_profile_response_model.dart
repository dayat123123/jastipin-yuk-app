import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jastipin_yuk/features/authentication/data/models/user_profile_model.dart';

part 'user_profile_response_model.freezed.dart';
part 'user_profile_response_model.g.dart';

@freezed
class UserProfileResponseModel with _$UserProfileResponseModel {
  const factory UserProfileResponseModel({required UserProfileModel profile}) =
      _UserProfileResponseModel;

  factory UserProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileResponseModelFromJson(json);
}
