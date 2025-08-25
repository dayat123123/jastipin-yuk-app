import 'package:jastipin_yuk/core/utils/result/result.dart';
import 'package:jastipin_yuk/core/utils/result/use_case.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/update_user_profile.dart';
import 'package:jastipin_yuk/features/authentication/domain/repositories/user_repository.dart';
import 'package:jastipin_yuk/features/authentication/domain/usecases/update_user_profile/update_user_profile_param.dart';

class UpdateUserProfileUsecase
    implements UseCase<Result<UpdateUserProfile>, UpdateUserProfileParam> {
  final UserRepository _repository;

  const UpdateUserProfileUsecase(this._repository);
  @override
  Future<Result<UpdateUserProfile>> call(UpdateUserProfileParam params) async {
    return await _repository.updateUserProfile(
      userId: params.userId,
      userName: params.userName,
      email: params.email,
      phoneNumber: params.phoneNumber,
      gender: params.gender,
      birthDate: params.birthDate,
      bio: params.bio,
      displayName: params.displayName,
    );
  }
}
