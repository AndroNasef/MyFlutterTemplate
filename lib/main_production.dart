import 'dart:async';
import 'dart:developer';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'app/app.dart';
import 'app/database/init.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  openBoxes();
  if (!GetPlatform.isDesktop) await Firebase.initializeApp();

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  runZonedGuarded(
    () => runApp(const App()),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}


// TODO: Add App Icon
// TODO: Add App Splashscreen