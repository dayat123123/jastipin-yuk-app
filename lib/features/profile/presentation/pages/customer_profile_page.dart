import 'package:flutter/material.dart';
import 'package:jastipin_yuk/features/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:jastipin_yuk/main.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';
import 'package:jastipin_yuk/shared/widgets/button/submit_button.dart';

class CustomerProfilePage extends StatefulWidget {
  const CustomerProfilePage({super.key});

  @override
  State<CustomerProfilePage> createState() => _CustomerProfilePageState();
}

class _CustomerProfilePageState extends State<CustomerProfilePage> {
  final _authBloc = injector.get<AuthBloc>();
  final _scrollController = ScrollController();

  void _onTapSignOut() {
    context.showDialog(
      title: "Attention",
      subtitle: "Are you sure want to sign out?",
      onPressed: () {
        _authBloc.add(AuthEvent.logout());
      },
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Scrollbar(
        controller: _scrollController,
        child: ListView(
          padding: AppStyles.paddingAllMedium,
          controller: _scrollController,
          children: [SubmitButton(label: 'Sign Out', onPressed: _onTapSignOut)],
        ),
      ),
    );
  }
}
