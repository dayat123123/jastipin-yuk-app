import 'package:jastipin_yuk/core/utils/result/result.dart';
import 'package:jastipin_yuk/features/authentication/data/data_sources/authentication_local_data_source.dart';
import 'package:jastipin_yuk/features/authentication/data/data_sources/authentication_network_data_source.dart';
import 'package:jastipin_yuk/features/authentication/data/models/user_data_model.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/google_account_data.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/user_data.dart';
import 'package:jastipin_yuk/features/authentication/domain/enums/gender.dart';
import 'package:jastipin_yuk/features/authentication/domain/enums/role.dart';
import 'package:jastipin_yuk/features/authentication/domain/repositories/authentication_repository.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationNetworkDataSource _networkDataSource;
  final AuthenticationLocalDataSource _localDataSource;
  const AuthenticationRepositoryImpl(
    this._networkDataSource,
    this._localDataSource,
  );
  @override
  Future<Result<UserData>> basicLogin({
    required String userName,
    required String password,
  }) async {
    final result = await _networkDataSource.basicLogin(
      userName: userName,
      password: password,
    );
    return result.when(
      success: (value) async {
        final userData = value.user.toEntity();
        final accessToken = value.token;
        await _localDataSource.saveTokenData(token: accessToken);
        return Result.success(userData);
      },
      failed: (message) => Result.failed(message),
    );
  }

  @override
  Future<Result<void>> register({
    required String username,
    required String password,
    required Gender gender,
    required Role role,
    required DateTime birthdate,
  }) async {
    return await _networkDataSource.register(
      username: username,
      password: password,
      gender: gender,
      role: role,
      birthdate: birthdate,
    );
  }

  @override
  Future<Result<GoogleAccountData>> getFirebaseUserData() async {
    return await _networkDataSource.getFirebaseUserData();
  }

  @override
  Future<Result<UserData>> firebaseLogin(String idToken) async {
    final result = await _networkDataSource.firebaseLogin(idToken);
    return result.when(
      success: (value) async {
        final userData = value.user.toEntity();
        final accessToken = value.token;
        await _localDataSource.saveTokenData(token: accessToken);
        return Result.success(userData);
      },
      failed: (message) => Result.failed(message),
    );
  }

  @override
  Future<Result<void>> logout(String userId) async {
    await _networkDataSource.logout(userId);
    await _localDataSource.clearAllData();
    return Result.success(null);
  }

  @override
  Future<Result<UserData>> localLogin() async {
    final accessToken = await _localDataSource.getAuthToken();
    return accessToken.when(
      success: (value) async {
        final result = await _networkDataSource.localLogin(value);
        return result.when(
          success: (value) async {
            final userData = value.user.toEntity();
            final accessToken = value.token;
            await _localDataSource.saveTokenData(token: accessToken);
            return Result.success(userData);
          },
          failed: (message) => Result.failed(message),
        );
      },
      failed: (message) => Result.failed(accessToken.errorMessage ?? ""),
    );
  }

  @override
  Future<Result<UserData>> verifyEmailUser({
    required String userId,
    required String idToken,
  }) async {
    return await _networkDataSource.verifyEmailUser(
      userId: userId,
      idToken: idToken,
    );
  }
}
