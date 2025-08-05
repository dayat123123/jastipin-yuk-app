import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jastipin_yuk/core/router/goroute_navigator.dart';
import 'package:jastipin_yuk/shared/widgets/button/submit_button.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  void _onTapGetStarted() {
    context.push(RoutePath.login);
  }

  @override
  Widget build(BuildContext context) {
    final locale = context.language;
    return Scaffold(
      body: Padding(
        padding: AppStyles.paddingHorizontalMedium,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SubmitButton(label: locale.getStarted, onPressed: _onTapGetStarted),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
