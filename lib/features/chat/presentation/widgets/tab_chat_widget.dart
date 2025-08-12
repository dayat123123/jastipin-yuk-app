import 'package:flutter/material.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';
import 'package:jastipin_yuk/shared/widgets/container/card_container_widget.dart';

class TabChatWidget extends StatelessWidget {
  const TabChatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> tabs = ["All", "Unread"];

    return Row(
      children: List.generate(tabs.length, (index) {
        // return Container(
        //   width: 100,
        //   margin: EdgeInsets.only(right: 16),
        //   padding: AppStyles.paddingAllSmall,
        //   decoration: BoxDecoration(
        //     color: context.themeColors.cardBackground,
        //     borderRadius: AppStyles.borderRadiusMediumG,
        //   ),
        //   child: Text(tabs[index]),
        // );
        return SizedBox(
          width: 100,
          child: CardContainerWidget(
            padding: AppStyles.paddingAllSmall,
            child: Text(tabs[index]),
          ),
        );
      }),
    );
  }
}
