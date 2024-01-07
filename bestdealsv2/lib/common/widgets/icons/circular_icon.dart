// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bestdealsv2/utils/constants/sizes.dart';
import 'package:bestdealsv2/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    Key? key,
    this.size = TSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.width,
    this.height,
    this.onPressed,
  }) : super(key: key);

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: backgroundColor != null
              ? backgroundColor!
              : THelperFunctions.isDarkMode(context)
                  ? TColors.blackColor.withOpacity(0.9)
                  : TColors.whiteColor.withOpacity(0.9),
          borderRadius: BorderRadius.circular(100)),
    );
  }
}
