// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../utils/constants/emums.dart';

class TCourseTopicTitle extends StatelessWidget {
  const TCourseTopicTitle({
    Key? key,
    this.color,
    required this.title,
    this.maxlines = 1,
    this.textAlign = TextAlign.center,
    this.courseTopicTextSizes = TextSizes.small,
  }) : super(key: key);

  final Color? color;
  final String title;
  final int maxlines;
  final TextAlign? textAlign;
  final TextSizes courseTopicTextSizes;

  @override
  Widget build(BuildContext context) {
    return Text(
      title, textAlign: textAlign, overflow: TextOverflow.ellipsis,

      /// Check which brandcourse is required and set that style
      style: courseTopicTextSizes == TextSizes.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
          : courseTopicTextSizes == TextSizes.medium
              ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
              : courseTopicTextSizes == TextSizes.large
                  ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
                  : Theme.of(context).textTheme.bodyMedium!.apply(color: color),
    );
  }
}
