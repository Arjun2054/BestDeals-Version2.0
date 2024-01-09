import 'package:bestdealsv2/common/widgets/cart/cart_item.dart';
import 'package:bestdealsv2/common/widgets/text/course_price_text.dart';
import 'package:bestdealsv2/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'coursequantity_addremovebutton.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({super.key, this.showAddRemoveButtons = true});

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (_, index) => Column(
        children: [
          ////-- Carts Items
          const TCartItem(),

          if (showAddRemoveButtons)
            const SizedBox(
              height: TSizes.spaceBtwnItems,
            ),

          // add Remove Buttton Row with total Price
          if (showAddRemoveButtons)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///-- Extra Space
                ///
                Row(
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    TCourseQuantityWithAddRemoveButton(),
                  ],
                ),

                TCoursePriceText(price: '1500')
              ],
            ),
        ],
      ),
      separatorBuilder: (_, __) => const SizedBox(
        height: TSizes.spaceBtwnSections,
      ),
      itemCount: 2,
      shrinkWrap: true,
    );
  }
}
