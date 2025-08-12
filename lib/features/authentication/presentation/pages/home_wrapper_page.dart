import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:jastipin_yuk/core/router/goroute_navigator.dart';
import 'package:jastipin_yuk/features/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';
import 'package:jastipin_yuk/shared/widgets/icons/badge_icon_widget.dart';

class HomeWrapperPage extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  final List<TabbarItem> tablist;

  const HomeWrapperPage({
    super.key,
    required this.navigationShell,
    required this.tablist,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      bloc: context.read<AuthBloc>(),
      listenWhen: (previous, current) => previous != current,
      listener: _blocListener,
      builder: (context, state) {
        return PopScope(
          canPop: false,
          child: Scaffold(
            extendBody: true,
            resizeToAvoidBottomInset: true,
            body: navigationShell,
            bottomNavigationBar: _buildCustomBottomNavbar(context),
          ),
        );
      },
    );
  }

  void _blocListener(BuildContext ctx, AuthState state) {
    if (state is Unauthenticated) {
      ctx.go(RoutePath.login);
    }
  }

  void _onTap(int index) {
    if (navigationShell.currentIndex == index) {
      final navigatorState = tablist[index].navigatorKey.currentState;
      if (navigatorState != null && navigatorState.canPop()) {
        navigatorState.popUntil((route) => route.isFirst);
      }
    } else {
      navigationShell.goBranch(index);
    }
  }

  Widget _buildCustomBottomNavbar(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          decoration: BoxDecoration(
            color: context.themeColors.background.withValues(alpha: 0.5),
            border: const Border(top: BorderSide(color: Colors.transparent)),
          ),
          child: SafeArea(
            child: Row(
              children:
                  tablist.asMap().entries.map((entry) {
                    final int index = entry.key;
                    final TabbarItem item = entry.value;
                    final bool isSelected =
                        navigationShell.currentIndex == index;
                    return Expanded(
                      child: InkWell(
                        onTap: () => _onTap(index),
                        child: Container(
                          height: kBottomNavigationBarHeight,
                          alignment: Alignment.bottomCenter,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              AnimatedOpacity(
                                opacity: isSelected ? 1.0 : 0.0,
                                duration: const Duration(milliseconds: 200),
                                child: Container(
                                  height: kBottomNavigationBarHeight,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                      colors: [
                                        context.themeColors.primary.withValues(
                                          alpha: 0.0,
                                        ),
                                        context.themeColors.primary.withValues(
                                          alpha: 0.15,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 200),
                                  width: double.infinity,
                                  height: 2.0,
                                  decoration: BoxDecoration(
                                    color:
                                        isSelected
                                            ? context.themeColors.primary
                                            : Colors.transparent,
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(12.0),
                                      bottomRight: Radius.circular(12.0),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    AnimatedSwitcher(
                                      duration: const Duration(
                                        milliseconds: 200,
                                      ),
                                      transitionBuilder: (
                                        Widget child,
                                        Animation<double> animation,
                                      ) {
                                        return ScaleTransition(
                                          scale: Tween<double>(
                                            begin: 0.8,
                                            end: 1,
                                          ).animate(animation),
                                          child: FadeTransition(
                                            opacity: animation,
                                            child: child,
                                          ),
                                        );
                                      },
                                      child: BadgeIconWidget(
                                        key: ValueKey<bool>(isSelected),
                                        isShowAlert: item.isChatTab,
                                        icon:
                                            isSelected
                                                ? item.activeIcon
                                                : item.inactiveIcon,
                                        color:
                                            isSelected
                                                ? context.themeColors.primary
                                                : context.themeColors.hintText,
                                      ),
                                    ),
                                    const SizedBox(height: 2.0),
                                    AnimatedDefaultTextStyle(
                                      duration: const Duration(
                                        milliseconds: 200,
                                      ),
                                      style: context.textStyle.footnote
                                          .copyWith(
                                            fontWeight:
                                                isSelected
                                                    ? FontWeight.bold
                                                    : FontWeight.w500,
                                            color:
                                                context.themeColors.textColor,
                                          ),
                                      child: Text(item.label),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
