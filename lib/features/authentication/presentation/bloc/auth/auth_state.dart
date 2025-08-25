import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/user_data.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitial;
  const factory AuthState.loading() = AuthLoading;
  const factory AuthState.unauthenticated() = AuthUnauthenticated;
  const factory AuthState.authenticated({required UserData userData}) =
      AuthAuthenticated;
  const factory AuthState.failed({required String message}) = AuthFailed;
}
