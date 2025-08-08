import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:jastipin_yuk/core/router/goroute_navigator.dart';
import 'package:jastipin_yuk/features/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:jastipin_yuk/main.dart';
import 'package:jastipin_yuk/shared/widgets/loading/loading_indicator_widget.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final _authBloc = injector.get<AuthBloc>();
  @override
  void initState() {
    _authBloc.add(LocalLoginEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: _blocListener,
        builder: (context, state) {
          return Center(child: LoadingIndicatorWidget());
        },
      ),
    );
  }

  void _blocListener(BuildContext ctx, AuthState state) {
    if (state is Authenticated) {
      final userData = state.userData;
      final path = RoutePath.getUserHomeRoute(userData.role);
      context.go(path);
    } else {
      ctx.go(RoutePath.landing);
    }
  }
}
