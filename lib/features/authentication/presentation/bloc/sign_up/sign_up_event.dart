import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jastipin_yuk/features/authentication/domain/usecases/register/register_param.dart';

part 'sign_up_event.freezed.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.register({required RegisterParam param}) = Register;
}
