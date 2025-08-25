import 'package:jastipin_yuk/core/utils/result/result.dart';
import 'package:jastipin_yuk/core/utils/result/use_case.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/access_token_data.dart';
import 'package:jastipin_yuk/features/authentication/domain/repositories/authentication_repository.dart';

class GetLocalAuthTokenUsecase
    implements UseCase<Result<AccessTokenData>, void> {
  final AuthenticationRepository _repository;

  const GetLocalAuthTokenUsecase(this._repository);
  @override
  Future<Result<AccessTokenData>> call(void params) async {
    return await _repository.getLocalAuthToken();
  }
}
