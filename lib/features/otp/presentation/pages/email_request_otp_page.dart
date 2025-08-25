import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:jastipin_yuk/core/router/goroute_navigator.dart';
import 'package:jastipin_yuk/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:jastipin_yuk/features/authentication/domain/repositories/user_repository.dart';
import 'package:jastipin_yuk/features/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:jastipin_yuk/features/otp/domain/repositories/otp_repository.dart';
import 'package:jastipin_yuk/features/otp/presentation/bloc/email_otp_bloc/email_otp_bloc.dart';
import 'package:jastipin_yuk/features/otp/presentation/params/email_validate_page_param.dart';
import 'package:jastipin_yuk/main.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';
import 'package:jastipin_yuk/shared/misc/file_paths.dart';
import 'package:jastipin_yuk/shared/widgets/button/submit_button.dart';
import 'package:jastipin_yuk/shared/widgets/divider/dashed_text_divider.dart';
import 'package:jastipin_yuk/shared/widgets/scaffold/native_scaffold.dart';
import 'package:jastipin_yuk/shared/widgets/form_picker/email_text_form_field.dart';

class EmailRequestOtpPage extends StatefulWidget {
  final String? email;
  const EmailRequestOtpPage({super.key, this.email});

  @override
  State<EmailRequestOtpPage> createState() => _EmailRequestOtpPageState();
}

class _EmailRequestOtpPageState extends State<EmailRequestOtpPage> {
  late final EmailOtpBloc _otpBloc;
  late final TextEditingController _emailController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _otpBloc = EmailOtpBloc(
      otpRepository: injector.get<OtpRepository>(),
      userRepository: injector.get<UserRepository>(),
      authRepository: injector.get<AuthenticationRepository>(),
      authBloc: context.read<AuthBloc>(),
    );
    _emailController = TextEditingController(text: widget.email);
    super.initState();
  }

  void _onTapSubmit() {
    if (_formKey.currentState?.validate() ?? false) {
      _otpBloc.add(EmailOtpEvent.requestOTP(email: _emailController.text));
    }
  }

  void _onTapSignInWithGoogle() {
    _otpBloc.add(EmailOtpEvent.validateWithGoogle());
  }

  void _blocListener(BuildContext ctx, EmailOtpState state) {
    if (state is EmailOtpStateFailedRequest) {
      context.showToast(
        status: ToastStatus.failed,
        title: "Request OTP Failed",
        subtitle: state.message,
      );
    } else if (state is EmailOtpStateFailedValidateWithGoogleAccount) {
      context.showToast(
        status: ToastStatus.failed,
        title: "Validate Email Failed",
        subtitle: state.message,
      );
    } else if (state is EmailOtpStateSuccessRequest) {
      context.push(
        RoutePath.otpEmailValidateOtp,
        extra: EmailValidatePageParam(data: state.data, bloc: _otpBloc),
      );
    } else if (state is EmailOtpStateSuccessWithGoogleAccount) {
      context.showToast(
        status: ToastStatus.success,
        title: "Verify Email Successful",
        subtitle: "Email Account verified successfully",
      );
      while (context.canPop()) {
        context.pop();
      }
    }
  }

  @override
  void dispose() {
    _otpBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _otpBloc,
      child: BlocConsumer<EmailOtpBloc, EmailOtpState>(
        listener: _blocListener,
        builder: (context, state) {
          return NativeScaffold(
            title: Text("Verify Email"),
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
                "You will receive 6 digits\npin to validate OTP on your email",
                textAlign: TextAlign.center,
                style: context.textStyle.body,
              ),
              const SizedBox(height: 24.0),
              Text(
                "Enter your email",
                textAlign: TextAlign.left,
                style: context.textStyle.callout,
              ),
              const SizedBox(height: 16.0),
              Form(
                key: _formKey,
                child: EmailTextFormField(controller: _emailController),
              ),
              const SizedBox(height: 24.0),
              SubmitButton(
                onPressed: _onTapSubmit,
                isLoading: state is EmailOtpStateLoading,
              ),
              const SizedBox(height: 16.0),
              DashedTextDivider(text: "or sign in with"),
              SizedBox(height: 16.0),
              SubmitButton(
                bgColor: context.themeColors.cardBackground,
                onPressed: _onTapSignInWithGoogle,
                labelWidget: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 28,
                      width: 28,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(FilePaths.googleImg),
                        ),
                      ),
                    ),
                    SizedBox(width: 16.0),
                    Text(
                      "Continue with Google",
                      style: context.textStyle.labelStyle,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.0),
            ],
          );
        },
      ),
    );
  }
}
