import 'package:bestdealsv2/common/widgets/appbar/app_bar.dart';
import 'package:bestdealsv2/common/widgets/courses/course_cards/course_card_horizontal.dart';
import 'package:bestdealsv2/common/widgets/images/rounded_images.dart';
import 'package:bestdealsv2/common/widgets/text/section_heading.dart';
import 'package:bestdealsv2/utils/constants/image_strings.dart';
import 'package:bestdealsv2/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Architecural'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///-- Banner
              const TRoundedImages(
                imageUrl: TImages.bannerImage3,
                applyImageRadius: true,
                width: double.infinity,
              ),
              const SizedBox(
                height: TSizes.spaceBtwnSections,
              ),

              /// --Sub-categories
              Column(
                children: [
                  ///--Heading
                  TSectionHeading(
                    title: 'Beginner Course',
                    showActionButton: true,
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwnItems / 2,
                  ),

                  SizedBox(
                    height: 110,
                    child: ListView.separated(
                      itemBuilder: (context, index) =>
                          const TCourseCardHorizontal(),
                      separatorBuilder: (context, index) => const SizedBox(
                        width: TSizes.spaceBtwnItems,
                      ),
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwnSections,
                  ),
                  TSectionHeading(
                    title: 'Advance  Course',
                    showActionButton: true,
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwnItems / 2,
                  ),

                  SizedBox(
                      height: 110,
                      child: ListView.separated(
                        itemBuilder: (context, index) =>
                            const TCourseCardHorizontal(),
                        separatorBuilder: (context, index) => const SizedBox(
                          width: TSizes.spaceBtwnItems,
                        ),
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
