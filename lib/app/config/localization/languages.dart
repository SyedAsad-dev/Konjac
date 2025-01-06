import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en_US": {
          "hello": "Hello there!",
        },
        "ar_AE": {
          "hello": "مرحبا هناك حبيبي!",
        }
      };
}
