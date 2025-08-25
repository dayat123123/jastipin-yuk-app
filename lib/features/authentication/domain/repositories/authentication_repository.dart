import 'package:jastipin_yuk/core/utils/result/result.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/access_token_data.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/google_account_data.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/user_data.dart';
import 'package:jastipin_yuk/features/authentication/domain/enums/gender.dart';
import 'package:jastipin_yuk/features/authentication/domain/enums/role.dart';

abstract class AuthenticationRepository {
  Future<Result<UserData>> localLogin(AccessTokenData tokens);
  Future<Result<UserData>> basicLogin({
    required String userName,
    required String password,
  });

  Future<Result<void>> logout(String userId);
  Future<Result<UserData>> firebaseLogin(String idToken);

  Future<Result<void>> register({
    required String username,
    required String password,
    required Gender gender,
    required Role role,
    required DateTime birthdate,
  });

  Future<Result<GoogleAccountData>> getFirebaseUserData();

  Future<Result<AccessTokenData>> getLocalAuthToken();
}
