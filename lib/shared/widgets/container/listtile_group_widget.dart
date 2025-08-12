import 'package:flutter/material.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';
import 'package:jastipin_yuk/shared/widgets/container/card_container_widget.dart';

class ListTileGroupWidget extends StatelessWidget {
  final List<ItemGroup> listWidget;
  final String title;
  const ListTileGroupWidget({
    super.key,
    required this.listWidget,
    this.title = "",
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title.isNotEmpty)
          Text(title, style: context.textStyle.headline.copyWith(fontSize: 20)),
        const SizedBox(height: 12.0),
        CardContainerWidget(
          padding: EdgeInsets.zero,
          child: ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder:
                (context, index) => _itemWidget(listWidget[index], context),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: listWidget.length,
          ),
        ),
      ],
    );
  }

  Widget _itemWidget(ItemGroup data, BuildContext context) {
    return ListTile(
      dense: true,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      contentPadding: AppStyles.paddingHorizontalMedium,
      trailing:
          data.trailing ??
          (data.withDefaultTrailingIcon
              ? const Icon(Icons.keyboard_arrow_right)
              : null),
      leading: data.icon,
      title: Text(
        data.title,
        style: data.titleTextStyle ?? context.textStyle.labelStyle,
      ),
      subtitle:
          data.subtitle != null
              ? Text(data.subtitle!, style: context.textStyle.subhead)
              : null,
      onTap: data.onTap,
    );
  }
}

class ItemGroup {
  final String title;
  final String? subtitle;
  final Widget? icon;
  final Widget? trailing;
  final bool withDefaultTrailingIcon;
  final TextStyle? titleTextStyle;
  final VoidCallback? onTap;

  ItemGroup({
    required this.title,
    this.subtitle,
    this.icon,
    this.onTap,
    this.trailing,
    this.withDefaultTrailingIcon = true,
    this.titleTextStyle,
  });
}
