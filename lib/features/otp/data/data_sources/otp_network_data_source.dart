import 'package:jastipin_yuk/core/network/restful_api/dio_client.dart';
import 'package:jastipin_yuk/core/utils/result/result.dart';
import 'package:jastipin_yuk/features/authentication/data/models/update_user_response_model.dart';
import 'package:jastipin_yuk/features/authentication/data/models/user_data_model.dart';
import 'package:jastipin_yuk/features/otp/data/models/otp_email_request_model.dart';
import 'package:jastipin_yuk/features/otp/data/models/otp_phone_number_request_model.dart';
import 'package:jastipin_yuk/shared/misc/api_paths.dart';

abstract class OtpNetworkDataSource {
  Future<Result<OtpPhoneNumberRequestModel>> requestOTPPhoneNumber({
    required String userId,
    required String phoneNumber,
  });
  Future<Result<UserDataModel>> validateOTPPhoneNumber({
    required String userId,
    required String phoneNumber,
    required String otpCode,
  });

  Future<Result<OtpEmailRequestModel>> requestOTPEmail({
    required String userId,
    required String email,
  });
  Future<Result<UserDataModel>> validateOTPEmail({
    required String userId,
    required String email,
    required String otpCode,
  });
}

class OtpNetworkDataSourceImpl implements OtpNetworkDataSource {
  final DioClient _dioClient;

  const OtpNetworkDataSourceImpl(this._dioClient);
  @override
  Future<Result<OtpPhoneNumberRequestModel>> requestOTPPhoneNumber({
    required String userId,
    required String phoneNumber,
  }) async {
    try {
      final result = await _dioClient.post(
        ApiPaths.requestOTPPhoneNumber,
        data: {"userId": userId, "phoneNumber": phoneNumber},
      );
      return result.when(
        success: (value) async {
          final data = OtpPhoneNumberRequestModel.fromJson(value);
          return Result.success(data);
        },
        failed: (message) {
          return Result.failed(message);
        },
      );
    } catch (e) {
      return Result.failed('Unexpected error while requestOTPPhoneNumber: $e');
    }
  }

  @override
  Future<Result<UserDataModel>> validateOTPPhoneNumber({
    required String userId,
    required String phoneNumber,
    required String otpCode,
  }) async {
    try {
      final result = await _dioClient.post(
        ApiPaths.validateOTPPhoneNumber,
        data: {
          "userId": userId,
          "phoneNumber": phoneNumber,
          "otpCode": otpCode,
        },
      );
      return result.when(
        success: (value) async {
          final data = UpdateUserResponseModel.fromJson(value);
          return Result.success(data.user);
        },
        failed: (message) {
          return Result.failed(message);
        },
      );
    } catch (e) {
      return Result.failed('Unexpected error while validateOTPPhoneNumber: $e');
    }
  }

  @override
  Future<Result<OtpEmailRequestModel>> requestOTPEmail({
    required String userId,
    required String email,
  }) async {
    try {
      final result = await _dioClient.post(
        ApiPaths.requestOTPEmail,
        data: {"userId": userId, "email": email},
      );
      return result.when(
        success: (value) async {
          final data = OtpEmailRequestModel.fromJson(value);
          return Result.success(data);
        },
        failed: (message) {
          return Result.failed(message);
        },
      );
    } catch (e) {
      return Result.failed('Unexpected error while requestOTPEmail: $e');
    }
  }

  @override
  Future<Result<UserDataModel>> validateOTPEmail({
    required String userId,
    required String email,
    required String otpCode,
  }) async {
    try {
      final result = await _dioClient.post(
        ApiPaths.validateOTPEmail,
        data: {"userId": userId, "email": email, "otpCode": otpCode},
      );
      return result.when(
        success: (value) async {
          final data = UpdateUserResponseModel.fromJson(value);
          return Result.success(data.user);
        },
        failed: (message) {
          return Result.failed(message);
        },
      );
    } catch (e) {
      return Result.failed('Unexpected error while validateOTPEmail: $e');
    }
  }
}
