import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:jastipin_yuk/features/otp/presentation/bloc/email_otp_bloc/email_otp_bloc.dart';
import 'package:jastipin_yuk/features/otp/presentation/bloc/phone_number_otp_bloc/phone_number_otp_bloc.dart';
import 'package:jastipin_yuk/features/otp/presentation/params/email_validate_page_param.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';
import 'package:jastipin_yuk/shared/misc/global_variables.dart';
import 'package:jastipin_yuk/shared/widgets/otp/otp_input_boxes_widget.dart';

class EmailValidateOtpPage extends StatefulWidget {
  final EmailValidatePageParam param;
  const EmailValidateOtpPage({super.key, required this.param});

  @override
  State<EmailValidateOtpPage> createState() => _EmailValidateOtpPageState();
}

class _EmailValidateOtpPageState extends State<EmailValidateOtpPage> {
  late final EmailOtpBloc _otpBloc;
  @override
  void initState() {
    _otpBloc = widget.param.bloc;
    super.initState();
  }

  void _onOTPDone(String value) {
    _otpBloc.add(
      EmailOtpEvent.validateOTP(email: widget.param.data.email, otpCode: value),
    );
  }

  void _blocListener(BuildContext ctx, EmailOtpState state) {
    if (state is EmailOtpStateFailedValidate) {
      context.showToast(
        status: ToastStatus.failed,
        title: "Validate OTP Failed",
        subtitle: state.message,
      );
    } else if (state is EmailOtpStateSuccessValidate) {
      context.showToast(
        status: ToastStatus.success,
        title: "Validate Success",
        subtitle: "Your account has been linked to email",
      );

      while (context.canPop()) {
        context.pop();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _otpBloc,
      child: Scaffold(
        appBar: AppBar(title: Text("OTP Confirmation")),
        body: BlocConsumer<EmailOtpBloc, EmailOtpState>(
          listener: _blocListener,
          builder: (context, state) {
            return Padding(
              padding: AppStyles.paddingHorizontalMediumWithBottom,
              child: Column(
                children: [
                  SizedBox(height: 32),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: context.textStyle.body,
                      text: "Enter the code sent to\n",
                      children: [
                        TextSpan(
                          style: context.textStyle.body.copyWith(
                            color: context.themeColors.info,
                          ),
                          text: widget.param.data.email,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 32),
                  Spacer(),
                  OtpInputBoxesWidget(
                    length: GlobalVariables.maxOTPLength,
                    onDone: _onOTPDone,
                    isLoading: state is PhoneNumberOtpStateLoading,
                  ),
                  SizedBox(height: 32),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
