import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jastipin_yuk/features/authentication/domain/usecases/update_user_profile/update_user_profile_param.dart';

part 'user_profile_event.freezed.dart';

@freezed
class UserProfileEvent with _$UserProfileEvent {
  const factory UserProfileEvent.loadUserProfile({
    @Default(false) bool isRefresh,
  }) = UserProfileEventLoadUserProfile;

  const factory UserProfileEvent.updateUserProfile({
    required UpdateUserProfileParam param,
  }) = UserProfileEventUpdateUserProfile;
}
