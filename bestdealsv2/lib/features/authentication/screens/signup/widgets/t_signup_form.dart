import 'package:bestdealsv2/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          /// First Name and last Name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: TTexts.firstName,
                  ),
                ),
              ),
              const SizedBox(
                width: TSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: TTexts.lastName,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          /// UserName
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.user_edit),
              labelText: TTexts.username,
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          /// email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct),
              labelText: TTexts.email,
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          /// phone number
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.call),
              labelText: TTexts.phoneNo,
            ),
          ),

          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          // Password
          TextFormField(
            decoration: const InputDecoration(
              suffixIcon: Icon(Iconsax.eye_slash),
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TTexts.password,
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          Row(
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: Checkbox(value: true, onChanged: (value) {}),
              ),
              const SizedBox(
                width: TSizes.spaceBtwnItems,
              ),
              Text.rich(TextSpan(
                children: [
                  TextSpan(
                    text: TTexts.iAgreeTo,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: '${TTexts.privacyPolicy} ',
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark
                            ? TColors.textWhiteColor
                            : TColors.primaryColor,
                        decorationColor: dark
                            ? TColors.textWhiteColor
                            : TColors.primaryColor,
                        decoration: TextDecoration.underline),
                  ),
                  TextSpan(
                    text: TTexts.and,
                    style: Theme.of(context).textTheme.bodyMedium!,
                  ),
                  TextSpan(
                    text: '${TTexts.termOfUse} ',
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark
                            ? TColors.textWhiteColor
                            : TColors.primaryColor,
                        decorationColor: dark
                            ? TColors.textWhiteColor
                            : TColors.primaryColor,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ))
            ],
          ),

          /// SIgnup buttom
          ///
          const SizedBox(
            height: TSizes.spaceBtwnSections,
          ),

          // Sign In Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(TTexts.signupTitle),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwnItems,
          ),
        ],
      ),
    );
  }
}
