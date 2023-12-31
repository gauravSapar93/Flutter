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
    apiKey: 'AIzaSyDiZWv-97a41TMS-qubafV-1QtLcNekM4E',
    appId: '1:378637793847:web:9de10cca904659274d5db2',
    messagingSenderId: '378637793847',
    projectId: 'flutter-login-ebddb',
    authDomain: 'flutter-login-ebddb.firebaseapp.com',
    storageBucket: 'flutter-login-ebddb.appspot.com',
    measurementId: 'G-ZSXGH14P6M',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBnY2HqL797alqK4uGgvoDKBusjgOoAyMQ',
    appId: '1:378637793847:android:0b90db31187cd4224d5db2',
    messagingSenderId: '378637793847',
    projectId: 'flutter-login-ebddb',
    storageBucket: 'flutter-login-ebddb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDSVEDGxS01TDq45O0JbjuQRljb-zZlNLA',
    appId: '1:378637793847:ios:d1f3b4503c2e7ce94d5db2',
    messagingSenderId: '378637793847',
    projectId: 'flutter-login-ebddb',
    storageBucket: 'flutter-login-ebddb.appspot.com',
    iosBundleId: 'com.example.flutterApplication',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDSVEDGxS01TDq45O0JbjuQRljb-zZlNLA',
    appId: '1:378637793847:ios:ad15d83511624a424d5db2',
    messagingSenderId: '378637793847',
    projectId: 'flutter-login-ebddb',
    storageBucket: 'flutter-login-ebddb.appspot.com',
    iosBundleId: 'com.example.flutterApplication.RunnerTests',
  );
}
