import 'package:bestdealsv2/features/authentication/screens/login/login_screen.dart';
import 'package:bestdealsv2/features/authentication/screens/onBoarding/onboarding_screen.dart';
import 'package:bestdealsv2/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:bestdealsv2/utils/exceptions/format_exceptions.dart';
import 'package:bestdealsv2/utils/exceptions/platform_exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../utils/exceptions/firebase_exceptions.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  // Variable
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  // callled from main.dart on app launch

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  // function to show relevant screen
  screenRedirect() async {
    // Local Storage

    deviceStorage.writeIfNull('IsFirstTime', true);
    deviceStorage.read('IsFirstTime') != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(const OnBoardingScreen());
  }

  /*  ------------------------ Email and Password signin------------------*/
  /// [Email Authentication] -- SignIn
  /// [Email Authentication] -- Register
  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  /// [ReAuthenticate] -- Re-authenticate User
  /// [Email Verification] -- Email Verification
  /// [Email Authentication] -- Forgot Password

  /*  ------------------------Federated identify and social signin------------------*/
  /// [Google Authentication] -- Google
  /// [Facebook Authentication] -- Facebook
  ///
  /*  ------------------------./end Federated identify and social signin ------------------*/
  // [LogoutUser] -- Valid for any authenticated
  // DELETE USER - Remove user auth and firestore account
}
