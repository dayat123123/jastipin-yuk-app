import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';
import 'package:jastipin_yuk/shared/misc/file_paths.dart';
import 'package:jastipin_yuk/shared/widgets/container/on_screen_number_keyboard_widget.dart';

class OtpPhoneNumberInputPage extends StatefulWidget {
  const OtpPhoneNumberInputPage({super.key});

  @override
  State<OtpPhoneNumberInputPage> createState() =>
      _OtpPhoneNumberInputPageState();
}

class _OtpPhoneNumberInputPageState extends State<OtpPhoneNumberInputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Verify Phone Number")),
      body: Padding(
        padding: AppStyles.paddingHorizontalMediumWithBottom,
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  SvgPicture.asset(
                    colorFilter: ColorFilter.mode(
                      context.themeColors.primary,
                      BlendMode.srcIn,
                    ),
                    height: 250,
                    width: 250,
                    FilePaths.otpPhoneSvg,
                  ),
                  const SizedBox(height: 24.0),
                  Text(
                    "You will receive 6 digits\npin to validate OTP",
                    textAlign: TextAlign.center,
                    style: context.textStyle.body,
                  ),
                  const SizedBox(height: 24.0),
                ],
              ),
            ),
            Container(
              height: 60,
              width: context.fullWidth,
              decoration: BoxDecoration(
                borderRadius: AppStyles.borderRadiusMediumG,
                border: Border.all(
                  width: 1,
                  color: context.themeColors.separator,
                ),
              ),
            ),
            SizedBox(height: 16),
            OnSecreenNumberKeyboardWidget(
              onKeyPressed: (p0) {
                print(p0);
              },
              onDelete: () {},
              onDeleteLongPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}
