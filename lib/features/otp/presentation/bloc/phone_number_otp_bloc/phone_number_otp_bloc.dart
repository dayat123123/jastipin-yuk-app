import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jastipin_yuk/features/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:jastipin_yuk/features/otp/domain/repositories/otp_repository.dart';
import 'package:jastipin_yuk/features/otp/domain/usecases/request_otp_phone_number/request_otp_phone_number_param.dart';
import 'package:jastipin_yuk/features/otp/domain/usecases/request_otp_phone_number/request_otp_phone_number_usecase.dart';
import 'package:jastipin_yuk/features/otp/domain/usecases/validate_otp_phone_number/validate_otp_phone_number_param.dart';
import 'package:jastipin_yuk/features/otp/domain/usecases/validate_otp_phone_number/validate_otp_phone_number_usecase.dart';
import 'package:jastipin_yuk/features/otp/presentation/bloc/phone_number_otp_bloc/phone_number_otp_event.dart';
import 'package:jastipin_yuk/features/otp/presentation/bloc/phone_number_otp_bloc/phone_number_otp_state.dart';

export 'phone_number_otp_event.dart';
export 'phone_number_otp_state.dart';

class PhoneNumberOtpBloc
    extends Bloc<PhoneNumberOtpEvent, PhoneNumberOtpState> {
  final AuthBloc _authBloc;
  final RequestOtpPhoneNumberUsecase _requestOTPUsecase;
  final ValidateOtpPhoneNumberUsecase _validateOtpUsecase;

  PhoneNumberOtpBloc({
    required OtpRepository otpRepository,
    required AuthBloc authBloc,
  }) : _requestOTPUsecase = RequestOtpPhoneNumberUsecase(otpRepository),
       _validateOtpUsecase = ValidateOtpPhoneNumberUsecase(otpRepository),
       _authBloc = authBloc,
       super(const PhoneNumberOtpState.initial()) {
    on<PhoneNumberOtpEventRequestOTP>(_onRequestOTP);
    on<PhoneNumberOtpEventValidateOTP>(_onValidateOTP);
  }

  void _onRequestOTP(
    PhoneNumberOtpEventRequestOTP event,
    Emitter<PhoneNumberOtpState> emit,
  ) async {
    emit(PhoneNumberOtpState.loading());

    if (_authBloc.state is Authenticated) {
      final currentState = _authBloc.state as Authenticated;
      final result = await _requestOTPUsecase.call(
        RequestOtpPhoneNumberParam(
          userId: currentState.userData.userID,
          phoneNumber: event.phoneNumber,
        ),
      );
      result.when(
        success:
            (value) => emit(PhoneNumberOtpState.successRequest(data: value)),
        failed:
            (message) =>
                emit(PhoneNumberOtpState.failedRequest(message: message)),
      );
    } else {
      emit(PhoneNumberOtpState.failedRequest(message: "No user logged in"));
    }
  }

  void _onValidateOTP(
    PhoneNumberOtpEventValidateOTP event,
    Emitter<PhoneNumberOtpState> emit,
  ) async {
    emit(PhoneNumberOtpState.loading());
    final userData = _authBloc.userData;
    if (userData != null) {
      final result = await _validateOtpUsecase.call(
        ValidateOtpPhoneNumberParam(
          userId: userData.userID,
          phoneNumber: event.phoneNumber,
          otpCode: event.otpCode,
        ),
      );
      result.when(
        success: (value) {
          _authBloc.add(AuthEvent.updateUserState(data: value));
          emit(PhoneNumberOtpState.successValidate());
        },
        failed:
            (message) =>
                emit(PhoneNumberOtpState.failedValidate(message: message)),
      );
    } else {
      emit(PhoneNumberOtpState.failedValidate(message: "No user logged in"));
    }
  }
}
