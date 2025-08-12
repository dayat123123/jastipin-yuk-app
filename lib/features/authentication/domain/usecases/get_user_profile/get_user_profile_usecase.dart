import 'package:jastipin_yuk/core/utils/result/result.dart';
import 'package:jastipin_yuk/core/utils/result/use_case.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/user_profile.dart';
import 'package:jastipin_yuk/features/authentication/domain/repositories/user_repository.dart';

class GetUserProfileUsecase implements UseCase<Result<UserProfile>, String> {
  final UserRepository _repository;
  const GetUserProfileUsecase(this._repository);
  @override
  Future<Result<UserProfile>> call(String params) async {
    return await _repository.getUserProfile(userID: params);
  }
}
