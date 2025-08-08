import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:jastipin_yuk/core/router/goroute_navigator.dart';
import 'package:jastipin_yuk/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:jastipin_yuk/features/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:jastipin_yuk/features/verify_account/presentation/bloc/verify_account_bloc.dart';
import 'package:jastipin_yuk/main.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';
import 'package:jastipin_yuk/shared/widgets/container/listtile_group_widget.dart';
import 'package:jastipin_yuk/shared/widgets/loading/loading_indicator_widget.dart';
import 'package:jastipin_yuk/shared/widgets/scaffold/native_scaffold.dart';

class CustomerVerifyAccountPage extends StatefulWidget {
  const CustomerVerifyAccountPage({super.key});

  @override
  State<CustomerVerifyAccountPage> createState() =>
      _CustomerVerifyAccountPageState();
}

class _CustomerVerifyAccountPageState extends State<CustomerVerifyAccountPage> {
  late final VerifyAccountBloc _verifyAccountBloc;
  late final AuthBloc _authBloc;

  @override
  void initState() {
    super.initState();
    _authBloc = injector.get<AuthBloc>();
    _verifyAccountBloc = VerifyAccountBloc(
      authRepository: injector.get<AuthenticationRepository>(),
      authBloc: _authBloc,
    );
  }

  @override
  void dispose() {
    _verifyAccountBloc.close();
    super.dispose();
  }

  void _onTapVerifiedEmail() {
    _verifyAccountBloc.add(const VerifyAccountEvent.verifyEmail());
  }

  void _onTapVerifiedPhoneNumber() {
    context.push(RoutePath.otpPhoneNumberInput);
  }

  void _blocListener(BuildContext ctx, VerifyAccountState state) {
    if (state is VerifyAccountStateFailed) {
      context.showToast(
        status: ToastStatus.failed,
        title: "Register Failed",
        subtitle: state.message,
      );
    } else if (state is VerifyAccountStateSuccess) {
      context.showToast(
        status: ToastStatus.success,
        title: "Verify Successful",
        subtitle: "Account verified successfully",
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _verifyAccountBloc,
      child: BlocConsumer<VerifyAccountBloc, VerifyAccountState>(
        listener: _blocListener,
        builder: (context, state) {
          if (state is VerifyAccountStateLoading) {
            return const Scaffold(
              body: Center(child: LoadingIndicatorWidget()),
            );
          }

          return BlocSelector<AuthBloc, AuthState, (bool, bool)>(
            selector: (authState) {
              if (authState is Authenticated) {
                final userData = authState.userData;
                return (userData.emailVerified, userData.phoneVerified);
              }
              return (false, false);
            },
            builder: (context, authStatus) {
              final isEmailVerified = authStatus.$1;
              final isPhoneVerified = authStatus.$2;

              return NativeScaffold(
                padding: AppStyles.paddingHorizontalMediumWithBottom,
                title: const Text("Verify Account"),
                body: [
                  ListTileGroupWidget(
                    listWidget: [
                      ItemGroup(
                        onTap: isEmailVerified ? null : _onTapVerifiedEmail,
                        icon: const Icon(FluentIcons.mail_16_filled),
                        title:
                            isEmailVerified
                                ? "Email Verified"
                                : "Email Unverified",
                        trailing:
                            isEmailVerified
                                ? Icon(
                                  Icons.check_circle,
                                  color: context.themeColors.success,
                                )
                                : Icon(
                                  Icons.error,
                                  color: context.themeColors.failure,
                                ),
                      ),

                      ItemGroup(
                        onTap:
                            isPhoneVerified ? null : _onTapVerifiedPhoneNumber,
                        icon: const Icon(Icons.phone),
                        title:
                            isPhoneVerified
                                ? "Phone Number Verified"
                                : "Phone Number Unverified",
                        trailing:
                            isPhoneVerified
                                ? Icon(
                                  Icons.check_circle,
                                  color: context.themeColors.success,
                                )
                                : Icon(
                                  Icons.error,
                                  color: context.themeColors.failure,
                                ),
                      ),
                    ],
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
