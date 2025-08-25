import 'dart:io';

import 'package:flutter/material.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';
import 'package:jastipin_yuk/shared/widgets/loading/loading_indicator_widget.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class NativeScaffold extends StatelessWidget {
  final ScrollController? scrollController;
  final EdgeInsets padding;
  final Widget? title;
  final List<Widget>? actions;
  final Widget? bottomNavigationBar;
  final FloatingActionButtonLocation? fabLocation;
  final List<Widget> body;
  final Widget? floatingActionButton;
  final RefreshController? refreshController;
  final VoidCallback? onRefresh;

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
    this.refreshController,
    this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    final isIOS = Platform.isIOS;
    final double dynamicBottomPadding =
        (context.padding.bottom + 8) +
        (bottomNavigationBar != null ? kBottomNavigationBarHeight : 0);
    bool isFabAtBottom =
        fabLocation == null ||
        fabLocation == FloatingActionButtonLocation.centerFloat ||
        fabLocation == FloatingActionButtonLocation.endFloat;

    final appBar = AppBar(
      actions: actions,
      elevation: 0,
      title: title,
      centerTitle: isIOS,
      titleTextStyle: context.textStyle.headline.copyWith(
        color: context.themeColors.textColor,
      ),
      systemOverlayStyle: context.theme.appBarTheme.systemOverlayStyle,
    );

    Widget bodyContent = ListView.builder(
      controller: scrollController,
      padding: padding.copyWith(top: 6, bottom: dynamicBottomPadding),
      itemCount: body.length,
      itemBuilder: (context, index) => body[index],
    );

    if (refreshController != null && onRefresh != null) {
      bodyContent = SmartRefresher(
        controller: refreshController!,
        onRefresh: onRefresh,
        enablePullDown: true,
        header: ClassicHeader(refreshingIcon: LoadingIndicatorWidget()),
        child: bodyContent,
      );
    }

    return Scaffold(
      appBar: appBar,
      floatingActionButton:
          floatingActionButton != null
              ? Padding(
                padding: EdgeInsets.only(
                  bottom: isFabAtBottom ? dynamicBottomPadding : 0,
                ),
                child: _fixHeroTag(floatingActionButton),
              )
              : null,
      body: bodyContent,
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
