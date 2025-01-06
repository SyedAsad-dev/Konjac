import 'package:get/get.dart';

import '../../presentation/modules/new/bindings/new_binding.dart';
import '../../presentation/modules/new/views/new_view.dart';
import '../../presentation/modules/home/bindings/home_binding.dart';
import '../../presentation/modules/home/views/home_view.dart';
import '../../presentation/modules/splash/bindings/splash_binding.dart';
import '../../presentation/modules/splash/views/splash_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.NEW,
      page: () => const NewView(),
      binding: NewBinding(),
    ),
  ];
}
