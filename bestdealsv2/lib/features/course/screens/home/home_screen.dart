// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bestdealsv2/common/widgets/courses/course_cards/course_card_vertical.dart';
import 'package:bestdealsv2/common/widgets/layouts/grid_layout.dart';
import 'package:bestdealsv2/common/widgets/text/section_heading.dart';
import 'package:bestdealsv2/features/course/screens/home/widgets/home_app_bar.dart';
import 'package:bestdealsv2/utils/constants/sizes.dart';
import 'package:bestdealsv2/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/custom_shapes/container/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/container/search_container.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import 'widgets/home_categories.dart';
import 'widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // -- Appbar
                  THomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwnSections,
                  ),

                  // -- Searchbar
                  TSearchContainer(
                    showBackground: true,
                    showBorder: true,
                    text: TTexts.homeSearchTitle,
                    icon: (Iconsax.search_normal),
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwnSections,
                  ),

                  // -- Categories

                  THomeCategories(),
                ],
              ),
            ),

            // Body Part
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // Promo Sliders
                  const TPromoSlider(
                    banners: [
                      TImages.bannerImage1,
                      TImages.bannerImage2,
                      TImages.bannerImage3
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwnSections,
                  ),

                  // Heading
                  TSectionHeading(
                    title: "Popular Course",
                    onPressed: () {},
                    showActionButton: true,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwnItems,
                  ),

                  TGridLayout(
                      itemCount: 4,
                      itembuilder: (_, index) => const TCourseCardVertical())

                  // Popular Courses
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
