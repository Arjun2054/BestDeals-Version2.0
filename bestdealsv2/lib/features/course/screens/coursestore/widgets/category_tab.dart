import 'package:bestdealsv2/common/widgets/courses/course_cards/course_card_vertical.dart';
import 'package:bestdealsv2/common/widgets/layouts/grid_layout.dart';
import 'package:bestdealsv2/common/widgets/text/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/courses/course_cards/course_brand_card.dart';
import '../../../../../common/widgets/custom_shapes/container/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///-- Course Brand
              const TRoundedContainer(
                showBorder: true,
                borderColor: TColors.darkGreyColor,
                backgroundColor: Colors.transparent,
                padding: EdgeInsets.all(TSizes.md),
                margin: EdgeInsets.only(bottom: TSizes.spaceBtwnItems),
                child: TCourseBrandCard(showBorder: false),
              ),
              const SizedBox(
                height: TSizes.spaceBtwnItems,
              ),
              const TRoundedContainer(
                showBorder: true,
                borderColor: TColors.darkGreyColor,
                backgroundColor: Colors.transparent,
                padding: EdgeInsets.all(TSizes.md),
                margin: EdgeInsets.only(bottom: TSizes.spaceBtwnItems),
                child: TCourseBrandCard(showBorder: false),
              ),
              const SizedBox(
                height: TSizes.spaceBtwnItems,
              ),

              ///-- Courses

              TSectionHeading(
                title: 'Choose Your  Courses',
                onPressed: () {},
              ),
              const SizedBox(
                height: TSizes.spaceBtwnItems,
              ),
              TGridLayout(
                itemCount: 10,
                itembuilder: (_, index) {
                  return const TCourseCardVertical();
                },
              ),
              const SizedBox(
                height: TSizes.spaceBtwnItems,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
