import 'package:get/get.dart';
import '../languages/en.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': en,
      };
}
