import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:jastipin_yuk/core/router/auth_listener.dart';
import 'package:jastipin_yuk/features/activity/presentation/pages/seller_activity_page.dart';
import 'package:jastipin_yuk/features/authentication/domain/enums/role.dart';
import 'package:jastipin_yuk/features/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:jastipin_yuk/features/authentication/presentation/pages/forget_password_page.dart';
import 'package:jastipin_yuk/features/authentication/presentation/pages/home_wrapper_page.dart';
import 'package:jastipin_yuk/features/authentication/presentation/pages/login_page.dart';
import 'package:jastipin_yuk/features/authentication/presentation/pages/register_page.dart';
import 'package:jastipin_yuk/features/chat/presentation/pages/chat_page.dart';
import 'package:jastipin_yuk/features/otp/presentation/pages/email_request_otp_page.dart';
import 'package:jastipin_yuk/features/home/presentation/pages/customer_home_page.dart';
import 'package:jastipin_yuk/features/otp/presentation/pages/email_validate_otp_page.dart';
import 'package:jastipin_yuk/features/otp/presentation/params/email_validate_page_param.dart';
import 'package:jastipin_yuk/features/otp/presentation/params/phone_number_validate_page_param.dart';
import 'package:jastipin_yuk/features/settings/presentation/pages/settings_page.dart';
import 'package:jastipin_yuk/features/splash/presentation/pages/landing_page.dart';
import 'package:jastipin_yuk/features/splash/presentation/pages/splash_page.dart';
import 'package:jastipin_yuk/features/activity/presentation/pages/customer_activity_page.dart';
import 'package:jastipin_yuk/features/store/presentation/pages/store_page.dart';
import 'package:jastipin_yuk/features/user_profile/presentation/pages/user_profile_page.dart';
import 'package:jastipin_yuk/features/account_linked/presentation/pages/customer_account_linked.dart';
import 'package:jastipin_yuk/features/otp/presentation/pages/phone_number_request_otp_page.dart';
import 'package:jastipin_yuk/features/otp/presentation/pages/phone_number_validate_otp_page.dart';
import 'package:jastipin_yuk/main.dart';

part 'route_path.dart';
part 'tabbar_item.dart';
part 'error_page.dart';

class GoRouteNavigator {
  const GoRouteNavigator._();

  static final List<TabbarItem> _customerTabs = [
    TabbarItem(
      label: "Home",
      activeIcon: FluentIcons.home_24_filled,
      inactiveIcon: FluentIcons.home_24_filled,
      page: CustomerHomePage(),
      navigatorKey: GlobalKey<NavigatorState>(debugLabel: 'shellCustomerHome'),
      routes: [
        GoRoute(
          path: RoutePath.customerHome,
          builder: (context, state) => CustomerHomePage(),
          routes: [],
        ),
      ],
    ),
    TabbarItem(
      label: "Activity",
      activeIcon: FluentIcons.history_24_filled,
      inactiveIcon: FluentIcons.history_24_filled,
      page: CustomerActivityPage(),
      navigatorKey: GlobalKey<NavigatorState>(
        debugLabel: 'shellCustomerActivity',
      ),
      routes: [
        GoRoute(
          path: RoutePath.customerActivity,
          builder: (context, state) => CustomerActivityPage(),
          routes: [
            GoRoute(
              path: "test",
              builder:
                  (context, state) =>
                      Scaffold(appBar: AppBar(title: Text("Test"))),
              routes: [],
            ),
          ],
        ),
      ],
    ),
    TabbarItem(
      label: "Chat",
      tabType: TabType.chat,
      activeIcon: FluentIcons.chat_12_filled,
      inactiveIcon: FluentIcons.chat_12_filled,
      page: ChatPage(),
      navigatorKey: GlobalKey<NavigatorState>(debugLabel: 'shellCustomerChat'),
      routes: [
        GoRoute(
          path: RoutePath.customerChat,
          builder: (context, state) => ChatPage(),
          routes: [],
        ),
      ],
    ),
    TabbarItem(
      label: "Settings",
      activeIcon: FluentIcons.settings_16_filled,
      inactiveIcon: FluentIcons.settings_16_filled,
      page: SettingsPage(),
      navigatorKey: GlobalKey<NavigatorState>(
        debugLabel: 'shellCustomerSettings',
      ),
      routes: [
        GoRoute(
          path: RoutePath.customerSettings,
          builder: (context, state) => SettingsPage(),
          routes: [],
        ),
      ],
    ),
  ];

  static final List<TabbarItem> _sellerTabs = [
    TabbarItem(
      label: "Store",
      activeIcon: FluentIcons.store_microsoft_16_filled,
      inactiveIcon: FluentIcons.store_microsoft_16_filled,
      page: StorePage(),
      navigatorKey: GlobalKey<NavigatorState>(debugLabel: 'shellSellerStore'),
      routes: [
        GoRoute(
          path: RoutePath.sellerStore,
          builder: (context, state) => StorePage(),
          routes: [],
        ),
      ],
    ),
    TabbarItem(
      label: "Activity",
      activeIcon: FluentIcons.history_24_filled,
      inactiveIcon: FluentIcons.history_24_filled,
      page: SellerActivityPage(),
      navigatorKey: GlobalKey<NavigatorState>(
        debugLabel: 'shellSellerActivity',
      ),
      routes: [
        GoRoute(
          path: RoutePath.sellerActivity,
          builder: (context, state) => SellerActivityPage(),
        ),
      ],
    ),

    TabbarItem(
      label: "Chat",
      tabType: TabType.chat,
      activeIcon: FluentIcons.chat_12_filled,
      inactiveIcon: FluentIcons.chat_12_filled,
      page: ChatPage(),
      navigatorKey: GlobalKey<NavigatorState>(debugLabel: 'shellSellerChat'),
      routes: [
        GoRoute(
          path: RoutePath.sellerChat,
          builder: (context, state) => ChatPage(),
          routes: [],
        ),
      ],
    ),

    TabbarItem(
      label: "Settings",
      activeIcon: FluentIcons.settings_16_filled,
      inactiveIcon: FluentIcons.settings_16_filled,
      page: SettingsPage(),
      navigatorKey: GlobalKey<NavigatorState>(
        debugLabel: 'shellSellerSettings',
      ),
      routes: [
        GoRoute(
          path: RoutePath.sellerSettings,
          builder: (context, state) => SettingsPage(),
          routes: [],
        ),
      ],
    ),
  ];

  static GoRouter router(AuthBloc authBloc) => GoRouter(
    initialLocation: RoutePath.root,
    navigatorKey: navigatorKey,
    debugLogDiagnostics: true,
    errorBuilder:
        (context, state) =>
            ErrorPage(errorMessage: "Not found route for ${state.path ?? ""}"),
    refreshListenable: AuthListener(authBloc),
    redirect: (context, state) {
      final authBloc = context.read<AuthBloc>();
      final userData = authBloc.userData;
      final path = state.fullPath;

      const publicPaths = {
        RoutePath.login,
        RoutePath.landing,
        RoutePath.register,
        RoutePath.forgetPassword,
      };

      final isAuthenticated =
          userData != null && authBloc.state is AuthAuthenticated;

      if (!isAuthenticated &&
          !publicPaths.contains(path) &&
          path != RoutePath.root) {
        return RoutePath.login;
      }

      if (isAuthenticated && publicPaths.contains(path)) {
        return RoutePath.getUserHomeRoute(userData.role);
      }

      return null;
    },
    routes: [
      GoRoute(path: RoutePath.root, builder: (_, __) => SplashPage()),
      GoRoute(path: RoutePath.landing, builder: (_, __) => LandingPage()),
      GoRoute(
        path: RoutePath.login,
        name: RoutePath.login,
        builder: (_, __) => LoginPage(),
      ),
      GoRoute(path: RoutePath.register, builder: (_, __) => RegisterPage()),
      GoRoute(
        path: RoutePath.forgetPassword,
        builder: (_, __) => ForgetPasswordPage(),
      ),
      GoRoute(
        path: RoutePath.customerAccountLinked,
        builder: (_, __) => CustomerAccountLinked(),
      ),
      GoRoute(
        path: RoutePath.otpEmailRequestOtp,
        builder: (context, state) {
          final param = state.extra is String ? state.extra as String : null;
          return EmailRequestOtpPage(email: param);
        },
      ),
      GoRoute(
        path: RoutePath.otpEmailValidateOtp,
        builder: (context, state) {
          final param =
              state.extra is EmailValidatePageParam
                  ? state.extra as EmailValidatePageParam
                  : null;
          if (param == null) {
            return ErrorPage(errorMessage: "Missing parameter for OTP Page");
          }
          return EmailValidateOtpPage(param: param);
        },
      ),
      GoRoute(
        path: RoutePath.otpPhoneNumberRequestOtp,
        builder: (context, state) {
          final param = state.extra is String ? state.extra as String : null;
          return PhoneNumberRequestOtpPage(phoneNumber: param);
        },
      ),
      GoRoute(
        path: RoutePath.otpPhoneNumberValidateOtp,
        builder: (context, state) {
          final param =
              state.extra is PhoneNumberValidatePageParam
                  ? state.extra as PhoneNumberValidatePageParam
                  : null;
          if (param == null) {
            return ErrorPage(errorMessage: "Missing parameter for OTP Page");
          }
          return PhoneNumberValidateOtpPage(param: param);
        },
      ),
      GoRoute(
        path: RoutePath.userProfile,
        builder: (context, state) {
          final param = state.extra is String ? state.extra as String : null;
          if (param == null) {
            return ErrorPage(
              errorMessage: "Missing parameter for User Profile Page",
            );
          }
          return UserProfilePage(userId: param);
        },
      ),

      /// Customer Tabs Wrapper
      StatefulShellRoute.indexedStack(
        builder:
            (context, state, navigationShell) => HomeWrapperPage(
              navigationShell: navigationShell,
              tablist: _customerTabs,
            ),
        branches:
            _customerTabs
                .map(
                  (item) => StatefulShellBranch(
                    navigatorKey: item.navigatorKey,
                    routes: item.routes,
                  ),
                )
                .toList(),
      ),

      /// Seller Tabs Wrapper
      StatefulShellRoute.indexedStack(
        builder:
            (context, state, navigationShell) => HomeWrapperPage(
              navigationShell: navigationShell,
              tablist: _sellerTabs,
            ),
        branches:
            _sellerTabs
                .map(
                  (item) => StatefulShellBranch(
                    navigatorKey: item.navigatorKey,
                    routes: item.routes,
                  ),
                )
                .toList(),
      ),
    ],
  );
}
