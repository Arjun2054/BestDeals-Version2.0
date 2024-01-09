import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/sizes.dart';
import '../courses/course_cards/course_card_vertical.dart';
import '../layouts/grid_layout.dart';

class TSortableCourses extends StatelessWidget {
  const TSortableCourses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///-- Dropdown
        DropdownButtonFormField(
            decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
            items: [
              'Name',
              'Higher Price',
              'Lower Price',
              'Sale',
              'Newest',
              'Top Seller'
            ]
                .map((options) => DropdownMenuItem(
                      value: options,
                      child: Text(options),
                    ))
                .toList(),
            onChanged: (value) {}),
        const SizedBox(
          height: TSizes.spaceBtwnSections,
        ),
        TGridLayout(
          itemCount: 7,
          itembuilder: (_, index) => const TCourseCardVertical(),
        ),
      ],
    );
  }
}
