import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';

class OnSecreenNumberKeyboardWidget extends StatelessWidget {
  final Function(String) onKeyPressed;
  final bool isEnable;
  final VoidCallback onDelete;
  final VoidCallback onDeleteLongPress;

  const OnSecreenNumberKeyboardWidget({
    super.key,
    required this.onKeyPressed,
    required this.onDelete,
    required this.onDeleteLongPress,
    this.isEnable = true,
  });

  @override
  Widget build(BuildContext context) {
    Color? splashColor = context.theme.primaryColor.withValues(alpha: 0.05);
    return GridView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1.75,
      ),
      itemCount: 12,
      itemBuilder: (context, index) {
        if (index == 9) {
          return SizedBox.shrink();
        } else if (index == 10) {
          return _buildKey("0", splashColor);
        } else if (index == 11) {
          return _buildDeleteKey(splashColor);
        }
        return _buildKey("${index + 1}", splashColor);
      },
    );
  }

  Widget _buildKey(String number, Color? splashColor) {
    return InkWell(
      onTap: () {
        if (isEnable) {
          HapticFeedback.mediumImpact();
          onKeyPressed(number);
        }
      },
      borderRadius: BorderRadius.circular(6),
      splashColor: splashColor,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(6),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
        child: Center(
          child: Text(
            number,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget _buildDeleteKey(Color? splashColor) {
    return InkWell(
      onTap: () {
        if (isEnable) {
          HapticFeedback.mediumImpact();
          onDelete();
        }
      },
      onLongPress: () {
        if (isEnable) onDeleteLongPress();
      },
      borderRadius: BorderRadius.circular(6),
      splashColor: splashColor,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(6),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
        child: Center(child: Icon(Icons.backspace, size: 24)),
      ),
    );
  }
}
