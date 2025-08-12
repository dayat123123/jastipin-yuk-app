import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jastipin_yuk/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:jastipin_yuk/features/authentication/domain/repositories/user_repository.dart';
import 'package:jastipin_yuk/features/authentication/domain/usecases/get_firebase_user_data/get_firebase_user_data_usecase.dart';
import 'package:jastipin_yuk/features/authentication/domain/usecases/validate_email_with_google_account/validate_email_with_google_account_param.dart';
import 'package:jastipin_yuk/features/authentication/domain/usecases/validate_email_with_google_account/validate_email_with_google_account_usecase.dart';
import 'package:jastipin_yuk/features/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:jastipin_yuk/features/otp/domain/repositories/otp_repository.dart';
import 'package:jastipin_yuk/features/otp/domain/usecases/request_otp_email/request_otp_email_param.dart';
import 'package:jastipin_yuk/features/otp/domain/usecases/request_otp_email/request_otp_email_usecase.dart';
import 'package:jastipin_yuk/features/otp/domain/usecases/validate_otp_email/validate_otp_email_param.dart';
import 'package:jastipin_yuk/features/otp/domain/usecases/validate_otp_email/validate_otp_email_usecase.dart';
import 'package:jastipin_yuk/features/otp/presentation/bloc/email_otp_bloc/email_otp_event.dart';
import 'package:jastipin_yuk/features/otp/presentation/bloc/email_otp_bloc/email_otp_state.dart';

export 'email_otp_event.dart';
export 'email_otp_state.dart';

class EmailOtpBloc extends Bloc<EmailOtpEvent, EmailOtpState> {
  final AuthBloc _authBloc;
  final GetFirebaseUserDataUsecase _getFirebaseUserDataUsecase;
  final ValidateEmailWithGoogleAccountUsecase
  _validateEmailWithGoogleAccountUsecase;
  final RequestOtpEmailUsecase _requestOtpEmailUsecase;
  final ValidateOtpEmailUsecase _validateOtpEmailUsecase;

  EmailOtpBloc({
    required AuthenticationRepository authRepository,
    required UserRepository userRepository,
    required OtpRepository otpRepository,
    required AuthBloc authBloc,
  }) : _getFirebaseUserDataUsecase = GetFirebaseUserDataUsecase(authRepository),
       _validateEmailWithGoogleAccountUsecase =
           ValidateEmailWithGoogleAccountUsecase(userRepository),
       _requestOtpEmailUsecase = RequestOtpEmailUsecase(otpRepository),
       _validateOtpEmailUsecase = ValidateOtpEmailUsecase(otpRepository),
       _authBloc = authBloc,
       super(const EmailOtpState.initial()) {
    on<EmailOtpEventRequestOTP>(_onRequestOTP);
    on<EmailOtpEventValidateOTP>(_onValidateOTP);
    on<EmailOtpEventValidateWithGoogle>(_validateWithGoogleAccount);
  }

  void _onRequestOTP(
    EmailOtpEventRequestOTP event,
    Emitter<EmailOtpState> emit,
  ) async {
    emit(EmailOtpState.loading());
    final userData = _authBloc.userData;
    if (userData != null) {
      final result = await _requestOtpEmailUsecase.call(
        RequestOtpEmailParam(userId: userData.userID, email: event.email),
      );
      result.when(
        success: (value) => emit(EmailOtpState.successRequest(data: value)),
        failed:
            (message) => emit(EmailOtpState.failedRequest(message: message)),
      );
    } else {
      emit(EmailOtpState.failedRequest(message: "No user logged in"));
    }
  }

  void _onValidateOTP(
    EmailOtpEventValidateOTP event,
    Emitter<EmailOtpState> emit,
  ) async {
    emit(EmailOtpState.loading());
    final userData = _authBloc.userData;
    if (userData != null) {
      final result = await _validateOtpEmailUsecase.call(
        ValidateOtpEmailParam(
          userId: userData.userID,
          email: event.email,
          otpCode: event.otpCode,
        ),
      );
      result.when(
        success: (value) {
          _authBloc.add(AuthEvent.updateUserState(data: value));
          emit(EmailOtpState.successValidate());
        },
        failed:
            (message) => emit(EmailOtpState.failedValidate(message: message)),
      );
    } else {
      emit(EmailOtpState.failedValidate(message: "No user logged in"));
    }
  }

  void _validateWithGoogleAccount(
    EmailOtpEventValidateWithGoogle event,
    Emitter<EmailOtpState> emit,
  ) async {
    emit(EmailOtpState.loading());
    final userData = _authBloc.userData;
    if (userData != null) {
      final firebaseResult = await _getFirebaseUserDataUsecase.call(null);
      await firebaseResult.when(
        success: (firebaseData) async {
          final verificationResult =
              await _validateEmailWithGoogleAccountUsecase.call(
                ValidateEmailWithGoogleAccountParam(
                  userId: userData.userID,
                  idToken: firebaseData.idToken,
                ),
              );

          verificationResult.when(
            success: (updatedUserData) {
              _authBloc.add(AuthEvent.updateUserState(data: updatedUserData));
              emit(EmailOtpState.successValidateWithGoogleAccount());
            },
            failed: (errorMessage) {
              emit(
                EmailOtpState.failedValidateWithGoogleAccount(
                  message: errorMessage,
                ),
              );
            },
          );
        },
        failed: (errorMessage) {
          emit(
            EmailOtpState.failedValidateWithGoogleAccount(
              message: errorMessage,
            ),
          );
        },
      );
    } else {
      emit(
        EmailOtpState.failedValidateWithGoogleAccount(
          message: "No user logged in",
        ),
      );
    }
  }
}
