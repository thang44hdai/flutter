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
    apiKey: 'AIzaSyBxqkjn_CeSa-qdi6C1JlkfkkNmxTHjpjI',
    appId: '1:323470172227:web:469269edbb668b0f8774f6',
    messagingSenderId: '323470172227',
    projectId: 'test-d99b9',
    authDomain: 'test-d99b9.firebaseapp.com',
    storageBucket: 'test-d99b9.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCwwvjYYPfd7PL2CNRS6T8a6A0wuSp9nVY',
    appId: '1:323470172227:android:5c8d0cc0c133156b8774f6',
    messagingSenderId: '323470172227',
    projectId: 'test-d99b9',
    storageBucket: 'test-d99b9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyByHs3Ncy6HJVGQOHPWmwYS9qJcY4lOvoQ',
    appId: '1:323470172227:ios:60bdcb8808ffada28774f6',
    messagingSenderId: '323470172227',
    projectId: 'test-d99b9',
    storageBucket: 'test-d99b9.appspot.com',
    iosBundleId: 'com.example.firebaseRealtime',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyByHs3Ncy6HJVGQOHPWmwYS9qJcY4lOvoQ',
    appId: '1:323470172227:ios:88db6d3700fc8c698774f6',
    messagingSenderId: '323470172227',
    projectId: 'test-d99b9',
    storageBucket: 'test-d99b9.appspot.com',
    iosBundleId: 'com.example.firebaseRealtime.RunnerTests',
  );
}
