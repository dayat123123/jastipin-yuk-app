import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:jastipin_yuk/features/authentication/domain/enums/gender.dart';
import 'package:jastipin_yuk/features/authentication/domain/enums/role.dart';
import 'package:jastipin_yuk/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:jastipin_yuk/features/authentication/domain/usecases/register/register_param.dart';
import 'package:jastipin_yuk/features/authentication/presentation/bloc/sign_up/sign_up_bloc.dart'; // Import SignupBloc
import 'package:jastipin_yuk/main.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';
import 'package:jastipin_yuk/shared/widgets/button/submit_button.dart';
import 'package:jastipin_yuk/shared/widgets/form_picker/gender_radio_group_field.dart';
import 'package:jastipin_yuk/shared/widgets/form_picker/role_radio_group_field.dart';
import 'package:jastipin_yuk/shared/widgets/loading/loading_indicator_widget.dart';
import 'package:jastipin_yuk/shared/widgets/scaffold/native_scaffold.dart';
import 'package:jastipin_yuk/shared/widgets/form_picker/date_form_picker_field.dart';
import 'package:jastipin_yuk/shared/widgets/form_picker/password_text_form_field.dart';
import 'package:jastipin_yuk/shared/widgets/form_picker/username_text_form_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late final SignUpBloc _signupBloc;
  bool _isAcceptTNC = false;
  Gender _selectedGender = Gender.male;
  Role _selectedRole = Role.customer;
  DateTime? _selectedDate;
  final _formKey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    _signupBloc = SignUpBloc(
      authRepository: injector.get<AuthenticationRepository>(),
    );
    super.initState();
  }

  void _onTapGender(Gender? value) {
    if (value != null) {
      setState(() {
        _selectedGender = value;
      });
    }
  }

  void _onTapRole(Role? value) {
    if (value != null) {
      setState(() {
        _selectedRole = value;
      });
    }
  }

  void _onTapBirthdate() async {
    final time = await context.showDatetimePicker(
      initialDateTime: _selectedDate,
      mode: PickerMode.date,
    );
    if (time != null) {
      setState(() {
        _selectedDate = time;
      });
    }
  }

  void _onTapSignUp() {
    if ((_formKey.currentState?.validate() ?? false)) {
      if (_selectedDate == null) {
        context.showDialog(
          title: "Attention!",
          subtitle: "Please select your date of birth.",
        );
        return;
      }
      if (!_isAcceptTNC) {
        context.showDialog(
          title: "Attention!",

          subtitle: "Please accept the Terms and Conditions to continue.",
        );
        return;
      }

      _signupBloc.add(
        SignUpEvent.register(
          param: RegisterParam(
            username: _userNameController.text,
            password: _passwordController.text,
            gender: _selectedGender,
            role: _selectedRole,
            birthdate: _selectedDate!,
          ),
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

  void _onTapTermAndCondition() {
    context.showDialog();
  }

  void _onTapCheckboxTNC(bool? value) {
    setState(() {
      _isAcceptTNC = !_isAcceptTNC;
    });
  }

  void _blocListener(BuildContext ctx, SignUpState state) {
    if (state is Failed) {
      context.showToast(
        status: ToastStatus.failed,
        title: "Register Failed",
        subtitle: state.message,
      );
    } else if (state is Success) {
      context.showToast(
        status: ToastStatus.success,
        title: "Register Successful",
        subtitle: "Account registered successfully",
      );
      if (context.canPop()) context.pop();
    }
  }

  @override
  void dispose() {
    _signupBloc.close();
    _userNameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final labelTextStyle = context.textStyle.callout.copyWith(
      fontWeight: FontWeight.w600,
    );

    return BlocProvider.value(
      value: _signupBloc,
      child: BlocConsumer<SignUpBloc, SignUpState>(
        bloc: _signupBloc,
        listener: _blocListener,
        builder: (context, state) {
          if (state is Loading) {
            return const Scaffold(
              body: Center(child: LoadingIndicatorWidget()),
            );
          }

          return NativeScaffold(
            padding: AppStyles.paddingHorizontalMediumWithBottom,
            body: [
              Text(
                "Register",
                style: context.textStyle.title.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                "Silahkan masukkan data diri anda",
                style: context.textStyle.subhead,
              ),
              const SizedBox(height: 24.0),
              Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Username", style: labelTextStyle),
                    const SizedBox(height: 16.0),
                    UsernameTextFormField(controller: _userNameController),
                    const SizedBox(height: 16.0),
                    Text("Password", style: labelTextStyle),
                    const SizedBox(height: 16.0),
                    PasswordTextFormField(controller: _passwordController),
                    const SizedBox(height: 16.0),
                    Text("Birthdate", style: labelTextStyle),
                    const SizedBox(height: 16.0),
                    DateFormPickerField(
                      selectedDate: _selectedDate,
                      onTap: _onTapBirthdate,
                    ),
                    const SizedBox(height: 16.0),
                    Text("Gender", style: labelTextStyle),
                    const SizedBox(height: 16.0),
                    GenderRadioGroupField(
                      selectedGender: _selectedGender,
                      onChanged: _onTapGender,
                    ),
                    const SizedBox(height: 16.0),
                    Text("Role", style: labelTextStyle),
                    const SizedBox(height: 16.0),
                    RoleRadioGroupField(
                      selectedRole: _selectedRole,
                      onChanged: _onTapRole,
                    ),
                    const SizedBox(height: 16.0),
                    CheckboxListTile(
                      contentPadding: EdgeInsets.zero,
                      value: _isAcceptTNC,
                      title: RichText(
                        text: TextSpan(
                          style: context.textStyle.subhead,
                          children: [
                            TextSpan(text: 'By signing up, I agree to the '),
                            TextSpan(
                              text: 'Terms and Conditions.',
                              style: TextStyle(
                                color: context.themeColors.info,
                                fontWeight: FontWeight.w500,
                              ),
                              recognizer:
                                  TapGestureRecognizer()
                                    ..onTap = _onTapTermAndCondition,
                            ),
                          ],
                        ),
                      ),
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged: _onTapCheckboxTNC,
                    ),
                    SizedBox(height: 16.0),
                    SubmitButton(label: 'Sign Up', onPressed: _onTapSignUp),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
