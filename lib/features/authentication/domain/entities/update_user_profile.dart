import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/user_data.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/user_profile.dart';

part 'update_user_profile.freezed.dart';
part 'update_user_profile.g.dart';

@freezed
class UpdateUserProfile with _$UpdateUserProfile {
  const factory UpdateUserProfile({
    required UserProfile profile,
    required UserData user,
  }) = _UpdateUserProfile;

  factory UpdateUserProfile.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserProfileFromJson(json);
}
