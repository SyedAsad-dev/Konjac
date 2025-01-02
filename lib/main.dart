import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kon/app/localization/languages.dart';
import 'package:kon/app/modules/splash/controllers/splash_controller.dart';
import 'package:kon/app/theme/theme.dart';
import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
