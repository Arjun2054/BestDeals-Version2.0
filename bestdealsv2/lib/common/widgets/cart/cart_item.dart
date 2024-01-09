import 'package:bestdealsv2/common/widgets/images/rounded_images.dart';
import 'package:bestdealsv2/common/widgets/text/course_topic_title_with_verfied_icon.dart';
import 'package:bestdealsv2/common/widgets/text/course_title.dart';
import 'package:bestdealsv2/utils/constants/colors.dart';
import 'package:bestdealsv2/utils/constants/image_strings.dart';
import 'package:bestdealsv2/utils/constants/sizes.dart';
import 'package:bestdealsv2/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ///--Image---
        TRoundedImages(
          imageUrl: TImages.courseImage5,
          width: 70,
          height: 70,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: THelperFunctions.isDarkMode(context)
              ? TColors.darkGreyColor
              : TColors.light,
        ),
        const SizedBox(
          width: TSizes.spaceBtwnItems,
        ),

        ///-- Title, Price
        const Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TCourseTopicTitleWithVerfiedIcon(title: 'AutoCAD'),
              Flexible(
                child: TCourseTitleText(
                  title:
                      'Complete AutoCAD 2D&3D From Beginners To Expert Course',
                  maxLines: 2,
                  smallSize: true,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
