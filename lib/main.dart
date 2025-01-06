import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kon/app/config/localization/languages.dart';
import 'package:kon/app/core/injections.dart';
import 'package:kon/app/presentation/modules/splash/controllers/splash_controller.dart';
import 'package:kon/app/config/theme/theme.dart';
import 'app/core/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initInjections();
  Get.put(SplashController());
  runApp(
    GetMaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      translations: Languages(),
      locale: Locale("ar", "AE"),
      fallbackLocale: Locale("ar", "AE"),
      debugShowCheckedModeBanner: false,
      title: "Konjac",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
