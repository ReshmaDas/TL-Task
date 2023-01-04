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
    apiKey: 'AIzaSyBnCZz7jWoTRnkz8RftoWxHT5CBTwmt-Ac',
    appId: '1:1041836742159:web:dfe0eccd18207aacc2757a',
    messagingSenderId: '1041836742159',
    projectId: 'auth-login-e0cb3',
    authDomain: 'auth-login-e0cb3.firebaseapp.com',
    storageBucket: 'auth-login-e0cb3.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCp00ZjxfMOVAXLsR7lISy8Nn89JnmZ1Eo',
    appId: '1:1041836742159:android:8c1c649692c83203c2757a',
    messagingSenderId: '1041836742159',
    projectId: 'auth-login-e0cb3',
    storageBucket: 'auth-login-e0cb3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyADsGS9GlP7joRhUbNP_GbjrdWgo9pLq2A',
    appId: '1:1041836742159:ios:836e8acbc5a7bbebc2757a',
    messagingSenderId: '1041836742159',
    projectId: 'auth-login-e0cb3',
    storageBucket: 'auth-login-e0cb3.appspot.com',
    iosClientId: '1041836742159-eng5unrgb4pld829b4iopv07ljajguba.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterAuth2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyADsGS9GlP7joRhUbNP_GbjrdWgo9pLq2A',
    appId: '1:1041836742159:ios:836e8acbc5a7bbebc2757a',
    messagingSenderId: '1041836742159',
    projectId: 'auth-login-e0cb3',
    storageBucket: 'auth-login-e0cb3.appspot.com',
    iosClientId: '1041836742159-eng5unrgb4pld829b4iopv07ljajguba.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterAuth2',
  );
}
