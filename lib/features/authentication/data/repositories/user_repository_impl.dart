import 'package:jastipin_yuk/core/utils/result/result.dart';
import 'package:jastipin_yuk/features/authentication/data/data_sources/user_network_data_source.dart';
import 'package:jastipin_yuk/features/authentication/data/models/update_user_profile_response_model.dart';
import 'package:jastipin_yuk/features/authentication/data/models/user_data_model.dart';
import 'package:jastipin_yuk/features/authentication/data/models/user_profile_model.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/update_user_profile.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/user_data.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/user_profile.dart';
import 'package:jastipin_yuk/features/authentication/domain/enums/gender.dart';
import 'package:jastipin_yuk/features/authentication/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserNetworkDataSource _networkDataSource;
  const UserRepositoryImpl(this._networkDataSource);

  @override
  Future<Result<UserProfile>> getUserProfile({required String userID}) async {
    final result = await _networkDataSource.getUserProfile(userID: userID);
    return result.when(
      success: (value) => Result.success(value.toEntity()),
      failed: (message) => Result.failed(message),
    );
  }

  @override
  Future<Result<UpdateUserProfile>> updateUserProfile({
    required String userId,
    required String userName,
    required String email,
    required String phoneNumber,
    required Gender gender,
    required DateTime birthDate,
    required String bio,
    required String displayName,
  }) async {
    final result = await _networkDataSource.updateUserProfile(
      userId: userId,
      userName: userName,
      email: email,
      phoneNumber: phoneNumber,
      gender: gender,
      birthdate: birthDate,
      bio: bio,
      displayName: displayName,
    );
    return result.when(
      success: (value) => Result.success(value.toEntity()),
      failed: (message) => Result.failed(message),
    );
  }

  @override
  Future<Result<UserData>> validateEmailWithGoogleAccount({
    required String userId,
    required String idToken,
  }) async {
    final result = await _networkDataSource.validateEmailWithGoogleAccount(
      userId: userId,
      idToken: idToken,
    );
    return result.when(
      success: (value) => Result.success(value.user.toEntity()),
      failed: (message) => Result.failed(message),
    );
  }
}
