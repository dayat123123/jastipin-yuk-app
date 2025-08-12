import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';

class ProfilePictureAvatar extends StatelessWidget {
  final String? imageUrl;
  final String titleOnFailedLoadImage;
  const ProfilePictureAvatar({
    super.key,
    this.imageUrl,
    required this.titleOnFailedLoadImage,
  });

  @override
  Widget build(BuildContext context) {
    if (imageUrl?.isEmpty ?? true) {
      return CircleAvatar(
        radius: 36,
        child: Text(
          titleOnFailedLoadImage,
          style: context.textStyle.largeTitle,
        ),
      );
    }
    return CachedNetworkImage(
      imageUrl: imageUrl!,
      imageBuilder:
          (context, imageProvider) =>
              CircleAvatar(radius: 48, backgroundImage: imageProvider),
      placeholder:
          (context, url) => const CircleAvatar(
            radius: 48,
            child: CircularProgressIndicator(),
          ),
      errorWidget:
          (context, url, error) => CircleAvatar(
            radius: 48,
            child: Text(
              titleOnFailedLoadImage,
              style: context.textStyle.largeTitle,
            ),
          ),
    );
  }
}
