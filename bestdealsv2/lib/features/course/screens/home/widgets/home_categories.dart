import 'package:flutter/material.dart';

import '../../../../../common/widgets/image_with_text/vertical_image_text.dart';
import '../../../../../common/widgets/text/section_heading.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: TSizes.defaultSpace),
      child: Column(
        children: [
          const TSectionHeading(
            title: 'Popular Category',
            textColor: TColors.whiteColor,
            showActionButton: false,
          ),
          const SizedBox(
            height: TSizes.spaceBtwnItems,
          ),
          SizedBox(
            height: 80,
            child: ListView.builder(
                itemCount: 6,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return const TVerticalImageText(
                    image: TImages.gameDesigner,
                    title: "Game Design",
                    backgroundColor: TColors.whiteColor,
                  );
                }),
          ),
          const SizedBox(
            height: TSizes.spaceBtwnSections,
          ),
        ],
      ),
    );
  }
}
