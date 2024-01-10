import 'package:bestdealsv2/common/widgets/loaders/animation_loader.dart';
import 'package:bestdealsv2/utils/constants/colors.dart';
import 'package:bestdealsv2/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TFullScreenLoader {
  /// Open a full screen loading dailog with a givem text and animations.
  /// This Method doest not return anything
  ///
  /// Parameters:
  ///   -- text : The text to be displayed in the loading dailog.
  ///   -- animations : The Lottie animations to be shown

  static void openLoadingDailog(String text, String animation) {
    showDialog(
        context:
            Get.overlayContext!, // use Get.overlayContext for overlay dailog
        barrierDismissible:
            false, // The dailog cannot be dismissed by tapping outside it
        builder: (_) => PopScope(
              canPop: false,
              child: Container(
                color: THelperFunctions.isDarkMode(Get.context!)
                    ? TColors.dark
                    : TColors.whiteColor,
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 250,
                    ), // Adjust the spacing as need
                    TAnimationLoaderWidget(text: text, animation: animation),
                  ],
                ),
              ),
            ));
  }

  /// stop the currentlu open leading dalog
  /// This method doesnt return anything
  ///
  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
