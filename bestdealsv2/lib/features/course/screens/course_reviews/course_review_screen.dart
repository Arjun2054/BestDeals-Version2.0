// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bestdealsv2/common/widgets/appbar/app_bar.dart';
import 'package:bestdealsv2/common/widgets/ratings/rating_bar.dart';
import 'package:bestdealsv2/features/course/screens/course_reviews/widgets/user_review_card.dart';
import 'package:flutter/material.dart';
import '../../../../utils/constants/sizes.dart';
import 'widgets/overall_review_rating.dart';

class CourseReviewScreen extends StatelessWidget {
  const CourseReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///-- Appbar
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text(
          'Reviews & Ratings',
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Ratings and reviews  are verfied and are from prople who use the same type of device that you use.'),
              const SizedBox(
                height: TSizes.spaceBtwnItems,
              ),

              ///-- Overall Course Ratings
              const TOverallCourseRating(),
              const TRatingBarIndicator(rating: 2.3),
              Text(
                '12,611',
                style: Theme.of(context).textTheme.bodySmall,
              ),

              const SizedBox(
                height: TSizes.spaceBtwnSections,
              ),

              ///--- User Review List---
              const TUserReviewCard(),
              const SizedBox(
                height: TSizes.spaceBtwnSections,
              ),
              const TUserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
