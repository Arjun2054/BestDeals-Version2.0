import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    Key? key,
    required this.title,
    required this.image,
    this.textColor = TColors.whiteColor,
    this.backgroundColor,
    this.onTap,
  }) : super(key: key);
  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwnItems),
        child: Column(
          children: [
            Container(
              height: 56,
              width: 56,
              padding: const EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: backgroundColor ??
                    (isDark ? TColors.blackColor : TColors.whiteColor),
              ),
              child: Center(
                  child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
                color: isDark ? TColors.lightColor : TColors.darkColor,
              )),
            ),
            const SizedBox(
              height: TSizes.spaceBtwnItems / 2,
            ),

            // Text
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context).textTheme.labelMedium!.apply(
                      color: TColors.textWhiteColor,
                    ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
