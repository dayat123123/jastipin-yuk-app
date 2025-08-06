import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:jastipin_yuk/core/router/goroute_navigator.dart';
import 'package:jastipin_yuk/features/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:jastipin_yuk/features/authentication/presentation/widgets/tabbar_icon_with_badge_widget.dart';
import 'package:jastipin_yuk/main.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';

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
      bloc: injector.get<AuthBloc>(),
      listenWhen: (previous, current) => previous != current,
      listener: _blocListener,
      builder: (context, state) {
        return PopScope(
          canPop: false,
          child: Scaffold(
            body: navigationShell,
            bottomNavigationBar: SafeArea(
              child: _buildCustomBottomNavbar(context),
            ),
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
    return Container(
      decoration: BoxDecoration(
        color: context.themeColors.background,
        border: Border(
          top: BorderSide(color: context.themeColors.separator, width: 0.5),
        ),
      ),
      child: Row(
        children:
            tablist.asMap().entries.map((entry) {
              final int index = entry.key;
              final TabbarItem item = entry.value;
              final bool isSelected = navigationShell.currentIndex == index;
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
                              borderRadius: BorderRadius.only(
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
                                duration: const Duration(milliseconds: 200),
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
                                child:
                                    item.isChatTab
                                        ? TabbarIconWithBadgeWidget(
                                          key: ValueKey<bool>(isSelected),
                                          item: item,
                                          isShowAlert: true,
                                          isSelected: isSelected,
                                          iconColor:
                                              isSelected
                                                  ? context.themeColors.primary
                                                  : context
                                                      .themeColors
                                                      .disabled,
                                        )
                                        : Icon(
                                          key: ValueKey<bool>(isSelected),
                                          isSelected
                                              ? item.activeIcon
                                              : item.inactiveIcon,
                                          color:
                                              isSelected
                                                  ? context.themeColors.primary
                                                  : context
                                                      .themeColors
                                                      .disabled,
                                        ),
                              ),
                              const SizedBox(height: 6.0),
                              AnimatedDefaultTextStyle(
                                duration: const Duration(milliseconds: 200),
                                style: context.textStyle.footnote.copyWith(
                                  fontWeight:
                                      isSelected
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                  color:
                                      isSelected
                                          ? context.themeColors.primary
                                          : context.themeColors.disabled,
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
    );
  }
}
