import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tmdb/firebase_options/firebase_options_dev.dart' as dev;
import 'package:tmdb/firebase_options/firebase_options_prod.dart' as prod;
import 'package:tmdb/flavors.dart';
import 'package:tmdb/utils/logger.dart';

import 'app.dart';

FutureOr<void> main() async {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await initializeFirebaseApp();

    var onError = FlutterError.onError;
    FlutterError.onError = (details) {
      logger.e('Error: ${details.exceptionAsString()}');
      onError?.call(details);
      FirebaseCrashlytics.instance.recordError(details.exception, details.stack);
    };

    runApp(ProviderScope(child: const App()));
  }, (error, stackTrace) {
    logger.e('Error: $error');
    FirebaseCrashlytics.instance.recordError(error, stackTrace);
  });
}

Future<void> initializeFirebaseApp() async {
  final firebaseOptions = switch (F.appFlavor) {
    Flavor.dev => dev.DefaultFirebaseOptions.currentPlatform,
    Flavor.prod => prod.DefaultFirebaseOptions.currentPlatform,
    _ => throw UnsupportedError('Invalid flavor: ${F.appFlavor}'),
  };
  await Firebase.initializeApp(options: firebaseOptions);
}
