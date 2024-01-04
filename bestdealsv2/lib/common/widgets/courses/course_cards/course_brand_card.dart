import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/emums.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../custom_shapes/container/rounded_container.dart';
import '../../images/circular_image.dart';
import '../../text/course_brand_title_with_verfied_icon.dart';

class TCourseBrandCard extends StatelessWidget {
  const TCourseBrandCard({super.key, this.onTap, required this.showBorder});
  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: TRoundedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            ///- Icon
            Flexible(
              child: TCircularImage(
                image: TImages.rendering,
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
                overlayColor: THelperFunctions.isDarkMode(context)
                    ? TColors.whiteColor
                    : TColors.blackColor,
              ),
            ),

            const SizedBox(
              width: TSizes.spaceBtwnItems / 2,
            ),

            ///-- Text
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TCourseBrandTitleWithVerfiedIcon(
                    title: 'Vray',
                    courseBrandTextSize: TextSizes.large,
                  ),
                  Text(
                    '10 Courses',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
