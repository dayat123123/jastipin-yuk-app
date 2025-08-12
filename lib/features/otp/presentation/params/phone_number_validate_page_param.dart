import 'package:jastipin_yuk/features/otp/domain/entities/otp_phone_number_request_data.dart';
import 'package:jastipin_yuk/features/otp/presentation/bloc/phone_number_otp_bloc/phone_number_otp_bloc.dart';

class PhoneNumberValidatePageParam {
  final OtpPhoneNumberRequestData data;
  final PhoneNumberOtpBloc bloc;

  const PhoneNumberValidatePageParam({required this.data, required this.bloc});
}
