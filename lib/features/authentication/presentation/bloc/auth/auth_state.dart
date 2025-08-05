import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/user_data.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;
  const factory AuthState.loading() = Loading;
  const factory AuthState.unauthenticated() = Unauthenticated;
  const factory AuthState.authenticated({required UserData userData}) =
      Authenticated;
  const factory AuthState.failed({required String message}) = Failed;
}
