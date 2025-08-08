import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:jastipin_yuk/core/localization/l10n/intl_l10n.dart';
import 'package:jastipin_yuk/core/localization/language.dart';
import 'package:jastipin_yuk/core/localization/locale_cubit.dart';
import 'package:jastipin_yuk/core/router/goroute_navigator.dart';
import 'package:jastipin_yuk/core/theme/src/app_theme_mode_model.dart';
import 'package:jastipin_yuk/features/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:jastipin_yuk/main.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: injector.get<ThemeCubit>()),
        BlocProvider.value(value: injector.get<LocaleCubit>()),
        BlocProvider.value(value: injector.get<AuthBloc>()),
      ],
      child: BlocBuilder<ThemeCubit, AppThemeMode>(
        builder: (context, themeMode) {
          final overlay =
              themeMode.brightness == Brightness.dark
                  ? SystemUiOverlayStyle.light
                  : SystemUiOverlayStyle.dark;

          return BlocBuilder<LocaleCubit, Language>(
            builder: (context, locale) {
              return AnnotatedRegion<SystemUiOverlayStyle>(
                value: overlay,
                child: MaterialApp.router(
                  debugShowCheckedModeBanner: false,
                  themeMode: themeMode.mode,
                  theme: AppTheme.lightTheme,
                  darkTheme: AppTheme.darkTheme,
                  routerConfig: GoRouteNavigator.router,
                  highContrastTheme: AppTheme.lightTheme,
                  highContrastDarkTheme: AppTheme.darkTheme,
                  locale: locale.locale,
                  supportedLocales: AppLocalizations.supportedLocales,
                  localizationsDelegates: const [
                    AppLocalizations.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
