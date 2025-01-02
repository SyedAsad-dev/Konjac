import 'package:get/get.dart';
import 'package:kon/app/routes/app_pages.dart';

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
