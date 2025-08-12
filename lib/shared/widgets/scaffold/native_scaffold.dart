import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';

class NativeScaffold extends StatelessWidget {
  final ScrollController? scrollController;
  final EdgeInsets padding;
  final Widget? title;
  final List<Widget>? actions;
  final Widget? bottomNavigationBar;
  final FloatingActionButtonLocation? fabLocation;
  final List<Widget> body;
  final Widget? floatingActionButton;

  const NativeScaffold({
    super.key,
    this.scrollController,
    this.title,
    this.actions,
    this.bottomNavigationBar,
    this.body = const [],
    this.padding = EdgeInsets.zero,
    this.floatingActionButton,
    this.fabLocation,
  });

  @override
  Widget build(BuildContext context) {
    final isIOS = Platform.isIOS;
    final double dynamicTopPadding = isIOS ? 16 : 0;
    final double dynamicBottomPadding =
        (context.padding.bottom + 8) +
        (bottomNavigationBar != null ? kBottomNavigationBarHeight : 0);
    bool isFabAtBottom =
        fabLocation == null ||
        fabLocation == FloatingActionButtonLocation.centerFloat ||
        fabLocation == FloatingActionButtonLocation.endFloat;
    return Scaffold(
      extendBodyBehindAppBar: isIOS,
      extendBody: bottomNavigationBar != null,
      floatingActionButton:
          floatingActionButton != null
              ? Padding(
                padding: EdgeInsets.only(
                  bottom: isFabAtBottom ? dynamicBottomPadding : 0,
                ),
                child: _fixHeroTag(floatingActionButton),
              )
              : null,
      body: Scrollbar(
        controller: scrollController,
        child: CustomScrollView(
          controller: scrollController,
          slivers: [
            SliverAppBar(
              backgroundColor:
                  isIOS
                      ? context.theme.scaffoldBackgroundColor.withValues(
                        alpha: 0.5,
                      )
                      : context.theme.appBarTheme.backgroundColor,
              actions: actions,
              elevation: 0,
              pinned: true,
              title: title,
              centerTitle: isIOS,
              titleTextStyle: context.textStyle.headline.copyWith(
                color: context.themeColors.textColor,
              ),
              systemOverlayStyle: context.theme.appBarTheme.systemOverlayStyle,
              flexibleSpace:
                  isIOS
                      ? ClipRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: Container(color: Colors.transparent),
                        ),
                      )
                      : null,
            ),
            SliverPadding(
              padding: padding.copyWith(
                top: dynamicTopPadding,
                bottom: dynamicBottomPadding,
              ),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => body[index],
                  childCount: body.length,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }

  Widget? _fixHeroTag(Widget? fab) {
    if (fab is FloatingActionButton) {
      return FloatingActionButton(
        key: fab.key,
        onPressed: fab.onPressed,
        tooltip: fab.tooltip,
        foregroundColor: fab.foregroundColor,
        backgroundColor: fab.backgroundColor,
        heroTag: null,
        elevation: fab.elevation,
        focusElevation: fab.focusElevation,
        hoverElevation: fab.hoverElevation,
        disabledElevation: fab.disabledElevation,
        shape: fab.shape,
        clipBehavior: fab.clipBehavior,
        autofocus: fab.autofocus,
        materialTapTargetSize: fab.materialTapTargetSize,
        isExtended: fab.isExtended,
        child: fab.child,
      );
    }
    return fab;
  }
}
