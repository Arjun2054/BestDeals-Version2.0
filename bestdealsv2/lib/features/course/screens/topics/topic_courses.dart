import 'package:bestdealsv2/common/widgets/appbar/app_bar.dart';
import 'package:bestdealsv2/common/widgets/courses/course_cards/course_topic_card.dart';
import 'package:bestdealsv2/common/widgets/sortable/sortable_course.dart';
import 'package:bestdealsv2/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TopicCourses extends StatelessWidget {
  const TopicCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(
        title: Text('AutoCAD'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///-- Topis Details
              TCourseTopicCard(showBorder: true),
              SizedBox(
                height: TSizes.spaceBtwnSections,
              ),
              TSortableCourses(),
            ],
          ),
        ),
      ),
    );
  }
}
