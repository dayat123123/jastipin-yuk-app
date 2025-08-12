import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/user_data.dart';
import 'package:jastipin_yuk/features/authentication/domain/usecases/basic_login/basic_login_param.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({required BasicLoginParam param}) =
      AuthEventLogin;

  const factory AuthEvent.localLogin() = AuthEventLocalLogin;

  const factory AuthEvent.logout() = AuthEventLogout;

  const factory AuthEvent.firebaseLogin() = AuthEventFirebaseLogin;

  const factory AuthEvent.updateUserState({required UserData data}) =
      AuthEventUpdateUserState;
}
