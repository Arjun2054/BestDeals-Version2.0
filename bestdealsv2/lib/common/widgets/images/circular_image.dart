// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    Key? key,
    this.fit = BoxFit.cover,
    required this.image,
    required this.isNetworkImage,
    this.overlayColor,
    this.backgroundColor,
    this.padding = TSizes.sm,
    this.width = 56,
    this.height = 56,
  }) : super(key: key);
  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        ///-- If Image background color is null then switch it to light and dark mode color design
        color: backgroundColor ??
            (THelperFunctions.isDarkMode(context)
                ? TColors.blackColor
                : TColors.whiteColor),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Image(
          image: isNetworkImage
              ? NetworkImage(image)
              : AssetImage(image) as ImageProvider,
          fit: fit,
          color: overlayColor,
        ),
      ),
    );
  }
}
