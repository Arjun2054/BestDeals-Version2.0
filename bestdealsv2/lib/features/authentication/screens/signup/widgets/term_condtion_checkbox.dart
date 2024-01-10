import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../../controllers/signup/sign_up_controller.dart';

class TTermAndConditionCheckbox extends StatelessWidget {
  const TTermAndConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Obx(() => Checkbox(
              value: controller.privacyPolicy.value,
              onChanged: (value) => controller.privacyPolicy.value =
                  !controller.privacyPolicy.value)),
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
                  color: dark ? TColors.textWhiteColor : TColors.primary,
                  decorationColor:
                      dark ? TColors.textWhiteColor : TColors.primary,
                  decoration: TextDecoration.underline),
            ),
            TextSpan(
              text: TTexts.and,
              style: Theme.of(context).textTheme.bodyMedium!,
            ),
            TextSpan(
              text: '${TTexts.termOfUse} ',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? TColors.textWhiteColor : TColors.primary,
                  decorationColor:
                      dark ? TColors.textWhiteColor : TColors.primary,
                  decoration: TextDecoration.underline),
            ),
          ],
        ))
      ],
    );
  }
}
