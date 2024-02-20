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
    apiKey: 'AIzaSyC1k6eLsONf8xdx9F-4swYBlTceB9tI_TM',
    appId: '1:102034714039:web:e198c09dc9c8aed2c88c32',
    messagingSenderId: '102034714039',
    projectId: 'samoilenko-maps-app',
    authDomain: 'samoilenko-maps-app.firebaseapp.com',
    storageBucket: 'samoilenko-maps-app.appspot.com',
    measurementId: 'G-JMJD4GGT99',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC6r_2zcKhw3uIjSXAXg21YQ9tQbHcVdDs',
    appId: '1:102034714039:android:e0a7c7af7c1337edc88c32',
    messagingSenderId: '102034714039',
    projectId: 'samoilenko-maps-app',
    storageBucket: 'samoilenko-maps-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA35cRkDV4DGvGEpXdPyb2uNvZal9-0-s4',
    appId: '1:102034714039:ios:7de717f53cfaed4fc88c32',
    messagingSenderId: '102034714039',
    projectId: 'samoilenko-maps-app',
    storageBucket: 'samoilenko-maps-app.appspot.com',
    androidClientId: '102034714039-25hvrt60ft7kdlknjmu7ps5b9gtv10tb.apps.googleusercontent.com',
    iosClientId: '102034714039-6c56vpsult358afuik4ngp1fgjr0ttov.apps.googleusercontent.com',
    iosBundleId: 'com.extrawest.samoilenkoMapsApp',
  );
}