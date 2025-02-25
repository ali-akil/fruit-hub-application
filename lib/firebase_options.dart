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
    apiKey: 'AIzaSyAmJsM1IenwVn7zmfB9-x6uipN58kXDNP4',
    appId: '1:1079688000611:web:426f9d286aeb6846793456',
    messagingSenderId: '1079688000611',
    projectId: 'fruit-hub-8161f',
    authDomain: 'fruit-hub-8161f.firebaseapp.com',
    storageBucket: 'fruit-hub-8161f.firebasestorage.app',
    measurementId: 'G-3QWVLSLXT1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBAPgJTeN5rEKRuzZ5E8fOOPifd9nRunJw',
    appId: '1:1079688000611:android:f6b0c7c94f71c303793456',
    messagingSenderId: '1079688000611',
    projectId: 'fruit-hub-8161f',
    storageBucket: 'fruit-hub-8161f.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDdiRgOBYQfnXmY1iFwhzTmNveJ8CNq1E8',
    appId: '1:1079688000611:ios:a7e16f3cab479bf4793456',
    messagingSenderId: '1079688000611',
    projectId: 'fruit-hub-8161f',
    storageBucket: 'fruit-hub-8161f.firebasestorage.app',
    iosBundleId: 'com.example.friutApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDdiRgOBYQfnXmY1iFwhzTmNveJ8CNq1E8',
    appId: '1:1079688000611:ios:a7e16f3cab479bf4793456',
    messagingSenderId: '1079688000611',
    projectId: 'fruit-hub-8161f',
    storageBucket: 'fruit-hub-8161f.firebasestorage.app',
    iosBundleId: 'com.example.friutApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAmJsM1IenwVn7zmfB9-x6uipN58kXDNP4',
    appId: '1:1079688000611:web:5313bae0205480e7793456',
    messagingSenderId: '1079688000611',
    projectId: 'fruit-hub-8161f',
    authDomain: 'fruit-hub-8161f.firebaseapp.com',
    storageBucket: 'fruit-hub-8161f.firebasestorage.app',
    measurementId: 'G-D2VCRT1PG9',
  );
}
