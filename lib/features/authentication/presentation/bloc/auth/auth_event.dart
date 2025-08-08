import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/user_data.dart';
import 'package:jastipin_yuk/features/authentication/domain/usecases/basic_login/basic_login_param.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({required BasicLoginParam param}) = LoginEvent;

  const factory AuthEvent.localLogin() = LocalLoginEvent;

  const factory AuthEvent.logout() = LogoutEvent;

  const factory AuthEvent.firebaseLogin() = FirebaseLoginEvent;

  const factory AuthEvent.updateUserState({required UserData data}) =
      UpdateUserStateEvent;
}
