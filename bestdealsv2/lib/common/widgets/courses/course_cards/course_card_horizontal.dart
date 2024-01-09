import 'package:bestdealsv2/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:bestdealsv2/common/widgets/images/rounded_images.dart';
import 'package:bestdealsv2/common/widgets/text/course_topic_title_with_verfied_icon.dart';
import 'package:bestdealsv2/common/widgets/text/course_price_text.dart';
import 'package:bestdealsv2/common/widgets/text/course_title.dart';
import 'package:bestdealsv2/features/course/screens/course_details/course_details_screen.dart';
import 'package:bestdealsv2/utils/constants/image_strings.dart';
import 'package:bestdealsv2/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class TCourseCardHorizontal extends StatelessWidget {
  const TCourseCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const CourseDetailsScreen()),
      child: Container(
        width: 310,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(TSizes.courseImageRadius),
            color: dark ? TColors.darkerGreyColor : TColors.softGrey),
        child: Row(
          children: [
            ///---Thumbnail---
            Expanded(
              flex: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    ///-- Thumbnail Image----

                    const TRoundedImages(
                      imageUrl: TImages.courseImage2,
                      applyImageRadius: false,
                    ),
                    //-- Sale Tag
                    Positioned(
                      top: 0,
                      right: 0,
                      child: TRoundedContainer(
                        radius: 0,
                        backgroundColor: TColors.secondary.withOpacity(0.8),
                        padding: const EdgeInsets.symmetric(
                            horizontal: TSizes.sm, vertical: TSizes.xs),
                        child: Text(
                          "25%",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .apply(color: TColors.blackColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            ///--- Details---
            const Expanded(
              flex: 12,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: TSizes.sm, left: TSizes.sm),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TCourseTitleText(
                          title:
                              "Ultimate 3ds Max + V-Ray Photorealistic 3D Rendering Course",
                          smallSize: true,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwnItems / 2,
                        ),
                        TCourseTopicTitleWithVerfiedIcon(title: 'AutoCAD'),
                        SizedBox(
                          height: TSizes.spaceBtwnItems / 2,
                        ),
                        TCoursePriceText(
                          price: '1500 - 2000',
                          islarge: false,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
