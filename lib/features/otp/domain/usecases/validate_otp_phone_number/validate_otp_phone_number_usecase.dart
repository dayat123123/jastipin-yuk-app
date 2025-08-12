import 'package:jastipin_yuk/core/utils/result/result.dart';
import 'package:jastipin_yuk/core/utils/result/use_case.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/user_data.dart';
import 'package:jastipin_yuk/features/otp/domain/repositories/otp_repository.dart';
import 'package:jastipin_yuk/features/otp/domain/usecases/validate_otp_phone_number/validate_otp_phone_number_param.dart';

class ValidateOtpPhoneNumberUsecase
    implements UseCase<Result<UserData>, ValidateOtpPhoneNumberParam> {
  final OtpRepository _repository;
  const ValidateOtpPhoneNumberUsecase(this._repository);
  @override
  Future<Result<UserData>> call(ValidateOtpPhoneNumberParam params) async {
    return await _repository.validateOTPPhoneNumber(
      userId: params.userId,
      phoneNumber: params.phoneNumber,
      otpCode: params.otpCode,
    );
  }
}
