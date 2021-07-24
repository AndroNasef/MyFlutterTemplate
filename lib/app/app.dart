import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:template/core/values.dart';

import '../core/routes.dart';
import '../core/theme.dart';
import '../utils/analytics.dart';
import 'global_controller.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setApplicationSwitcherDescription(
        ApplicationSwitcherDescription(
            primaryColor: Colors.red.value, label: kAppName));
    SystemChrome.setEnabledSystemUIOverlays([]);

    return GetMaterialApp(
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      initialBinding: AppControllerBinder(),
      theme: lightTheme,
      darkTheme: darkTheme,
      navigatorObservers: [analyticsObserver],
      defaultTransition: Transition.cupertino,
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    );
  }
}
