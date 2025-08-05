import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jastipin_yuk/features/authentication/presentation/pages/forget_password_page.dart';
import 'package:jastipin_yuk/features/authentication/presentation/pages/home_wrapper_page.dart';
import 'package:jastipin_yuk/features/authentication/presentation/pages/login_page.dart';
import 'package:jastipin_yuk/features/authentication/presentation/pages/register_page.dart';
import 'package:jastipin_yuk/features/chat/presentation/pages/customer_chat_page.dart';
import 'package:jastipin_yuk/features/home/presentation/pages/customer_home_page.dart';
import 'package:jastipin_yuk/features/profile/presentation/pages/customer_profile_page.dart';
import 'package:jastipin_yuk/features/splash/presentation/pages/landing_page.dart';
import 'package:jastipin_yuk/features/splash/presentation/pages/splash_page.dart';
import 'package:jastipin_yuk/features/activity/presentation/pages/customer_activity_page.dart';
import 'package:jastipin_yuk/main.dart';

part 'route_path.dart';
part 'tabbar_item.dart';

class GoRouteNavigator {
  const GoRouteNavigator._();

  static final List<TabbarItem> _customerTabs = [
    TabbarItem(
      label: "Home",
      activeIcon: FluentIcons.home_24_filled,
      inactiveIcon: FluentIcons.home_24_regular,
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
      inactiveIcon: FluentIcons.history_24_regular,
      page: CustomerActivityPage(),
      navigatorKey: GlobalKey<NavigatorState>(
        debugLabel: 'shellCustomerActivity',
      ),
      routes: [
        GoRoute(
          path: RoutePath.customerActivity,
          builder: (context, state) => CustomerActivityPage(),
          routes: [],
        ),
      ],
    ),
    TabbarItem(
      label: "Chat",
      activeIcon: FluentIcons.chat_12_filled,
      inactiveIcon: FluentIcons.chat_12_regular,
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
      label: "Profile",
      activeIcon: FluentIcons.person_circle_24_filled,
      inactiveIcon: FluentIcons.person_circle_24_regular,
      page: CustomerProfilePage(),
      navigatorKey: GlobalKey<NavigatorState>(
        debugLabel: 'shellCustomerProfile',
      ),
      routes: [
        GoRoute(
          path: RoutePath.customerProfile,
          builder: (context, state) => CustomerProfilePage(),
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
        path: RoutePath.splash,
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
