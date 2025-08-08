import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_account_event.freezed.dart';

@freezed
class VerifyAccountEvent with _$VerifyAccountEvent {
  const factory VerifyAccountEvent.verifyEmail() = VerifyEmail;
}
