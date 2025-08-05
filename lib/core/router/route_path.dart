part of 'goroute_navigator.dart';

@immutable
abstract class RoutePath {
  const RoutePath._();

  static const String root = "/";
  static const String splash = "/splash";
  static const String register = "/register";
  static const String login = "/login";
  static const String forgetPassword = "/forgetPassword";

  static const String jastiperHome = "/jastiper/home";
  static const String jastiperActivity = "/jastiper/activity";
  static const String jastiperProfile = "/jastiper/profile";
  static const String jastiperChat = "/jastiper/chat";

  static const String customerHome = "/customer/home";
  static const String customerActivity = "/customer/activity";
  static const String customerProfile = "/customer/profile";
  static const String customerChat = "/customer/chat";
}
