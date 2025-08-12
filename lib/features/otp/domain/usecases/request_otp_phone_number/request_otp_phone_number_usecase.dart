import 'package:jastipin_yuk/core/utils/result/result.dart';
import 'package:jastipin_yuk/core/utils/result/use_case.dart';
import 'package:jastipin_yuk/features/otp/domain/entities/otp_phone_number_request_data.dart';
import 'package:jastipin_yuk/features/otp/domain/repositories/otp_repository.dart';
import 'package:jastipin_yuk/features/otp/domain/usecases/request_otp_phone_number/request_otp_phone_number_param.dart';

class RequestOtpPhoneNumberUsecase
    implements
        UseCase<Result<OtpPhoneNumberRequestData>, RequestOtpPhoneNumberParam> {
  final OtpRepository _repository;

  const RequestOtpPhoneNumberUsecase(this._repository);
  @override
  Future<Result<OtpPhoneNumberRequestData>> call(
    RequestOtpPhoneNumberParam params,
  ) async {
    return await _repository.requestOTPPhoneNumber(
      userId: params.userId,
      phoneNumber: params.phoneNumber,
    );
  }
}
