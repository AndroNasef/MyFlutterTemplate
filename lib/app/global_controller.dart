import 'package:get/get.dart';

import '../core/theme.dart';
import 'database/init.dart';
import 'database/settings.dart';

class AppController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    isDark = settings.get(Settings.isDark) as bool;
  }
}

class AppControllerBinder implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppController>(() => AppController());
  }
}
