import 'package:jastipin_yuk/core/utils/result/result.dart';
import 'package:jastipin_yuk/core/utils/result/use_case.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/user_data.dart';
import 'package:jastipin_yuk/features/otp/domain/repositories/otp_repository.dart';
import 'package:jastipin_yuk/features/otp/domain/usecases/validate_otp_email/validate_otp_email_param.dart';

class ValidateOtpEmailUsecase
    implements UseCase<Result<UserData>, ValidateOtpEmailParam> {
  final OtpRepository _repository;
  const ValidateOtpEmailUsecase(this._repository);
  @override
  Future<Result<UserData>> call(ValidateOtpEmailParam params) async {
    return await _repository.validateOTPEmail(
      userId: params.userId,
      email: params.email,
      otpCode: params.otpCode,
    );
  }
}
