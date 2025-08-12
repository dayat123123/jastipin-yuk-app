import 'package:jastipin_yuk/core/utils/result/result.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/update_user_profile.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/user_data.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/user_profile.dart';
import 'package:jastipin_yuk/features/authentication/domain/enums/gender.dart';

abstract class UserRepository {
  Future<Result<UserProfile>> getUserProfile({required String userID});
  Future<Result<UpdateUserProfile>> updateUserProfile({
    required String userId,
    required String userName,
    required String email,
    required String phoneNumber,
    required Gender gender,
    required DateTime birthDate,
  });
  Future<Result<UserData>> validateEmailWithGoogleAccount({
    required String userId,
    required String idToken,
  });
}
