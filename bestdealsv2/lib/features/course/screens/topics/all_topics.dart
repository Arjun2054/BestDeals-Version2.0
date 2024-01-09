import 'package:bestdealsv2/common/widgets/appbar/app_bar.dart';
import 'package:bestdealsv2/common/widgets/courses/course_cards/course_topic_card.dart';
import 'package:bestdealsv2/common/widgets/layouts/grid_layout.dart';
import 'package:bestdealsv2/common/widgets/text/section_heading.dart';
import 'package:bestdealsv2/features/course/screens/topics/topic_courses.dart';
import 'package:bestdealsv2/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllTopics extends StatelessWidget {
  const AllTopics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Topics'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Heading
              const TSectionHeading(
                title: 'Topics',
                showActionButton: false,
              ),
              const SizedBox(
                height: TSizes.spaceBtwnSections,
              ),

              ///-- Topics
              TGridLayout(
                mainAxisExtent: 80,
                itemCount: 8,
                itembuilder: (context, index) => TCourseTopicCard(
                  showBorder: true,
                  onTap: () => Get.to(() => const TopicCourses()),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
