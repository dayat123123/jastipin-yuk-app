import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:jastipin_yuk/features/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:jastipin_yuk/main.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';
import 'package:jastipin_yuk/shared/misc/file_paths.dart';
import 'package:jastipin_yuk/shared/widgets/button/submit_button.dart';
import 'package:jastipin_yuk/shared/widgets/container/listtile_group_widget.dart';

class CustomerSettingsPage extends StatefulWidget {
  const CustomerSettingsPage({super.key});

  @override
  State<CustomerSettingsPage> createState() => _CustomerSettingsPageState();
}

class _CustomerSettingsPageState extends State<CustomerSettingsPage> {
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
      appBar: AppBar(title: Text("Settings")),
      body: Scrollbar(
        controller: _scrollController,
        child: ListView(
          padding: AppStyles.paddingAllMedium,
          controller: _scrollController,
          children: [
            Container(
              padding: AppStyles.paddingAllSmall,
              child: ListTile(
                leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(FilePaths.googleImg),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 16.0),
            ListTileGroupWidget(
              title: "Account",
              listWidget: [
                ItemGroup(
                  title: "Edit Profile",
                  icon: Icon(FluentIcons.person_settings_20_filled, size: 24),
                ),
                ItemGroup(
                  title: "Verify Account",
                  icon: Icon(FluentIcons.mail_24_filled, size: 24),
                ),
                ItemGroup(
                  title: "User Activities",
                  icon: Icon(FluentIcons.history_24_filled, size: 24),
                ),
              ],
            ),
            SizedBox(height: 24.0),
            ListTileGroupWidget(
              title: "Preferences",
              listWidget: [
                ItemGroup(
                  title: "Privacy Settings",
                  icon: Icon(FluentIcons.shield_12_regular, size: 24),
                ),
                ItemGroup(
                  title: "About App",
                  icon: Icon(FluentIcons.info_16_regular, size: 24),
                ),
              ],
            ),
            SizedBox(height: 32.0),
            SubmitButton(label: 'Sign Out', onPressed: _onTapSignOut),
          ],
        ),
      ),
    );
  }
}
