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
    apiKey: 'AIzaSyChytqDYQeIdsTZ1G9wOEPjMbZ2ybKJiQQ',
    appId: '1:230713806654:web:853194cdbe0f0394b4266f',
    messagingSenderId: '230713806654',
    projectId: 'online-course-app-e436c',
    authDomain: 'online-course-app-e436c.firebaseapp.com',
    storageBucket: 'online-course-app-e436c.appspot.com',
    measurementId: 'G-4LL5EB7G52',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDuOMI5gbKBx7k35gtQ9YaZs_MI8PvW6rg',
    appId: '1:230713806654:android:4e90140b62d4a327b4266f',
    messagingSenderId: '230713806654',
    projectId: 'online-course-app-e436c',
    storageBucket: 'online-course-app-e436c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA0CAc_OPGN8wahC6iiSF1NtM3MlYFWCxI',
    appId: '1:230713806654:ios:4f692ebc4f0f3f77b4266f',
    messagingSenderId: '230713806654',
    projectId: 'online-course-app-e436c',
    storageBucket: 'online-course-app-e436c.appspot.com',
    iosBundleId: 'com.gmail.sachinbasnet971.frontendFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA0CAc_OPGN8wahC6iiSF1NtM3MlYFWCxI',
    appId: '1:230713806654:ios:06d2171458255d52b4266f',
    messagingSenderId: '230713806654',
    projectId: 'online-course-app-e436c',
    storageBucket: 'online-course-app-e436c.appspot.com',
    iosBundleId: 'com.gmail.sachinbasnet971.frontendFlutter.RunnerTests',
  );
}