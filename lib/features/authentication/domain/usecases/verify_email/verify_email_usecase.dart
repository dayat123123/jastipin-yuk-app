import 'package:jastipin_yuk/core/utils/result/result.dart';
import 'package:jastipin_yuk/core/utils/result/use_case.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/user_data.dart';
import 'package:jastipin_yuk/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:jastipin_yuk/features/authentication/domain/usecases/verify_email/verify_email_param.dart';

class VerifyEmailUsecase
    implements UseCase<Result<UserData>, VerifyEmailParam> {
  final AuthenticationRepository _repository;
  const VerifyEmailUsecase(this._repository);

  @override
  Future<Result<UserData>> call(VerifyEmailParam params) async {
    return await _repository.verifyEmailUser(
      userId: params.userId,
      idToken: params.idToken,
    );
  }
}
