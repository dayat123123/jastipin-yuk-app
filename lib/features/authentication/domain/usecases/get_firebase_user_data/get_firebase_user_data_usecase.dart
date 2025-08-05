import 'package:jastipin_yuk/core/utils/result/result.dart';
import 'package:jastipin_yuk/core/utils/result/use_case.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/google_account_data.dart';
import 'package:jastipin_yuk/features/authentication/domain/repositories/authentication_repository.dart';

class GetFirebaseUserDataUsecase
    implements UseCase<Result<GoogleAccountData>, void> {
  final AuthenticationRepository _repository;
  const GetFirebaseUserDataUsecase(this._repository);
  @override
  Future<Result<GoogleAccountData>> call(void params) async {
    return await _repository.getFirebaseUserData();
  }
}
