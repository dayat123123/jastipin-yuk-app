import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jastipin_yuk/core/router/goroute_navigator.dart';
import 'package:jastipin_yuk/features/authentication/presentation/widgets/home_wrapper_bottom_navbar_widget.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';

class HomeWrapperPage extends StatefulWidget {
  final StatefulNavigationShell navigationShell;
  final List<TabbarItem> tablist;

  const HomeWrapperPage({
    super.key,
    required this.navigationShell,
    required this.tablist,
  });

  @override
  State<HomeWrapperPage> createState() => _HomeWrapperPageState();
}

class _HomeWrapperPageState extends State<HomeWrapperPage> {
  @override
  void initState() {
    print("Home initialized");
    super.initState();
  }

  @override
  void dispose() {
    print("Home disposed");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.themeColors;
    final textStyle = context.textStyle.footnote;
    return PopScope(
      canPop: false,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        body: widget.navigationShell,
        bottomNavigationBar: HomeWrapperBottomNavbarWidget(
          navigationShell: widget.navigationShell,
          tablist: widget.tablist,
          theme: theme,
          textStyle: textStyle,
          onTap: _onTap,
        ),
      ),
    );
  }

  void _onTap(int index) {
    if (widget.navigationShell.currentIndex == index) {
      final navigatorState = widget.tablist[index].navigatorKey.currentState;
      navigatorState?.popUntil((route) => route.isFirst);
    } else {
      widget.navigationShell.goBranch(index);
    }
  }
}
