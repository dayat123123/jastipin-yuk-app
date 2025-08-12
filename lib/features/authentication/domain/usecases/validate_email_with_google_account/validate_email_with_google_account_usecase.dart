import 'package:jastipin_yuk/core/utils/result/result.dart';
import 'package:jastipin_yuk/core/utils/result/use_case.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/user_data.dart';
import 'package:jastipin_yuk/features/authentication/domain/repositories/user_repository.dart';
import 'package:jastipin_yuk/features/authentication/domain/usecases/validate_email_with_google_account/validate_email_with_google_account_param.dart';

class ValidateEmailWithGoogleAccountUsecase
    implements UseCase<Result<UserData>, ValidateEmailWithGoogleAccountParam> {
  final UserRepository _repository;
  const ValidateEmailWithGoogleAccountUsecase(this._repository);

  @override
  Future<Result<UserData>> call(
    ValidateEmailWithGoogleAccountParam params,
  ) async {
    return await _repository.validateEmailWithGoogleAccount(
      userId: params.userId,
      idToken: params.idToken,
    );
  }
}
