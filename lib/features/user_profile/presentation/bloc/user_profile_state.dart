import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/user_profile.dart';

part 'user_profile_state.freezed.dart';

@freezed
class UserProfileState with _$UserProfileState {
  const factory UserProfileState.initial() = UserProfileStateInitial;
  const factory UserProfileState.loading() = UserProfileStateLoading;
  const factory UserProfileState.success({required UserProfile data}) =
      UserProfileStateSuccess;
  const factory UserProfileState.successUpdate({required UserProfile data}) =
      UserProfileStateSuccessUpdate;
  const factory UserProfileState.failed({required String message}) =
      UserProfileStateFailed;
}
