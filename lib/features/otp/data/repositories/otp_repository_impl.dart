import 'package:jastipin_yuk/core/utils/result/result.dart';
import 'package:jastipin_yuk/features/authentication/data/models/user_data_model.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/user_data.dart';
import 'package:jastipin_yuk/features/otp/data/data_sources/otp_network_data_source.dart';
import 'package:jastipin_yuk/features/otp/data/models/otp_email_request_model.dart';
import 'package:jastipin_yuk/features/otp/data/models/otp_phone_number_request_model.dart';
import 'package:jastipin_yuk/features/otp/domain/entities/otp_email_request_data.dart';
import 'package:jastipin_yuk/features/otp/domain/entities/otp_phone_number_request_data.dart';
import 'package:jastipin_yuk/features/otp/domain/repositories/otp_repository.dart';

class OtpRepositoryImpl implements OtpRepository {
  final OtpNetworkDataSource _networkDataSource;

  const OtpRepositoryImpl(this._networkDataSource);
  @override
  Future<Result<OtpPhoneNumberRequestData>> requestOTPPhoneNumber({
    required String userId,
    required String phoneNumber,
  }) async {
    final result = await _networkDataSource.requestOTPPhoneNumber(
      userId: userId,
      phoneNumber: phoneNumber,
    );
    return result.when(
      success: (value) => Result.success(value.toEntity()),
      failed: (message) => Result.failed(message),
    );
  }

  @override
  Future<Result<UserData>> validateOTPPhoneNumber({
    required String userId,
    required String phoneNumber,
    required String otpCode,
  }) async {
    final result = await _networkDataSource.validateOTPPhoneNumber(
      userId: userId,
      phoneNumber: phoneNumber,
      otpCode: otpCode,
    );
    return result.when(
      success: (value) => Result.success(value.toEntity()),
      failed: (message) => Result.failed(message),
    );
  }

  @override
  Future<Result<OtpEmailRequestData>> requestOTPEmail({
    required String userId,
    required String email,
  }) async {
    final result = await _networkDataSource.requestOTPEmail(
      userId: userId,
      email: email,
    );
    return result.when(
      success: (value) => Result.success(value.toEntity()),
      failed: (message) => Result.failed(message),
    );
  }

  @override
  Future<Result<UserData>> validateOTPEmail({
    required String userId,
    required String email,
    required String otpCode,
  }) async {
    final result = await _networkDataSource.validateOTPEmail(
      userId: userId,
      email: email,
      otpCode: otpCode,
    );
    return result.when(
      success: (value) => Result.success(value.toEntity()),
      failed: (message) => Result.failed(message),
    );
  }
}
