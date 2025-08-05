import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:jastipin_yuk/core/router/goroute_navigator.dart';
import 'package:jastipin_yuk/features/authentication/domain/enums/role.dart';
import 'package:jastipin_yuk/features/authentication/domain/usecases/basic_login/basic_login_param.dart';
import 'package:jastipin_yuk/features/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:jastipin_yuk/main.dart';
import 'package:jastipin_yuk/shared/widgets/button/submit_button.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';
import 'package:jastipin_yuk/shared/misc/file_paths.dart';
import 'package:jastipin_yuk/shared/widgets/divider/dashed_text_divider.dart';
import 'package:jastipin_yuk/shared/widgets/text_form_field/password_text_form_field.dart';
import 'package:jastipin_yuk/shared/widgets/text_form_field/username_text_form_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _authBloc = injector.get<AuthBloc>();
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
      _authBloc.add(
        AuthEvent.login(
          param: BasicLoginParam(username: userName, password: password),
        ),
      );
    }
  }

  void _onTapSignInWithGoogle() async {
    _authBloc.add(AuthEvent.firebaseLogin());
  }

  void _onTapSignUp() {
    context.push(RoutePath.register);
  }

  void _onTapForgetPassword() {
    context.push(RoutePath.forgetPassword);
  }

  void _blocListener(BuildContext ctx, AuthState state) {
    if (state is Failed) {
      context.showToast(
        status: ToastStatus.failed,
        context: context,
        title: "Login Failed",
        subtitle: state.message,
      );
    } else if (state is Authenticated) {
      context.showToast(
        status: ToastStatus.success,
        context: context,
        title: "Login Successful",
        subtitle: "Welcome ${state.userData.username}",
      );

      final userData = state.userData;
      switch (userData.role) {
        case Role.customer:
        case Role.guest:
          context.go(RoutePath.customerHome);
          break;
        case Role.jastiper:
          context.go(RoutePath.jastiperHome);
          break;
        default:
      }
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
      bloc: _authBloc,
      listener: _blocListener,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          resizeToAvoidBottomInset: true,
          body: Padding(
            padding: AppStyles.paddingAllMedium,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Sign In to Your Account", style: context.textStyle.title),
                const Divider(),
                const SizedBox(height: 8.0),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Username", style: labelTextStyle),
                      const SizedBox(height: 8.0),
                      UsernameTextFormField(
                        controller: _userNameController,
                        hinttext: "Enter your username",
                      ),
                      const SizedBox(height: 16.0),
                      Text("Password", style: labelTextStyle),
                      const SizedBox(height: 8.0),
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
                        isLoading: state is Loading,
                      ),
                      const SizedBox(height: 16.0),
                      DashedTextDivider(text: "or sign in with"),
                      SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: _onTapSignInWithGoogle,
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(FilePaths.googleImg),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24.0),

                      Align(
                        alignment: Alignment.center,
                        child: RichText(
                          text: TextSpan(
                            style: context.textStyle.subhead,
                            text: "Don't have an account? ",
                            children: [
                              TextSpan(
                                style: context.textStyle.labelStyle.copyWith(
                                  color: context.themeColors.primary,
                                ),
                                text: "Sign Up",
                                recognizer:
                                    TapGestureRecognizer()
                                      ..onTap = _onTapSignUp,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
