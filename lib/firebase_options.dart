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
        return macos;
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
    apiKey: 'AIzaSyAGhTNmHG8nl-7VVud455daLFA2K0RAfR4',
    appId: '1:664543991344:web:368ced7f86553fb9e47ff5',
    messagingSenderId: '664543991344',
    projectId: 'mykost-e4af4',
    authDomain: 'mykost-e4af4.firebaseapp.com',
    storageBucket: 'mykost-e4af4.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAllLPbrNCrWiFcJkYLO7BT5Zch7Ct2-nE',
    appId: '1:664543991344:android:060d625e52eddc95e47ff5',
    messagingSenderId: '664543991344',
    projectId: 'mykost-e4af4',
    storageBucket: 'mykost-e4af4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBgmKBTRhSGkwG273QbwmQGBxgT_Ot20D4',
    appId: '1:664543991344:ios:d101aca5f918b311e47ff5',
    messagingSenderId: '664543991344',
    projectId: 'mykost-e4af4',
    storageBucket: 'mykost-e4af4.appspot.com',
    iosClientId: '664543991344-sncs2mclnh49q4tcs7p34jqh7klefpdl.apps.googleusercontent.com',
    iosBundleId: 'com.example.mykost',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBgmKBTRhSGkwG273QbwmQGBxgT_Ot20D4',
    appId: '1:664543991344:ios:ff16d89f30871a1be47ff5',
    messagingSenderId: '664543991344',
    projectId: 'mykost-e4af4',
    storageBucket: 'mykost-e4af4.appspot.com',
    iosClientId: '664543991344-kcu54vpqajc0tlsqiaicqpecbiin3tf5.apps.googleusercontent.com',
    iosBundleId: 'com.example.mykost.RunnerTests',
  );
}
