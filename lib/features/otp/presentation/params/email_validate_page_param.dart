import 'package:jastipin_yuk/features/otp/domain/entities/otp_email_request_data.dart';
import 'package:jastipin_yuk/features/otp/presentation/bloc/email_otp_bloc/email_otp_bloc.dart';

class EmailValidatePageParam {
  final OtpEmailRequestData data;
  final EmailOtpBloc bloc;

  const EmailValidatePageParam({required this.data, required this.bloc});
}
