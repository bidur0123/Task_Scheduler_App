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
    apiKey: 'AIzaSyCe8VT8HqRvruYY0x5UkuPnY_fCbbQ9s6Q',
    appId: '1:419847965944:web:ee77a9d70ef979a938ff0d',
    messagingSenderId: '419847965944',
    projectId: 'todo-app-39c58',
    authDomain: 'todo-app-39c58.firebaseapp.com',
    storageBucket: 'todo-app-39c58.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC5Jqr2HSXRHoKOWusxsPzDomAzrHMRppY',
    appId: '1:419847965944:android:6ff4d730c87d4d8038ff0d',
    messagingSenderId: '419847965944',
    projectId: 'todo-app-39c58',
    storageBucket: 'todo-app-39c58.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCBlqiGHwE6bgIcgv6OzfbYdvFK88H6_d8',
    appId: '1:419847965944:ios:843de8d74327238938ff0d',
    messagingSenderId: '419847965944',
    projectId: 'todo-app-39c58',
    storageBucket: 'todo-app-39c58.appspot.com',
    iosClientId: '419847965944-99s1q3slg2fsubcpjigi9p129hjp1gii.apps.googleusercontent.com',
    iosBundleId: 'com.example.toDoApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCBlqiGHwE6bgIcgv6OzfbYdvFK88H6_d8',
    appId: '1:419847965944:ios:843de8d74327238938ff0d',
    messagingSenderId: '419847965944',
    projectId: 'todo-app-39c58',
    storageBucket: 'todo-app-39c58.appspot.com',
    iosClientId: '419847965944-99s1q3slg2fsubcpjigi9p129hjp1gii.apps.googleusercontent.com',
    iosBundleId: 'com.example.toDoApp',
  );
}