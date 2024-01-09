import 'package:bestdealsv2/common/widgets/appbar/app_bar.dart';
import 'package:bestdealsv2/common/widgets/appbar/tab_bar.dart';
import 'package:bestdealsv2/common/widgets/custom_shapes/container/search_container.dart';
import 'package:bestdealsv2/common/widgets/layouts/grid_layout.dart';
import 'package:bestdealsv2/common/widgets/text/section_heading.dart';
import 'package:bestdealsv2/features/course/screens/topics/all_topics.dart';
import 'package:bestdealsv2/utils/constants/sizes.dart';
import 'package:bestdealsv2/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/courses/course_cards/course_topic_card.dart';
import '../../../../utils/constants/colors.dart';
import 'widgets/category_tab.dart';

class CourseStoreScreen extends StatelessWidget {
  const CourseStoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            'Course Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrooled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.blackColor
                    : TColors.whiteColor,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      //--- Search Bar
                      const SizedBox(
                        height: TSizes.spaceBtwnItems,
                      ),
                      const TSearchContainer(
                        text: 'Search in Store',
                        icon: Iconsax.search_normal4,
                        showBackground: false,
                        showBorder: true,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwnItems,
                      ),

                      ///-- Features Courses Headings
                      TSectionHeading(
                        title: 'Topics',
                        onPressed: () => Get.to(() => const AllTopics()),
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwnItems / 1.5,
                      ),

                      TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itembuilder: (_, index) {
                          return const TCourseTopicCard(
                            showBorder: true,
                          );
                        },
                      ),
                    ],
                  ),
                ),

                /// Tabs
                bottom: const TTabBar(
                  tabs: [
                    Tab(
                      child: Text('Architecural'),
                    ),
                    Tab(
                      child: Text('Interior'),
                    ),
                    Tab(
                      child: Text('Render'),
                    ),
                    Tab(
                      child: Text('Game Design'),
                    ),
                    Tab(
                      child: Text('Fashion'),
                    ),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
