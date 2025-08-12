import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jastipin_yuk/features/activity/presentation/pages/jastiper_activity_page.dart';
import 'package:jastipin_yuk/features/authentication/domain/enums/role.dart';
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
      isChatTab: true,
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

  static final List<TabbarItem> _jastiperTabs = [
    TabbarItem(
      label: "Store",
      activeIcon: FluentIcons.store_microsoft_16_filled,
      inactiveIcon: FluentIcons.store_microsoft_16_filled,
      page: StorePage(),
      navigatorKey: GlobalKey<NavigatorState>(debugLabel: 'shellJastiperStore'),
      routes: [
        GoRoute(
          path: RoutePath.jastiperStore,
          builder: (context, state) => StorePage(),
          routes: [],
        ),
      ],
    ),
    TabbarItem(
      label: "Activity",
      activeIcon: FluentIcons.history_24_filled,
      inactiveIcon: FluentIcons.history_24_filled,
      page: JastiperActivityPage(),
      navigatorKey: GlobalKey<NavigatorState>(
        debugLabel: 'shellJastiperActivity',
      ),
      routes: [
        GoRoute(
          path: RoutePath.jastiperActivity,
          builder: (context, state) => JastiperActivityPage(),
        ),
      ],
    ),

    TabbarItem(
      label: "Chat",
      isChatTab: true,
      activeIcon: FluentIcons.chat_12_filled,
      inactiveIcon: FluentIcons.chat_12_filled,
      page: ChatPage(),
      navigatorKey: GlobalKey<NavigatorState>(debugLabel: 'shellJastiperChat'),
      routes: [
        GoRoute(
          path: RoutePath.jastiperChat,
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
        debugLabel: 'shellJastiperSettings',
      ),
      routes: [
        GoRoute(
          path: RoutePath.jastiperSettings,
          builder: (context, state) => SettingsPage(),
          routes: [],
        ),
      ],
    ),
  ];

  static final GoRouter router = GoRouter(
    initialLocation: RoutePath.root,
    navigatorKey: navigatorKey,
    errorBuilder:
        (context, state) =>
            ErrorPage(errorMessage: "Not found route ${state.path ?? ""}"),
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: RoutePath.root,
        builder: (BuildContext context, GoRouterState state) => SplashPage(),
      ),
      GoRoute(
        path: RoutePath.landing,
        builder: (BuildContext context, GoRouterState state) => LandingPage(),
      ),
      GoRoute(
        path: RoutePath.login,
        builder: (BuildContext context, GoRouterState state) => LoginPage(),
      ),
      GoRoute(
        path: RoutePath.register,
        builder: (BuildContext context, GoRouterState state) => RegisterPage(),
      ),
      GoRoute(
        path: RoutePath.forgetPassword,
        builder:
            (BuildContext context, GoRouterState state) => ForgetPasswordPage(),
      ),
      GoRoute(
        path: RoutePath.customerAccountLinked,
        builder: (context, state) => CustomerAccountLinked(),
        routes: [],
      ),
      GoRoute(
        path: RoutePath.otpEmailRequestOtp,
        builder: (context, state) {
          final param =
              (state.extra is String) ? (state.extra as String) : null;
          return EmailRequestOtpPage(email: param);
        },
        routes: [],
      ),
      GoRoute(
        path: RoutePath.otpEmailValidateOtp,
        builder: (context, state) {
          final param =
              (state.extra is EmailValidatePageParam)
                  ? (state.extra as EmailValidatePageParam)
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
        routes: [],
      ),
      GoRoute(
        path: RoutePath.otpPhoneNumberValidateOtp,
        builder: (context, state) {
          final param =
              (state.extra is PhoneNumberValidatePageParam)
                  ? (state.extra as PhoneNumberValidatePageParam)
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
          final param =
              (state.extra is String) ? (state.extra as String) : null;
          if (param == null) {
            return ErrorPage(
              errorMessage: "Missing parameter for User Profile Page",
            );
          }
          return UserProfilePage(userId: param);
        },
      ),

      /*Customer Wrapper */
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

      /*Jastiper Wrapper */
      StatefulShellRoute.indexedStack(
        builder:
            (context, state, navigationShell) => HomeWrapperPage(
              navigationShell: navigationShell,
              tablist: _jastiperTabs,
            ),
        branches:
            _jastiperTabs
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
