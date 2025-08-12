import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:jastipin_yuk/core/router/goroute_navigator.dart';
import 'package:jastipin_yuk/features/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:jastipin_yuk/features/otp/domain/repositories/otp_repository.dart';
import 'package:jastipin_yuk/features/otp/presentation/bloc/phone_number_otp_bloc/phone_number_otp_bloc.dart';
import 'package:jastipin_yuk/features/otp/presentation/params/phone_number_validate_page_param.dart';
import 'package:jastipin_yuk/main.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';
import 'package:jastipin_yuk/shared/extensions/text_editing_controller_extension.dart';
import 'package:jastipin_yuk/shared/misc/file_paths.dart';
import 'package:jastipin_yuk/shared/widgets/button/submit_button.dart';
import 'package:jastipin_yuk/shared/widgets/scaffold/native_scaffold.dart';
import 'package:jastipin_yuk/shared/widgets/text_form_field/phone_number_text_form_field.dart';

class PhoneNumberRequestOtpPage extends StatefulWidget {
  final String? phoneNumber;
  const PhoneNumberRequestOtpPage({super.key, this.phoneNumber});

  @override
  State<PhoneNumberRequestOtpPage> createState() =>
      _PhoneNumberRequestOtpPageState();
}

class _PhoneNumberRequestOtpPageState extends State<PhoneNumberRequestOtpPage> {
  late final TextEditingController _phoneNumberController;
  late final PhoneNumberOtpBloc _otpBloc;
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    _otpBloc = PhoneNumberOtpBloc(
      otpRepository: injector.get<OtpRepository>(),
      authBloc: context.read<AuthBloc>(),
    );
    _phoneNumberController = TextEditingController(text: widget.phoneNumber);
    super.initState();
  }

  void _onTapSubmit() async {
    if (_formKey.currentState?.validate() ?? false) {
      _otpBloc.add(
        PhoneNumberOtpEvent.requestOTP(
          phoneNumber: _phoneNumberController.cleanNumberString,
        ),
      );
    }
  }

  void _blocListener(BuildContext ctx, PhoneNumberOtpState state) {
    if (state is PhoneNumberOtpStateFailedRequest) {
      context.showToast(
        status: ToastStatus.failed,
        title: "Request OTP Failed",
        subtitle: state.message,
      );
    } else if (state is PhoneNumberOtpStateSuccessRequest) {
      context.push(
        RoutePath.otpPhoneNumberValidateOtp,
        extra: PhoneNumberValidatePageParam(data: state.data, bloc: _otpBloc),
      );
    }
  }

  @override
  void dispose() {
    _otpBloc.close();
    _phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _otpBloc,
      child: BlocConsumer<PhoneNumberOtpBloc, PhoneNumberOtpState>(
        listener: _blocListener,
        builder: (context, state) {
          return NativeScaffold(
            title: Text("Verify Phone Number"),
            padding: AppStyles.paddingHorizontalMediumWithBottom,
            body: [
              SvgPicture.asset(
                colorFilter: ColorFilter.mode(
                  context.themeColors.primary,
                  BlendMode.srcIn,
                ),
                height: 250,
                width: 250,
                FilePaths.otpPhoneSvg,
              ),
              const SizedBox(height: 24.0),
              Text(
                "You will receive 6 digits\npin to validate OTP",
                textAlign: TextAlign.center,
                style: context.textStyle.body,
              ),
              const SizedBox(height: 24.0),
              Text(
                "Enter your phone number",
                textAlign: TextAlign.left,
                style: context.textStyle.callout,
              ),
              const SizedBox(height: 16.0),
              Form(
                key: _formKey,
                child: PhoneNumberTextFormField(
                  controller: _phoneNumberController,
                ),
              ),
              const SizedBox(height: 24.0),
              SubmitButton(
                onPressed: _onTapSubmit,
                isLoading: state is PhoneNumberOtpStateLoading,
              ),
            ],
          );
        },
      ),
    );
  }
}
