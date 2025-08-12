import 'package:jastipin_yuk/core/utils/result/result.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/user_data.dart';
import 'package:jastipin_yuk/features/otp/domain/entities/otp_email_request_data.dart';
import 'package:jastipin_yuk/features/otp/domain/entities/otp_phone_number_request_data.dart';

abstract class OtpRepository {
  Future<Result<OtpPhoneNumberRequestData>> requestOTPPhoneNumber({
    required String userId,
    required String phoneNumber,
  });
  Future<Result<UserData>> validateOTPPhoneNumber({
    required String userId,
    required String phoneNumber,
    required String otpCode,
  });

  Future<Result<OtpEmailRequestData>> requestOTPEmail({
    required String userId,
    required String email,
  });
  Future<Result<UserData>> validateOTPEmail({
    required String userId,
    required String email,
    required String otpCode,
  });
}
