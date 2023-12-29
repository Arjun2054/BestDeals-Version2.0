import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    Key? key,
    required this.text,
    this.icon,
    required this.showBackground,
    required this.showBorder,
    this.onTap,
  }) : super(key: key);
  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
        child: Container(
          padding: const EdgeInsets.all(TSizes.md),
          width: TDeviceUtils.getScreenWidth(context),
          decoration: BoxDecoration(
              color: showBackground
                  ? isDark
                      ? TColors.blackColor
                      : TColors.whiteColor
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
              border: showBorder ? Border.all(color: TColors.greyColor) : null),
          child: Row(
            children: [
              Icon(
                icon,
                color: TColors.darkerGreyColor,
              ),
              const SizedBox(
                width: TSizes.md,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
