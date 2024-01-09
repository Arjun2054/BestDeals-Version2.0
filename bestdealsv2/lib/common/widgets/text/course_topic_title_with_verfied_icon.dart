// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bestdealsv2/common/widgets/text/course_topic_title.dart';
import 'package:bestdealsv2/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/emums.dart';

class TCourseTopicTitleWithVerfiedIcon extends StatelessWidget {
  const TCourseTopicTitleWithVerfiedIcon({
    Key? key,
    required this.title,
    this.maxLines = 1,
    this.iconColor = TColors.primary,
    this.textAlign = TextAlign.center,
    this.textColor,
    this.courseTopicTextSize = TextSizes.small,
  }) : super(key: key);

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes courseTopicTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: TCourseTopicTitle(
            title: title,
            color: textColor,
            maxlines: maxLines,
            textAlign: textAlign,
            courseTopicTextSizes: courseTopicTextSize,
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
