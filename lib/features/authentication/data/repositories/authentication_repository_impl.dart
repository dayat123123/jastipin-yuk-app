import 'package:jastipin_yuk/core/utils/result/result.dart';
import 'package:jastipin_yuk/features/authentication/data/data_sources/authentication_network_data_source.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/google_account_data.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/user_data.dart';
import 'package:jastipin_yuk/features/authentication/domain/enums/gender.dart';
import 'package:jastipin_yuk/features/authentication/domain/enums/role.dart';
import 'package:jastipin_yuk/features/authentication/domain/repositories/authentication_repository.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationNetworkDataSource _networkDataSource;

  const AuthenticationRepositoryImpl(this._networkDataSource);
  @override
  Future<Result<UserData>> basicLogin({
    required String userName,
    required String password,
  }) async {
    return await _networkDataSource.basicLogin(
      userName: userName,
      password: password,
    );
  }

  @override
  Future<Result<UserData>> register({
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
    return await _networkDataSource.firebaseLogin(idToken);
  }

  @override
  Future<Result<void>> logout(String userId) async {
    return await _networkDataSource.logout(userId);
  }
}
