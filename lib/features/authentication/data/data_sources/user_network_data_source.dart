import 'package:intl/intl.dart';
import 'package:jastipin_yuk/core/network/restful/dio_client.dart';
import 'package:jastipin_yuk/core/utils/result/result.dart';
import 'package:jastipin_yuk/features/authentication/data/models/update_user_profile_response_model.dart';
import 'package:jastipin_yuk/features/authentication/data/models/update_user_response_model.dart';
import 'package:jastipin_yuk/features/authentication/data/models/user_data_model.dart';
import 'package:jastipin_yuk/features/authentication/data/models/user_profile_model.dart';
import 'package:jastipin_yuk/features/authentication/data/models/user_profile_response_model.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/update_user_profile.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/user_data.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/user_profile.dart';
import 'package:jastipin_yuk/features/authentication/domain/enums/gender.dart';
import 'package:jastipin_yuk/shared/misc/api_paths.dart';

abstract class UserNetworkDataSource {
  Future<Result<UserProfile>> getUserProfile({required String userID});
  Future<Result<UpdateUserProfile>> updateUserProfile({
    required String userId,
    required String userName,
    required String email,
    required String phoneNumber,
    required Gender gender,
    required DateTime birthdate,
  });
  Future<Result<UserData>> validateEmailWithGoogleAccount({
    required String userId,
    required String idToken,
  });
}

class UserNetworkDataSourceImpl implements UserNetworkDataSource {
  final DioClient _dioClient;

  const UserNetworkDataSourceImpl(this._dioClient);

  @override
  Future<Result<UserProfile>> getUserProfile({required String userID}) async {
    try {
      final result = await _dioClient.get(
        ApiPaths.getUserProfile,
        queryParams: {"userId": userID},
      );
      return result.when(
        success: (value) async {
          final data = UserProfileResponseModel.fromJson(value);
          return Result.success(data.profile.toEntity());
        },
        failed: (message) {
          return Result.failed(message);
        },
      );
    } catch (e) {
      return Result.failed('Unexpected error while getUserProfile: $e');
    }
  }

  @override
  Future<Result<UpdateUserProfile>> updateUserProfile({
    required String userId,
    required String userName,
    required String email,
    required String phoneNumber,
    required Gender gender,
    required DateTime birthdate,
  }) async {
    try {
      final formattedBirthdate = DateFormat('yyyy-MM-dd').format(birthdate);
      final result = await _dioClient.put(
        ApiPaths.updateUserProfile,
        data: {
          "userId": userId,
          "username": userName,
          "email": email,
          "phoneNumber": phoneNumber,
          "gender": gender.value,
          "birthdate": formattedBirthdate,
        },
      );
      return result.when(
        success: (value) async {
          final data = UpdateUserProfileResponseModel.fromJson(value);
          return Result.success(data.toEntity());
        },
        failed: (message) {
          return Result.failed(message);
        },
      );
    } catch (e) {
      return Result.failed('Unexpected error while updateUserProfile: $e');
    }
  }

  @override
  Future<Result<UserData>> validateEmailWithGoogleAccount({
    required String userId,
    required String idToken,
  }) async {
    try {
      final result = await _dioClient.post(
        ApiPaths.validateEmailWithGoogleAccount,
        data: {"userId": userId, "idToken": idToken},
      );
      return result.when(
        success: (value) async {
          final data = UpdateUserResponseModel.fromJson(value);
          return Result.success(data.user.toEntity());
        },
        failed: (message) {
          return Result.failed(message);
        },
      );
    } catch (e) {
      return Result.failed(
        'Unexpected error while validateEmailWithGoogleAccount: $e',
      );
    }
  }
}
