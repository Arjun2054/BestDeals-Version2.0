import 'package:bestdealsv2/common/widgets/loaders/loaders.dart';
import 'package:bestdealsv2/data/repositories/authentication/authentication_repository.dart';
import 'package:bestdealsv2/data/repositories/user/user_repository.dart';
import 'package:bestdealsv2/features/authentication/screens/signup/verify_email_screen.dart';
import 'package:bestdealsv2/navigation_menu.dart';
import 'package:bestdealsv2/utils/helpers/network_manager.dart';
import 'package:bestdealsv2/utils/popups/full_screen_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../models/user_model.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  /// Variables
  final hidePassword = true.obs; // Oservable for hiding/showing password
  final privacyPolicy = true.obs; // observavle for privacy policy acceptance
  final email = TextEditingController(); // Contoller For email imput
  final firstName = TextEditingController(); // Contoller For firstname imput
  final lastName = TextEditingController(); // Contoller For lastname imput
  final userName = TextEditingController(); // Contoller For username imput
  final password = TextEditingController(); // Contoller For password imput
  final phoneNumber =
      TextEditingController(); // Contoller For phonenumber imput
  GlobalKey<FormState> signupFormKey =
      GlobalKey<FormState>(); // form key for form validation

  /// -- SIGNUP --
  void signup() async {
    try {
      // Start Loading
      TFullScreenLoader.openLoadingDailog(
          'We are processing your information....', TImages.loadingAnimation);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        // Remove Loader
        TFullScreenLoader.stopLoading();
        return;
      }

      // Form validation

      if (!signupFormKey.currentState!.validate()) {
        // Remove Loader
        TFullScreenLoader.stopLoading();
        return;
      }

      // Privacy Policy Check
      if (!privacyPolicy.value) {
        TLoaders.warningSnackBar(
            title: 'Accepts Privacy Policy',
            message:
                'In order to create account, you must have to read & accept the privacy policy');
        return;
      }

      // Register User in the firebase Authentication and Save user data in the firestore

      final userCredential =
          await AuthenticationRepository.instance.registerWithEmailAndPassword(
        email.text.trim(),
        password.text.trim(),
      );

      // Save Authentication user data in the Firebase Firestore
      final newUser = UserModel(
        id: userCredential.user!.uid,
        username: userName.text.trim(),
        email: email.text.trim(),
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      // Remove Loader
      TFullScreenLoader.stopLoading();

      // SHow Sucess Message
      TLoaders.sucessSnackBar(
          title: 'Congratulations',
          message:
              "Your Account has been created : Verfiy email to continue...");

      // Move to Verfiy Email Screen

      Get.to(() => const VerifyEmailScreen());
    } catch (e) {
      // Remove Loader
      TFullScreenLoader.stopLoading();
      // Show Some Generic Error to the user
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
