import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:jastipin_yuk/core/router/goroute_navigator.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/user_data.dart';
import 'package:jastipin_yuk/features/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';
import 'package:jastipin_yuk/shared/widgets/container/listtile_group_widget.dart';

class CustomerAccountLinked extends StatelessWidget {
  const CustomerAccountLinked({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AuthBloc, AuthState, UserData?>(
      selector: (authState) {
        if (authState is AuthAuthenticated) {
          return authState.userData;
        }
        return null;
      },
      builder: (context, userData) {
        final isEmailVerified = userData?.emailVerified ?? false;
        final isPhoneVerified = userData?.phoneVerified ?? false;
        final phoneNumber = userData?.phoneNumber;
        final email = userData?.email;

        return Scaffold(
          appBar: AppBar(title: Text("Account Linked")),
          body: Padding(
            padding: AppStyles.paddingHorizontalMedium,

            child: Column(
              children: [
                ListTileGroupWidget(
                  listWidget: [
                    ItemGroup(
                      subtitle: email,
                      onTap:
                          isEmailVerified
                              ? null
                              : () {
                                _onTapVerifiedEmail(context, email);
                              },
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
                      subtitle: phoneNumber,
                      onTap:
                          isPhoneVerified
                              ? null
                              : () {
                                _onTapVerifiedPhoneNumber(context, phoneNumber);
                              },
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
            ),
          ),
        );
      },
    );
  }

  void _onTapVerifiedEmail(BuildContext context, String? email) {
    context.push(RoutePath.otpEmailRequestOtp, extra: email);
  }

  void _onTapVerifiedPhoneNumber(BuildContext context, String? phoneNumber) {
    context.push(RoutePath.otpPhoneNumberRequestOtp, extra: phoneNumber);
  }
}
