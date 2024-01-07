import 'package:bestdealsv2/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:bestdealsv2/common/widgets/list_tile/detail_menu_title.dart';

import 'package:bestdealsv2/utils/constants/colors.dart';
import 'package:bestdealsv2/utils/constants/sizes.dart';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/list_tile/setting_menu_tile.dart';
import '../../../../../common/widgets/text/course_price_text.dart';

class TCourseMetaData extends StatelessWidget {
  const TCourseMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///--Price  and Sales Price
        Row(
          children: [
            /// Sale Tag
            TRoundedContainer(
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
            ),
            const SizedBox(
              width: TSizes.spaceBtwnItems,
            ),

            /// Price

            const TCoursePriceText(
              price: '1000',
              islarge: true,
            ),
            const SizedBox(
              width: TSizes.spaceBtwnItems,
            ),
            const TCoursePriceText(
              lineThrough: true,
              price: '1800',
            ),
          ],
        ),

        const SizedBox(
          height: TSizes.spaceBtwnItems,
        ),

        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: 'Created by',
                  style: Theme.of(context).textTheme.bodyLarge),
              const TextSpan(text: ' '),
              TextSpan(
                  text: 'Susanta Shrestha',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .apply(color: TColors.primaryColor)),
            ],
          ),
        ),

        const TDetailsMenuTile(icon: Iconsax.video, title: '10 Lessons'),
        const TDetailsMenuTile(icon: Iconsax.language_circle, title: 'Nepali'),
      ],
    );
  }
}
