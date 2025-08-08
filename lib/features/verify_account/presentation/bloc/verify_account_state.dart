import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_account_state.freezed.dart';

@freezed
class VerifyAccountState with _$VerifyAccountState {
  const factory VerifyAccountState.initial() = VerifyAccountStateInitial;
  const factory VerifyAccountState.loading() = VerifyAccountStateLoading;
  const factory VerifyAccountState.success() = VerifyAccountStateSuccess;
  const factory VerifyAccountState.failed({required String message}) =
      VerifyAccountStateFailed;
}
