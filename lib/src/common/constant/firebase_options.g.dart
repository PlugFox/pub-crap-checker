// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.g.dart';
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
    apiKey: 'AIzaSyC0s7F3LYdn8NfSlqX6xrrwag97bCtDnVY',
    appId: '1:168270398237:web:37dff0d7312aa968eb17f4',
    messagingSenderId: '168270398237',
    projectId: 'pub-checker',
    authDomain: 'pub-checker.firebaseapp.com',
    storageBucket: 'pub-checker.appspot.com',
    measurementId: 'G-D84MMXWZCX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC7sRqP3Q8jXIUYBF5pMiVcVLav-qu2YTw',
    appId: '1:168270398237:android:9bcbcd4670d755d4eb17f4',
    messagingSenderId: '168270398237',
    projectId: 'pub-checker',
    storageBucket: 'pub-checker.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD7h2LiqxfxfDfPDraxCHcHWb3DFNo2z-c',
    appId: '1:168270398237:ios:4dfab7453849b763eb17f4',
    messagingSenderId: '168270398237',
    projectId: 'pub-checker',
    storageBucket: 'pub-checker.appspot.com',
    iosClientId: '168270398237-v7u7437p4toncb8qonf2br9mo1j211i2.apps.googleusercontent.com',
    iosBundleId: 'dev.plugfox.pubChecker',
  );
}
