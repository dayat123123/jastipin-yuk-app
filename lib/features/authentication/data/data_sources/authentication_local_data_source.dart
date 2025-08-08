import 'package:jastipin_yuk/core/local_storage/local_storage.dart';
import 'package:jastipin_yuk/core/utils/result/result.dart';
import 'package:jastipin_yuk/features/authentication/data/models/access_token_model.dart';
import 'package:jastipin_yuk/shared/misc/local_storage_keys.dart';

abstract class AuthenticationLocalDataSource {
  Future<Result<void>> saveTokenData({required AccessTokenModel token});

  Future<Result<AccessTokenModel>> getAuthToken();

  Future<Result<void>> clearAllData();
}

class AuthenticationLocalDataSourceImpl
    implements AuthenticationLocalDataSource {
  final LocalStorage _localStorage;
  final _userDataKey = LocalStorageKeys.userDataKey;
  final _authTokenKey = LocalStorageKeys.authTokenKey;

  const AuthenticationLocalDataSourceImpl(this._localStorage);

  @override
  Future<Result<void>> clearAllData() async {
    try {
      await _localStorage.deleteData(_userDataKey);
      await _localStorage.deleteData(_authTokenKey);
      return Result.success(null);
    } catch (e) {
      return Result.failed('Unexpected error while clearing data: $e');
    }
  }

  @override
  Future<Result<AccessTokenModel>> getAuthToken() async {
    try {
      final authToken = await _localStorage.read(_authTokenKey);
      if (authToken == null) {
        return Result.failed('Auth token not found.');
      }
      return Result.success(AccessTokenModel.fromJson(authToken));
    } catch (e) {
      return Result.failed('Unexpected error while getting auth token: $e');
    }
  }

  @override
  Future<Result<void>> saveTokenData({required AccessTokenModel token}) async {
    try {
      await _localStorage.write(_authTokenKey, token.toJson());
      return Result.success(null);
    } catch (e) {
      return Result.failed('Unexpected error while save token data: $e');
    }
  }
}
