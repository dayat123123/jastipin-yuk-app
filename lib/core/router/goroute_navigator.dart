import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jastipin_yuk/features/authentication/domain/enums/role.dart';
import 'package:jastipin_yuk/features/authentication/presentation/pages/forget_password_page.dart';
import 'package:jastipin_yuk/features/authentication/presentation/pages/home_wrapper_page.dart';
import 'package:jastipin_yuk/features/authentication/presentation/pages/login_page.dart';
import 'package:jastipin_yuk/features/authentication/presentation/pages/register_page.dart';
import 'package:jastipin_yuk/features/chat/presentation/pages/customer_chat_page.dart';
import 'package:jastipin_yuk/features/home/presentation/pages/customer_home_page.dart';
import 'package:jastipin_yuk/features/settings/presentation/pages/customer_settings_page.dart';
import 'package:jastipin_yuk/features/splash/presentation/pages/landing_page.dart';
import 'package:jastipin_yuk/features/splash/presentation/pages/splash_page.dart';
import 'package:jastipin_yuk/features/activity/presentation/pages/customer_activity_page.dart';
import 'package:jastipin_yuk/features/verify_account/presentation/pages/customer_verify_account_page.dart';
import 'package:jastipin_yuk/features/otp/presentation/pages/otp_phone_number_input_page.dart';
import 'package:jastipin_yuk/features/otp/presentation/pages/otp_pin_input_page.dart';
import 'package:jastipin_yuk/main.dart';

part 'route_path.dart';
part 'tabbar_item.dart';

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
      page: CustomerChatPage(),
      navigatorKey: GlobalKey<NavigatorState>(debugLabel: 'shellCustomerChat'),
      routes: [
        GoRoute(
          path: RoutePath.customerChat,
          builder: (context, state) => CustomerChatPage(),
          routes: [],
        ),
      ],
    ),
    TabbarItem(
      label: "Settings",
      activeIcon: FluentIcons.settings_16_filled,
      inactiveIcon: FluentIcons.settings_16_filled,
      page: CustomerSettingsPage(),
      navigatorKey: GlobalKey<NavigatorState>(
        debugLabel: 'shellCustomerSettings',
      ),
      routes: [
        GoRoute(
          path: RoutePath.customerSettings,
          builder: (context, state) => CustomerSettingsPage(),
          routes: [],
        ),
      ],
    ),
  ];

  // static final List<TabbarItem> _jastiperTabs = [];
  static final GoRouter router = GoRouter(
    initialLocation: RoutePath.root,
    navigatorKey: navigatorKey,
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
        path: RoutePath.customerverifyAccount,
        builder: (context, state) => CustomerVerifyAccountPage(),
        routes: [],
      ),
      GoRoute(
        path: RoutePath.otpPhoneNumberInput,
        builder: (context, state) => OtpPhoneNumberInputPage(),
      ),
      GoRoute(
        path: RoutePath.otpPINInput,
        builder: (context, state) => OtpPinInputPage(),
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
    ],
  );
}
