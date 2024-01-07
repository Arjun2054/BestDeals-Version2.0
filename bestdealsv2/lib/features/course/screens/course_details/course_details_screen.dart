import 'package:bestdealsv2/common/widgets/appbar/app_bar.dart';
import 'package:bestdealsv2/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:bestdealsv2/common/widgets/images/circular_image.dart';
import 'package:bestdealsv2/common/widgets/list_tile/setting_menu_tile.dart';
import 'package:bestdealsv2/common/widgets/text/course_title.dart';
import 'package:bestdealsv2/common/widgets/text/section_heading.dart';
import 'package:bestdealsv2/features/course/screens/course_details/widgets/course_meta_data.dart';
import 'package:bestdealsv2/features/course/screens/course_reviews/course_review_screen.dart';
import 'package:bestdealsv2/utils/constants/colors.dart';
import 'package:bestdealsv2/utils/constants/image_strings.dart';
import 'package:bestdealsv2/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import '../../../../common/widgets/images/rounded_images.dart';
import '../../../../common/widgets/list_tile/detail_menu_title.dart';
import '../../../../utils/constants/sizes.dart';
import 'widgets/course_rating_widget.dart';

class CourseDetailsScreen extends StatelessWidget {
  const CourseDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Course Details',
            style: Theme.of(context).textTheme.headlineSmall),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Iconsax.heart5,
              color: Colors.red,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///-- Course Image
            const TCurvedEdgeWidget(
              child: Center(
                child: TRoundedImages(
                  padding: EdgeInsets.all(TSizes.courseImageRadius),
                  imageUrl: TImages.courseImage11,
                  applyImageRadius: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  // Title
                  const TCourseTitleText(
                      title:
                          'Ultimate 3ds Max + V-Ray Photorealistic 3D Rendering Course'),
                  const SizedBox(
                    height: TSizes.spaceBtwnItems,
                  ),

                  ///--Rating
                  const TRatingWidget(),
                  const SizedBox(
                    height: TSizes.spaceBtwnItems,
                  ),

                  ///-- Price, Title, Brand
                  const TCourseMetaData(),

                  ///-- What you Learn
                  const SizedBox(
                    height: TSizes.spaceBtwnItems,
                  ),
                  const Column(
                    children: [
                      TSectionHeading(
                        title: 'What you will learn',
                        showActionButton: false,
                      ),
                      TDetailsMenuTile(
                        icon: Iconsax.tick_square,
                        title:
                            'Make and edit their own AutoCAD Drawings, Plans and Layouts',
                      ),
                      TDetailsMenuTile(
                        icon: Iconsax.tick_square,
                        title:
                            'Make and edit their own AutoCAD Drawings, Plans and Layouts',
                      ),
                      TDetailsMenuTile(
                        icon: Iconsax.tick_square,
                        title:
                            'Make and edit their own AutoCAD Drawings, Plans and Layouts',
                      ),
                      TDetailsMenuTile(
                        icon: Iconsax.tick_square,
                        title:
                            'Make and edit their own AutoCAD Drawings, Plans and Layouts',
                      ),
                    ],
                  ),

                  ///-- Course Curriculum
                  const SizedBox(
                    height: TSizes.spaceBtwnItems,
                  ),
                  const TSectionHeading(
                    title: 'Course Curriculum',
                    showActionButton: false,
                  ),

                  SizedBox(
                    height: 350,
                    child: ListView.builder(
                      itemCount: 5,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {},
                          child: Container(
                            margin: const EdgeInsets.all(TSizes.sm),
                            padding: const EdgeInsets.all(TSizes.sm),
                            decoration: BoxDecoration(
                                color: dark ? Colors.black : Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: TColors.borderprimaryColor
                                        .withOpacity(0.9),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: const Offset(1, 1),
                                  )
                                ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(TSizes.md),
                                  child: Icon(
                                    Iconsax.video4,
                                    size: TSizes.iconMd,
                                  ),
                                ),
                                const SizedBox(width: TSizes.sm),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Course Introduction",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge,
                                      ),
                                      const SizedBox(height: TSizes.xs),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.schedule_outlined,
                                            color: dark
                                                ? TColors.whiteColor
                                                : TColors.blackColor,
                                            size: 16,
                                          ),
                                          const SizedBox(width: TSizes.xs),
                                          Text(
                                            '12 min',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: dark
                                      ? TColors.whiteColor
                                      : TColors.blackColor,
                                  size: TSizes.iconSm,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwnSections,
                  ),

                  ///-- Buy Now Button

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Buy Now'),
                    ),
                  ),

                  ///--Description--------
                  const SizedBox(
                    height: TSizes.spaceBtwnItems,
                  ),
                  const TSectionHeading(
                    title: "Description",
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwnItems,
                  ),
                  const ReadMoreText(
                    "This course is a full-length AutoCAD 2018, 19, 20 and 2021 learning package which contains almost all of the topics that you will ever need to work with this software. The course is designed for a beginner as well as seasoned users. A beginner can start learning the software right from scratch by following the course along just from lecture one. A seasoned AutoCAD user will also find this course very comprehensive and they can choose the topics they want to learn about skipping the basics.",
                    trimLines: 4,
                    trimMode: TrimMode.Line,
                    trimExpandedText: 'show less',
                    trimCollapsedText: 'show more',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  ///---Review---
                  const Divider(),
                  const SizedBox(
                    height: TSizes.spaceBtwnItems,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(
                        title: 'Review(10)',
                        showActionButton: false,
                      ),
                      IconButton(
                          onPressed: () =>
                              Get.to(() => const CourseReviewScreen()),
                          icon: const Icon(
                            Iconsax.arrow_right_3,
                            size: 18,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwnItems,
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
