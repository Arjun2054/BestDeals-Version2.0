import 'package:bestdealsv2/common/styles/spacing_styles.dart';
import 'package:bestdealsv2/features/authentication/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/texts.dart';
import '../../../utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });
  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight * 1.5,
          child: Column(
            children: [
              /// Images
              Image(
                image: AssetImage(image),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: TSizes.spaceBtwnSections,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwnItems,
              ),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwnItems,
              ),
              // Sign In Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.offAll(const LoginScreen());
                  },
                  child: const Text(TTexts.tContinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
