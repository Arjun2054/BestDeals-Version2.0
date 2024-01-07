import 'package:bestdealsv2/common/widgets/appbar/app_bar.dart';
import 'package:bestdealsv2/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:bestdealsv2/common/widgets/images/circular_image.dart';
import 'package:bestdealsv2/common/widgets/list_tile/setting_menu_tile.dart';
import 'package:bestdealsv2/common/widgets/text/section_heading.dart';
import 'package:bestdealsv2/features/personalization/screens/profile/profile_screen.dart';
import 'package:bestdealsv2/utils/constants/colors.dart';
import 'package:bestdealsv2/utils/constants/image_strings.dart';
import 'package:bestdealsv2/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/list_tile/user_profile_tile.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///-- Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///-- App Bar
                  TAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context).textTheme.headlineMedium!.apply(
                            color: TColors.whiteColor,
                          ),
                    ),
                  ),

                  ///-- user profile Card
                  TUserProfileTile(
                    onPressed: () => Get.to(() => const ProfileScreen()),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwnSections,
                  ),
                ],
              ),
            ),

            ///--- Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  ///--Account Settings
                  const TSectionHeading(
                    title: "Account Settings",
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwnItems,
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.bank,
                    title: 'Payment methods',
                    subTitle:
                        'Select the payment gateway to enroll the course ',
                    onTap: () {},
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.book,
                    title: 'My Certificate',
                    subTitle: 'Certificate for own course ',
                    onTap: () {},
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'Voucher',
                    subTitle: 'List of all the discounts vouchers',
                    onTap: () {},
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subTitle: 'Set any kind of notifications message',
                    onTap: () {},
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subTitle: 'manage data usage and connected accounts',
                    onTap: () {},
                  ),

                  ///--App Settings
                  const SizedBox(
                    height: TSizes.spaceBtwnSections,
                  ),
                  const TSectionHeading(
                    title: "App Settings",
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwnItems,
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subTitle: 'Upload Data to your cloud firebase',
                    onTap: () {},
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.image,
                    subTitle: "Set image quality to be seen",
                    title: 'HD Image Quality',
                    trailing: Switch(
                      value: false,
                      onChanged: (bool value) {},
                    ),
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.logout,
                    subTitle: 'Data is not loss',
                    title: 'logout',
                    onTap: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
