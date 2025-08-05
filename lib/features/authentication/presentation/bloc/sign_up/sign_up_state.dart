import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/user_data.dart';

part 'sign_up_state.freezed.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = Initial;
  const factory SignUpState.loading() = Loading;
  const factory SignUpState.success({required UserData userData}) = Success;
  const factory SignUpState.failed({required String message}) = Failed;
}
