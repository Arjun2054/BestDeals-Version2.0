// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:bestdealsv2/features/course/screens/home/widgets/home_app_bar.dart';
import 'package:bestdealsv2/utils/constants/sizes.dart';
import 'package:bestdealsv2/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/custom_shapes/container/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/container/search_container.dart';
import 'widgets/home_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // -- Appbar
                  THomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwnItems,
                  ),

                  // -- Searchbar
                  TSearchContainer(
                    showBackground: true,
                    showBorder: true,
                    text: TTexts.homeSearchTitle,
                    icon: (Iconsax.search_normal),
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwnItems,
                  ),

                  // -- Categories

                  THomeCategories(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
