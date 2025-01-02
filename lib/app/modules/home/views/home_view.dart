import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kon/app/constants/app_spacings.dart';
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
            AppSpacings.gapH16,
            ElevatedButton(
                onPressed: () {
                  controller.changeTheme();
                },
                child: Text("Change Theme"))
          ],
        ),
      ),
    );
  }
}
