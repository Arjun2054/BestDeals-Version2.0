import 'package:bestdealsv2/app.dart';
import 'package:bestdealsv2/data/repositories/authentication/authentication_repository.dart';
import 'package:bestdealsv2/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

///--- Entry Point Of Flutter App ------
Future<void> main() async {
  // Todo: Add Widgets Binding
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // Todo: Init Local Storage
  await GetStorage.init();

  // Todo: Await Native Splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // Todo: Initilaize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((FirebaseApp value) => Get.put(AuthenticationRepository()));

  // Todo: Initialize Authentication

  runApp(const MyApp());
}
