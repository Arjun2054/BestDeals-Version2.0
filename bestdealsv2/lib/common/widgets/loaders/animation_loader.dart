// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bestdealsv2/utils/constants/colors.dart';
import 'package:bestdealsv2/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

// A Widget for displaying an animated loading indicator with optional text and action button
class TAnimationLoaderWidget extends StatelessWidget {
  /// Default Constructor for the TAnimationLoaderWidget
  ///
  /// Parameters:
  ///  - text: The text to display belpw the animation
  ///  - animation: The Path to the lottie animation file
  ///  - showAction: Whether to show the action button below the text
  ///  - actiontext: The action text to be displayed on the action button
  ///  -onActionPressed:  Callback function to be executed when the action button is clicked
  ///

  const TAnimationLoaderWidget({
    Key? key,
    required this.text,
    required this.animation,
    this.showAction = false,
    this.actionText,
    this.onActionPressed,
  }) : super(key: key);
  final String text;
  final String animation;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(animation,
              width: MediaQuery.of(context).size.width *
                  0.8), // Display Lottie animation
          const SizedBox(
            height: TSizes.defaultSpace,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          showAction
              ? SizedBox(
                  width: 250,
                  child: OutlinedButton(
                      onPressed: onActionPressed,
                      style: OutlinedButton.styleFrom(
                          backgroundColor: TColors.greyColor),
                      child: Text(
                        actionText!,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .apply(color: TColors.light),
                      )),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
