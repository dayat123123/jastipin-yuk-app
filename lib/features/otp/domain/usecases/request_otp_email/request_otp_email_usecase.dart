import 'package:jastipin_yuk/core/utils/result/result.dart';
import 'package:jastipin_yuk/core/utils/result/use_case.dart';
import 'package:jastipin_yuk/features/otp/domain/entities/otp_email_request_data.dart';
import 'package:jastipin_yuk/features/otp/domain/repositories/otp_repository.dart';
import 'package:jastipin_yuk/features/otp/domain/usecases/request_otp_email/request_otp_email_param.dart';

class RequestOtpEmailUsecase
    implements UseCase<Result<OtpEmailRequestData>, RequestOtpEmailParam> {
  final OtpRepository _repository;
  const RequestOtpEmailUsecase(this._repository);
  @override
  Future<Result<OtpEmailRequestData>> call(params) async {
    return await _repository.requestOTPEmail(
      userId: params.userId,
      email: params.email,
    );
  }
}
