import 'package:bestdealsv2/utils/constants/image_strings.dart';
import 'package:bestdealsv2/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/texts.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            // Images with 65% of screen width
            Image(
              image: const AssetImage(TImages.emailVerify),
              width: THelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(
              height: TSizes.spaceBtwnSections,
            ),

            // Title & Subtitle
            Text(
              TTexts.changeYourPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSizes.spaceBtwnItems,
            ),
            Text(
              TTexts.changeYourPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSizes.spaceBtwnItems,
            ),

            // Buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(TTexts.done),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwnItems,
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: const Text(TTexts.resendEmail),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
