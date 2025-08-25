import 'package:intl/intl.dart';
import 'package:jastipin_yuk/core/network/firebase/firebase_service.dart';
import 'package:jastipin_yuk/core/network/restful_api/dio_client.dart';
import 'package:jastipin_yuk/core/utils/result/result.dart';
import 'package:jastipin_yuk/features/authentication/data/models/access_token_model.dart';
import 'package:jastipin_yuk/features/authentication/data/models/google_account_model.dart';
import 'package:jastipin_yuk/features/authentication/data/models/login_response_model.dart';
import 'package:jastipin_yuk/features/authentication/domain/enums/gender.dart';
import 'package:jastipin_yuk/features/authentication/domain/enums/role.dart';
import 'package:jastipin_yuk/shared/misc/api_paths.dart';

abstract class AuthenticationNetworkDataSource {
  Future<Result<LoginResponseModel>> basicLogin({
    required String userName,
    required String password,
  });

  Future<Result<LoginResponseModel>> localLogin(AccessTokenModel token);
  Future<Result<LoginResponseModel>> firebaseLogin(String idToken);
  Future<Result<void>> logout(String userId);

  Future<Result<void>> register({
    required String username,
    required String password,
    required Gender gender,
    required Role role,
    required DateTime birthdate,
  });

  Future<Result<GoogleAccountModel>> getFirebaseUserData();
}

class AuthenticationNetworkDataSourceImpl
    implements AuthenticationNetworkDataSource {
  final DioClient _dioClient;
  final FirebaseService _firebaseService;

  const AuthenticationNetworkDataSourceImpl(
    this._dioClient,
    this._firebaseService,
  );

  @override
  Future<Result<LoginResponseModel>> basicLogin({
    required String userName,
    required String password,
  }) async {
    try {
      final result = await _dioClient.post(
        ApiPaths.login,
        data: {"username": userName, "password": password},
      );
      return result.when(
        success: (value) async {
          final data = LoginResponseModel.fromJson(value);
          _dioClient.setToken(
            accessToken: data.token.accessToken,
            refreshToken: data.token.refreshToken,
          );
          return Result.success(data);
        },
        failed: (message) {
          return Result.failed(message);
        },
      );
    } catch (e) {
      return Result.failed('Unexpected error while basicLogin: $e');
    }
  }

  @override
  Future<Result<void>> logout(String userId) async {
    try {
      await _firebaseService.signOut();
      final result = await _dioClient.post(
        ApiPaths.logout,
        data: {"userId": userId},
      );
      return result.when(
        success: (value) async {
          return Result.success(null);
        },
        failed: (message) {
          return Result.failed(message);
        },
      );
    } catch (e) {
      return Result.failed('Unexpected error while logout: $e');
    }
  }

  @override
  Future<Result<LoginResponseModel>> localLogin(
    AccessTokenModel cacheToken,
  ) async {
    try {
      _dioClient.setToken(
        accessToken: cacheToken.accessToken,
        refreshToken: cacheToken.refreshToken,
      );
      final result = await _dioClient.post(ApiPaths.loginWithToken);
      return result.when(
        success: (value) async {
          final data = LoginResponseModel.fromJson(value);
          _dioClient.setToken(
            accessToken: data.token.accessToken,
            refreshToken: data.token.refreshToken,
          );
          return Result.success(data);
        },
        failed: (message) {
          return Result.failed(message);
        },
      );
    } catch (e) {
      return Result.failed('Unexpected error while cacheLogin: $e');
    }
  }

  @override
  Future<Result<void>> register({
    required String username,
    required String password,
    required Gender gender,
    required Role role,
    required DateTime birthdate,
  }) async {
    try {
      final formattedBirthdate = DateFormat('yyyy-MM-dd').format(birthdate);
      final result = await _dioClient.post(
        ApiPaths.register,
        data: {
          "username": username,
          "password": password,
          "role": role.value,
          "birthdate": formattedBirthdate,
          "gender": gender.value,
        },
      );
      return result.when(
        success: (value) async {
          final data = LoginResponseModel.fromJson(value);
          _dioClient.setToken(
            accessToken: data.token.accessToken,
            refreshToken: data.token.refreshToken,
          );
          return Result.success(null);
        },
        failed: (message) {
          return Result.failed(message);
        },
      );
    } catch (e) {
      return Result.failed('Unexpected error while register: $e');
    }
  }

  @override
  Future<Result<GoogleAccountModel>> getFirebaseUserData() async {
    try {
      final result = await _firebaseService.signIn();
      return result.when(
        success: (value) async {
          final user = value.user;
          final credentials = value.credential;
          if (user == null) {
            return Result.failed('Failed to get user data from Firebase.');
          }
          if (credentials == null) {
            return Result.failed('Failed to get credentials from Firebase.');
          }
          final idToken = await user.getIdToken() ?? "";
          final email = user.email ?? "";
          if (idToken.isEmpty || email.isEmpty) {
            return Result.failed("Invalid crendetials from google account");
          }
          return Result.success(
            GoogleAccountModel(
              email: email,
              emailVerified: user.emailVerified,
              photoURL: user.photoURL,
              uid: user.uid,
              displayName: user.displayName,
              idToken: idToken,
            ),
          );
        },
        failed: (message) => Result.failed(message),
      );
    } catch (e) {
      return Result.failed('Unexpected error while signInFirebase: $e');
    }
  }

  @override
  Future<Result<LoginResponseModel>> firebaseLogin(String idToken) async {
    try {
      final result = await _dioClient.post(
        ApiPaths.loginWithGoogleAccount,
        data: {"tokenId": idToken},
      );
      return result.when(
        success: (value) async {
          final data = LoginResponseModel.fromJson(value);
          _dioClient.setToken(
            accessToken: data.token.accessToken,
            refreshToken: data.token.refreshToken,
          );
          return Result.success(data);
        },
        failed: (message) {
          return Result.failed(message);
        },
      );
    } catch (e) {
      return Result.failed('Unexpected error while fetchGoogleSignIn: $e');
    }
  }
}
