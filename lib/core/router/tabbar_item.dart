part of 'goroute_navigator.dart';

class TabbarItem {
  final String label;
  final IconData activeIcon;
  final IconData inactiveIcon;
  final Widget page;
  final List<RouteBase> routes;
  final GlobalKey<NavigatorState> navigatorKey;
  const TabbarItem({
    required this.label,
    required this.activeIcon,
    required this.inactiveIcon,
    required this.page,
    required this.routes,
    required this.navigatorKey,
  });
}
