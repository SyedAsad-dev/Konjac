import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kon/app/domain/models/news_model.dart';
import 'package:kon/app/domain/models/news_params.dart';
import 'package:kon/app/domain/usecases/home_use_case.dart';

class HomeController extends GetxController {
  HomeUseCase homeUseCase;
  HomeController({required this.homeUseCase});
  final count = 0.obs;
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
  void changeTheme() {
    Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
    update();
  }

  RxBool isLoading = false.obs;
  List<NewsResult> list = [];
  setLoading(val) {
    isLoading = val;
    update();
  }

  getData() async {
    isLoading.value = true;
    final res = await homeUseCase.call(NewsParams(period: 1));
    list = res;
    isLoading.value = false;
  }

  void increment() {
    count.value++;
    print(count);
    update();
  }
}
