import 'package:bestdealsv2/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:bestdealsv2/common/widgets/text/section_heading.dart';
import 'package:bestdealsv2/utils/constants/colors.dart';
import 'package:bestdealsv2/utils/constants/image_strings.dart';
import 'package:bestdealsv2/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TSectionHeading(
          title: 'Payment Method',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        Row(
          children: [
            TRoundedContainer(
              width: 60,
              height: 50,
              backgroundColor: dark ? TColors.light : TColors.whiteColor,
              padding: const EdgeInsets.all(TSizes.sm),
              child: const Image(image: AssetImage(TImages.esewa)),
            ),
            const SizedBox(
              height: TSizes.spaceBtwnItems / 1,
            ),
            Text(
              'Esewa',
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ],
        )
      ],
    );
  }
}
