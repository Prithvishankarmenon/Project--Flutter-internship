// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyDkVkbzZOYz6_S3EVmuXL6bUICbju0Dqko',
    appId: '1:839698819972:web:7bfca7dcde98e3759c0bd1',
    messagingSenderId: '839698819972',
    projectId: 'recipemedia-906d0',
    authDomain: 'recipemedia-906d0.firebaseapp.com',
    storageBucket: 'recipemedia-906d0.appspot.com',
    measurementId: 'G-D4559E57CZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB0OouusjJ-n71HiLLTiJRWREa3zFNMHcM',
    appId: '1:839698819972:android:1c0ba55dedde1f639c0bd1',
    messagingSenderId: '839698819972',
    projectId: 'recipemedia-906d0',
    storageBucket: 'recipemedia-906d0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCLLSV0oL4RUbG3CSOHhMSmOPXJZqySx5A',
    appId: '1:839698819972:ios:40a6fc41faa1a9c89c0bd1',
    messagingSenderId: '839698819972',
    projectId: 'recipemedia-906d0',
    storageBucket: 'recipemedia-906d0.appspot.com',
    iosBundleId: 'com.example.recipeMedia',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCLLSV0oL4RUbG3CSOHhMSmOPXJZqySx5A',
    appId: '1:839698819972:ios:40a6fc41faa1a9c89c0bd1',
    messagingSenderId: '839698819972',
    projectId: 'recipemedia-906d0',
    storageBucket: 'recipemedia-906d0.appspot.com',
    iosBundleId: 'com.example.recipeMedia',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDkVkbzZOYz6_S3EVmuXL6bUICbju0Dqko',
    appId: '1:839698819972:web:7bfca7dcde98e3759c0bd1',
    messagingSenderId: '839698819972',
    projectId: 'recipemedia-906d0',
    authDomain: 'recipemedia-906d0.firebaseapp.com',
    storageBucket: 'recipemedia-906d0.appspot.com',
    measurementId: 'G-D4559E57CZ',
  );

}