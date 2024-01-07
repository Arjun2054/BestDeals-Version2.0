import 'package:bestdealsv2/common/widgets/appbar/app_bar.dart';
import 'package:bestdealsv2/common/widgets/images/circular_image.dart';
import 'package:bestdealsv2/common/widgets/text/section_heading.dart';
import 'package:bestdealsv2/utils/constants/image_strings.dart';
import 'package:bestdealsv2/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import 'widgets/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Pofile',
          style: Theme.of(context).textTheme.headlineSmall!.apply(
                color: TColors.blackColor,
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///--Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(
                      image: TImages.emailCreatedSucess,
                      isNetworkImage: false,
                      backgroundColor: TColors.blackColor,
                      height: 80,
                      width: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Change profile picture'))
                  ],
                ),
              ),

              ///--Details
              const SizedBox(
                height: TSizes.spaceBtwnItems / 2,
              ),
              const Divider(),
              const SizedBox(
                height: TSizes.spaceBtwnItems,
              ),

              ///-- Heading Profile Info
              const TSectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(
                height: TSizes.spaceBtwnItems,
              ),
              TProfileMenu(
                title: 'Name',
                value: 'Coding With Name',
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'Username',
                value: 'Coding_With_Arjun',
                onPressed: () {},
              ),

              ///-- Heading Personal Info
              const SizedBox(
                height: TSizes.spaceBtwnItems,
              ),
              const Divider(),
              const SizedBox(
                height: TSizes.spaceBtwnItems,
              ),
              const TSectionHeading(
                title: 'Personal Information',
                showActionButton: false,
              ),
              const SizedBox(
                height: TSizes.spaceBtwnItems,
              ),
              TProfileMenu(
                title: 'User ID',
                value: '4568922',
                icon: Iconsax.copy,
                onPressed: () {},
              ),

              TProfileMenu(
                title: 'Email',
                value: 'support@gmail.com',
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'Phone Number',
                value: '+97 9818235569',
                onPressed: () {},
              ),

              const Divider(),
              const SizedBox(
                height: TSizes.spaceBtwnItems,
              ),
              Center(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Close Account',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .apply(color: TColors.warningColor),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
