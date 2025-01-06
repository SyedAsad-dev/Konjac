import 'package:get/get.dart';
import 'package:kon/app/core/injections.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(homeUseCase: sl()),
    );
  }
}
