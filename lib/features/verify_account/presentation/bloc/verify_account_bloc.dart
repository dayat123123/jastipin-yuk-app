import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jastipin_yuk/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:jastipin_yuk/features/authentication/domain/usecases/get_firebase_user_data/get_firebase_user_data_usecase.dart';
import 'package:jastipin_yuk/features/authentication/domain/usecases/verify_email/verify_email_param.dart';
import 'package:jastipin_yuk/features/authentication/domain/usecases/verify_email/verify_email_usecase.dart';
import 'package:jastipin_yuk/features/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:jastipin_yuk/features/verify_account/presentation/bloc/verify_account_event.dart';
import 'package:jastipin_yuk/features/verify_account/presentation/bloc/verify_account_state.dart';

export 'verify_account_event.dart';
export 'verify_account_state.dart';

class VerifyAccountBloc extends Bloc<VerifyAccountEvent, VerifyAccountState> {
  final AuthBloc _authBloc;
  final GetFirebaseUserDataUsecase _getFirebaseUserDataUsecase;
  final VerifyEmailUsecase _verifyEmailUsecase;

  VerifyAccountBloc({
    required AuthenticationRepository authRepository,
    required AuthBloc authBloc,
  }) : _getFirebaseUserDataUsecase = GetFirebaseUserDataUsecase(authRepository),
       _verifyEmailUsecase = VerifyEmailUsecase(authRepository),
       _authBloc = authBloc,
       super(const VerifyAccountState.initial()) {
    on<VerifyEmail>(_onVerifyEmail);
  }

  void _onVerifyEmail(
    VerifyEmail event,
    Emitter<VerifyAccountState> emit,
  ) async {
    emit(VerifyAccountState.loading());
    if (_authBloc.state is Authenticated) {
      final currentState = _authBloc.state as Authenticated;
      final firebaseResult = await _getFirebaseUserDataUsecase.call(null);
      await firebaseResult.when(
        success: (firebaseData) async {
          final verificationResult = await _verifyEmailUsecase.call(
            VerifyEmailParam(
              userId: currentState.userData.userID,
              idToken: firebaseData.idToken,
            ),
          );

          verificationResult.when(
            success: (updatedUserData) {
              _authBloc.add(UpdateUserStateEvent(data: updatedUserData));
              emit(VerifyAccountState.success());
            },
            failed: (errorMessage) {
              emit(VerifyAccountState.failed(message: errorMessage));
            },
          );
        },
        failed: (errorMessage) {
          emit(VerifyAccountState.failed(message: errorMessage));
        },
      );
    } else {
      emit(VerifyAccountState.failed(message: "No user logged in"));
    }
  }
}
