import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jastipin_yuk/features/authentication/domain/usecases/basic_login/basic_login_param.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({required BasicLoginParam param}) = Login;

  const factory AuthEvent.logout() = Logout;

  const factory AuthEvent.firebaseLogin() = FirebaseLogin;
}
