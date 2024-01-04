import 'package:bestdealsv2/utils/constants/colors.dart';
import 'package:bestdealsv2/utils/device/device_utility.dart';
import 'package:bestdealsv2/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  /// If you want to add the background color to tabs you have to wrap then in material widget
  ///  To do that we need [PreferredSize] widget and that's why created custom class. [PreferredSize]
  const TTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? TColors.blackColor : TColors.whiteColor,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: TColors.primaryColor,
        labelColor: dark ? TColors.whiteColor : TColors.primaryColor,
        unselectedLabelColor: TColors.darkGreyColor,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
