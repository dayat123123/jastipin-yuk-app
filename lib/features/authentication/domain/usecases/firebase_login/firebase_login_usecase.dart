import 'package:jastipin_yuk/core/utils/result/result.dart';
import 'package:jastipin_yuk/core/utils/result/use_case.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/user_data.dart';
import 'package:jastipin_yuk/features/authentication/domain/repositories/authentication_repository.dart';

class FirebaseLoginUseCase implements UseCase<Result<UserData>, String> {
  final AuthenticationRepository _repository;

  const FirebaseLoginUseCase(this._repository);
  @override
  Future<Result<UserData>> call(String params) async {
    return await _repository.firebaseLogin(params);
  }
}
