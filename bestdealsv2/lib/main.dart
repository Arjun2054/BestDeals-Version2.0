import 'package:bestdealsv2/app.dart';
import 'package:bestdealsv2/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

///--- Entry Point Of Flutter App ------
Future<void> main() async {
  // Todo: Add Widgets Binding
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();
  // Todo: Init Local Storage
  // Todo: Await Native Splash
  // Todo: Initilaize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // Todo: Initialize Authentication

  runApp(const MyApp());
}
