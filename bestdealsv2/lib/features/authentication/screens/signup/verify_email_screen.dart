import 'package:bestdealsv2/common/widgets/sucess_screen/success_screen.dart';
import 'package:bestdealsv2/features/authentication/screens/login/login_screen.dart';
import 'package:bestdealsv2/utils/constants/image_strings.dart';
import 'package:bestdealsv2/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/texts.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// The Close icon is the app bar is used to logout and redirect the to the login screen
      /// This approach is taken to handle scenarios where the user enters the registration process,
      /// and the data is stored. Open reopening the app, its check if the email is verified.
      /// If not verfied, the app always navigates to the verfiication screen
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        // Padding is give default equal space on all side in all screens
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Images
              Image(
                image: const AssetImage(TImages.emailVerify),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: TSizes.spaceBtwnSections,
              ),

              /// Title and Substitle
              Text(
                TTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwnItems,
              ),
              Text(
                'supportemail@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwnItems,
              ),
              Text(
                TTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),

              ///
              /// Buttons
              const SizedBox(
                height: TSizes.spaceBtwnItems,
              ),
              // Sign In Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  // onPressed: () => Get.to(() => SuccessScreen(
                  //       image: TImages.emailCreatedSucess,
                  //       title: TTexts.youraccountCreatedTitle,
                  //       subTitle: TTexts.yourAccountCreatedSubTitle,
                  //       onPressed: () => Get.offAll(() => const LoginScreen()),
                  //     )),
                  child: const Text(TTexts.tContinue),
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwnItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  // onPressed: () => Get.to(() => const VerifyEmailScreen()),
                  onPressed: () {},
                  child: const Text(TTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
