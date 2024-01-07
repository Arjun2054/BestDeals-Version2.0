import 'package:bestdealsv2/common/widgets/appbar/app_bar.dart';
import 'package:bestdealsv2/common/widgets/courses/course_cards/course_card_vertical.dart';
import 'package:bestdealsv2/common/widgets/layouts/grid_layout.dart';
import 'package:bestdealsv2/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          "Wishlist",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(
                  itemCount: 6,
                  itembuilder: (_, index) {
                    return const TCourseCardVertical();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
