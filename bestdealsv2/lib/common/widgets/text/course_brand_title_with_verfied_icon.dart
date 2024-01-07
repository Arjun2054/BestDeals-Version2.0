// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bestdealsv2/common/widgets/text/course_brand_title.dart';
import 'package:bestdealsv2/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/emums.dart';

class TCourseBrandTitleWithVerfiedIcon extends StatelessWidget {
  const TCourseBrandTitleWithVerfiedIcon({
    Key? key,
    required this.title,
    this.maxLines = 1,
    this.iconColor = TColors.primaryColor,
    this.textAlign = TextAlign.center,
    this.textColor,
    this.courseBrandTextSize = TextSizes.small,
  }) : super(key: key);

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes courseBrandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: TCourseBrandTitle(
            title: title,
            color: textColor,
            maxlines: maxLines,
            textAlign: textAlign,
            courseBrandtextSizes: courseBrandTextSize,
          ),
        ),
        const SizedBox(
          width: TSizes.xs,
        ),
        Icon(
          Iconsax.video5,
          color: iconColor,
          size: TSizes.iconXs,
        )
      ],
    );
  }
}
