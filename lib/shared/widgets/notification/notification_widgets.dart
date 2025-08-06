import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';

enum ToastStatus { success, failed, warning, info }

enum ToastPosition { top, bottom }

class NotificationWidgets {
  static OverlayEntry? _currentSnackbar;

  static void showToast({
    required BuildContext context,
    required String title,
    required String subtitle,
    required Duration duration,
    required ToastStatus dialogAccentStatus,
    required ToastPosition position,
    Color? color,
  }) {
    switch (position) {
      case ToastPosition.top:
        _showTopToast(
          context: context,
          title: title,
          subtitle: subtitle,
          color: color,
          dialogAccentStatus: dialogAccentStatus,
          duration: duration,
        );
        break;
      case ToastPosition.bottom:
        _showBottomToast(
          context: context,
          title: title,
          subtitle: subtitle,
          color: color,
          dialogAccentStatus: dialogAccentStatus,
          duration: duration,
        );
        break;
    }
  }

  static void showAlertDialog({
    required BuildContext context,
    String? title,
    Widget? contentWidget,
    String? content,
    String? aproveNameButton,
    required bool alowDismiss,
    required bool withCancelButton,
    void Function()? onPressed,
    void Function()? customOnPressed,
  }) {
    final effectiveContent =
        contentWidget ??
        (content != null ? Text(content, style: context.textStyle.body) : null);
    final isSystemDark = context.isDarkBrightness;

    if (Platform.isIOS) {
      showCupertinoDialog(
        context: context,
        barrierDismissible: alowDismiss,
        builder:
            (context) => CupertinoTheme(
              data: CupertinoThemeData(
                brightness: isSystemDark ? Brightness.dark : Brightness.light,
              ),
              child: CupertinoAlertDialog(
                title: Text(title ?? "Alert"),
                content: effectiveContent,
                actions: <Widget>[
                  if (withCancelButton)
                    CupertinoDialogAction(
                      child: const Text('Cancel'),
                      onPressed: () => context.pop(),
                    ),
                  CupertinoDialogAction(
                    isDefaultAction: true,
                    onPressed:
                        customOnPressed ??
                        () {
                          context.pop();
                          if (onPressed != null) onPressed();
                        },
                    child: Text(aproveNameButton ?? 'OK'),
                  ),
                ],
              ),
            ),
      );
    } else {
      showDialog(
        context: context,
        barrierDismissible: alowDismiss,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: AppStyles.borderRadiusMediumG,
            ),
            actionsPadding: EdgeInsets.only(bottom: 8.0),
            title: Text(
              title ?? "Attention!",
              style: context.textStyle.headline.copyWith(fontSize: 20),
            ),
            content: effectiveContent,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 12.0,
            ),
            titlePadding: const EdgeInsets.only(
              top: 24.0,
              left: 24.0,
              right: 24.0,
            ),

            actions: [
              if (withCancelButton)
                TextButton(
                  onPressed: () => context.pop(),
                  child: Text(
                    "Cancel",
                    style: context.textStyle.labelStyle.copyWith(
                      color: context.themeColors.primary,
                    ),
                  ),
                ),
              TextButton(
                onPressed:
                    customOnPressed ??
                    () {
                      context.pop();
                      if (onPressed != null) onPressed();
                    },
                child: Text(
                  aproveNameButton ?? "OK",
                  style: context.textStyle.labelStyle.copyWith(
                    color: context.themeColors.primary,
                  ),
                ),
              ),
            ],
          );
        },
      );
    }
  }

  static void _showTopToast({
    Color? color,
    required BuildContext context,
    required String title,
    required String subtitle,
    required Duration duration,
    ToastStatus dialogAccentStatus = ToastStatus.info,
  }) {
    _currentSnackbar?.remove();
    _currentSnackbar = null;

    final overlay = Overlay.of(context, rootOverlay: true);
    late OverlayEntry entry;

    entry = OverlayEntry(
      builder:
          (context) => _TopSnackbarWidget(
            title: title,
            subtitle: subtitle,
            color: color,
            dialogAccentStatus: dialogAccentStatus,
            duration: duration,
            onDismissed: () {
              entry.remove();
              _currentSnackbar = null;
            },
          ),
    );

    _currentSnackbar = entry;
    overlay.insert(entry);
  }

  static void _showBottomToast({
    Color? color,
    required BuildContext context,
    required String title,
    required String subtitle,
    required Duration duration,
    ToastStatus dialogAccentStatus = ToastStatus.info,
  }) {
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(
        snackBarAnimationStyle: AnimationStyle(
          duration: const Duration(milliseconds: 250),
          reverseDuration: const Duration(milliseconds: 500),
        ),
        SnackBar(
          duration: duration,
          elevation: 0,
          backgroundColor: Colors.transparent,
          content: _snackbarWidget(
            title,
            subtitle,
            dialogAccentStatus,
            context,
            color: color,
          ),
        ),
      );
  }

  static Widget _snackbarWidget(
    String title,
    String subtitle,
    ToastStatus type,
    BuildContext context, {
    Color? color,
  }) {
    final borderRadius = AppStyles.borderRadiusMediumG;
    final selectedIcon = _dialogIcon(type);
    final selectedColor = color ?? _dialogAccentcolor(type, context);
    return Container(
      decoration: BoxDecoration(
        color: context.themeColors.dialogColor,
        borderRadius: borderRadius,
      ),

      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: borderRadius,
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    selectedColor.withValues(alpha: 0.35),
                    Colors.grey.withValues(alpha: 0.15),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: ListTile(
              dense: true,
              contentPadding: AppStyles.paddingHorizontalMedium,
              leading: CircleAvatar(
                backgroundColor: context.themeColors.cardBackground.withValues(
                  alpha: 0.1,
                ),
                radius: 24,
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: selectedColor.withValues(alpha: 0.8),
                  child: Icon(selectedIcon),
                ),
              ),
              title: Text(title, style: context.textStyle.labelStyle),
              subtitle:
                  subtitle.isEmpty
                      ? null
                      : Text(
                        subtitle,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: context.textStyle.subhead,
                      ),
            ),
          ),
        ],
      ),
    );
  }

  static IconData _dialogIcon(ToastStatus? type) {
    IconData iconDef = Icons.notifications_active;
    if (null == type) return iconDef;
    switch (type) {
      case ToastStatus.success:
        iconDef = Icons.check;
        break;
      case ToastStatus.failed:
        iconDef = Icons.close;
        break;
      case ToastStatus.warning:
        iconDef = Icons.warning_amber_rounded;
        break;
      case ToastStatus.info:
        iconDef = Icons.notifications_active;
        break;
    }
    return iconDef;
  }

  static Color _dialogAccentcolor(ToastStatus? type, BuildContext context) {
    if (type == null) return Colors.black12;
    Color color;
    switch (type) {
      case ToastStatus.success:
        color = context.themeColors.success;
        break;
      case ToastStatus.failed:
        color = context.themeColors.failure;
        break;
      case ToastStatus.warning:
        color = context.themeColors.warning;
        break;
      case ToastStatus.info:
        color = context.themeColors.primary;
        break;
    }
    return color;
  }
}

class _TopSnackbarWidget extends StatefulWidget {
  final String title;
  final String subtitle;
  final Color? color;
  final ToastStatus dialogAccentStatus;
  final Duration duration;
  final VoidCallback onDismissed;

  const _TopSnackbarWidget({
    required this.title,
    required this.subtitle,
    required this.color,
    required this.dialogAccentStatus,
    required this.duration,
    required this.onDismissed,
  });

  @override
  State<_TopSnackbarWidget> createState() => _TopSnackbarWidgetState();
}

class _TopSnackbarWidgetState extends State<_TopSnackbarWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 250),
      reverseDuration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0, -1),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.fastOutSlowIn,
        reverseCurve: Curves.easeOutQuart,
      ),
    );

    _controller.forward();

    Future.delayed(widget.duration, () {
      if (mounted) {
        _controller.reverse().then((_) {
          if (mounted) widget.onDismissed();
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).padding.top + 24,
      left: 24,
      right: 24,
      child: SlideTransition(
        position: _offsetAnimation,
        child: Dismissible(
          key: UniqueKey(),
          direction: DismissDirection.up,
          onDismissed: (_) => widget.onDismissed(),
          child: Material(
            color: Colors.transparent,
            child: NotificationWidgets._snackbarWidget(
              widget.title,
              widget.subtitle,
              color: widget.color,
              widget.dialogAccentStatus,
              context,
            ),
          ),
        ),
      ),
    );
  }
}
