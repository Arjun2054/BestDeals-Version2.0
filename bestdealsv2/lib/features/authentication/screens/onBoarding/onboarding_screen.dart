import 'package:bestdealsv2/features/authentication/screens/onBoarding/widgets/onBoarding_next.dart';
import 'package:bestdealsv2/utils/constants/image_strings.dart';

import 'package:bestdealsv2/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import '../../controller.onboarding/onboarding_controller.dart';
import 'widgets/onboarding_dot_navigation.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Page

          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingSearch,
                title: TTexts.onBoradingTitle1,
                subTitile: TTexts.onBoradingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingHome,
                title: TTexts.onBoradingTitle2,
                subTitile: TTexts.onBoradingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingVideos,
                title: TTexts.onBoradingTitle3,
                subTitile: TTexts.onBoradingSubTitle3,
              ),
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation SmoothPage Indicator

          const OnBoardingDotNavigation(),

          /// Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
