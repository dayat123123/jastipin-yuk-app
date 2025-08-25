import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:jastipin_yuk/core/router/goroute_navigator.dart';
import 'package:jastipin_yuk/features/authentication/domain/usecases/basic_login/basic_login_param.dart';
import 'package:jastipin_yuk/features/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:jastipin_yuk/shared/widgets/button/submit_button.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';
import 'package:jastipin_yuk/shared/misc/file_paths.dart';
import 'package:jastipin_yuk/shared/widgets/divider/dashed_text_divider.dart';
import 'package:jastipin_yuk/shared/widgets/scaffold/native_scaffold.dart';
import 'package:jastipin_yuk/shared/widgets/form_picker/password_text_form_field.dart';
import 'package:jastipin_yuk/shared/widgets/form_picker/username_text_form_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  void _onTapSignIn() async {
    final userName = _userNameController.text;
    final password = _passwordController.text;
    if (_formKey.currentState?.validate() ?? false) {
      context.read<AuthBloc>().add(
        AuthEvent.login(
          param: BasicLoginParam(username: userName, password: password),
        ),
      );
    } else {
      context.showToast(
        title: "Attention",
        subtitle: "Please check the fields you have filled in",
        status: ToastStatus.warning,
        position: ToastPosition.bottom,
      );
    }
  }

  void _onTapSignInWithGoogle() async {
    context.read<AuthBloc>().add(AuthEvent.firebaseLogin());
  }

  void _onTapSignUp() {
    context.push(RoutePath.register);
  }

  void _onTapForgetPassword() {
    context.push(RoutePath.forgetPassword);
  }

  void _blocListener(BuildContext ctx, AuthState state) {
    if (state is AuthFailed) {
      context.showToast(
        status: ToastStatus.failed,
        title: "Login Failed",
        subtitle: state.message,
      );
    } else if (state is AuthAuthenticated) {
      context.showToast(
        status: ToastStatus.success,
        title: "Login Successful",
        subtitle: "Welcome ${state.userData.username}",
      );
    }
  }

  @override
  void dispose() {
    _userNameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final labelTextStyle = context.textStyle.labelStyle;
    return BlocConsumer<AuthBloc, AuthState>(
      bloc: context.read<AuthBloc>(),
      listener: _blocListener,
      builder: (context, state) {
        return NativeScaffold(
          padding: AppStyles.paddingHorizontalMediumWithBottom,
          body: [
            Text(
              "Login",
              style: context.textStyle.title.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              "Silahkan login untuk masuk ke aplikasi",
              style: context.textStyle.subhead,
            ),
            const SizedBox(height: 24.0),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Username", style: labelTextStyle),
                  const SizedBox(height: 16.0),
                  UsernameTextFormField(
                    controller: _userNameController,
                    hinttext: "Enter your username",
                  ),
                  const SizedBox(height: 24.0),
                  Text("Password", style: labelTextStyle),
                  const SizedBox(height: 16.0),
                  PasswordTextFormField(controller: _passwordController),
                  const SizedBox(height: 8.0),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: _onTapForgetPassword,
                      child: Text("Forget Password?"),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  SubmitButton(
                    label: "Sign In",
                    onPressed: _onTapSignIn,
                    isLoading: state is AuthLoading,
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

                  Align(
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                        style: context.textStyle.subhead,
                        text: "Don't have an account?  ",
                        children: [
                          TextSpan(
                            style: context.textStyle.labelStyle.copyWith(
                              color: context.themeColors.primary,
                            ),
                            text: "Sign up",
                            recognizer:
                                TapGestureRecognizer()..onTap = _onTapSignUp,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
