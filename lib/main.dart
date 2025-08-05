import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:jastipin_yuk/app.dart';
import 'package:jastipin_yuk/injector.dart';

final injector = GetIt.I;
final navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  await initializeApp();
  runApp(const App());
}
