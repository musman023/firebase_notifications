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
    apiKey: 'AIzaSyBrv8ryy1B9rw1RopS4MERwC-9ckgWFQiQ',
    appId: '1:159379184880:web:bd1e02b12cc4f0d3fcb635',
    messagingSenderId: '159379184880',
    projectId: 'flutter-notifications-bd656',
    authDomain: 'flutter-notifications-bd656.firebaseapp.com',
    storageBucket: 'flutter-notifications-bd656.appspot.com',
    measurementId: 'G-1C8P31NMCX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAO7DRPwXj3OmKuxtByxrQVo-8BHYlsBLk',
    appId: '1:159379184880:android:919866144e26fcedfcb635',
    messagingSenderId: '159379184880',
    projectId: 'flutter-notifications-bd656',
    storageBucket: 'flutter-notifications-bd656.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBsvqJGyp-z3GcWy9ihWKWfpb9Nt2E7Htw',
    appId: '1:159379184880:ios:8db8f130075c34b4fcb635',
    messagingSenderId: '159379184880',
    projectId: 'flutter-notifications-bd656',
    storageBucket: 'flutter-notifications-bd656.appspot.com',
    iosBundleId: 'com.example.firebaseNotifications',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBsvqJGyp-z3GcWy9ihWKWfpb9Nt2E7Htw',
    appId: '1:159379184880:ios:7442c5eb9e15821cfcb635',
    messagingSenderId: '159379184880',
    projectId: 'flutter-notifications-bd656',
    storageBucket: 'flutter-notifications-bd656.appspot.com',
    iosBundleId: 'com.example.firebaseNotifications.RunnerTests',
  );
}
