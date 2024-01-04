import 'package:bestdealsv2/common/styles/shadows.dart';
import 'package:bestdealsv2/common/widgets/images/rounded_images.dart';
import 'package:bestdealsv2/common/widgets/text/course_brand_title_with_verfied_icon.dart';
import 'package:bestdealsv2/common/widgets/text/course_price_text.dart';
import 'package:bestdealsv2/common/widgets/text/course_title.dart';
import 'package:bestdealsv2/utils/constants/image_strings.dart';
import 'package:bestdealsv2/utils/constants/sizes.dart';
import 'package:bestdealsv2/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../custom_shapes/container/rounded_container.dart';

class TCourseCardVertical extends StatelessWidget {
  const TCourseCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    // Container with side paddings, colors, edges, radius and shadow
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalCourseShadow],
        borderRadius: BorderRadius.circular(TSizes.courseImageRadius),
        color: THelperFunctions.isDarkMode(context)
            ? TColors.darkerGreyColor
            : TColors.whiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Thumbnail, wishlist button , discont tag
          TRoundedContainer(
            height: 110,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: isDark ? TColors.darkColor : TColors.lightColor,
            child: Stack(
              children: [
                // ---Thumbnail Image
                const TRoundedImages(
                  imageUrl: TImages.courseImage11,
                  applyImageRadius: true,
                ),

                //-- Sale Tag
                Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondaryColor.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text(
                        "25%",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.blackColor),
                      ),
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwnItems / 2,
          ),

          // --Details
          const Padding(
            padding: EdgeInsets.only(left: TSizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TCourseTitleText(
                  title:
                      "Ultimate 3ds Max + V-Ray Photorealistic 3D Rendering Course",
                  smallSize: true,
                ),
                SizedBox(
                  height: TSizes.spaceBtwnItems / 1.5,
                ),
                TCourseBrandTitleWithVerfiedIcon(title: '3D Max'),
                SizedBox(
                  height: TSizes.spaceBtwnItems / 2,
                ),
              ],
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(left: TSizes.sm),
            child: TCoursePriceText(price: "980"),
          )
        ],
      ),
    );
  }
}
