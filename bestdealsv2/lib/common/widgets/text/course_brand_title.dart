// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../utils/constants/emums.dart';

class TCourseBrandTitle extends StatelessWidget {
  const TCourseBrandTitle({
    Key? key,
    this.color,
    required this.title,
    this.maxlines = 1,
    this.textAlign = TextAlign.center,
    this.courseBrandtextSizes = TextSizes.small,
  }) : super(key: key);

  final Color? color;
  final String title;
  final int maxlines;
  final TextAlign? textAlign;
  final TextSizes courseBrandtextSizes;

  @override
  Widget build(BuildContext context) {
    return Text(
      title, textAlign: textAlign, overflow: TextOverflow.ellipsis,

      /// Check which brandcourse is required and set that style
      style: courseBrandtextSizes == TextSizes.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
          : courseBrandtextSizes == TextSizes.medium
              ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
              : courseBrandtextSizes == TextSizes.large
                  ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
                  : Theme.of(context).textTheme.bodyMedium!.apply(color: color),
    );
  }
}
