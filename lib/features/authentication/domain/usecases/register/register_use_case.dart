import 'package:jastipin_yuk/core/utils/result/result.dart';
import 'package:jastipin_yuk/core/utils/result/use_case.dart';
import 'package:jastipin_yuk/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:jastipin_yuk/features/authentication/domain/usecases/register/register_param.dart';

class RegisterUseCase implements UseCase<Result<void>, RegisterParam> {
  final AuthenticationRepository _repository;

  const RegisterUseCase(this._repository);
  @override
  Future<Result<void>> call(RegisterParam params) async {
    return await _repository.register(
      username: params.username,
      password: params.password,
      gender: params.gender,
      role: params.role,
      birthdate: params.birthdate,
    );
  }
}
