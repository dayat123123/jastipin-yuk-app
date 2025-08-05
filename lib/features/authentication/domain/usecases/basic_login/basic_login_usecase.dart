import 'package:jastipin_yuk/core/utils/result/result.dart';
import 'package:jastipin_yuk/core/utils/result/use_case.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/user_data.dart';
import 'package:jastipin_yuk/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:jastipin_yuk/features/authentication/domain/usecases/basic_login/basic_login_param.dart';

class BasicLoginUsecase implements UseCase<Result<UserData>, BasicLoginParam> {
  final AuthenticationRepository _repository;

  const BasicLoginUsecase(this._repository);
  @override
  Future<Result<UserData>> call(BasicLoginParam params) async {
    return await _repository.basicLogin(
      userName: params.username,
      password: params.password,
    );
  }
}
