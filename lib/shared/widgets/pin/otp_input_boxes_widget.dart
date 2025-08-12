import 'dart:async';
import 'package:flutter/material.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';
import 'package:jastipin_yuk/shared/widgets/loading/loading_indicator_widget.dart';
import 'package:jastipin_yuk/shared/widgets/pin/on_screen_number_keyboard_widget.dart';

class OtpInputBoxesWidget extends StatefulWidget {
  final int length;
  final void Function(String)? onChanged;
  final void Function(String) onDone;
  final bool isLoading;

  const OtpInputBoxesWidget({
    super.key,
    required this.length,
    this.onChanged,
    required this.onDone,
    this.isLoading = true,
  });

  @override
  State<OtpInputBoxesWidget> createState() => _OtpInputBoxesWidgetState();
}

class _OtpInputBoxesWidgetState extends State<OtpInputBoxesWidget> {
  late List<String> _otpValues;
  bool _cursorVisible = true;
  Timer? _cursorTimer;

  @override
  void initState() {
    super.initState();
    _otpValues = List.filled(widget.length, '');
    _startCursorTimer();
  }

  void _startCursorTimer() {
    _cursorTimer?.cancel();
    _cursorTimer = Timer.periodic(const Duration(milliseconds: 500), (timer) {
      if (mounted) {
        setState(() {
          _cursorVisible = !_cursorVisible;
        });
      }
    });
  }

  @override
  void dispose() {
    _cursorTimer?.cancel();
    super.dispose();
  }

  void addDigit(String digit) {
    if (widget.isLoading) return;
    final index = _otpValues.indexOf('');
    if (index != -1) {
      setState(() {
        _otpValues[index] = digit;
      });

      final currentValue = _otpValues.join();
      if (widget.onChanged != null) widget.onChanged!(currentValue);

      if (!_otpValues.contains('')) {
        widget.onDone(currentValue);
      }
    }
  }

  void deleteDigit() {
    if (widget.isLoading) return;
    final lastIndex = _otpValues.lastIndexWhere((v) => v.isNotEmpty);
    if (lastIndex != -1) {
      setState(() {
        _otpValues[lastIndex] = '';
      });
      if (widget.onChanged != null) widget.onChanged!(_otpValues.join());
    }
  }

  void clearAll() {
    if (widget.isLoading) return;
    setState(() {
      _otpValues = List.filled(widget.length, '');
    });
    if (widget.onChanged != null) widget.onChanged!(_otpValues.join());
  }

  int get _currentActiveIndex {
    final index = _otpValues.indexOf('');
    return index == -1 ? widget.length - 1 : index;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(widget.length, (index) {
                final char = _otpValues[index];
                final isActive = index == _currentActiveIndex;
                return Container(
                  width: 45,
                  height: 65,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: AppStyles.borderRadiusSmallG,
                    color: context.themeColors.cardBackground,
                  ),
                  child:
                      isActive && char.isEmpty
                          ? AnimatedOpacity(
                            opacity: _cursorVisible ? 1.0 : 0.0,
                            duration: const Duration(milliseconds: 200),
                            child: Container(
                              width: 2,
                              height: 24,
                              color: Colors.blue,
                            ),
                          )
                          : Text(
                            char.isEmpty ? '_' : char,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                );
              }),
            ),
            const SizedBox(height: 24),
            Opacity(
              opacity: widget.isLoading ? 0.5 : 1.0,
              child: IgnorePointer(
                ignoring: widget.isLoading,
                child: OnSecreenNumberKeyboardWidget(
                  onKeyPressed: addDigit,
                  onDelete: deleteDigit,
                  onDeleteLongPress: clearAll,
                ),
              ),
            ),
          ],
        ),

        if (widget.isLoading)
          Positioned.fill(
            child: Container(
              color: Colors.black.withValues(alpha: 0.2),
              child: LoadingIndicatorWidget(),
            ),
          ),
      ],
    );
  }
}
