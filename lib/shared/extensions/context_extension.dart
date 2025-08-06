import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jastipin_yuk/core/localization/l10n/intl_l10n.dart';
import 'package:jastipin_yuk/core/theme/src/app_theme.dart';
import 'package:jastipin_yuk/shared/widgets/notification/notification_widgets.dart';

export 'package:jastipin_yuk/core/theme/theme.dart';
export 'package:jastipin_yuk/shared/widgets/notification/notification_widgets.dart';

enum PickerMode { date, time, dateAndTime }

extension ContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  MediaQueryData get mediaQuery => MediaQuery.of(this);

  Brightness get platformBrightness => mediaQuery.platformBrightness;

  bool get isDarkBrightness => platformBrightness == Brightness.dark;

  AppLocalizations get language => AppLocalizations.of(this);

  AppThemeColors get themeColors => theme.extension<AppThemeColors>()!;

  AppTextStyles get textStyle => theme.extension<AppTextStyles>()!;

  TextTheme get textTheme => theme.textTheme;

  EdgeInsets get viewInsets => mediaQuery.viewInsets;

  Size get size => mediaQuery.size;

  double get fullHeight => size.height;

  double get fullWidth => size.width;

  Future<DateTime?> showDatetimePicker(
    BuildContext context, {
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
        context: context,
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
                  child: Text('Select', style: context.textStyle.headline),
                  onPressed: () {
                    Navigator.of(context).pop(selectedDateTime);
                  },
                ),
                const SizedBox(height: 15),
              ],
            ),
          );
        },
      );
      return result;
    } else {
      if (mode == PickerMode.time) {
        final timeOfDay = await showTimePicker(
          context: context,
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
          context: context,
          initialDate: initial,
          firstDate: first,
          lastDate: last,
        );
        if (pickedDate == null) return null;

        if (mode == PickerMode.date) {
          return pickedDate;
        } else if (mode == PickerMode.dateAndTime) {
          if (!context.mounted) return null;
          final timeOfDay = await showTimePicker(
            context: context,
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
    required BuildContext context,
    Duration duration = const Duration(seconds: 2),
    ToastStatus status = ToastStatus.info,
    ToastPosition position = ToastPosition.top,
  }) {
    NotificationWidgets.showToast(
      context: context,
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
    NotificationWidgets.showAlertDialog(
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
}
