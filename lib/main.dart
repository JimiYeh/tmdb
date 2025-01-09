import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tmdb/flavors.dart';
import 'app.dart';
import 'package:tmdb/firebase_options/firebase_options_dev.dart' as dev;
import 'package:tmdb/firebase_options/firebase_options_prod.dart' as prod;

FutureOr<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeFirebaseApp();
  runApp(const App());
}

Future<void> initializeFirebaseApp() async {
  // Determine which Firebase options to use based on the flavor
  final firebaseOptions = switch (F.appFlavor) {
    Flavor.dev => dev.DefaultFirebaseOptions.currentPlatform,
    Flavor.prod => prod.DefaultFirebaseOptions.currentPlatform,
    _ => throw UnsupportedError('Invalid flavor: ${F.appFlavor}'),
  };
  await Firebase.initializeApp(options: firebaseOptions);
}
