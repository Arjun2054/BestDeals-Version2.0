import 'package:bestdealsv2/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:bestdealsv2/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/texts.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Heading
            Text(
              TTexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            const SizedBox(
              height: TSizes.spaceBtwnItems,
            ),
            Text(
              TTexts.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: TSizes.spaceBtwnItems * 2,
            ),

            // Text field

            TextFormField(
              decoration: const InputDecoration(
                labelText: TTexts.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),

            // Submit Button

            const SizedBox(
              height: TSizes.spaceBtwnSections,
            ),

            // Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const ResetPassword());
                },
                child: const Text(TTexts.submit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
