import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ynab/app/routes/app_pages.dart';

import '../controllers/splash_screen_controller.dart';

import 'package:lottie/lottie.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), (() {
      Get.offAllNamed(Routes.SIGNIN);
    }));
    return Scaffold(
      body: Center(
        child: Container(
          width: Get.width,
          height: Get.height,
          child: Lottie.asset('assets/lottie/hello.json'),
        ),
      ),
    );
  }
}
