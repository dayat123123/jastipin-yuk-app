import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jastipin_yuk/core/localization/l10n/intl_l10n.dart';
import 'package:jastipin_yuk/core/theme/src/app_theme.dart';
import 'package:jastipin_yuk/shared/widgets/dialog/dialog_widgets.dart';

export 'package:jastipin_yuk/core/theme/theme.dart';
export 'package:jastipin_yuk/shared/widgets/dialog/dialog_widgets.dart';

enum PickerMode { date, time, dateAndTime }

extension ContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  bool get isDarkBrightness => theme.brightness == Brightness.dark;

  MediaQueryData get mediaQuery => MediaQuery.of(this);

  AppLocalizations get language => AppLocalizations.of(this);

  AppThemeColors get themeColors => theme.extension<AppThemeColors>()!;

  AppTextStyles get textStyle => theme.extension<AppTextStyles>()!;

  TextTheme get textTheme => theme.textTheme;

  EdgeInsets get viewInsets => mediaQuery.viewInsets;

  EdgeInsets get padding => mediaQuery.padding;

  Size get size => mediaQuery.size;

  double get fullHeight => size.height;

  double get fullWidth => size.width;

  Future<DateTime?> showDatetimePicker({
    DateTime? initialDateTime,
    DateTime? firstDate,
    DateTime? lastDate,
    required PickerMode mode,
    bool allowFuture = false,
  }) async {
    final now = DateTime.now();
    final DateTime initial = initialDateTime ?? now;
    final DateTime first = firstDate ?? DateTime(1900);
    final DateTime last = lastDate ?? (allowFuture ? DateTime(2100) : now);

    CupertinoDatePickerMode iosMode = switch (mode) {
      PickerMode.date => CupertinoDatePickerMode.date,
      PickerMode.time => CupertinoDatePickerMode.time,
      PickerMode.dateAndTime => CupertinoDatePickerMode.dateAndTime,
    };

    if (Platform.isIOS) {
      DateTime selectedDateTime = initial;

      final result = await showModalBottomSheet<DateTime>(
        context: this,
        showDragHandle: true,
        builder: (_) {
          return SizedBox(
            height: 350,
            child: Column(
              children: [
                Expanded(
                  child: CupertinoDatePicker(
                    showDayOfWeek: true,
                    mode: iosMode,
                    initialDateTime: initial,
                    minimumDate:
                        iosMode != CupertinoDatePickerMode.time ? first : null,
                    maximumDate:
                        iosMode != CupertinoDatePickerMode.time ? last : null,
                    onDateTimeChanged: (value) {
                      selectedDateTime = value;
                    },
                    use24hFormat: true,
                  ),
                ),
                TextButton(
                  child: Text('SELECT', style: textStyle.headline),
                  onPressed: () {
                    Navigator.of(this).pop(selectedDateTime);
                  },
                ),
                const SizedBox(height: 24),
              ],
            ),
          );
        },
      );
      return result;
    } else {
      if (mode == PickerMode.time) {
        final timeOfDay = await showTimePicker(
          context: this,
          initialTime: TimeOfDay.fromDateTime(initial),
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(
                context,
              ).copyWith(alwaysUse24HourFormat: true),
              child: child!,
            );
          },
        );
        if (timeOfDay == null) return null;

        return DateTime(
          initial.year,
          initial.month,
          initial.day,
          timeOfDay.hour,
          timeOfDay.minute,
        );
      } else {
        final pickedDate = await showDatePicker(
          context: this,
          initialDate: initial,
          firstDate: first,
          lastDate: last,
        );
        if (pickedDate == null) return null;

        if (mode == PickerMode.date) {
          return pickedDate;
        } else if (mode == PickerMode.dateAndTime) {
          if (!mounted) return null;
          final timeOfDay = await showTimePicker(
            context: this,
            initialTime: TimeOfDay.fromDateTime(initial),
            builder: (context, child) {
              return MediaQuery(
                data: MediaQuery.of(
                  context,
                ).copyWith(alwaysUse24HourFormat: true),
                child: child!,
              );
            },
          );
          if (timeOfDay == null) return pickedDate;

          return DateTime(
            pickedDate.year,
            pickedDate.month,
            pickedDate.day,
            timeOfDay.hour,
            timeOfDay.minute,
          );
        }
      }
    }

    return null;
  }

  void showToast({
    Color? color,
    String title = "",
    String subtitle = "",
    Duration duration = const Duration(seconds: 2),
    ToastStatus status = ToastStatus.info,
    ToastPosition position = ToastPosition.top,
  }) {
    DialogWidgets.showToast(
      context: this,
      title: title,
      subtitle: subtitle,
      color: color,
      dialogAccentStatus: status,
      duration: duration,
      position: position,
    );
  }

  void showDialog({
    String? title,
    String? subtitle,
    Widget? contentWidget,
    String? aproveNameButton,
    bool alowDismiss = true,
    bool withCancelButton = true,
    void Function()? onPressed,
    void Function()? customOnpressed,
  }) {
    DialogWidgets.showAlertDialog(
      context: this,
      alowDismiss: alowDismiss,
      contentWidget: contentWidget,
      onPressed: onPressed,
      content: subtitle,
      title: title,
      customOnPressed: customOnpressed,
      aproveNameButton: aproveNameButton,
      withCancelButton: withCancelButton,
    );
  }

  void showBottomSheet({
    Widget? header,
    required Widget Function(ScrollController) child,
    Widget? footer,
    bool showDragHandle = true,
    bool isScrollControlled = false,
    bool isOverallScreen = true,
    bool isScrollable = true,
    double? initialChildSize,
    double? maxChildSize,
    double? minChildSize,
  }) {
    showModalBottomSheet(
      context: this,
      showDragHandle: showDragHandle,
      elevation: 0,
      isScrollControlled: isScrollControlled,
      useRootNavigator: isOverallScreen,
      backgroundColor: themeColors.dialogColor,
      sheetAnimationStyle: AnimationStyle().copyWith(
        reverseDuration: const Duration(milliseconds: 250),
      ),
      builder: (_) {
        final colors = themeColors;
        return Padding(
          padding: EdgeInsets.only(bottom: viewInsets.bottom),
          child: DraggableScrollableSheet(
            expand: false,
            initialChildSize: initialChildSize ?? 0.7,
            minChildSize: minChildSize ?? 0.25,
            maxChildSize: maxChildSize ?? 1.0,
            builder: (context, scrollController) {
              return Container(
                width: context.fullWidth,
                decoration: BoxDecoration(
                  color: colors.dialogColor,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(25),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (header != null) header,
                    Expanded(
                      child: Scrollbar(
                        radius: const Radius.circular(10),
                        thickness: 5,
                        thumbVisibility: false,
                        controller: scrollController,
                        child: SingleChildScrollView(
                          controller: scrollController,
                          physics:
                              isScrollable
                                  ? const BouncingScrollPhysics()
                                  : const NeverScrollableScrollPhysics(),
                          child: child(scrollController),
                        ),
                      ),
                    ),
                    if (footer != null)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: footer,
                      ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
