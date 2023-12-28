// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bestdealsv2/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    Key? key,
    required this.iconColor,
    required this.onPressed,
  }) : super(key: key);
  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            Iconsax.shopping_bag,
            color: iconColor,
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: TColors.blackColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                "2",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.whitetColor, fontSizeFactor: 0.8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
