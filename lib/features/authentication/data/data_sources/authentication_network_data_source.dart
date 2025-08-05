import 'package:intl/intl.dart';
import 'package:jastipin_yuk/core/network/firebase/firebase_service.dart';
import 'package:jastipin_yuk/core/network/restful/dio_client.dart';
import 'package:jastipin_yuk/core/utils/result/result.dart';
import 'package:jastipin_yuk/features/authentication/data/models/login_response_model.dart';
import 'package:jastipin_yuk/features/authentication/data/models/user_data_model.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/google_account_data.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/user_data.dart';
import 'package:jastipin_yuk/features/authentication/domain/enums/gender.dart';
import 'package:jastipin_yuk/features/authentication/domain/enums/role.dart';
import 'package:jastipin_yuk/shared/misc/api_paths.dart';

abstract class AuthenticationNetworkDataSource {
  Future<Result<UserData>> basicLogin({
    required String userName,
    required String password,
  });

  Future<Result<UserDataModel>> cacheLogin(String cacheToken);
  Future<Result<UserData>> firebaseLogin(String idToken);
  Future<Result<void>> logout(String userId);

  Future<Result<UserData>> register({
    required String username,
    required String password,
    required Gender gender,
    required Role role,
    required DateTime birthdate,
  });

  Future<Result<GoogleAccountData>> getFirebaseUserData();
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
  Future<Result<UserData>> basicLogin({
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
            accessToken: data.accessToken,
            refreshToken: data.refreshToken,
          );
          return Result.success(data.user.toEntity());
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
  Future<Result<void>> logout(String userName) async {
    try {
      await _firebaseService.signOut();
      return Result.success(null);
    } catch (e) {
      return Result.failed('Unexpected error while logout: $e');
    }
  }

  @override
  Future<Result<UserDataModel>> cacheLogin(String cacheToken) async {
    // TODO: implement cacheLogin
    throw UnimplementedError();
  }

  @override
  Future<Result<UserData>> register({
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
            accessToken: data.accessToken,
            refreshToken: data.refreshToken,
          );
          return Result.success(data.user.toEntity());
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
  Future<Result<GoogleAccountData>> getFirebaseUserData() async {
    try {
      final result = await _firebaseService.signInWithGoogle();
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
          final idToken = await user.getIdToken();

          return Result.success(
            GoogleAccountData(
              email: user.email,
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
  Future<Result<UserData>> firebaseLogin(String idToken) async {
    try {
      final result = await _dioClient.post(
        ApiPaths.loginWithGoogleAccount,
        data: {"tokenId": idToken},
      );
      return result.when(
        success: (value) async {
          final data = LoginResponseModel.fromJson(value);
          _dioClient.setToken(
            accessToken: data.accessToken,
            refreshToken: data.refreshToken,
          );
          return Result.success(data.user.toEntity());
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
