import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

Future<void> openBoxes() async {
  final appDocuments = (await getApplicationDocumentsDirectory()).path;
  GetPlatform.isWeb
      // ignore: unnecessary_statements
      ? await Hive.initFlutter()
      : await Hive.initFlutter("$appDocuments/database");

  await Hive.openBox('settings');
}

Box settings = Hive.box("settings");
