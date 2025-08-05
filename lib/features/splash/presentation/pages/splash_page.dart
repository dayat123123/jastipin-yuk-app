import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jastipin_yuk/core/router/goroute_navigator.dart';
import 'package:jastipin_yuk/shared/widgets/loading/loading_indicator_widget.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 1), () {
      if (mounted) context.pushReplacement(RoutePath.splash);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: LoadingIndicatorWidget()));
  }
}
