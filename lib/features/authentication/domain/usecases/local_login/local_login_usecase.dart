import 'package:jastipin_yuk/core/utils/result/result.dart';
import 'package:jastipin_yuk/core/utils/result/use_case.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/user_data.dart';
import 'package:jastipin_yuk/features/authentication/domain/repositories/authentication_repository.dart';

class LocalLoginUsecase implements UseCase<Result<UserData>, void> {
  final AuthenticationRepository _repository;
  const LocalLoginUsecase(this._repository);
  @override
  Future<Result<UserData>> call(void params) async {
    return await _repository.localLogin();
  }
}
