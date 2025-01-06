import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home View',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'hello'.tr,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Obx(
              () => controller.isLoading.isTrue
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: () {
                        controller.getData();
                      },
                      child: Text(
                        controller.list.isEmpty ? "Get data" : "Data retireved",
                        style: TextStyle(color: Colors.black),
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
