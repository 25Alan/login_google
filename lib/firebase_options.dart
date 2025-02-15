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
    apiKey: 'AIzaSyDne-odePg-rpUTxvZY3nl1AUL-sqXDMGc',
    appId: '1:1081425911473:web:90952fd4422f9d08b74c90',
    messagingSenderId: '1081425911473',
    projectId: 'login-6090f',
    authDomain: 'login-6090f.firebaseapp.com',
    storageBucket: 'login-6090f.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC4iaumSveLdOJS3RK4pRm0C__fxSS0uno',
    appId: '1:1081425911473:android:65e18355ed052f9cb74c90',
    messagingSenderId: '1081425911473',
    projectId: 'login-6090f',
    storageBucket: 'login-6090f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCfJhtdnk4R_4SI2dizqwinTw-P-8YHuhk',
    appId: '1:1081425911473:ios:3c9baf8a821a8f4cb74c90',
    messagingSenderId: '1081425911473',
    projectId: 'login-6090f',
    storageBucket: 'login-6090f.appspot.com',
    iosBundleId: 'com.example.testPc',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCfJhtdnk4R_4SI2dizqwinTw-P-8YHuhk',
    appId: '1:1081425911473:ios:3c9baf8a821a8f4cb74c90',
    messagingSenderId: '1081425911473',
    projectId: 'login-6090f',
    storageBucket: 'login-6090f.appspot.com',
    iosBundleId: 'com.example.testPc',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDne-odePg-rpUTxvZY3nl1AUL-sqXDMGc',
    appId: '1:1081425911473:web:cfcf67fbbb141bbbb74c90',
    messagingSenderId: '1081425911473',
    projectId: 'login-6090f',
    authDomain: 'login-6090f.firebaseapp.com',
    storageBucket: 'login-6090f.appspot.com',
  );
}
