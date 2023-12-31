// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyA6Qrmfen4CAhegEpm_TzIGq7GPdoJ7UW4',
    appId: '1:671208928752:web:12663538a13524c8685935',
    messagingSenderId: '671208928752',
    projectId: 'bestdeals-daa3c',
    authDomain: 'bestdeals-daa3c.firebaseapp.com',
    storageBucket: 'bestdeals-daa3c.appspot.com',
    measurementId: 'G-3FZ5562NH3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAuEvfspkfXSIiAbCnNvRtR6RU-ramDMQo',
    appId: '1:671208928752:android:a8e138a043d658c5685935',
    messagingSenderId: '671208928752',
    projectId: 'bestdeals-daa3c',
    storageBucket: 'bestdeals-daa3c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAan015RcKACLd6JxY-x2wUFg67-yhM7wg',
    appId: '1:671208928752:ios:e4308c865d671b60685935',
    messagingSenderId: '671208928752',
    projectId: 'bestdeals-daa3c',
    storageBucket: 'bestdeals-daa3c.appspot.com',
    iosBundleId: 'com.example.bestdealsv2',
  );
}
