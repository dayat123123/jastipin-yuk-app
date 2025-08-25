part of 'goroute_navigator.dart';

class TabbarItem {
  final String label;
  final IconData activeIcon;
  final IconData inactiveIcon;
  final Widget page;
  final List<RouteBase> routes;
  final GlobalKey<NavigatorState> navigatorKey;
  final TabType tabType;
  const TabbarItem({
    required this.label,
    required this.activeIcon,
    required this.inactiveIcon,
    required this.page,
    this.routes = const [],
    required this.navigatorKey,
    this.tabType = TabType.general,
  });
}

enum TabType { chat, setting, general }
