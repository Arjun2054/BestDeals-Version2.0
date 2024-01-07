import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../images/circular_image.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({super.key, required this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImage(
        image: TImages.emailCreatedSucess,
        isNetworkImage: false,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'Coding With Arjun',
        style: Theme.of(context).textTheme.headlineSmall!.apply(
              color: TColors.whiteColor,
            ),
      ),
      subtitle: Text(
        'support@gmail.com',
        style: Theme.of(context).textTheme.bodyMedium!.apply(
              color: TColors.whiteColor,
            ),
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Iconsax.edit,
          color: TColors.whiteColor,
        ),
      ),
    );
  }
}
