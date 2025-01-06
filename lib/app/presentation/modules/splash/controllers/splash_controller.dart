import 'package:get/get.dart';
import 'package:kon/app/core/routes/app_pages.dart';

class SplashController extends GetxController {
  waitAndNavigateToHome() async {
    await Future.delayed(Duration(seconds: 2));
    Get.toNamed(Routes.HOME);
  }

  @override
  void onInit() {
    waitAndNavigateToHome();
    super.onInit();
  }
}
