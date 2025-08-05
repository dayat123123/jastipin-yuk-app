import 'package:jastipin_yuk/core/utils/result/result.dart';
import 'package:jastipin_yuk/core/utils/result/use_case.dart';
import 'package:jastipin_yuk/features/authentication/domain/repositories/authentication_repository.dart';

class LogoutUsecase implements UseCase<Result<void>, String> {
  final AuthenticationRepository _repository;
  const LogoutUsecase(this._repository);
  @override
  Future<Result<void>> call(String params) async {
    return await _repository.logout(params);
  }
}
