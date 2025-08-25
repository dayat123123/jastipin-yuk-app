import 'package:jastipin_yuk/core/utils/result/result.dart';
import 'package:jastipin_yuk/features/authentication/data/data_sources/authentication_local_data_source.dart';
import 'package:jastipin_yuk/features/authentication/data/data_sources/authentication_network_data_source.dart';
import 'package:jastipin_yuk/features/authentication/data/models/access_token_model.dart';
import 'package:jastipin_yuk/features/authentication/data/models/google_account_model.dart';
import 'package:jastipin_yuk/features/authentication/data/models/user_data_model.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/access_token_data.dart';
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
    final result = await _networkDataSource.getFirebaseUserData();
    return result.when(
      success: (value) => Result.success(value.toEntity()),
      failed: (message) => Result.failed(message),
    );
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
  Future<Result<UserData>> localLogin(AccessTokenData tokens) async {
    final result = await _networkDataSource.localLogin(tokens.toModel());
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
  Future<Result<AccessTokenData>> getLocalAuthToken() async {
    final result = await _localDataSource.getAuthToken();
    return result.when(
      success: (value) => Result.success(value.toEntity()),
      failed: (message) => Result.failed(message),
    );
  }
}
