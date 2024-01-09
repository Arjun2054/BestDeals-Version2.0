import 'package:bestdealsv2/features/course/screens/sub_category/sub_category_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../common/widgets/image_with_text/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          itemCount: 5,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return TVerticalImageText(
              image: TImages.gameDesigner,
              title: "Designs",
              onTap: () => Get.to(() => const SubCategoryScreen()),
            );
          }),
    );
  }
}
