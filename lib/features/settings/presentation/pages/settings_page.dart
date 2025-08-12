import 'package:cached_network_image/cached_network_image.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:jastipin_yuk/core/localization/language.dart';
import 'package:jastipin_yuk/core/localization/locale_cubit.dart';
import 'package:jastipin_yuk/core/router/goroute_navigator.dart';
import 'package:jastipin_yuk/core/theme/src/app_theme_mode_model.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/user_data.dart';
import 'package:jastipin_yuk/features/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';
import 'package:jastipin_yuk/shared/extensions/string_extension.dart';
import 'package:jastipin_yuk/shared/widgets/avatar/profile_picture_avatar.dart';
import 'package:jastipin_yuk/shared/widgets/button/submit_button.dart';
import 'package:jastipin_yuk/shared/widgets/container/listtile_group_widget.dart';
import 'package:jastipin_yuk/shared/widgets/icons/badge_icon_widget.dart';
import 'package:jastipin_yuk/shared/widgets/scaffold/native_scaffold.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final _scrollController = ScrollController();

  void _onTapSignOut() {
    context.showDialog(
      title: "Attention",
      subtitle: "Are you sure want to sign out?",
      onPressed: () {
        context.read<AuthBloc>().add(AuthEvent.logout());
      },
    );
  }

  void _onTapProfile(String imageUrl) {
    showDialog(
      context: context,
      builder:
          (_) => Dialog(
            child: InteractiveViewer(
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                placeholder:
                    (context, url) =>
                        const Center(child: CircularProgressIndicator()),
                errorWidget:
                    (context, url, error) => const Icon(
                      Icons.broken_image,
                      size: 80,
                      color: Colors.grey,
                    ),
              ),
            ),
          ),
    );
  }

  void _onTapUserProfile(String userId) {
    context.push(RoutePath.userProfile, extra: userId);
  }

  void _onTapVerifyAccount() {
    context.push(RoutePath.customerAccountLinked);
  }

  void _onTapDarkTheme() {
    context.showBottomSheet(
      child: (scrollController) {
        return BlocBuilder<ThemeCubit, AppThemeMode>(
          builder: (context, selectedTheme) {
            return ListView.separated(
              shrinkWrap: true,
              controller: scrollController,
              padding: AppStyles.paddingHorizontalMedium,
              itemCount: AppThemeMode.values.length,
              itemBuilder: (context, index) {
                final item = AppThemeMode.values[index];
                final isSelected = item == selectedTheme;

                return ListTile(
                  onTap: () {
                    context.pop();
                    context.read<ThemeCubit>().setTheme(item);
                  },
                  leading: Icon(item.icon),
                  title: Text(item.title, style: context.textStyle.labelStyle),
                  trailing:
                      isSelected
                          ? Icon(
                            Icons.check_circle,
                            color: context.themeColors.info,
                          )
                          : null,
                );
              },
              separatorBuilder: (_, __) => const Divider(),
            );
          },
        );
      },
    );
  }

  void _onTapLanguage() {
    context.showBottomSheet(
      child: (scrollController) {
        return BlocBuilder<LocaleCubit, Language>(
          builder: (context, selectedTheme) {
            return ListView.separated(
              shrinkWrap: true,
              controller: scrollController,
              padding: AppStyles.paddingHorizontalMedium,
              itemCount: Language.values.length,
              itemBuilder: (context, index) {
                final item = Language.values[index];
                final isSelected = item == selectedTheme;

                return ListTile(
                  onTap: () {
                    context.pop();
                    context.read<LocaleCubit>().setLocale(item);
                  },
                  title: Text(item.text, style: context.textStyle.labelStyle),
                  leading: Material(
                    elevation: 2,
                    shape: const CircleBorder(),
                    child: CircleAvatar(
                      radius: 16,
                      backgroundImage: AssetImage(item.imagePath),
                    ),
                  ),
                  trailing:
                      isSelected
                          ? Icon(
                            Icons.check_circle,
                            color: context.themeColors.info,
                          )
                          : null,
                );
              },
              separatorBuilder: (_, __) => const Divider(),
            );
          },
        );
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
    return NativeScaffold(
      scrollController: _scrollController,
      padding: AppStyles.paddingHorizontalMedium,
      title: Text("Settings"),
      body: [
        BlocSelector<AuthBloc, AuthState, UserData?>(
          selector: (state) => state is Authenticated ? state.userData : null,
          builder: (context, state) {
            final imageUrl = state?.profilePictureUrl ?? "";
            final username = state?.username ?? "";
            final userId = state?.userID ?? "";
            final firstLetter = username.firstLetter.toUpperCase();
            final email = state?.email ?? "";
            final isShowAlert =
                !(state?.emailVerified == true && state?.phoneVerified == true);
            return Column(
              children: [
                GestureDetector(
                  onTap: () => _onTapProfile(imageUrl),
                  child: ProfilePictureAvatar(
                    imageUrl: imageUrl,
                    titleOnFailedLoadImage: firstLetter,
                  ),
                ),
                SizedBox(height: 24),
                if (username.isNotEmpty)
                  Text(username, style: context.textStyle.labelStyle),
                if (email.isNotEmpty)
                  Text(email, style: context.textStyle.subhead),
                const SizedBox(height: 16.0),
                ListTileGroupWidget(
                  title: "Account",
                  listWidget: [
                    ItemGroup(
                      title: "User Profile",
                      icon: const Icon(
                        FluentIcons.person_settings_20_filled,
                        size: 24,
                      ),
                      onTap: () {
                        _onTapUserProfile(userId);
                      },
                    ),
                    ItemGroup(
                      title: "Verify Account",
                      icon: BadgeIconWidget(
                        icon: FluentIcons.mail_24_filled,
                        isShowAlert: isShowAlert,
                      ),
                      onTap: _onTapVerifyAccount,
                    ),
                    ItemGroup(
                      title: "User Activities",
                      icon: const Icon(FluentIcons.history_24_filled, size: 24),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
        const SizedBox(height: 24.0),
        ListTileGroupWidget(
          title: "Preferences",
          listWidget: [
            ItemGroup(
              title: "Theme Mode",
              icon: const Icon(FluentIcons.dark_theme_20_filled, size: 24),
              withDefaultTrailingIcon: false,
              onTap: _onTapDarkTheme,
            ),
            ItemGroup(
              title: "Language",
              icon: const Icon(FluentIcons.local_language_16_filled, size: 24),
              withDefaultTrailingIcon: false,
              onTap: _onTapLanguage,
            ),
            ItemGroup(
              title: "Show Notification on Background",
              icon: const Icon(Icons.notifications_active, size: 24),
              trailing: Transform.scale(
                scale: 0.8,
                child: Switch(value: true, onChanged: (value) {}),
              ),
              onTap: () {},
            ),
          ],
        ),
        const SizedBox(height: 24.0),
        ListTileGroupWidget(
          title: "More",
          listWidget: [
            ItemGroup(
              title: "Help",
              icon: const Icon(FluentIcons.chat_help_20_regular, size: 24),
            ),
            ItemGroup(
              title: "Privacy Settings",
              icon: const Icon(FluentIcons.shield_12_regular, size: 24),
            ),
            ItemGroup(
              title: "About App",
              icon: const Icon(FluentIcons.info_16_regular, size: 24),
            ),
          ],
        ),
        const SizedBox(height: 24.0),
        SubmitButton(
          label: 'Sign Out',
          onPressed: _onTapSignOut,
          bgColor: context.themeColors.cardBackground,
          iconColor: context.themeColors.failure,
        ),
      ],
    );
  }
}
