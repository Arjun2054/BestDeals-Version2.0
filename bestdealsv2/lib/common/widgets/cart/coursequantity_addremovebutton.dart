import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../icons/circular_icon.dart';

class TCourseQuantityWithAddRemoveButton extends StatelessWidget {
  const TCourseQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // add Remove Items
        TCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: TSizes.md,
          color: THelperFunctions.isDarkMode(context)
              ? TColors.whiteColor
              : TColors.blackColor,
          backgroundColor: THelperFunctions.isDarkMode(context)
              ? TColors.darkerGreyColor
              : TColors.light,
        ),

        const SizedBox(
          width: TSizes.spaceBtwnItems,
        ),
        Text(
          '2',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(
          width: TSizes.spaceBtwnItems,
        ),
        const TCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: TSizes.md,
          color: TColors.whiteColor,
          backgroundColor: TColors.primary,
        ),
      ],
    );
  }
}
