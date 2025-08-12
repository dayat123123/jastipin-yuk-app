import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jastipin_yuk/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:jastipin_yuk/features/authentication/domain/usecases/register/register_use_case.dart';
import 'package:jastipin_yuk/features/authentication/presentation/bloc/sign_up/sign_up_state.dart';
import 'sign_up_event.dart';

export 'sign_up_event.dart';
export 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final RegisterUseCase _registerUseCase;

  SignUpBloc({required AuthenticationRepository authRepository})
    : _registerUseCase = RegisterUseCase(authRepository),
      super(const SignUpState.initial()) {
    on<SignUpEventRegister>(_onRegister);
  }

  void _onRegister(SignUpEventRegister event, Emitter<SignUpState> emit) async {
    emit(const SignUpState.loading());
    final result = await _registerUseCase.call(event.param);
    result.when(
      success: (value) {
        emit(SignUpState.success());
      },
      failed: (message) {
        emit(SignUpState.failed(message: message));
      },
    );
  }
}
