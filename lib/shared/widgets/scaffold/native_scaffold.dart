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
  final List<Widget> body;

  const NativeScaffold({
    super.key,
    this.scrollController,
    this.title,
    this.actions,
    this.bottomNavigationBar,
    this.body = const [],
    this.padding = const EdgeInsets.only(),
  });

  @override
  Widget build(BuildContext context) {
    final isIOS = Platform.isIOS;
    final double dynamicTopPadding = isIOS ? 16 : 0;
    final double dynamicBottomPadding =
        (context.padding.bottom + 8) +
        (bottomNavigationBar != null ? kBottomNavigationBarHeight : 0);
    return Scaffold(
      extendBodyBehindAppBar: isIOS,
      extendBody: bottomNavigationBar != null,
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
              sliver: SliverList(delegate: SliverChildListDelegate(body)),
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
