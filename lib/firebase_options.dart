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
    apiKey: 'AIzaSyAqihhzJKNS0jXIRwKZxyfixyvArdFNPMM',
    appId: '1:489723175985:web:ab5b89d0b9cbff95cea110',
    messagingSenderId: '489723175985',
    projectId: 'church-app-f5af2',
    authDomain: 'church-app-f5af2.firebaseapp.com',
    storageBucket: 'church-app-f5af2.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBhmYmIoDCvvGbf8gmPyaMt_snWq6uh5Gg',
    appId: '1:489723175985:android:44d2b0106de95a31cea110',
    messagingSenderId: '489723175985',
    projectId: 'church-app-f5af2',
    storageBucket: 'church-app-f5af2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBf09OEYvN_XEo01bafY8LnCqxidYYPxkM',
    appId: '1:489723175985:ios:ed3b49845607410ecea110',
    messagingSenderId: '489723175985',
    projectId: 'church-app-f5af2',
    storageBucket: 'church-app-f5af2.appspot.com',
    iosBundleId: 'com.example.churchApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBf09OEYvN_XEo01bafY8LnCqxidYYPxkM',
    appId: '1:489723175985:ios:ed3b49845607410ecea110',
    messagingSenderId: '489723175985',
    projectId: 'church-app-f5af2',
    storageBucket: 'church-app-f5af2.appspot.com',
    iosBundleId: 'com.example.churchApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAqihhzJKNS0jXIRwKZxyfixyvArdFNPMM',
    appId: '1:489723175985:web:9abd0aee1efe45cacea110',
    messagingSenderId: '489723175985',
    projectId: 'church-app-f5af2',
    authDomain: 'church-app-f5af2.firebaseapp.com',
    storageBucket: 'church-app-f5af2.appspot.com',
  );
}
